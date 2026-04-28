:: see "make list_install_components"
cmake --install build --component adios2_tools-runtime --prefix %LIBRARY_PREFIX%
cmake --install build --component adios2_scripts-runtime --prefix %LIBRARY_PREFIX%
cmake --install build --component adios2_python-python --prefix %LIBRARY_PREFIX%
:: python installs to Library/Lib/site-packages instead of Lib/site-packages for some reason
:: Use xcopy+rd instead of move: move fails when the destination already exists (e.g.
:: staging cmake --install already placed files in SP_DIR via Python3_SITELIB).
if exist "%LIBRARY_LIB%\site-packages\adios2" (
    xcopy /E /I /Y "%LIBRARY_LIB%\site-packages\adios2" "%SP_DIR%\adios2"
    if errorlevel 1 exit 1
    rd /S /Q "%LIBRARY_LIB%\site-packages\adios2"
    if errorlevel 1 exit 1
)
