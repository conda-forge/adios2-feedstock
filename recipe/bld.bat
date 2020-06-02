REM Install library with ADIOS2Config.cmake files with cmake

:: remove -GL (whole program optimization) from CXXFLAGS
:: causes a fatal error when linking our .dll
echo "%CXXFLAGS%"
set CFLAGS=%CFLAGS: -GL=%
set CXXFLAGS=%CXXFLAGS: -GL=%
echo "%CXXFLAGS%"

:: dynamic HDF5 linking
:: https://forum.hdfgroup.org/t/linking-hdf5-with-vs2015-c-64-bit-only-works-with-static-libraries/3697
set CFLAGS=%CFLAGS% -DH5_BUILT_AS_DYNAMIC_LIB
set CXXFLAGS=%CXXFLAGS% -DH5_BUILT_AS_DYNAMIC_LIB
echo "%CXXFLAGS%"

mkdir build
cd build

set CURRENTDIR="%cd%"

cmake ^
    -G "NMake Makefiles"        ^
    -DCMAKE_BUILD_TYPE=Release  ^
    -DBUILD_SHARED_LIBS=ON      ^
    -DADIOS2_USE_MPI=OFF        ^
    -DADIOS2_BUILD_EXAMPLES=OFF ^
    -DADIOS2_BUILD_TESTING=OFF  ^
    -DADIOS2_USE_Blosc=ON       ^
    -DADIOS2_USE_BZip2=ON       ^
    -DADIOS2_USE_Fortran=OFF    ^
    -DADIOS2_USE_HDF5=ON        ^
    -DADIOS2_USE_PNG=ON         ^
    -DADIOS2_USE_Profiling=OFF  ^
    -DADIOS2_USE_Python=ON      ^
    -DADIOS2_USE_ZeroMQ=OFF     ^
    -DPython_EXECUTABLE:FILEPATH=%PYTHON% ^
    -DCMAKE_INSTALL_LIBDIR=lib  ^
    -DCMAKE_INSTALL_PYTHONDIR=%SP_DIR% ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%  ^
    -DCMAKE_PYTHON_OUTPUT_DIRECTORY=%CURRENTDIR%\lib\site-packages  ^
    %SRC_DIR%
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake test
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
