cmd_drivers/mstar/isp/clk_pad.o := arm-linux-gnueabihf-gcc -Wp,-MD,drivers/mstar/isp/.clk_pad.o.d  -nostdinc -isystem /home/industio/ssd20x/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/8.2.1/include -Iinclude  -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x23E00000 -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Os -fno-stack-protector -g -fstack-usage -Wno-format-nonliteral -Werror=date-time -D__ARM__ -marm -mno-thumb-interwork -mabi=aapcs-linux -mword-relocations -march=armv7-a -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -mfloat-abi=soft -pipe    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(clk_pad)"  -D"KBUILD_MODNAME=KBUILD_STR(clk_pad)" -c -o drivers/mstar/isp/clk_pad.o drivers/mstar/isp/clk_pad.c

source_drivers/mstar/isp/clk_pad.o := drivers/mstar/isp/clk_pad.c

deps_drivers/mstar/isp/clk_pad.o := \
  drivers/mstar/isp/isp_hal.h \
  arch/arm/include/asm/types.h \
    $(wildcard include/config/arm64.h) \
  drivers/mstar/isp/infinity_reg_isp0.h \
  drivers/mstar/isp/isp_pub.h \

drivers/mstar/isp/clk_pad.o: $(deps_drivers/mstar/isp/clk_pad.o)

$(deps_drivers/mstar/isp/clk_pad.o):
