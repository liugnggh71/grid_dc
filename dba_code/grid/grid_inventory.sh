#!/bin/sh
################################################################################
# grid_inventory.sh
<<COMMENT
Grid inventory
COMMENT
################################################################################
. /home/grid/.bashrc
  #Opatch list patches
  #RRRRRRRRRRRRRRRRRRR
  echo "Opatch list patches"
  echo ~~~~~~~~~~~~~~~~
  echo "opatch lspatches"
  echo ~~~~~~~~~~~~~~~~

  opatch lspatches
