#!/bin/sh
################################################################################
# apx_checking.sh
<<COMMENT
Check APX status
COMMENT
################################################################################
  #Check cluster mode
  #RRRRRRRRRRRRRRRRRR
  echo "Check cluster mode"
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  echo "crsctl get cluster mode status"
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  crsctl get cluster mode status
  #Check cluster node status
  #RRRRRRRRRRRRRRRRRRRRRRRRR
  echo "Check cluster node status"
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  echo "crsctl get node role status -all"
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  crsctl get node role status -all
  #ASM mode
  #RRRRRRRR
  echo "ASM mode"
  echo ~~~~~~~~~~~~~~~~~~~~~~
  echo "asmcmd showclustermode"
  echo ~~~~~~~~~~~~~~~~~~~~~~

  asmcmd showclustermode
  #Proxy status
  #RRRRRRRRRRRR
  echo "Proxy status"
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  echo "crsctl stat res ora.proxy_advm -t"
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  crsctl stat res ora.proxy_advm -t
  #APX instance process
  #RRRRRRRRRRRRRRRRRRRR
  echo "APX instance process"
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  echo "ps -ef |grep pmon| grep -i apx"
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  ps -ef |grep pmon| grep -i apx
  #ASM volume status
  #RRRRRRRRRRRRRRRRR
  echo "ASM volume status"
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  echo "crsctl stat res ora.asm ora.DATAC1.ACFSVOL01.advm ora.datac1.acfsvol01.acfs ora.DATAC1.dg -t"
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  crsctl stat res ora.asm ora.DATAC1.ACFSVOL01.advm ora.datac1.acfsvol01.acfs ora.DATAC1.dg -t
