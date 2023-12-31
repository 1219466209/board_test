#!/bin/bash

while getopts "f:p:q:o:" opt; do
  case $opt in
    f)
      flashtype=$OPTARG
      ;;
    p)
      chip=$OPTARG
      ;;
    q)
      fastboot=$OPTARG
      ;;
    o)
      project=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

DATE=$(date +%m%d)
#RELEASEDIR=ReleaseToCus_${DATE}
#images will output in ${RELEASEDIR}/images/
RELEASEDIR=`pwd`
#release source code
#find ./boot/ | grep -v boot/.git | cpio -pdm ${RELEASEDIR}/
#find ./project/ | grep -v project/.git | cpio -pdm ${RELEASEDIR}/
#find ./kernel/ | grep -v kernel/.git | cpio -pdm ${RELEASEDIR}/
#find ./sdk/ | grep sdk/verify | grep -v sdk/verify/application/smarttalk | cpio -pdm ${RELEASEDIR}/

#save code version
#repo manifest -o snapshot.xml -r
#cp snapshot.xml ${RELEASEDIR}/sdk_version.xml

export ARCH=arm

echo chose ${flashtype}

if [ ! "${project}" = "2D06" -a ! "${project}" = "2D07" ]; then
	project=2D07
	#exit 1
fi	

export PROJECT=${project}

if [ "${project}" = "2D06" ]; then
	KERNEL_DEFCONFIG=infinity2m_spinand_ssc011a_s01a_minigui_doublenet_defconfig
elif [ "${project}" = "2D07" ]; then
	KERNEL_DEFCONFIG=infinity2m_spinand_ssc011a_s01a_minigui_defconfig
fi


# build uboot
cd ${RELEASEDIR}/boot
declare -x ARCH="arm"
declare -x CROSS_COMPILE="arm-linux-gnueabihf-"
if [ "${flashtype}" = "nor" ]; then
	make infinity2m_defconfig
else
	make infinity2m_spinand_defconfig
fi
#make clean
make -j8

if [ "${flashtype}" = "nor" ]; then
	if [ -d ../project/board/i2m/boot/nor/uboot ]; then
		cp u-boot.xz.img.bin ../project/board/i2m/boot/nor/uboot
	fi
else
	if [ -d ../project/board/i2m/boot/spinand/uboot ]; then
		cp u-boot_spinand.xz.img.bin ../project/board/i2m/boot/spinand/uboot
	fi
fi

#build kernel
cd ${RELEASEDIR}/kernel
declare -x ARCH="arm"
declare -x CROSS_COMPILE="arm-linux-gnueabihf-"
if [ "${flashtype}" = "nor" ]; then
	if [ "${fastboot}" = "fastboot" ]; then
		make infinity2m_ssc011a_s01a_fastboot_defconfig
	else
		make infinity2m_ssc011a_s01a_minigui_defconfig
	fi
	
else
	if [ "${fastboot}" = "fastboot" ]; then
		make infinity2m_spinand_ssc011a_s01a_minigui_fastboot_defconfig
	else
		#make infinity2m_spinand_ssc011a_s01a_minigui_defconfig
		make ${KERNEL_DEFCONFIG}
	fi
	
fi
#make clean
make -j8

#build project
cd ${RELEASEDIR}/project
if [ "${flashtype}" = "nor" ]; then
	if [ "${fastboot}" = "fastboot" ]; then
		echo test fastboot
		./setup_config.sh ./configs/nvr/i2m/8.2.1/nor.glibc-ramfs.011a.64
	else
		if [ "${chip}" = "ssd201" ]; then
			./setup_config.sh ./configs/nvr/i2m/8.2.1/nor.glibc-squashfs.011a.64
		fi
		if [ "${chip}" = "ssd202" ]; then
			./setup_config.sh ./configs/nvr/i2m/8.2.1/nor.glibc-squashfs.011a.128
		fi
	fi
else
	if [ "${fastboot}" = "fastboot" ]; then
		if [ "${chip}" = "ssd201" ]; then 
			./setup_config.sh ./configs/nvr/i2m/8.2.1/spinand.ram-glibc-squashfs.011a.64
		elif [ "${chip}" = "ssd202" ]; then	
			./setup_config.sh ./configs/nvr/i2m/8.2.1/spinand.ram-glibc-squashfs.011a.128
		fi
	else
		if [ "${chip}" = "ssd201" ]; then
			./setup_config.sh ./configs/nvr/i2m/8.2.1/spinand.glibc.011a.64
		fi
		if [ "${chip}" = "ssd202" ]; then
			./setup_config.sh ./configs/nvr/i2m/8.2.1/spinand.glibc.011a.128
		fi
	fi

fi

cd ${RELEASEDIR}/project/kbuild/4.9.84
if [ "${flashtype}" = "nor" ]; then
	if [ "${fastboot}" = "fastboot" ]; then
		./release.sh -k ${RELEASEDIR}/kernel -b 011A-fastboot -p nvr -f nor -c i2m -l glibc -v 8.2.1
	else
		./release.sh -k ${RELEASEDIR}/kernel -b 011A -p nvr -f nor -c i2m -l glibc -v 8.2.1
	fi
else
	if [ "${fastboot}" = "fastboot" ]; then
		echo fast release
		./release.sh -k ${RELEASEDIR}/kernel -b 011A-fastboot -p nvr -f spinand -c i2m -l glibc -v 8.2.1
	else
		./release.sh -k ${RELEASEDIR}/kernel -b 011A -p nvr -f spinand -c i2m -l glibc -v 8.2.1
	fi
	
fi

cd ${RELEASEDIR}/project
make clean;make image-nocheck

#install Image
cd ${RELEASEDIR}
rm -rf ${RELEASEDIR}/images
cp ${RELEASEDIR}/project/image/output/images . -rf

#tar -cvzf boot_${DATE}.tar.gz boot
#tar -cvzf kernel_${DATE}.tar.gz kernel
#tar -cvzf project_${DATE}.tar.gz project
#tar -cvzf sdk_${DATE}.tar.gz sdk


