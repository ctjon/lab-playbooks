#!/bin/bash
export default_interface=eth0
export bridge_name=br0
export ip_address=172.16.1.2
export netmask=24
export default_gateway=172.16.1.1
export nameserver=172.16.1.1
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
