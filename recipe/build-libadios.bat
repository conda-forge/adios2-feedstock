REM Install library with ADIOS2Config.cmake files with cmake

echo "CFLAGS: %CFLAGS%"
echo "CXXFLAGS: %CXXFLAGS%"
echo "LDFLAGS: %LDFLAGS%"

:: dynamic HDF5 linking
:: https://forum.hdfgroup.org/t/linking-hdf5-with-vs2015-c-64-bit-only-works-with-static-libraries/3697
set CFLAGS=%CFLAGS% -DH5_BUILT_AS_DYNAMIC_LIB
set CXXFLAGS=%CXXFLAGS% -DH5_BUILT_AS_DYNAMIC_LIB
echo "%CXXFLAGS%"

cmake ^
    %CMAKE_ARGS%                ^
    -S %SRC_DIR%                ^
    -B build                    ^
    -G "NMake Makefiles"        ^
    -DCMAKE_BUILD_TYPE=Release  ^
    -DCMAKE_VERBOSE_MAKEFILE=ON ^
    -DBUILD_SHARED_LIBS=ON      ^
    -DBUILD_TESTING=OFF         ^
    -DADIOS2_USE_MPI=OFF        ^
    -DADIOS2_BUILD_EXAMPLES=OFF ^
    -DADIOS2_Blosc2_PREFER_SHARED=ON  ^
    -DADIOS2_LIBADIOS_MODE=ON   ^
    -DADIOS2_USE_Blosc2=ON      ^
    -DADIOS2_USE_BZip2=ON       ^
    -DADIOS2_USE_Campaign=OFF   ^
    -DADIOS2_USE_Fortran=OFF    ^
    -DADIOS2_USE_HDF5=ON        ^
    -DADIOS2_USE_HDF5_VOL=OFF   ^
    -DADIOS2_USE_PNG=ON         ^
    -DADIOS2_USE_Profiling=OFF  ^
    -DADIOS2_USE_Python=ON      ^
    -DADIOS2_USE_ZeroMQ=OFF     ^
    -DADIOS2_USE_ZFP=ON         ^
    -DADIOS2_HAVE_ZFP_CUDA=OFF  ^
    -DADIOS2_RUN_INSTALL_TEST=OFF         ^
    -DPython_EXECUTABLE:FILEPATH=%PYTHON% ^
    -DCMAKE_INSTALL_LIBDIR=lib  ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%
if errorlevel 1 exit 1

cmake --build build -j%CPU_COUNT%
if errorlevel 1 exit 1

:: diff command is required for testing: package "diff-match-patch"
:: should provide it but ADIOS 2.7.1 CMake cannot find it
:: nmake test  OR
:: ctest --test-dir build --output-on-failure -E "SST"
:: if errorlevel 1 exit 1

cmake --install build

if errorlevel 1 exit 1
