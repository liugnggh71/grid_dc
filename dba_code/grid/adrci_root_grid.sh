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
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo "Check alert log for host $(hostname -s) on grid and listeners"
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  cat  << 'EEOOCC'
adrci << 'EOS'
show problem -all
show incident -all

EOS
EEOOCC
  # Check alert log for host $(hostname -s) on grid and listeners!!!!!!!!!!!!!!!!!!!
  adrci << 'EOS'
show problem -all
show incident -all

EOS
