echo "CFLAGS: %CFLAGS%"
echo "CXXFLAGS: %CXXFLAGS%"
echo "LDFLAGS: %LDFLAGS%"

cmake ^
    %CMAKE_ARGS%                              ^
    -S %SRC_DIR%                              ^
    -B build                                  ^
    -G "NMake Makefiles"                      ^
    -DADIOS2_BUILD_EXAMPLES=OFF               ^
    -DADIOS2_Blosc2_PREFER_SHARED=ON          ^
    -DADIOS2_USE_Blosc2=ON                    ^
    -DADIOS2_HAVE_ZFP_CUDA=OFF                ^
    -DADIOS2_INSTALL_GENERATE_CONFIG=OFF      ^
    -DADIOS2_RUN_INSTALL_TEST=ON              ^
    -DADIOS2_USE_BZip2=ON                     ^
    -DADIOS2_USE_Campaign=OFF                 ^
    -DADIOS2_USE_HDF5=ON                      ^
    -DADIOS2_USE_MPI=OFF                      ^
    -DADIOS2_USE_PNG=ON                       ^
    -DADIOS2_USE_Python=ON                    ^
    -DADIOS2_USE_ZFP=ON                       ^
    -DBUILD_SHARED_LIBS=ON                    ^
    -DBUILD_TESTING=OFF                       ^
    -DCMAKE_BUILD_TYPE=Release                ^
    -DCMAKE_INSTALL_LIBDIR=lib                ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%   ^
    -DCMAKE_VERBOSE_MAKEFILE=ON               ^
    -DPython_EXECUTABLE:FILEPATH=%PYTHON%
if errorlevel 1 exit 1

cmake --build build -j%CPU_COUNT%
if errorlevel 1 exit 1

cmake --install build
if errorlevel 1 exit 1
