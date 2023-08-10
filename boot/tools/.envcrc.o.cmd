cmd_tools/envcrc.o := cc -Wp,-MD,tools/.envcrc.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer   -include ./include/libfdt_env.h -idirafterinclude -idirafter./arch/arm/include -I./lib/libfdt -I./tools -DCONFIG_SYS_TEXT_BASE=0x23E00000 -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/envcrc.o tools/envcrc.c

source_tools/envcrc.o := tools/envcrc.c

deps_tools/envcrc.o := \
    $(wildcard include/config/env/is/in/flash.h) \
    $(wildcard include/config/env/addr.h) \
    $(wildcard include/config/sys/flash/base.h) \
    $(wildcard include/config/env/offset.h) \
    $(wildcard include/config/env/addr/redund.h) \
    $(wildcard include/config/env/offset/redund.h) \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/env/sect/size.h) \
    $(wildcard include/config/env/size/redund.h) \
    $(wildcard include/config/sys/monitor/base.h) \
    $(wildcard include/config/sys/monitor/len.h) \
    $(wildcard include/config/sys/redundand/environment.h) \
    $(wildcard include/config/build/envcrc.h) \
  /usr/include/stdc-predef.h \
  include/libfdt_env.h \
  include/compiler.h \
    $(wildcard include/config/use/stdint.h) \
  /usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h \
  /usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h \
  /usr/include/stdint.h \
  /usr/include/x86_64-linux-gnu/bits/libc-header-start.h \
  /usr/include/features.h \
  /usr/include/x86_64-linux-gnu/sys/cdefs.h \
  /usr/include/x86_64-linux-gnu/bits/wordsize.h \
  /usr/include/x86_64-linux-gnu/bits/long-double.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
  /usr/include/x86_64-linux-gnu/bits/types.h \
  /usr/include/x86_64-linux-gnu/bits/timesize.h \
  /usr/include/x86_64-linux-gnu/bits/typesizes.h \
  /usr/include/x86_64-linux-gnu/bits/time64.h \
  /usr/include/x86_64-linux-gnu/bits/wchar.h \
  /usr/include/x86_64-linux-gnu/bits/stdint-intn.h \
  /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h \
  /usr/include/errno.h \
  /usr/include/x86_64-linux-gnu/bits/errno.h \
  /usr/include/linux/errno.h \
  /usr/include/x86_64-linux-gnu/asm/errno.h \
  /usr/include/asm-generic/errno.h \
  /usr/include/asm-generic/errno-base.h \
  /usr/include/x86_64-linux-gnu/bits/types/error_t.h \
  /usr/include/stdlib.h \
  /usr/include/x86_64-linux-gnu/bits/waitflags.h \
  /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
  /usr/include/x86_64-linux-gnu/bits/floatn.h \
  /usr/include/x86_64-linux-gnu/bits/floatn-common.h \
  /usr/include/x86_64-linux-gnu/bits/types/locale_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__locale_t.h \
  /usr/include/x86_64-linux-gnu/sys/types.h \
  /usr/include/x86_64-linux-gnu/bits/types/clock_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/time_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/timer_t.h \
  /usr/include/endian.h \
  /usr/include/x86_64-linux-gnu/bits/endian.h \
  /usr/include/x86_64-linux-gnu/bits/endianness.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap.h \
  /usr/include/x86_64-linux-gnu/bits/uintn-identity.h \
  /usr/include/x86_64-linux-gnu/sys/select.h \
  /usr/include/x86_64-linux-gnu/bits/select.h \
  /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h \
  /usr/include/x86_64-linux-gnu/bits/select2.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
  /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h \
  /usr/include/x86_64-linux-gnu/bits/struct_mutex.h \
  /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h \
  /usr/include/alloca.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-float.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib.h \
  /usr/include/stdio.h \
  /usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h \
  /usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__FILE.h \
  /usr/include/x86_64-linux-gnu/bits/types/FILE.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h \
  /usr/include/x86_64-linux-gnu/bits/types/cookie_io_functions_t.h \
  /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
  /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
  /usr/include/x86_64-linux-gnu/bits/stdio.h \
  /usr/include/x86_64-linux-gnu/bits/stdio2.h \
  /usr/include/string.h \
  /usr/include/strings.h \
  /usr/include/x86_64-linux-gnu/bits/strings_fortified.h \
  /usr/include/x86_64-linux-gnu/bits/string_fortified.h \
  /usr/include/x86_64-linux-gnu/sys/mman.h \
  /usr/include/x86_64-linux-gnu/bits/mman.h \
  /usr/include/x86_64-linux-gnu/bits/mman-map-flags-generic.h \
  /usr/include/x86_64-linux-gnu/bits/mman-linux.h \
  /usr/include/x86_64-linux-gnu/bits/mman-shared.h \
  /usr/include/fcntl.h \
  /usr/include/x86_64-linux-gnu/bits/fcntl.h \
  /usr/include/x86_64-linux-gnu/bits/fcntl-linux.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h \
  /usr/include/linux/falloc.h \
  /usr/include/x86_64-linux-gnu/bits/stat.h \
  /usr/include/x86_64-linux-gnu/bits/fcntl2.h \
  /usr/include/byteswap.h \
  /usr/include/time.h \
  /usr/include/x86_64-linux-gnu/bits/time.h \
  /usr/include/x86_64-linux-gnu/bits/timex.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_tm.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_itimerspec.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  /usr/include/linux/posix_types.h \
  /usr/include/linux/stddef.h \
  /usr/include/x86_64-linux-gnu/asm/posix_types.h \
  /usr/include/x86_64-linux-gnu/asm/posix_types_64.h \
  /usr/include/asm-generic/posix_types.h \
  /usr/include/x86_64-linux-gnu/asm/bitsperlong.h \
  /usr/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /usr/include/x86_64-linux-gnu/asm/types.h \
  /usr/include/asm-generic/types.h \
  /usr/include/asm-generic/int-ll64.h \
  /usr/lib/gcc/x86_64-linux-gnu/9/include/stdbool.h \
  /usr/include/unistd.h \
  /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
  /usr/include/x86_64-linux-gnu/bits/environments.h \
  /usr/include/x86_64-linux-gnu/bits/confname.h \
  /usr/include/x86_64-linux-gnu/bits/getopt_posix.h \
  /usr/include/x86_64-linux-gnu/bits/getopt_core.h \
  /usr/include/x86_64-linux-gnu/bits/unistd.h \
  /usr/include/x86_64-linux-gnu/bits/unistd_ext.h \
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
    $(wildcard include/config/spl/build.h) \
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
    $(wildcard include/config/skip/lowlevel/init.h) \
    $(wildcard include/config/sys/malloc/len.h) \
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
    $(wildcard include/config/ms/partition.h) \
    $(wildcard include/config/mstar/env/nor/offset.h) \
    $(wildcard include/config/mstar/env/offset.h) \
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

tools/envcrc.o: $(deps_tools/envcrc.o)

$(deps_tools/envcrc.o):
