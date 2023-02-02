#!/bin/sh
################################################################################
# cluster_init_status.sh
<<COMMENT
Cluster local init status check
COMMENT
################################################################################
. /home/grid/.bashrc
  #Check local init status
  #RRRRRRRRRRRRRRRRRRRRRRR
  echo "Check local init status"

  crsctl stat res -t -init
