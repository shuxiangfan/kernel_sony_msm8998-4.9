#!/bin/bash
args="-j$(nproc --all) \
	O=out \
	ARCH=arm64 \
	CROSS_COMPILE=${HOME}/gcc49_arm64/bin/aarch64-linux-android- \
	CROSS_COMPILE_ARM32=${HOME}/cbl/bin/arm-linux-gnueabi- "
	make ${args} lineage-msm8998-yoshino-maple_defconfig
	make ${args}
