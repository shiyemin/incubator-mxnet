#!/bin/sh

export CPLUS_INCLUDE_PATH=$HOME/lib/cudnn-8.0-linux-x64-v7/include:$CPLUS_INCLUDE_PATH
export C_INCLUDE_PATH=$HOME/lib/cudnn-8.0-linux-x64-v7/include:$C_INCLUDE_PATH
make -j 48 USE_OPENCV=1 USE_BLAS=openblas USE_CUDA=1 USE_CUDA_PATH=/usr/local/cuda USE_CUDNN=1 && \
cd python && \
pip install -e . --user

