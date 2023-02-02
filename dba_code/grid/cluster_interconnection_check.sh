#!/bin/sh
################################################################################
# cluster_interconnection_check.sh
<<COMMENT
Cluster interconnection check
COMMENT
################################################################################
. /home/grid/.bashrc
  #Check cluster interconnection
  #RRRRRRRRRRRRRRRRRRRRRRRRRRRRR
  echo "Check cluster interconnection"

  crsctl check cluster -all
