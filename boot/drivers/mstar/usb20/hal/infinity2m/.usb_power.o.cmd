cmd_drivers/mstar/usb20/./hal/infinity2m/usb_power.o := arm-linux-gnueabihf-gcc -Wp,-MD,drivers/mstar/usb20/./hal/infinity2m/.usb_power.o.d  -nostdinc -isystem /home/industio/ssd20x/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/8.2.1/include -Iinclude  -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x23E00000 -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Os -fno-stack-protector -g -fstack-usage -Wno-format-nonliteral -Werror=date-time -I./drivers/mstar/usb20/hal/infinity2m -I./drivers/mstar/usb20/../gpio/infinity2m/ -D__ARM__ -marm -mno-thumb-interwork -mabi=aapcs-linux -mword-relocations -march=armv7-a -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -mfloat-abi=soft -pipe    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(usb_power)"  -D"KBUILD_MODNAME=KBUILD_STR(usb_power)" -c -o drivers/mstar/usb20/./hal/infinity2m/usb_power.o drivers/mstar/usb20/./hal/infinity2m/usb_power.c

source_drivers/mstar/usb20/./hal/infinity2m/usb_power.o := drivers/mstar/usb20/./hal/infinity2m/usb_power.c

deps_drivers/mstar/usb20/./hal/infinity2m/usb_power.o := \
  drivers/mstar/usb20/../gpio/infinity2m/gpio.h \
  drivers/mstar/usb20/../gpio/infinity2m/mhal_gpio.h \
  include/MsTypes.h \
  drivers/mstar/usb20/../gpio/infinity2m/gpio.h \

drivers/mstar/usb20/./hal/infinity2m/usb_power.o: $(deps_drivers/mstar/usb20/./hal/infinity2m/usb_power.o)

$(deps_drivers/mstar/usb20/./hal/infinity2m/usb_power.o):
