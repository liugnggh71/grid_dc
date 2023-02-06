#!/bin/sh
################################################################################
# asm_du.sh
<<COMMENT
Grid disk space usage at 1st level directory
COMMENT
################################################################################
. /home/grid/.bashrc
for DISK_GROUP_NAME in $(asmcmd lsdg --suppressheader | awk '{print $NF}')
do

  echo "#================="
  echo "${DISK_GROUP_NAME}"
  echo "#================="
  for DIRNAME in $(asmcmd ls $DISK_GROUP_NAME | grep /)
  do
    echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    echo "asmcmd du +${DISK_GROUP_NAME}${DIRNAME}"
    echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    asmcmd du +${DISK_GROUP_NAME}${DIRNAME}
  done
done
