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

#   2.9.0+ see https://github.com/ornladios/ADIOS2/issues/3647#issuecomment-1591705964
if [[ "${target_platform}" == "osx-arm64" ]]; then
    if [[ ${mpi} != "nompi" ]]; then
        CMAKE_ARGS+=" -DADIOS2_HAVE_MPI_CLIENT_SERVER=ON"
    fi
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
fi

# shellcheck disable=SC2086
cmake               \
    ${CMAKE_ARGS}   \
    -S "${SRC_DIR}" \
    -B build        \
    -GNinja         \
    -DADIOS2_BUILD_EXAMPLES=OFF               \
    -DADIOS2_Blosc2_PREFER_SHARED=ON          \
    -DADIOS2_USE_Blosc2=ON                    \
    -DADIOS2_HAVE_ZFP_CUDA=OFF                \
    -DADIOS2_INSTALL_GENERATE_CONFIG=OFF      \
    -DADIOS2_RUN_INSTALL_TEST=ON              \
    -DADIOS2_USE_BZip2=ON                     \
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
    fi

    ctest --test-dir build --output-on-failure -E "${exclude_tests}"
fi

# Install everything but tools and scripts
#   see "make list_install_components"
# core-config seems to need to be first, because it can _remove_ other cmake files
cmake --install build --component adios2_core-config
cmake --install build --component adios2_core-development
cmake --install build --component adios2_core-libraries
cmake --install build --component adios2_core-runtime
cmake --install build --component adios2_atl-development
cmake --install build --component adios2_atl-libraries
cmake --install build --component adios2_c-development
cmake --install build --component adios2_c-libraries
cmake --install build --component adios2_c-runtime
cmake --install build --component adios2_cxx11-development
cmake --install build --component adios2_cxx11-libraries
cmake --install build --component adios2_cxx11-runtime
cmake --install build --component adios2_dill-development
cmake --install build --component adios2_dill-libraries
cmake --install build --component adios2_enet-development
cmake --install build --component adios2_enet-libraries
cmake --install build --component adios2_evpath-development
cmake --install build --component adios2_evpath-libraries
cmake --install build --component adios2_ffs-development
cmake --install build --component adios2_ffs-libraries
cmake --install build --component adios2_fortran-development
cmake --install build --component adios2_fortran-libraries
cmake --install build --component cmenet
cmake --install build --component cmepoll
cmake --install build --component cmmulticast
cmake --install build --component cmselect
cmake --install build --component cmsockets
cmake --install build --component cmudp
cmake --install build --component Unspecified
