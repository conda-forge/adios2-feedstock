#!/bin/bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./thirdparty/enet/enet

if [[ ${target_platform} =~ osx.* ]]; then
    CMAKE_ARGS+=" -DADIOS2_USE_Fortran=OFF"
    CMAKE_ARGS+=" -DADIOS2_USE_BZip2=OFF"
fi


# find out toolchain C++ standard
CXX_STANDARD=11
CXX_EXTENSIONS=OFF
if [[ ${CXXFLAGS} == *"-std=c++11"* ]]; then
    echo "11"
    CXX_STANDARD=11
elif [[ ${CXXFLAGS} == *"-std=c++14"* ]]; then
    echo "14"
    CXX_STANDARD=14
elif [[ ${CXXFLAGS} == *"-std=c++17"* ]]; then
    echo "17"
    CXX_STANDARD=17
elif [[ ${CXXFLAGS} == *"-std="* ]]; then
    echo "ERROR: unknown C++ standard in toolchain!"
    echo ${CXXFLAGS}
    exit 1
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
fi


cmake              \
    -S ${SRC_DIR}  \
    -B build       \
    ${CMAKE_ARGS}  \
    -DCMAKE_BUILD_TYPE=Release                \
    -DCMAKE_VERBOSE_MAKEFILE=ON               \
    -DBUILD_SHARED_LIBS=ON                    \
    -DBUILD_TESTING=${RUN_TESTS}              \
    -DCMAKE_CXX_STANDARD=${CXX_STANDARD}      \
    -DCMAKE_CXX_STANDARD_REQUIRED=ON          \
    -DCMAKE_CXX_EXTENSIONS=${CXX_EXTENSIONS}  \
    -DADIOS2_USE_Blosc=ON                     \
    -DADIOS2_USE_BZip2=ON                     \
    -DADIOS2_USE_HDF5=ON                      \
    -DADIOS2_USE_MPI=${USE_MPI}               \
    -DADIOS2_USE_PNG=ON                       \
    -DADIOS2_USE_Python=ON                    \
    -DADIOS2_USE_ZeroMQ=ON                    \
    -DADIOS2_USE_ZFP=ON                       \
    -DADIOS2_HAVE_ZFP_CUDA=OFF                \
    -DADIOS2_BUILD_EXAMPLES=OFF               \
    -DADIOS2_RUN_INSTALL_TEST=ON              \
    -DPython_EXECUTABLE:FILEPATH=${PYTHON}    \
    -DPython_INCLUDE_DIR=$(${PYTHON} -c "from sysconfig import get_paths as gp; print(gp()['include'])") \
    -DCMAKE_INSTALL_LIBDIR=lib        \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}  \
    -DKWSYS_LFS_WORKS=0               \
    -DPNG_PNG_INCLUDE_DIR=${PREFIX}

cmake --build build -j${CPU_COUNT}
if [[ "${CONDA_BUILD_CROSS_COMPILATION}" != "1" && "${RUN_TESTS}" == "ON" ]]
then
    # SST: Flaky tests
    ctest --test-dir build --output-on-failure -E "SST"
fi
cmake --build build --target install
