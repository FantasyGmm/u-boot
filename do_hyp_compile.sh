make CROSS_COMPILE=aarch64-linux-gnu- O=.output qcom_defconfig hyp-sm8250.config
make CROSS_COMPILE=aarch64-linux-gnu- O=.output -j$(nproc) DEVICE_TREE=qcom/qrb5165-rb5
../qtestsign/qtestsign.py -v6 hyp -o .output/u-boot-hyp.mbn .output/u-boot.elf
