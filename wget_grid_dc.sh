# wget https://github.com/liugnggh71/grid_dc/raw/main/wget_grid_dc.sh

pwd=$(pwd)
cd ${pwd}
mkdir -p dba_code/grid
cat << 'EOC' > dba_code/grid/profile.txt
export PATH=${HOME}/dba_code/grid:$PATH
EOC
echo cd dba_code/grid> dba_code/grid/cd_dba_code_bin.sh
echo ln -s cd_dba_code_bin.sh BN > dba_code/grid/ln_bn.sh
cd ${pwd}/dba_code/grid
wget https://github.com/liugnggh71/grid_dc/raw/main/dba_code/grid/apx_checking.sh
chmod u+x apx_checking.sh
wget https://github.com/liugnggh71/grid_dc/raw/main/dba_code/grid/cluster_interconnection_check.sh
chmod u+x cluster_interconnection_check.sh
wget https://github.com/liugnggh71/grid_dc/raw/main/dba_code/grid/cluster_local_status.sh
chmod u+x cluster_local_status.sh
wget https://github.com/liugnggh71/grid_dc/raw/main/dba_code/grid/cluster_init_status.sh
chmod u+x cluster_init_status.sh
wget https://github.com/liugnggh71/grid_dc/raw/main/dba_code/grid/check_ASM_space.sh
chmod u+x check_ASM_space.sh
wget https://github.com/liugnggh71/grid_dc/raw/main/dba_code/grid/cluster_name.sh
chmod u+x cluster_name.sh
wget https://github.com/liugnggh71/grid_dc/raw/main/dba_code/grid/asm_disk_info.sh
chmod u+x asm_disk_info.sh
wget https://github.com/liugnggh71/grid_dc/raw/main/dba_code/grid/adrci_root_grid.sh
chmod u+x adrci_root_grid.sh
wget https://github.com/liugnggh71/grid_dc/raw/main/dba_code/grid/grid_inventory.sh
chmod u+x grid_inventory.sh
wget https://github.com/liugnggh71/grid_dc/raw/main/dba_code/grid/asm_du.sh
chmod u+x asm_du.sh
cd ${pwd}/dba_code/grid
ln -s apx_checking.sh AX
ln -s cluster_interconnection_check.sh CC
ln -s cluster_local_status.sh CS
ln -s cluster_init_status.sh IS
ln -s check_ASM_space.sh S
ln -s cluster_name.sh CN
ln -s asm_disk_info.sh DA
ln -s adrci_root_grid.sh AL
ln -s grid_inventory.sh GI
ln -s asm_du.sh AD
cd ${pwd}
