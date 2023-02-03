cat << EOC > download.sh
sh << EOS
wget https://github.com/liugnggh71/grid_dc/raw/main/master_stage.sh
wget https://github.com/liugnggh71/grid_dc/raw/main/wget_grid_dc.sh
wget https://github.com/liugnggh71/grid_dc/raw/main/wget_grid_dc_sql.sh
chmod u+x master_stage.sh
chmod u+x wget_grid_dc.sh
chmod u+x wget_grid_dc_sql.sh
./wget_grid_dc.sh
./wget_grid_dc_sql.sh
EOS
EOC
chmod u+x download.sh
./download.sh
zip -ry grid_dc.zip dba_code
