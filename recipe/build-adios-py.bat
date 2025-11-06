REM Build Python bindings using installed libadios2 (LIBADIOS_MODE)

echo "CFLAGS: %CFLAGS%"
echo "CXXFLAGS: %CXXFLAGS%"
echo "LDFLAGS: %LDFLAGS%"

cmake ^
    %CMAKE_ARGS%                ^
    -S %SRC_DIR%                ^
    -B build                    ^
    -G "NMake Makefiles"        ^
    -DCMAKE_BUILD_TYPE=Release  ^
    -DCMAKE_VERBOSE_MAKEFILE=ON ^
    -DBUILD_SHARED_LIBS=ON      ^
    -DBUILD_TESTING=OFF         ^
    -DADIOS2_LIBADIOS_MODE=ON   ^
    -DADIOS2_USE_MPI=OFF        ^
    -DADIOS2_USE_Python=ON      ^
    -DCMAKE_INSTALL_LIBDIR=lib  ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DPython_EXECUTABLE:FILEPATH=%PYTHON%
if errorlevel 1 exit 1

cmake --build build -j%CPU_COUNT%
if errorlevel 1 exit 1

:: see "make list_install_components"
cmake --install build --component adios2_tools-runtime
if errorlevel 1 exit 1
cmake --install build --component adios2_scripts-runtime
if errorlevel 1 exit 1
cmake --install build --component adios2_python-python
if errorlevel 1 exit 1
