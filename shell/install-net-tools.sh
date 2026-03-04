sudo apt -y install net-tools
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  net-tools
0 upgraded, 1 newly installed, 0 to remove and 3 not upgraded.
Need to get 204 kB of archives.
After this operation, 811 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 net-tools amd64 2.10-0.1ubuntu4.4 [204 kB]
Fetched 204 kB in 4s (55.5 kB/s)                    
Selecting previously unselected package net-tools.
(Reading database ... 158839 files and directories currently installed.)
Preparing to unpack .../net-tools_2.10-0.1ubuntu4.4_amd64.deb ...
Unpacking net-tools (2.10-0.1ubuntu4.4) ...
Setting up net-tools (2.10-0.1ubuntu4.4) ...
Processing triggers for man-db (2.12.0-4build2) ...
neangan@sarangkamarang:~$ ifconfig
enp0s25: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        ether 3c:97:0e:09:e1:cb  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 20  memory 0xf2500000-f2520000  

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 4122  bytes 691091 (691.0 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 4122  bytes 691091 (691.0 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlp3s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.29.18.237  netmask 255.255.255.0  broadcast 172.29.18.255
        inet6 fe80::5465:ef11:1e3f:90a6  prefixlen 64  scopeid 0x20<link>
        ether 8c:70:5a:c3:98:3c  txqueuelen 1000  (Ethernet)
        RX packets 39411  bytes 43787762 (43.7 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 26560  bytes 9045525 (9.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
