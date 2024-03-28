@REM copy %RECIPE_DIR%\CMakeLists.txt %SRC_DIR%\mesas\sas\cdflib90

@REM mkdir mesas\sas\cdflib90\_build
@REM cd %SRC_DIR%\mesas\sas\cdflib90\_build

@REM cmake ^
@REM   -LAH ^
@REM   -G "NMake Makefiles" ^
@REM   -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
@REM   -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
@REM   -DCMAKE_BUILD_TYPE:STRING=Release ^
@REM   -DCMAKE_Fortran_COMPILER=%FORTRAN_COMPILER% ^
@REM   ..
@REM if errorlevel 1 exit /b 1

@REM cmake --build . --target install --config Release
@REM if errorlevel 1 exit /b 1

cd %SRC_DIR%

%PYTHON% -m pip install . -vv
if errorlevel 1 exit /b 1
