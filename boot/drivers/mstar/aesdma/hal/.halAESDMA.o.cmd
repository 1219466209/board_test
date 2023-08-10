cmd_drivers/mstar/aesdma/hal/halAESDMA.o := arm-linux-gnueabihf-gcc -Wp,-MD,drivers/mstar/aesdma/hal/.halAESDMA.o.d  -nostdinc -isystem /home/industio/ssd20x/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/8.2.1/include -Iinclude  -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x23E00000 -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Os -fno-stack-protector -g -fstack-usage -Wno-format-nonliteral -Werror=date-time -I./drivers/mstar/aesdma/hal -I./drivers/mstar/aesdma -D__ARM__ -marm -mno-thumb-interwork -mabi=aapcs-linux -mword-relocations -march=armv7-a -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -mfloat-abi=soft -pipe    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(halAESDMA)"  -D"KBUILD_MODNAME=KBUILD_STR(halAESDMA)" -c -o drivers/mstar/aesdma/hal/halAESDMA.o drivers/mstar/aesdma/hal/halAESDMA.c

source_drivers/mstar/aesdma/hal/halAESDMA.o := drivers/mstar/aesdma/hal/halAESDMA.c

deps_drivers/mstar/aesdma/hal/halAESDMA.o := \
    $(wildcard include/config/sram/dummy/access/rsa.h) \
  drivers/mstar/aesdma/hal/halAESDMA.h \
    $(wildcard include/config/riu/base/address.h) \
    $(wildcard include/config/xiu/base/address.h) \
    $(wildcard include/config/emmc/base/address.h) \

drivers/mstar/aesdma/hal/halAESDMA.o: $(deps_drivers/mstar/aesdma/hal/halAESDMA.o)

$(deps_drivers/mstar/aesdma/hal/halAESDMA.o):
