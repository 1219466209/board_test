cmd_drivers/mstar/flash_isp/drvDeviceInfo.o := arm-linux-gnueabihf-gcc -Wp,-MD,drivers/mstar/flash_isp/.drvDeviceInfo.o.d  -nostdinc -isystem /home/industio/ssd20x/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/8.2.1/include -Iinclude  -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x23E00000 -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Os -fno-stack-protector -g -fstack-usage -Wno-format-nonliteral -Werror=date-time -I./drivers/mstar/flash_isp/infinity2m -I./drivers/mstar/flash_isp -D__ARM__ -marm -mno-thumb-interwork -mabi=aapcs-linux -mword-relocations -march=armv7-a -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -mfloat-abi=soft -pipe    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(drvDeviceInfo)"  -D"KBUILD_MODNAME=KBUILD_STR(drvDeviceInfo)" -c -o drivers/mstar/flash_isp/drvDeviceInfo.o drivers/mstar/flash_isp/drvDeviceInfo.c

source_drivers/mstar/flash_isp/drvDeviceInfo.o := drivers/mstar/flash_isp/drvDeviceInfo.c

deps_drivers/mstar/flash_isp/drvDeviceInfo.o := \
  drivers/mstar/flash_isp/MsTypes.h \
  drivers/mstar/flash_isp/drvDeviceInfo.h \
  drivers/mstar/flash_isp/infinity2m/regSERFLASH.h \
  arch/arm/include/asm/arch/mach/platform.h \
    $(wildcard include/config/version/fpga.h) \
  arch/arm/include/asm/arch/mach/ms_types.h \
  drivers/mstar/flash_isp/drvSERFLASH.h \
  drivers/mstar/flash_isp/infinity2m/halSERFLASH.h \
  include/MsTypes.h \

drivers/mstar/flash_isp/drvDeviceInfo.o: $(deps_drivers/mstar/flash_isp/drvDeviceInfo.o)

$(deps_drivers/mstar/flash_isp/drvDeviceInfo.o):
