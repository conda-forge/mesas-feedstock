copy %RECIPE_DIR%\CMakeLists.txt %SRC_DIR%\mesas\sas\cdflib90

mkdir mesas\sas\cdflib90\_build
cd %SRC_DIR%\mesas\sas\cdflib90\_build

cmake ^
  -LAH ^
  -G "%CMAKE_GENERATOR%" ^
  -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_BUILD_TYPE:STRING=Release ^
  -DCMAKE_Fortran_COMPILER=%FORTRAN_COMPILER% ^
  ..
if errorlevel 1 exit /b 1

::  -S %SRC_DIR%/mesas/sas/cdflib90/ ^
::  -B %SRC_DIR%/mesas/sas/cdflib90/_build

cmake --build . --target install --config Release
if errorlevel 1 exit /b 1

cd %SRC_DIR%

%PYTHON% -m pip install . -vv
if errorlevel 1 exit /b 1
