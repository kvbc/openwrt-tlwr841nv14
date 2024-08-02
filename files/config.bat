ssh -y root@192.168.1.1

uci set wireless.radio0.country='PL'
uci set wireless.radio0.disabled='0'
uci commit wireless
wifi reload

uci set sqm.eth1.enabled='1'
uci set sqm.eth1.interface='eth0.2'
uci set sqm.eth1.download='5000'
uci set sqm.eth1.upload='2000'
uci set sqm.eth1.qdisc='cake'
uci set sqm.eth1.script='piece_of_cake.qos'
uci set sqm.eth1.linklayer='ethernet'
uci commit sqm
service sqm reload

exit
pause