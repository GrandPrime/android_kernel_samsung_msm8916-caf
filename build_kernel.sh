#!/bin/bash

export ARCH=arm
#export CROSS_COMPILE=...
outDir="../output"

# always clean build
if [ -d ${outDir} ]; then
	rm -fr ${outDir}
fi

mkdir -p ${outDir}

make -C $(pwd) O=${outDir} cyanogen_grandprimeltexx_defconfig
time make -j4 -C $(pwd) O=${outDir}
