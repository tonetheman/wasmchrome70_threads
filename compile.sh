#!/bin/bash

emcc -O2 -s USE_PTHREADS=1 -s PTHREAD_POOL_SIZE=2 -o test.js simple.c