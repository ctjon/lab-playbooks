#!/bin/bash
export default_interface=eth0
export bridge_name=br0
export ip_address="{{trusted_default_ipaddr}}"
export netmask="{{trusted_network_prefix}}"
export default_gateway="{{trusted_network_gateway}}"
export nameserver="{{trusted_network_dns_server}}"
export pinghost=www.google.com

sudo nmcli connection show
uuid=`sudo nmcli connection show|grep $default_interface |awk '{ print $2 }'`
echo "uuid=$uuid"

sudo nmcli connection delete $uuid
sudo nmcli connection add type bridge autoconnect yes con-name $bridge_name ifname $bridge_name
sudo nmcli connection modify $bridge_name ipv4.addresses IP $ip_address/$netmask ipv4.method manual 
sudo nmcli connection modify $bridge_name ipv4.gateway $default_gateway
sudo nmcli connection modify $bridge_name ipv4.dns $nameserver
sudo nmcli connection show
sudo nmcli connection up $bridge_name

ping -c 10 $pinghost
