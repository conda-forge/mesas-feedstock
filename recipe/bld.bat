copy %RECIPE_DIR%\CMakeLists.txt %SRC_DIR%\mesas\sas\cdflib90

mkdir mesas\sas\cdflib90\_build
cmake ^
  -G "%CMAKE_GENERATOR%" ^
  -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_BUILD_TYPE:STRING=Release ^
  -S %SRC_DIR%/mesas/sas/cdflib90/ ^
  -B %SRC_DIR%/mesas/sas/cdflib90/_build

cmake --build %SRC_DIR%/mesas/sas/cdflib90/_build --config Release

%PYTHON% -m pip install . -vv
