#!/bin/sh
################################################################################
# cluster_name.sh
<<COMMENT
Cluster name
COMMENT
################################################################################
  #Cluster Nodes name
  #RRRRRRRRRRRRRRRRRR
  echo "Cluster Nodes name"
  echo ~~~~~~~~~~~
  echo "olsnodes -c"
  echo ~~~~~~~~~~~

  olsnodes -c
  #Cluster debug info
  #RRRRRRRRRRRRRRRRRR
  echo "Cluster debug info"
  echo ~~~~~~~~~~~
  echo "olsnodes -v"
  echo ~~~~~~~~~~~

  olsnodes -v
  #Cluster Nodes name 2
  #RRRRRRRRRRRRRRRRRRRR
  echo "Cluster Nodes name 2"
  echo ~~~~~~~~~~
  echo "cemutlo -n"
  echo ~~~~~~~~~~

  cemutlo -n
