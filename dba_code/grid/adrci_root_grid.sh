#!/bin/sh
################################################################################
# adrci_root_grid.sh
<<COMMENT
adrci root check grid ASM alerts
COMMENT
################################################################################
. /home/grid/.bashrc
  #Show date
  #RRRRRRRRR
  echo "Show date"
  echo ~~~~
  echo "date"
  echo ~~~~

  date
  #Show hostname
  #RRRRRRRRRRRRR
  echo "Show hostname"
  echo ~~~~~~~~~~~
  echo "hostname -f"
  echo ~~~~~~~~~~~

  hostname -f
