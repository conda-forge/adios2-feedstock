set -ex

export OMPI_ALLOW_RUN_AS_ROOT=1
export OMPI_ALLOW_RUN_AS_ROOT_CONFIRM=1
export OMPI_MCA_rmaps_base_oversubscribe=1
export OMPI_MCA_plm=isolated
export OMPI_MCA_btl=tcp,self
export OMPI_MCA_btl_vader_single_copy_mechanism=none

cd examples/hello

cmake $CMAKE_ARGS -B ./build
cmake --build ./build

for name in adios2_hello_helloWorld_c adios2_hello_helloWorld adios2_hello_helloWorld_hl; do
  echo $name
  ./build/$name
  if [[ "$mpi" != "nompi" ]]; then
    ./build/${name}_mpi
  fi
done
