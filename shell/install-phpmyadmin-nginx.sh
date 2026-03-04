wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.zip
--2026-03-04 17:33:55--  https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.zip
Resolving www.phpmyadmin.net (www.phpmyadmin.net)... 79.127.138.15, 79.127.138.20, 79.127.138.17, ...
Connecting to www.phpmyadmin.net (www.phpmyadmin.net)|79.127.138.15|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.zip [following]
--2026-03-04 17:33:56--  https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.zip
Resolving files.phpmyadmin.net (files.phpmyadmin.net)... 79.127.138.20, 79.127.138.14, 79.127.138.18, ...
Connecting to files.phpmyadmin.net (files.phpmyadmin.net)|79.127.138.20|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 16431330 (16M) [application/zip]
Saving to: ‘phpMyAdmin-latest-all-languages.zip’

phpMyAdmin-latest-all-languag 100%[=================================================>]  15.67M  1.83MB/s    in 12s     

2026-03-04 17:34:10 (1.27 MB/s) - ‘phpMyAdmin-latest-all-languages.zip’ saved [16431330/16431330]

neangan@sarangkamarang:~/Downloads$ sudo apt -y install unzip
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
unzip is already the newest version (6.0-28ubuntu4.1).
unzip set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 3 not upgraded.
neangan@sarangkamarang:~/Downloads$ unzip -v
UnZip 6.00 of 20 April 2009, by Debian. Original by Info-ZIP.

cd ..
neangan@sarangkamarang:~/Downloads$ mv phpMyAdmin-5.2.3-all-languages/ phpmyadmin
neangan@sarangkamarang:~/Downloads$ ls -li
total 16388
3414592 drwxrwxr-x  2 neangan neangan     4096 Mar  4 03:43  Compressed
3414590 drwxrwxr-x  2 neangan neangan     4096 Mar  4 03:43  Documents
3429074 drwxrwxr-x  2 neangan neangan     4096 Mar  4 12:26  Images
3414591 drwxrwxr-x  2 neangan neangan     4096 Mar  4 03:43  Music
3429165 -rw-rw-r--  1 neangan neangan   253555 Mar  4 12:36  neangansarang.html
3430455 drwxr-xr-x 12 neangan neangan     4096 Oct  7 16:40  phpmyadmin
3430432 -rw-rw-r--  1 neangan neangan 16431330 Oct  8 11:03  phpMyAdmin-latest-all-languages.zip
3414593 drwxrwxr-x  2 neangan neangan     4096 Mar  4 12:07  Programs
3429754 -rw-rw-r--  1 neangan neangan    35826 Mar  4 17:12 'Screenshot 2026-03-04 at 17-12-38 Panduan Lengkap Cara Install LEMP Stack (Nginx MariaDB PHP 8.3) di Ubuntu 24.04.png'
3414219 -rw-rw-r--  1 neangan neangan    24877 Mar  4 17:12 'Screenshot 2026-03-04 at 17-12-49 Panduan Lengkap Cara Install LEMP Stack (Nginx MariaDB PHP 8.3) di Ubuntu 24.04.png'
3414594 drwxrwxr-x  2 neangan neangan     4096 Mar  4 03:43  Video
neangan@sarangkamarang:~/Downloads$ sudo sudo mv phpmyadmin/ /var/www/html/in
index.nginx-debian.html  info.php                 
neangan@sarangkamarang:~/Downloads$ sudo sudo mv phpmyadmin/ /var/www/html/
neangan@sarangkamarang:~/Downloads$ sudo chown -R www-data:www-data /var/www/html/phpmyadmin/
neangan@sarangkamarang:~/Downloads$ cd
neangan@sarangkamarang:~$ cd /var/www/html/
neangan@sarangkamarang:/var/www/html$ ls -li
total 12
 798984 -rw-r--r--  1 root     root      615 Mar  4 04:10 index.nginx-debian.html
 787583 -rw-r--r--  1 root     root       20 Mar  4 17:29 info.php
3430455 drwxr-xr-x 12 www-data www-data 4096 Oct  7 16:40 phpmyadmin
neangan@sarangkamarang:/var/www/html$ sudo mariadb -u root -p
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 43
Server version: 10.11.14-MariaDB-0ubuntu0.24.04.1 Ubuntu 24.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> CREATE DATABASE phpmyadmin DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> GRANT ALL ON phpmyadmin.* TO 'phpmyadmin'@'localhost' IDENTIFIED BY '453p53p714D1';
Query OK, 0 rows affected (0.005 sec)

MariaDB [(none)]> FLUSH_PRIVILEGES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FLUSH_PRIVILEGES' at line 1
MariaDB [(none)]> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.001 sec)

MariaDB [(none)]> EXIT
Bye

sudo apt install -y php-imagick php-phpseclib php-php-gettext php8.3-common php8.3-mysql php8.3-fpm php8.3-gd php8.3-imap php8.3-curl php8.3-zip php8.3-xml php8.3-mbstring php8.3-bz2 php8.3-intl php8.3-gmp
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
php8.3-common is already the newest version (8.3.6-0ubuntu0.24.04.6).
php8.3-common set to manually installed.
php8.3-mysql is already the newest version (8.3.6-0ubuntu0.24.04.6).
php8.3-mysql set to manually installed.
php8.3-fpm is already the newest version (8.3.6-0ubuntu0.24.04.6).
php8.3-fpm set to manually installed.
The following additional packages will be installed:
  imagemagick-6-common libc-client2007e libfftw3-double3 liblqr-1-0 libmagickcore-6.q16-7t64 libmagickwand-6.q16-7t64
  libraw23t64 libzip4t64 mlock php-pear php8.3-imagick
Suggested packages:
  uw-mailutils libfftw3-bin libfftw3-dev libmagickcore-6.q16-7-extra php-libsodium php-mcrypt
The following NEW packages will be installed:
  imagemagick-6-common libc-client2007e libfftw3-double3 liblqr-1-0 libmagickcore-6.q16-7t64 libmagickwand-6.q16-7t64
  libraw23t64 libzip4t64 mlock php-imagick php-pear php-php-gettext php-phpseclib php8.3-bz2 php8.3-curl php8.3-gd
  php8.3-gmp php8.3-imagick php8.3-imap php8.3-intl php8.3-mbstring php8.3-xml php8.3-zip
0 upgraded, 23 newly installed, 0 to remove and 3 not upgraded.
Need to get 5,727 kB of archives.
After this operation, 22.3 MB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu noble/main amd64 libfftw3-double3 amd64 3.3.10-1ubuntu3 [838 kB]
Get:2 http://archive.ubuntu.com/ubuntu noble/universe amd64 liblqr-1-0 amd64 0.4.2-2.1build2 [28.5 kB]                 
Get:3 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libraw23t64 amd64 0.21.2-2.1ubuntu0.24.04.1 [378 kB]   
Get:4 http://archive.ubuntu.com/ubuntu noble/universe amd64 imagemagick-6-common all 8:6.9.12.98+dfsg1-5.2build2 [69.5 kB]
Get:5 http://archive.ubuntu.com/ubuntu noble/universe amd64 libmagickcore-6.q16-7t64 amd64 8:6.9.12.98+dfsg1-5.2build2 [1,811 kB]
Get:6 http://archive.ubuntu.com/ubuntu noble/universe amd64 libmagickwand-6.q16-7t64 amd64 8:6.9.12.98+dfsg1-5.2build2 [318 kB]
Get:7 http://archive.ubuntu.com/ubuntu noble/universe amd64 php8.3-imagick amd64 3.7.0-4ubuntu3 [111 kB]               
Get:8 http://archive.ubuntu.com/ubuntu noble/universe amd64 php-imagick amd64 3.7.0-4ubuntu3 [4,496 B]                 
Get:9 http://archive.ubuntu.com/ubuntu noble/universe amd64 mlock amd64 8:2007f~dfsg-7build3 [8,112 B]                 
Get:10 http://archive.ubuntu.com/ubuntu noble/universe amd64 libc-client2007e amd64 8:2007f~dfsg-7build3 [626 kB]      
Get:11 http://archive.ubuntu.com/ubuntu noble/universe amd64 libzip4t64 amd64 1.7.3-1.1ubuntu2 [53.6 kB]               
Get:12 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 php8.3-xml amd64 8.3.6-0ubuntu0.24.04.6 [126 kB]      
Get:13 http://archive.ubuntu.com/ubuntu noble/main amd64 php-pear all 1:1.10.13+submodules+notgz+2022032202-2build1 [292 kB]
Get:14 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 php8.3-mbstring amd64 8.3.6-0ubuntu0.24.04.6 [512 kB] 
Get:15 http://archive.ubuntu.com/ubuntu noble/universe amd64 php-php-gettext all 1.0.12-6 [19.1 kB]                    
Get:16 http://archive.ubuntu.com/ubuntu noble/universe amd64 php-phpseclib all 2.0.47-1 [204 kB]                       
Get:17 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 php8.3-bz2 amd64 8.3.6-0ubuntu0.24.04.6 [11.5 kB] 
Get:18 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 php8.3-curl amd64 8.3.6-0ubuntu0.24.04.6 [40.3 kB]    
Get:19 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 php8.3-gd amd64 8.3.6-0ubuntu0.24.04.6 [31.1 kB]      
Get:20 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 php8.3-gmp amd64 8.3.6-0ubuntu0.24.04.6 [23.4 kB]     
Get:21 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 php8.3-imap amd64 8.3.6-0ubuntu0.24.04.6 [34.9 kB]
Get:22 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 php8.3-intl amd64 8.3.6-0ubuntu0.24.04.6 [156 kB] 
Get:23 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 php8.3-zip amd64 8.3.6-0ubuntu0.24.04.6 [29.4 kB] 
Fetched 5,727 kB in 13s (434 kB/s)                                                                                     
Selecting previously unselected package libfftw3-double3:amd64.
(Reading database ... 158887 files and directories currently installed.)
Preparing to unpack .../00-libfftw3-double3_3.3.10-1ubuntu3_amd64.deb ...
Unpacking libfftw3-double3:amd64 (3.3.10-1ubuntu3) ...
Selecting previously unselected package liblqr-1-0:amd64.
Preparing to unpack .../01-liblqr-1-0_0.4.2-2.1build2_amd64.deb ...
Unpacking liblqr-1-0:amd64 (0.4.2-2.1build2) ...
Selecting previously unselected package libraw23t64:amd64.
Preparing to unpack .../02-libraw23t64_0.21.2-2.1ubuntu0.24.04.1_amd64.deb ...
Unpacking libraw23t64:amd64 (0.21.2-2.1ubuntu0.24.04.1) ...
Selecting previously unselected package imagemagick-6-common.
Preparing to unpack .../03-imagemagick-6-common_8%3a6.9.12.98+dfsg1-5.2build2_all.deb ...
Unpacking imagemagick-6-common (8:6.9.12.98+dfsg1-5.2build2) ...
Selecting previously unselected package libmagickcore-6.q16-7t64:amd64.
Preparing to unpack .../04-libmagickcore-6.q16-7t64_8%3a6.9.12.98+dfsg1-5.2build2_amd64.deb ...
Unpacking libmagickcore-6.q16-7t64:amd64 (8:6.9.12.98+dfsg1-5.2build2) ...
Selecting previously unselected package libmagickwand-6.q16-7t64:amd64.
Preparing to unpack .../05-libmagickwand-6.q16-7t64_8%3a6.9.12.98+dfsg1-5.2build2_amd64.deb ...
Unpacking libmagickwand-6.q16-7t64:amd64 (8:6.9.12.98+dfsg1-5.2build2) ...
Selecting previously unselected package php8.3-imagick.
Preparing to unpack .../06-php8.3-imagick_3.7.0-4ubuntu3_amd64.deb ...
Unpacking php8.3-imagick (3.7.0-4ubuntu3) ...
Selecting previously unselected package php-imagick.
Preparing to unpack .../07-php-imagick_3.7.0-4ubuntu3_amd64.deb ...
Unpacking php-imagick (3.7.0-4ubuntu3) ...
Selecting previously unselected package mlock.
Preparing to unpack .../08-mlock_8%3a2007f~dfsg-7build3_amd64.deb ...
Unpacking mlock (8:2007f~dfsg-7build3) ...
Selecting previously unselected package libc-client2007e.
Preparing to unpack .../09-libc-client2007e_8%3a2007f~dfsg-7build3_amd64.deb ...
Unpacking libc-client2007e (8:2007f~dfsg-7build3) ...
Selecting previously unselected package libzip4t64:amd64.
Preparing to unpack .../10-libzip4t64_1.7.3-1.1ubuntu2_amd64.deb ...
Unpacking libzip4t64:amd64 (1.7.3-1.1ubuntu2) ...
Selecting previously unselected package php8.3-xml.
Preparing to unpack .../11-php8.3-xml_8.3.6-0ubuntu0.24.04.6_amd64.deb ...
Unpacking php8.3-xml (8.3.6-0ubuntu0.24.04.6) ...
Selecting previously unselected package php-pear.
Preparing to unpack .../12-php-pear_1%3a1.10.13+submodules+notgz+2022032202-2build1_all.deb ...
Unpacking php-pear (1:1.10.13+submodules+notgz+2022032202-2build1) ...
Selecting previously unselected package php8.3-mbstring.
Preparing to unpack .../13-php8.3-mbstring_8.3.6-0ubuntu0.24.04.6_amd64.deb ...
Unpacking php8.3-mbstring (8.3.6-0ubuntu0.24.04.6) ...
Selecting previously unselected package php-php-gettext.
Preparing to unpack .../14-php-php-gettext_1.0.12-6_all.deb ...
Unpacking php-php-gettext (1.0.12-6) ...
Selecting previously unselected package php-phpseclib.
Preparing to unpack .../15-php-phpseclib_2.0.47-1_all.deb ...
Unpacking php-phpseclib (2.0.47-1) ...
Selecting previously unselected package php8.3-bz2.
Preparing to unpack .../16-php8.3-bz2_8.3.6-0ubuntu0.24.04.6_amd64.deb ...
Unpacking php8.3-bz2 (8.3.6-0ubuntu0.24.04.6) ...
Selecting previously unselected package php8.3-curl.
Preparing to unpack .../17-php8.3-curl_8.3.6-0ubuntu0.24.04.6_amd64.deb ...
Unpacking php8.3-curl (8.3.6-0ubuntu0.24.04.6) ...
Selecting previously unselected package php8.3-gd.
Preparing to unpack .../18-php8.3-gd_8.3.6-0ubuntu0.24.04.6_amd64.deb ...
Unpacking php8.3-gd (8.3.6-0ubuntu0.24.04.6) ...
Selecting previously unselected package php8.3-gmp.
Preparing to unpack .../19-php8.3-gmp_8.3.6-0ubuntu0.24.04.6_amd64.deb ...
Unpacking php8.3-gmp (8.3.6-0ubuntu0.24.04.6) ...
Selecting previously unselected package php8.3-imap.
Preparing to unpack .../20-php8.3-imap_8.3.6-0ubuntu0.24.04.6_amd64.deb ...
Unpacking php8.3-imap (8.3.6-0ubuntu0.24.04.6) ...
Selecting previously unselected package php8.3-intl.
Preparing to unpack .../21-php8.3-intl_8.3.6-0ubuntu0.24.04.6_amd64.deb ...
Unpacking php8.3-intl (8.3.6-0ubuntu0.24.04.6) ...
Selecting previously unselected package php8.3-zip.
Preparing to unpack .../22-php8.3-zip_8.3.6-0ubuntu0.24.04.6_amd64.deb ...
Unpacking php8.3-zip (8.3.6-0ubuntu0.24.04.6) ...
Setting up imagemagick-6-common (8:6.9.12.98+dfsg1-5.2build2) ...
Setting up php8.3-curl (8.3.6-0ubuntu0.24.04.6) ...

Creating config file /etc/php/8.3/mods-available/curl.ini with new version
Setting up mlock (8:2007f~dfsg-7build3) ...
Setting up php8.3-intl (8.3.6-0ubuntu0.24.04.6) ...

Creating config file /etc/php/8.3/mods-available/intl.ini with new version
Setting up php-phpseclib (2.0.47-1) ...
Setting up php8.3-mbstring (8.3.6-0ubuntu0.24.04.6) ...

Creating config file /etc/php/8.3/mods-available/mbstring.ini with new version
Setting up php8.3-gmp (8.3.6-0ubuntu0.24.04.6) ...

Creating config file /etc/php/8.3/mods-available/gmp.ini with new version
Setting up libfftw3-double3:amd64 (3.3.10-1ubuntu3) ...
Setting up libraw23t64:amd64 (0.21.2-2.1ubuntu0.24.04.1) ...
Setting up liblqr-1-0:amd64 (0.4.2-2.1build2) ...
Setting up php8.3-bz2 (8.3.6-0ubuntu0.24.04.6) ...

Creating config file /etc/php/8.3/mods-available/bz2.ini with new version
Setting up php8.3-xml (8.3.6-0ubuntu0.24.04.6) ...

Creating config file /etc/php/8.3/mods-available/dom.ini with new version

Creating config file /etc/php/8.3/mods-available/simplexml.ini with new version

Creating config file /etc/php/8.3/mods-available/xml.ini with new version

Creating config file /etc/php/8.3/mods-available/xmlreader.ini with new version

Creating config file /etc/php/8.3/mods-available/xmlwriter.ini with new version

Creating config file /etc/php/8.3/mods-available/xsl.ini with new version
Setting up libc-client2007e (8:2007f~dfsg-7build3) ...
Setting up libzip4t64:amd64 (1.7.3-1.1ubuntu2) ...
Setting up php8.3-gd (8.3.6-0ubuntu0.24.04.6) ...

Creating config file /etc/php/8.3/mods-available/gd.ini with new version
Setting up php-pear (1:1.10.13+submodules+notgz+2022032202-2build1) ...
Setting up php8.3-imap (8.3.6-0ubuntu0.24.04.6) ...

Creating config file /etc/php/8.3/mods-available/imap.ini with new version
Setting up libmagickcore-6.q16-7t64:amd64 (8:6.9.12.98+dfsg1-5.2build2) ...
Setting up php8.3-zip (8.3.6-0ubuntu0.24.04.6) ...

Creating config file /etc/php/8.3/mods-available/zip.ini with new version
Setting up libmagickwand-6.q16-7t64:amd64 (8:6.9.12.98+dfsg1-5.2build2) ...
Setting up php-php-gettext (1.0.12-6) ...
Setting up php8.3-imagick (3.7.0-4ubuntu3) ...
Setting up php-imagick (3.7.0-4ubuntu3) ...
Processing triggers for libc-bin (2.39-0ubuntu8.7) ...
Processing triggers for man-db (2.12.0-4build2) ...
Processing triggers for php8.3-fpm (8.3.6-0ubuntu0.24.04.6) ...
Processing triggers for php8.3-cli (8.3.6-0ubuntu0.24.04.6) ...
neangan@sarangkamarang:/var/www/html$ sudo nano /etc/nginx/conf.d/phpmyadmin.conf
neangan@sarangkamarang:/var/www/html$ sudo nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
neangan@sarangkamarang:/var/www/html$ sudo systemctl reload nginx
neangan@sarangkamarang:/var/www/html$ ifconfig
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
        RX packets 6244  bytes 1094748 (1.0 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 6244  bytes 1094748 (1.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlp3s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.29.18.237  netmask 255.255.255.0  broadcast 172.29.18.255
        inet6 fe80::5465:ef11:1e3f:90a6  prefixlen 64  scopeid 0x20<link>
        ether 8c:70:5a:c3:98:3c  txqueuelen 1000  (Ethernet)
        RX packets 64964  bytes 74044644 (74.0 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 40135  bytes 12826673 (12.8 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

sudo apt install certbot python3-certbot-nginx
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  python3-acme python3-certbot python3-configargparse python3-icu python3-josepy python3-openssl python3-parsedatetime
  python3-rfc3339
Suggested packages:
  python-certbot-doc python3-certbot-apache python-acme-doc python-certbot-nginx-doc python-openssl-doc
  python3-openssl-dbg
The following NEW packages will be installed:
  certbot python3-acme python3-certbot python3-certbot-nginx python3-configargparse python3-icu python3-josepy
  python3-openssl python3-parsedatetime python3-rfc3339
0 upgraded, 10 newly installed, 0 to remove and 3 not upgraded.
Need to get 1,145 kB of archives.
After this operation, 5,958 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu noble/main amd64 python3-openssl all 23.2.0-1 [47.8 kB]
Get:2 http://archive.ubuntu.com/ubuntu noble/universe amd64 python3-josepy all 1.14.0-1 [22.1 kB]
Get:3 http://archive.ubuntu.com/ubuntu noble/universe amd64 python3-rfc3339 all 1.1-4 [6,744 B]
Get:4 http://archive.ubuntu.com/ubuntu noble/universe amd64 python3-acme all 2.9.0-1 [48.5 kB]
Get:5 http://archive.ubuntu.com/ubuntu noble/universe amd64 python3-configargparse all 1.7-1 [31.7 kB]
Get:6 http://archive.ubuntu.com/ubuntu noble/universe amd64 python3-parsedatetime all 2.6-3 [32.8 kB]
Get:7 http://archive.ubuntu.com/ubuntu noble/universe amd64 python3-certbot all 2.9.0-1 [267 kB]
Get:8 http://archive.ubuntu.com/ubuntu noble/universe amd64 certbot all 2.9.0-1 [89.2 kB]
Get:9 http://archive.ubuntu.com/ubuntu noble/universe amd64 python3-certbot-nginx all 2.9.0-1 [66.0 kB]
Get:10 http://archive.ubuntu.com/ubuntu noble/main amd64 python3-icu amd64 2.12-1build2 [534 kB]
Fetched 1,145 kB in 4s (256 kB/s)     
Preconfiguring packages ...
Selecting previously unselected package python3-openssl.
(Reading database ... 159583 files and directories currently installed.)
Preparing to unpack .../0-python3-openssl_23.2.0-1_all.deb ...
Unpacking python3-openssl (23.2.0-1) ...
Selecting previously unselected package python3-josepy.
Preparing to unpack .../1-python3-josepy_1.14.0-1_all.deb ...
Unpacking python3-josepy (1.14.0-1) ...
Selecting previously unselected package python3-rfc3339.
Preparing to unpack .../2-python3-rfc3339_1.1-4_all.deb ...
Unpacking python3-rfc3339 (1.1-4) ...
Selecting previously unselected package python3-acme.
Preparing to unpack .../3-python3-acme_2.9.0-1_all.deb ...
Unpacking python3-acme (2.9.0-1) ...
Selecting previously unselected package python3-configargparse.
Preparing to unpack .../4-python3-configargparse_1.7-1_all.deb ...
Unpacking python3-configargparse (1.7-1) ...
Selecting previously unselected package python3-parsedatetime.
Preparing to unpack .../5-python3-parsedatetime_2.6-3_all.deb ...
Unpacking python3-parsedatetime (2.6-3) ...
Selecting previously unselected package python3-certbot.
Preparing to unpack .../6-python3-certbot_2.9.0-1_all.deb ...
Unpacking python3-certbot (2.9.0-1) ...
Selecting previously unselected package certbot.
Preparing to unpack .../7-certbot_2.9.0-1_all.deb ...
Unpacking certbot (2.9.0-1) ...
Selecting previously unselected package python3-certbot-nginx.
Preparing to unpack .../8-python3-certbot-nginx_2.9.0-1_all.deb ...
Unpacking python3-certbot-nginx (2.9.0-1) ...
Selecting previously unselected package python3-icu.
Preparing to unpack .../9-python3-icu_2.12-1build2_amd64.deb ...
Unpacking python3-icu (2.12-1build2) ...
Setting up python3-configargparse (1.7-1) ...
Setting up python3-parsedatetime (2.6-3) ...
Setting up python3-icu (2.12-1build2) ...
Setting up python3-openssl (23.2.0-1) ...
Setting up python3-josepy (1.14.0-1) ...
Setting up python3-rfc3339 (1.1-4) ...
Setting up python3-acme (2.9.0-1) ...
Setting up python3-certbot (2.9.0-1) ...
Setting up certbot (2.9.0-1) ...
Created symlink /etc/systemd/system/timers.target.wants/certbot.timer → /usr/lib/systemd/system/certbot.timer.
Setting up python3-certbot-nginx (2.9.0-1) ...
Processing triggers for man-db (2.12.0-4build2) ...
neangan@sarangkamarang:/var/www/html$ 

Sumber: 
- https://www.linuxbabe.com/ubuntu/install-phpmyadmin-nginx-lemp-ubuntu-24-04-lts
- https://kb.biznetgio.com/id_ID/instalasi/cara-install-dan-penggunaan-mariadb-di-ubuntu-2004
- https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-ubuntu-20-04
- https://musaamin.github.io/ubuntu2004/nginx/php-nginx/
- https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-phpmyadmin-on-ubuntu-20-04
- https://qadrlabs.com/post/panduan-lengkap-cara-install-lemp-stack-nginx-mariadb-php-83-di-ubuntu-2404#step-4-konfigurasi-keamanan-mariadb