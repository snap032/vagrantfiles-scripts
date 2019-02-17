#!/bin/bash
       
sudo apt-get update
sudo tee -a /etc/network/interfaces << EOF
auto enp0s8
iface enp0s8 inet static
address 172.16.6.3
netmask 255.255.255.0
EOF
sudo ifconfig enp0s8 down
sudo ifconfig enp0s8 up
# DHCP Server installieren
sudo apt-get -y install isc-dhcp-server
sudo apt-get install git -y
git clone https://github.com/snap032/dhcp2.git
mv dhcp2/dhcpd.conf /etc/dhcp/dhcpd.conf
# DHCP Server konfigurieren
sudo sed -i 's/INTERFACES=""/INTERFACES="enp0s8"/' /etc/default/isc-dhcp-server
sudo service isc-dhcp-server restart

