#!/bin/sh
################################################################################
# cluster_local_status.sh
<<COMMENT
Cluster local status check
COMMENT
################################################################################
. /home/grid/.bashrc
  #Check local status
  #RRRRRRRRRRRRRRRRRR
  echo "Check local status"

  crsctl stat res -t
