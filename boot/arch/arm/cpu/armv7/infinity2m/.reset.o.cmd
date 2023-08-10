cmd_arch/arm/cpu/armv7/infinity2m/reset.o := arm-linux-gnueabihf-gcc -Wp,-MD,arch/arm/cpu/armv7/infinity2m/.reset.o.d  -nostdinc -isystem /home/industio/ssd20x/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/8.2.1/include -Iinclude  -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x23E00000  -D__ASSEMBLY__ -g       -D__ARM__ -marm -mno-thumb-interwork  -mabi=aapcs-linux  -mword-relocations  -march=armv7-a  -mno-unaligned-access  -ffunction-sections -fdata-sections -fno-common -ffixed-r9  -mfloat-abi=soft  -pipe     -c -o arch/arm/cpu/armv7/infinity2m/reset.o arch/arm/cpu/armv7/infinity2m/reset.S

source_arch/arm/cpu/armv7/infinity2m/reset.o := arch/arm/cpu/armv7/infinity2m/reset.S

deps_arch/arm/cpu/armv7/infinity2m/reset.o := \

arch/arm/cpu/armv7/infinity2m/reset.o: $(deps_arch/arm/cpu/armv7/infinity2m/reset.o)

$(deps_arch/arm/cpu/armv7/infinity2m/reset.o):
