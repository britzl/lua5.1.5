#!/usr/bin/env bash

PLATFORM=$1

echo "Building for platform ${PLATFORM}"

make clean
make ${PLATFORM} LUAC_STR_SIZE_TYPE=int
if [ "${PLATFORM}" = "windows" ]; then
	mv src/luac.exe luac-32.exe
else
	mv src/luac luac-32
fi

make clean
make ${PLATFORM} LUAC_STR_SIZE_TYPE=size_t
if [ "${PLATFORM}" = "windows" ]; then
	mv src/luac.exe luac-64.exe
else
	mv src/luac luac-64
fi
