#!/usr/bin/env bash

PLATFORM=$1

echo "Building for platform ${PLATFORM}"

make clean
make ${PLATFORM} LUAC_STR_SIZE_TYPE=int
mv src/luac luac-32

make clean
make ${PLATFORM} LUAC_STR_SIZE_TYPE=size_t
mv src/luac luac-64
