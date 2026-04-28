set -ex

export OMPI_ALLOW_RUN_AS_ROOT=1
export OMPI_ALLOW_RUN_AS_ROOT_CONFIRM=1
export OMPI_MCA_rmaps_base_oversubscribe=1
export OMPI_MCA_plm=isolated
export OMPI_MCA_btl=tcp,self
export OMPI_MCA_btl_vader_single_copy_mechanism=none

cd examples/hello/helloWorld

MPI_ARGS=""
if [[ "${mpi}" != "nompi" ]]; then
    # Override the cross-compiler with the MPI wrappers so cmake's FindMPI
    # works normally instead of failing in cross-compilation mode.
    MPI_ARGS="-DCMAKE_C_COMPILER=${PREFIX}/bin/mpicc -DCMAKE_CXX_COMPILER=${PREFIX}/bin/mpicxx"
fi

cmake $CMAKE_ARGS $MPI_ARGS -B ./build
cmake --build ./build

for name in adios2_hello_helloWorld_c adios2_hello_helloWorld adios2_hello_helloWorld_hl; do
  echo $name
  ./build/$name
  if [[ "$mpi" != "nompi" ]]; then
    ./build/${name}_mpi
  fi
done
