cmd_drivers/mstar/disp/./hal/infinity2m/src/hal_disp_vga_timing_tbl.o := arm-linux-gnueabihf-gcc -Wp,-MD,drivers/mstar/disp/./hal/infinity2m/src/.hal_disp_vga_timing_tbl.o.d  -nostdinc -isystem /home/industio/ssd20x/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/8.2.1/include -Iinclude  -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x23E00000 -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Os -fno-stack-protector -g -fstack-usage -Wno-format-nonliteral -Werror=date-time -I./drivers/mstar/disp/drv/disp/inc -I./drivers/mstar/disp/drv/disp/inc/uboot -I./drivers/mstar/disp/drv/disp/pub -I./drivers/mstar/disp/drv/midisp/pub -I./drivers/mstar/disp/hal/infinity2m/inc -I./drivers/mstar/disp/hal/infinity2m/pub -I./drivers/mstar/disp/../common -I./drivers/mstar/disp/hal/pub -D__ARM__ -marm -mno-thumb-interwork -mabi=aapcs-linux -mword-relocations -march=armv7-a -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -mfloat-abi=soft -pipe    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(hal_disp_vga_timing_tbl)"  -D"KBUILD_MODNAME=KBUILD_STR(hal_disp_vga_timing_tbl)" -c -o drivers/mstar/disp/./hal/infinity2m/src/hal_disp_vga_timing_tbl.o drivers/mstar/disp/./hal/infinity2m/src/hal_disp_vga_timing_tbl.c

source_drivers/mstar/disp/./hal/infinity2m/src/hal_disp_vga_timing_tbl.o := drivers/mstar/disp/./hal/infinity2m/src/hal_disp_vga_timing_tbl.c

deps_drivers/mstar/disp/./hal/infinity2m/src/hal_disp_vga_timing_tbl.o := \
  drivers/mstar/disp/./hal/infinity2m/src/hal_disp_vga_timing_tbl.h \
  drivers/mstar/disp/hal/pub/hal_disp_common.h \

drivers/mstar/disp/./hal/infinity2m/src/hal_disp_vga_timing_tbl.o: $(deps_drivers/mstar/disp/./hal/infinity2m/src/hal_disp_vga_timing_tbl.o)

$(deps_drivers/mstar/disp/./hal/infinity2m/src/hal_disp_vga_timing_tbl.o):
