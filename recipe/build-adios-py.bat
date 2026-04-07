:: see "make list_install_components"
cmake --install build --component adios2_tools-runtime
cmake --install build --component adios2_scripts-runtime
cmake --install build --component adios2_python-python
:: python installs to Library/Lib/site-packages instead of Lib/site-packages for some reason
move %LIBRARY_LIB%\site-packages\adios2 %SP_DIR%\adios2
