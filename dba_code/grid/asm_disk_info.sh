#!/bin/sh
################################################################################
# asm_disk_info.sh
<<COMMENT
ASM disk list info
COMMENT
################################################################################
  #kfod list disks 1485597.1
  #RRRRRRRRRRRRRRRRRRRRRRRRR
  echo "kfod list disks 1485597.1"
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  echo "kfod status=TRUE  disks=all dscvgroup=TRUE name=true"
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  kfod status=TRUE  disks=all dscvgroup=TRUE name=true
  #amdu report.txt under amdu_YYYY_MM_DD_HH_MI_SS 553639.1
  #RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
  echo "amdu report.txt under amdu_YYYY_MM_DD_HH_MI_SS 553639.1"
  echo ~~~~
  echo "amdu"
  echo ~~~~

  amdu
