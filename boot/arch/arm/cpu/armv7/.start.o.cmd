cmd_arch/arm/cpu/armv7/start.o := arm-linux-gnueabihf-gcc -Wp,-MD,arch/arm/cpu/armv7/.start.o.d  -nostdinc -isystem /home/industio/ssd20x/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/8.2.1/include -Iinclude  -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x23E00000  -D__ASSEMBLY__ -g      -D__ARM__ -marm -mno-thumb-interwork  -mabi=aapcs-linux  -mword-relocations  -march=armv7-a  -mno-unaligned-access  -ffunction-sections -fdata-sections -fno-common -ffixed-r9  -mfloat-abi=soft  -pipe     -c -o arch/arm/cpu/armv7/start.o arch/arm/cpu/armv7/start.S

source_arch/arm/cpu/armv7/start.o := arch/arm/cpu/armv7/start.S

deps_arch/arm/cpu/armv7/start.o := \
    $(wildcard include/config/omap44xx.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/skip/lowlevel/init.h) \
    $(wildcard include/config/sys/icache/off.h) \
    $(wildcard include/config/arm/errata/716044.h) \
    $(wildcard include/config/arm/errata/742230.h) \
    $(wildcard include/config/arm/errata/794072.h) \
    $(wildcard include/config/arm/errata/743622.h) \
    $(wildcard include/config/arm/errata/751472.h) \
    $(wildcard include/config/arm/errata/761320.h) \
  include/asm-offsets.h \
  include/generated/generic-asm-offsets.h \
  include/config.h \
    $(wildcard include/config/boarddir.h) \
  include/config_defaults.h \
    $(wildcard include/config/defaults/h/.h) \
    $(wildcard include/config/bootm/linux.h) \
    $(wildcard include/config/bootm/netbsd.h) \
    $(wildcard include/config/bootm/plan9.h) \
    $(wildcard include/config/bootm/rtems.h) \
    $(wildcard include/config/bootm/vxworks.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/zlib.h) \
    $(wildcard include/config/partitions.h) \
    $(wildcard include/config/dm/warn.h) \
    $(wildcard include/config/dm/device/remove.h) \
    $(wildcard include/config/dm/stdio.h) \
  include/configs/infinity2m.h \
    $(wildcard include/config/h.h) \
    $(wildcard include/config/arch/infinity2m.h) \
    $(wildcard include/config/armcortexa7.h) \
    $(wildcard include/config/sys/l2cache/off.h) \
    $(wildcard include/config/sys/arch/timer.h) \
    $(wildcard include/config/ms/piu/timer.h) \
    $(wildcard include/config/autoboot/keyed.h) \
    $(wildcard include/config/autoboot/delay/str.h) \
    $(wildcard include/config/display/boardinfo.h) \
    $(wildcard include/config/board/late/init.h) \
    $(wildcard include/config/version/fpga.h) \
    $(wildcard include/config/sys/hz/clock.h) \
    $(wildcard include/config/uart/clock.h) \
    $(wildcard include/config/baudrate.h) \
    $(wildcard include/config/piutimer/clock.h) \
    $(wildcard include/config/wdt/clock.h) \
    $(wildcard include/config/sys/baudrate/table.h) \
    $(wildcard include/config/bootdelay.h) \
    $(wildcard include/config/zero/bootdelay/check.h) \
    $(wildcard include/config/ms/android/recovery.h) \
    $(wildcard include/config/ms/display.h) \
    $(wildcard include/config/ms/show/logo.h) \
    $(wildcard include/config/ms/isp.h) \
    $(wildcard include/config/ms/piutimer.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/sys/longhelp.h) \
    $(wildcard include/config/sys/prompt.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/sys/maxargs.h) \
    $(wildcard include/config/sys/bargsize.h) \
    $(wildcard include/config/stacksize.h) \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/hw/watchdog.h) \
    $(wildcard include/config/hw/watchdog/timeout/s.h) \
    $(wildcard include/config/sys/memtest/start.h) \
    $(wildcard include/config/sys/memtest/end.h) \
    $(wildcard include/config/sys/text/base.h) \
    $(wildcard include/config/sys/sdram/base.h) \
    $(wildcard include/config/sys/init/sp/addr.h) \
    $(wildcard include/config/uboot/ram/size.h) \
    $(wildcard include/config/sys/load/addr.h) \
    $(wildcard include/config/cmdline/tag.h) \
    $(wildcard include/config/setup/memory/tags.h) \
    $(wildcard include/config/initrd/tag.h) \
    $(wildcard include/config/cmdline/editing.h) \
    $(wildcard include/config/auto/complete.h) \
    $(wildcard include/config/boot/time/analysis.h) \
    $(wildcard include/config/boot/time/analysis/use/rtc.h) \
    $(wildcard include/config/sys/no/flash.h) \
    $(wildcard include/config/ms/isp/flash.h) \
    $(wildcard include/config/cmd/sf.h) \
    $(wildcard include/config/ms/save/env/in/isp/flash.h) \
    $(wildcard include/config/env/is/in/spi/flash.h) \
    $(wildcard include/config/env/sect/size.h) \
    $(wildcard include/config/ms/partition.h) \
    $(wildcard include/config/env/offset.h) \
    $(wildcard include/config/mstar/env/nor/offset.h) \
    $(wildcard include/config/mstar/env/offset.h) \
    $(wildcard include/config/env/offset/redund.h) \
    $(wildcard include/config/ms/sdmmc.h) \
    $(wildcard include/config/mmc.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/generic/mmc.h) \
    $(wildcard include/config/ms/sdmmc/max/read/blocks.h) \
    $(wildcard include/config/ms/spinand.h) \
    $(wildcard include/config/ms/save/env/in/nand/flash.h) \
    $(wildcard include/config/env/is/in/nand.h) \
    $(wildcard include/config/mstar/env/nand/offset.h) \
    $(wildcard include/config/env/range.h) \
    $(wildcard include/config/mstar/env/nand/redund/offset.h) \
    $(wildcard include/config/cmd/spinand/cis.h) \
    $(wildcard include/config/cmd/ubi.h) \
    $(wildcard include/config/cmd/ubifs.h) \
    $(wildcard include/config/ubi/mwrite.h) \
    $(wildcard include/config/extra/env/settings.h) \
    $(wildcard include/config/cmd/nand.h) \
    $(wildcard include/config/sys/nand/max/chips.h) \
    $(wildcard include/config/sys/max/nand/device.h) \
    $(wildcard include/config/sys/nand/base.h) \
    $(wildcard include/config/ms/nand.h) \
    $(wildcard include/config/env/offset/oob.h) \
    $(wildcard include/config/cmd/cis.h) \
    $(wildcard include/config/ms/emmc.h) \
    $(wildcard include/config/env/is/in/mmc.h) \
    $(wildcard include/config/sys/mmc/env/dev.h) \
    $(wildcard include/config/ms/emmc/dev/index.h) \
    $(wildcard include/config/emmc/partition.h) \
    $(wildcard include/config/unlzo/dst/addr.h) \
    $(wildcard include/config/cmd/saveenv.h) \
    $(wildcard include/config/env/is/nowhere.h) \
    $(wildcard include/config/ms/mtd/isp/flash.h) \
    $(wildcard include/config/rbtree.h) \
    $(wildcard include/config/mtd/device.h) \
    $(wildcard include/config/mtd/partitions.h) \
    $(wildcard include/config/cmd/mtdparts.h) \
    $(wildcard include/config/cmd/cache.h) \
    $(wildcard include/config/cmd/memory.h) \
    $(wildcard include/config/cmd/run.h) \
    $(wildcard include/config/autoscript.h) \
    $(wildcard include/config/ms/usb.h) \
    $(wildcard include/config/usb.h) \
    $(wildcard include/config/cmd/usb.h) \
    $(wildcard include/config/usb/storage.h) \
    $(wildcard include/config/cmd/fat.h) \
    $(wildcard include/config/dos/partition.h) \
    $(wildcard include/config/ms/enable/usb/lan.h) \
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/ping.h) \
    $(wildcard include/config/bootp/gateway.h) \
    $(wildcard include/config/skip/relocate/uboot.h) \
    $(wildcard include/config/use/irq.h) \
    $(wildcard include/config/ms/emac.h) \
    $(wildcard include/config/miniuboot.h) \
    $(wildcard include/config/tftp/port.h) \
    $(wildcard include/config/xz.h) \
    $(wildcard include/config/mz.h) \
    $(wildcard include/config/cmd/i2c.h) \
    $(wildcard include/config/sys/i2c.h) \
    $(wildcard include/config/i2c/multi/bus.h) \
    $(wildcard include/config/sys/i2c/mstar.h) \
    $(wildcard include/config/sys/i2c/ms/speed.h) \
    $(wildcard include/config/sys/i2c/ms/slave.h) \
    $(wildcard include/config/sys/i2c/0/padmux.h) \
    $(wildcard include/config/sys/i2c/1/padmux.h) \
    $(wildcard include/config/cmd/eeprom.h) \
    $(wildcard include/config/hard/i2c.h) \
    $(wildcard include/config/sys/i2c/eeprom/addr/len.h) \
    $(wildcard include/config/sys/i2c/eeprom/addr.h) \
    $(wildcard include/config/ms/srcfg.h) \
    $(wildcard include/config/bootargs.h) \
    $(wildcard include/config/bootcommand.h) \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/h/.h) \
    $(wildcard include/config/sys/generic/global/data.h) \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/sys/boot/ramdisk/high.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/static/rela.h) \
    $(wildcard include/config/fsl/lsch3.h) \
    $(wildcard include/config/ls102xa.h) \
  include/config_fallbacks.h \
    $(wildcard include/config/fallbacks/h.h) \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
    $(wildcard include/config/fs/fat.h) \
    $(wildcard include/config/cmd/ext4.h) \
    $(wildcard include/config/cmd/ext2.h) \
    $(wildcard include/config/fs/ext4.h) \
    $(wildcard include/config/cmd/ext4/write.h) \
    $(wildcard include/config/ext4/write.h) \
    $(wildcard include/config/cmd/ide.h) \
    $(wildcard include/config/cmd/sata.h) \
    $(wildcard include/config/cmd/scsi.h) \
    $(wildcard include/config/cmd/part.h) \
    $(wildcard include/config/cmd/gpt.h) \
    $(wildcard include/config/systemace.h) \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/partition/uuids.h) \
    $(wildcard include/config/efi/partition.h) \
    $(wildcard include/config/random/uuid.h) \
    $(wildcard include/config/cmd/uuid.h) \
    $(wildcard include/config/bootp/pxe.h) \
    $(wildcard include/config/lib/uuid.h) \
    $(wildcard include/config/lib/rand.h) \
    $(wildcard include/config/lib/hw/rand.h) \
    $(wildcard include/config/api.h) \
    $(wildcard include/config/lcd.h) \
    $(wildcard include/config/cmd/bmp.h) \
    $(wildcard include/config/fit/signature.h) \
    $(wildcard include/config/image/format/legacy.h) \
    $(wildcard include/config/disable/image/legacy.h) \
    $(wildcard include/config/dm/i2c.h) \
  include/config_uncmd_spl.h \
    $(wildcard include/config/uncmd/spl/h//.h) \
    $(wildcard include/config/cmd/cdp.h) \
    $(wildcard include/config/cmd/dns.h) \
    $(wildcard include/config/cmd/link/local.h) \
    $(wildcard include/config/cmd/nfs.h) \
    $(wildcard include/config/cmd/rarp.h) \
    $(wildcard include/config/cmd/sntp.h) \
    $(wildcard include/config/cmd/tftpput.h) \
    $(wildcard include/config/cmd/tftpsrv.h) \
  include/version.h \
    $(wildcard include/config/ident/string.h) \
  include/timestamp.h \
  include/generated/timestamp_autogenerated.h \
  include/generated/version_autogenerated.h \
  arch/arm/include/asm/system.h \
    $(wildcard include/config/sys/noncached/memory.h) \
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \

arch/arm/cpu/armv7/start.o: $(deps_arch/arm/cpu/armv7/start.o)

$(deps_arch/arm/cpu/armv7/start.o):
