mkdir -p ${SRC_DIR}/mesas/sas/cdflib90/_build

cmake -S ${SRC_DIR}/mesas/sas/cdflib90 -B ${SRC_DIR}/mesas/sas/cdflib90/_build
make -C ${SRC_DIR}/mesas/sas/cdflib90/_build
pip install . -vv
