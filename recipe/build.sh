mkdir -p mesas/sas/cdflib90/_build

cmake -S mesas/sas/cdflib90 -B mesas/sas/cdflib90/_build
make -C mesas/sas/cdflib90/_build
pip install . -vv
