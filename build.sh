#!/bin/bash
args="-j$(nproc --all) \
	O=out \
	ARCH=arm64 \
	CLANG_TRIPLE=aarch64-linux-gnu- \
	CROSS_COMPILE=${HOME}/cbl/bin/aarch64-linux-gnu- \
	CC=${HOME}/cbl/bin/clang \
	CROSS_COMPILE_ARM32=${HOME}/cbl/bin/arm-linux-gnueabi- "
	make ${args} lineage-msm8998-yoshino-maple_dsds_defconfig
	make ${args}
