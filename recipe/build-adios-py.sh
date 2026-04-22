# see "make list_install_components"
cmake --install build --component adios2_tools-runtime --prefix "${PREFIX}"
cmake --install build --component adios2_scripts-runtime --prefix "${PREFIX}"
cmake --install build --component adios2_python-python --prefix "${PREFIX}"
