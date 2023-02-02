#!/bin/sh
################################################################################
# check_ASM_space.sh
<<COMMENT
Check ASM space usage
COMMENT
################################################################################

MY_CODE_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_CODE_DIR}" ]]; then DIR="${PWD}"; fi
export MY_CODE_DIR

sqlplus / as sysdba << EOF
@${MY_CODE_DIR}/check_ASM_space.sql
EOF
