sh << 'EOF'
wget https://github.com/liugnggh71/grid_dc/raw/main/Install/grid_dc.zip
echo ============================================================
echo bswexadbt02-1kjpk1.pvtppdbnp.pvtpp.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.5.50:/tmp
ssh 10.21.5.50 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo bswexadbt02-1kjpk2.pvtppdbnp.pvtpp.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.5.38:/tmp
ssh 10.21.5.38 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo bswexadbp01-rlmu81.pvtppproddb1021.phxpvtppprod.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.133.2:/tmp
ssh 10.21.133.2 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo bswexadbp01-rlmu82.pvtppproddb1021.phxpvtppprod.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.133.3:/tmp
ssh 10.21.133.3 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo bswexadbp02-5cfwx1.pvtppproddb02.phxpvtppprod.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.133.44:/tmp
ssh 10.21.133.44 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo bswexadbp02-5cfwx2.pvtppproddb02.phxpvtppprod.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.133.35:/tmp
ssh 10.21.133.35 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo bswexadbt01-q8ebk1.pvtppnonprod102.pvtpp.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.5.2:/tmp
ssh 10.21.5.2 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo bswexadbt01-q8ebk2.pvtppnonprod102.pvtpp.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.5.3:/tmp
ssh 10.21.5.3 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo aupp-hroradb-bfcfz1.hlthedgexap.pvthlthedgedr.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.137.2:/tmp
ssh 10.21.137.2 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo aupp-hroradb-bfcfz2.hlthedgexap.pvthlthedgedr.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.137.3:/tmp
ssh 10.21.137.3 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo bswochrdbt01-fz4re1.hlthedgeexa.pvthlthedgeprod.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.32.98:/tmp
ssh 10.21.32.98 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo bswochrdbt01-fz4re2.hlthedgeexa.pvthlthedgeprod.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.32.102:/tmp
ssh 10.21.32.102 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo aupp-hroradb-f9exx1.hlthedgexap.pvthlthedgeprod.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.32.2:/tmp
ssh 10.21.32.2 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo aupp-hroradb-f9exx2.hlthedgexap.pvthlthedgeprod.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.32.3:/tmp
ssh 10.21.32.3 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo autp-hroradb-utzrk1.hlthedgeexa.pvthlthedgeprod.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.32.105:/tmp
ssh 10.21.32.105 unzip -o /tmp/grid_dc.zip  < /dev/null
echo ============================================================
echo autp-hroradb-utzrk2.hlthedgeexa.pvthlthedgeprod.oraclevcn.com
echo ============================================================
scp grid_dc.zip 10.21.32.106:/tmp
ssh 10.21.32.106 unzip -o /tmp/grid_dc.zip  < /dev/null
EOF
