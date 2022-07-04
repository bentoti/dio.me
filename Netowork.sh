 # from to network
 lshw -class network
 ethtool enp4s0
 # Configure a static IP using ifconfig
 ifconfig -a
 ifconfig eth0 10.10.1.120/24
 ifconfig eth0 netmask 255.255.255.0
 route add default gw 10.10.1.1
