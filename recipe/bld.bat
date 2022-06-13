copy %RECIPE_DIR%\CMakeLists.txt %SRC_DIR%\mesas\sas\cdflib90

mkdir mesas\sas\cdflib90\_build
cmake ^
  -G "%CMAKE_GENERATOR%" ^
  -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_BUILD_TYPE:STRING=Release ^
  -DCMAKE_Fortran_COMPILER=%FORTRAN_COMPILER% ^
  -S %SRC_DIR%/mesas/sas/cdflib90/ ^
  -B %SRC_DIR%/mesas/sas/cdflib90/_build
if errorlevel 1 exit /b 1

cd %SRC_DIR%\mesas\sas\cdflib90\_build
nmake
if errorlevel 1 exit /b 1

cd %SRC_DIR%
:: cmake --build %SRC_DIR%/mesas/sas/cdflib90/_build --config Release

%PYTHON% -m pip install . -vv
if errorlevel 1 exit /b 1
