# Wireless
uci set wireless.radio0.country='PL'
uci set wireless.radio0.disabled='0'
uci set wireless.default_radio0.ssid='TP-Link_E013'
uci set wireless.default_radio0.wmm='1' # allows 802.11n
uci commit wireless
wifi reload

# Firewall
uci set firewall.@defaults[0].flow_offloading='0'
uci set firewall.@defaults[0].flow_offloading_hw='0'
uci commit firewall
service firewall restart

# SQM
uci set sqm.eth1.enabled='1'
uci set sqm.eth1.interface='eth0.2' # WAN
uci set sqm.eth1.download='5000'
uci set sqm.eth1.upload='2000'
uci set sqm.eth1.qdisc='cake'
uci set sqm.eth1.script='piece_of_cake.qos'
uci set sqm.eth1.linklayer='ethernet'
uci commit sqm
service sqm restart
