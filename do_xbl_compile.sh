make CROSS_COMPILE=aarch64-linux-gnu- O=.output -j$(nproc) qcom_defconfig
make CROSS_COMPILE=aarch64-linux-gnu- O=.output -j$(nproc) DEVICE_TREE=qcom/qrb5165-rb5
../qtestsign/patchxbl.py -o .output/u-boot-xbl.elf -c .output/u-boot-dtb.bin ../../xbl.elf
../qtestsign/qtestsign.py -v6 xbl -o .output/u-boot-xbl.mbn .output/u-boot-xbl.elf
