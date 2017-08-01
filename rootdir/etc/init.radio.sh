# START MCFG Operation.
rm -rf /data/misc/radio/modem_config
mkdir /data/misc/radio/modem_config
chmod 770 /data/misc/radio/modem_config

# LUCYE, lucye MCFG conf. for all N.A. operators including VZW, SPR, etc
# secheol.pyo@lge.com, 2016-11-17
cp -r /firmware/image/modem_pr/mcfg/configs/cust/* /data/misc/radio/modem_config
chown -hR radio.radio /data/misc/radio/modem_config
cp /firmware/verinfo/ver_info.txt /data/misc/radio/ver_info.txt
chown radio.radio /data/misc/radio/ver_info.txt

# LUCYE, MCFG selection for hidden menu.
# secheol.pyo@lge.com, 2016-12-19
chown -h radio.system /data/misc/radio/modem_config
chmod -R 770 /data/misc/radio/modem_config/mcfg_sw
chown -hR radio.system /data/misc/radio/modem_config/mcfg_sw

cp /firmware/image/modem_pr/mbn_ota.txt /data/misc/radio/modem_config
chown radio.radio /data/misc/radio/modem_config/mbn_ota.txt
echo 1 > /data/misc/radio/copy_complete
# END MCFG Operation.
