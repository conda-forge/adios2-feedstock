#!/bin/bash
# shellcheck disable=SC2154 # Many vars here are injected

if [[ ${target_platform} =~ osx ]]; then
    CMAKE_ARGS+=" -DADIOS2_USE_Fortran=OFF"
    CMAKE_ARGS+=" -DADIOS2_USE_BZip2=OFF"
fi

# MPI variants
if [[ ${mpi} == "nompi" ]]; then
    export USE_MPI=OFF
    export RUN_TESTS=ON
else
    export USE_MPI=ON
    export RUN_TESTS=OFF  # some SST and SSC tests hang sporadically in CI
fi

if [[ "${target_platform}" == *ppc* ]]; then
    echo "Disabling tests on ppc"
    # emulated ppc is too slow
    export RUN_TESTS=OFF
fi

#   see https://github.com/conda-forge/hdf5-feedstock/blob/master/recipe/mpiexec.sh
if [[ "$mpi" == "mpich" ]]; then
    export HYDRA_LAUNCHER=fork
fi

if [[ "$mpi" == "openmpi" ]]; then
    export OMPI_MCA_btl=self,tcp
    export OMPI_MCA_plm=isolated
    export OMPI_MCA_rmaps_base_oversubscribe=yes
    export OMPI_MCA_btl_vader_single_copy_mechanism=none
    export OPAL_PREFIX=${PREFIX}
    export CC=mpicc
    export CXX=mpic++
fi

if [[ "${CONDA_BUILD_CROSS_COMPILATION}" == "1" ]]; then
    export CMAKE_ARGS="${CMAKE_ARGS} -DADIOS2_HAVE_ZFP_CUDA_EXITCODE=0"
    # 2.9.0+ see https://github.com/ornladios/ADIOS2/issues/3647#issuecomment-1591705964
    if [[ ${mpi} != "nompi" ]]; then
        CMAKE_ARGS+=" -DADIOS2_HAVE_MPI_CLIENT_SERVER=ON"
    fi
fi

# shellcheck disable=SC2086
cmake               \
    ${CMAKE_ARGS}   \
    -S "${SRC_DIR}" \
    -B build        \
    -GNinja         \
    -DADIOS2_BUILD_EXAMPLES=OFF               \
    -DADIOS2_Blosc2_PREFER_SHARED=ON          \
    -DADIOS2_LIBADIOS_MODE=ON                 \
    -DADIOS2_USE_Blosc2=ON                    \
    -DADIOS2_HAVE_ZFP_CUDA=OFF                \
    -DADIOS2_INSTALL_GENERATE_CONFIG=OFF      \
    -DADIOS2_RUN_INSTALL_TEST=ON              \
    -DADIOS2_USE_BZip2=ON                     \
    -DADIOS2_USE_Campaign=OFF                 \
    -DADIOS2_USE_HDF5=ON                      \
    -DADIOS2_USE_MPI=${USE_MPI}               \
    -DADIOS2_USE_PNG=ON                       \
    -DADIOS2_USE_Python=ON                    \
    -DADIOS2_USE_ZeroMQ=ON                    \
    -DADIOS2_USE_ZFP=ON                       \
    -DBUILD_SHARED_LIBS=ON                    \
    -DBUILD_TESTING=${RUN_TESTS}              \
    -DCMAKE_BUILD_TYPE=Release                \
    -DCMAKE_INSTALL_LIBDIR=lib                \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}"        \
    -DPython_EXECUTABLE:FILEPATH="${PYTHON}"  \
    -DPython_INCLUDE_DIR="$(${PYTHON} -c "from sysconfig import get_paths as gp; print(gp()['include'])")" \
    -DPNG_PNG_INCLUDE_DIR="${PREFIX}"

cmake --build build "-j${CPU_COUNT}" -v

if [[ "${CONDA_BUILD_CROSS_COMPILATION}" != "1" && "${RUN_TESTS}" == "ON" ]]
then
    # SST: Flaky tests
    exclude_tests="SST"
    # Disable the Makefile install test since it relies on the adios2-config
    # script which is not being build anyways since it is being flaky in
    # several configurations.
    exclude_tests+="|Install.Make.*"
    if [[ "${target_platform}" =~ osx ]]
    then
        exclude_tests+="|Test.Engine.DataMan1D.Serial"
        exclude_tests+="|Test.Engine.DataMan1xN.Serial"
        exclude_tests+="|Test.Engine.DataManSingleValues"
        exclude_tests+="|Remote.BPWriteReadADIOS2stdio.GetRemote"
        exclude_tests+="|Remote.BPWriteMemorySelectionRead.GetRemote"
        exclude_tests+="|Remote.BPWriteMemorySelectionRead.FileRemote"
    fi

    ctest --test-dir build --output-on-failure -E "${exclude_tests}"
fi

cmake --install build
