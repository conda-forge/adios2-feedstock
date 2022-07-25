# these to CMake COMPONENTs contain the Python code
# which is not installed with libadios
cmake --install build --component adios2_python-python
cmake --install build --component adios2_scripts-runtime
