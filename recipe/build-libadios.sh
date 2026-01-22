#!/bin/bash
# shellcheck disable=SC2154 # Many vars here are injected

set -x

if [[ ${target_platform} =~ osx ]]; then
    CMAKE_ARGS+=" -DADIOS2_USE_Fortran=OFF"
    CMAKE_ARGS+=" -DADIOS2_USE_BZip2=OFF"
fi

# MPI variants
if [[ ${mpi} == "nompi" ]]; then
    export USE_MPI=OFF
else
    export USE_MPI=ON
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
        CMAKE_ARGS+=" -DADIOS2_SST_HAVE_MPI_DP_HEURISTICS_PASSED=ON"
    fi
    CMAKE_ARGS+=" -DRUN_RESULT=ON"
    CMAKE_ARGS+=" -DRUN_RESULT__TRYRUN_OUTPUT=Format_IEEE_754_littleendian"
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
    -DADIOS2_USE_Campaign=ON                  \
    -DADIOS2_USE_HDF5=ON                      \
    -DADIOS2_USE_MPI=${USE_MPI}               \
    -DADIOS2_USE_PNG=ON                       \
    -DADIOS2_USE_Python=ON                    \
    -DADIOS2_USE_ZeroMQ=ON                    \
    -DADIOS2_USE_ZFP=ON                       \
    -DBUILD_SHARED_LIBS=ON                    \
    -DBUILD_TESTING=OFF                       \
    -DCMAKE_BUILD_TYPE=Release                \
    -DCMAKE_INSTALL_LIBDIR=lib                \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}"        \
    -DPython_EXECUTABLE:FILEPATH="${PYTHON}"  \
    -DPython_INCLUDE_DIR="$(${PYTHON} -c "from sysconfig import get_paths as gp; print(gp()['include'])")" \
    -DPNG_PNG_INCLUDE_DIR="${PREFIX}"

cmake --build build "-j${CPU_COUNT}" -v


cmake --install build
