#!/bin/sh
ORIGINAL_LD_LIBRARY_PATH=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/cuda-9.1/lib64:/usr/local/cuda-9.1/extras/CUPTI/lib64:$LD_LIBRARY_PATH
OLDPYTHON_PATH=$PYTHONPATH
# export PYTHONPATH="$PYTHONPATH"