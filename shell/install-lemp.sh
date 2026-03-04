sudo apt update
sudo apt upgrade -y
sudo apt install nginx
sudo systemctl status nginx
[sudo] password for neangan: 
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: enabled)
     Active: active (running) since Wed 2026-03-04 17:04:26 WIB; 6min ago
       Docs: man:nginx(8)
    Process: 1914 ExecStartPre=/usr/sbin/nginx -t -q -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
    Process: 1919 ExecStart=/usr/sbin/nginx -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
   Main PID: 1921 (nginx)
      Tasks: 5 (limit: 18885)
     Memory: 5.0M (peak: 5.5M)
        CPU: 29ms
     CGroup: /system.slice/nginx.service
             ├─1921 "nginx: master process /usr/sbin/nginx -g daemon on; master_process on;"
             ├─1922 "nginx: worker process"
             ├─1924 "nginx: worker process"
             ├─1925 "nginx: worker process"
             └─1926 "nginx: worker process"

Mar 04 17:04:26 sarangkamarang systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy s>
Mar 04 17:04:26 sarangkamarang systemd[1]: Started nginx.service - A high performance web server and a reverse proxy se>
lines 1-19

nginx -v
nginx version: nginx/1.24.0 (Ubuntu)

sudo ufw app list
Available applications:
  CUPS
  Nginx Full
  Nginx HTTP
  Nginx HTTPS

sudo ufw status
Status: active

To                         Action      From
--                         ------      ----
Nginx HTTP                 ALLOW       Anywhere                  
Nginx HTTP (v6)            ALLOW       Anywhere (v6)      

sudo apt install mariadb-server mariadb-client
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  galera-4 gawk libcgi-fast-perl libcgi-pm-perl libconfig-inifiles-perl libdbd-mysql-perl libdbi-perl libfcgi-bin
  libfcgi-perl libfcgi0t64 libhtml-template-perl libmariadb3 libmysqlclient21 libsigsegv2 libsnappy1v5
  libterm-readkey-perl liburing2 mariadb-client-core mariadb-common mariadb-plugin-provider-bzip2
  mariadb-plugin-provider-lz4 mariadb-plugin-provider-lzma mariadb-plugin-provider-lzo mariadb-plugin-provider-snappy
  mariadb-server-core mysql-common pv socat
Suggested packages:
  gawk-doc libmldbm-perl libnet-daemon-perl libsql-statement-perl libipc-sharedcache-perl mailx mariadb-test doc-base
The following NEW packages will be installed:
  galera-4 gawk libcgi-fast-perl libcgi-pm-perl libconfig-inifiles-perl libdbd-mysql-perl libdbi-perl libfcgi-bin
  libfcgi-perl libfcgi0t64 libhtml-template-perl libmariadb3 libmysqlclient21 libsigsegv2 libsnappy1v5
  libterm-readkey-perl liburing2 mariadb-client mariadb-client-core mariadb-common mariadb-plugin-provider-bzip2
  mariadb-plugin-provider-lz4 mariadb-plugin-provider-lzma mariadb-plugin-provider-lzo mariadb-plugin-provider-snappy
  mariadb-server mariadb-server-core mysql-common pv socat
0 upgraded, 30 newly installed, 0 to remove and 3 not upgraded.
Need to get 19.9 MB of archives.
After this operation, 202 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu noble/universe amd64 galera-4 amd64 26.4.16-2build4 [736 kB]
Get:2 http://archive.ubuntu.com/ubuntu noble/main amd64 libsigsegv2 amd64 2.14-1ubuntu2 [15.0 kB]

sudo systemctl status mariadb
● mariadb.service - MariaDB 10.11.14 database server
     Loaded: loaded (/usr/lib/systemd/system/mariadb.service; enabled; preset: enabled)
     Active: active (running) since Wed 2026-03-04 17:18:29 WIB; 14s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
   Main PID: 7092 (mariadbd)
     Status: "Taking your SQL requests now..."
      Tasks: 13 (limit: 124646)
     Memory: 78.8M (peak: 82.4M)
        CPU: 513ms
     CGroup: /system.slice/mariadb.service
             └─7092 /usr/sbin/mariadbd

Mar 04 17:18:29 sarangkamarang mariadbd[7092]: 2026-03-04 17:18:29 0 [Note] Plugin 'FEEDBACK' is disabled.
Mar 04 17:18:29 sarangkamarang mariadbd[7092]: 2026-03-04 17:18:29 0 [Note] InnoDB: Loading buffer pool(s) from /var/li>
Mar 04 17:18:29 sarangkamarang mariadbd[7092]: 2026-03-04 17:18:29 0 [Warning] You need to use --log-bin to make --expi>
Mar 04 17:18:29 sarangkamarang mariadbd[7092]: 2026-03-04 17:18:29 0 [Note] Server socket created on IP: '127.0.0.1', p>
Mar 04 17:18:29 sarangkamarang mariadbd[7092]: 2026-03-04 17:18:29 0 [Note] InnoDB: Buffer pool(s) load completed at 26>
Mar 04 17:18:29 sarangkamarang mariadbd[7092]: 2026-03-04 17:18:29 0 [Note] /usr/sbin/mariadbd: ready for connections.
Mar 04 17:18:29 sarangkamarang mariadbd[7092]: Version: '10.11.14-MariaDB-0ubuntu0.24.04.1'  socket: '/run/mysqld/mysql>
Mar 04 17:18:29 sarangkamarang systemd[1]: Started mariadb.service - MariaDB 10.11.14 database server.
Mar 04 17:18:29 sarangkamarang /etc/mysql/debian-start[7110]: Upgrading MariaDB tables if necessary.
Mar 04 17:18:29 sarangkamarang /etc/mysql/debian-start[7125]: Triggering myisam-recover for all MyISAM tables and aria->
lines 1-23/23 (END)

sudo mysql_secure_installation

NOTE: RUNNING ALL PARTS OF THIS SCRIPT IS RECOMMENDED FOR ALL MariaDB
      SERVERS IN PRODUCTION USE!  PLEASE READ EACH STEP CAREFULLY!

In order to log into MariaDB to secure it, we'll need the current
password for the root user. If you've just installed MariaDB, and
haven't set the root password yet, you should just press enter here.

Enter current password for root (enter for none): 
OK, successfully used password, moving on...

Setting the root password or using the unix_socket ensures that nobody
can log into the MariaDB root user without the proper authorisation.

You already have your root account protected, so you can safely answer 'n'.

Switch to unix_socket authentication [Y/n] Y
Enabled successfully!
Reloading privilege tables..
 ... Success!


You already have your root account protected, so you can safely answer 'n'.

Change the root password? [Y/n] Y     
New password: 
Re-enter new password: 
Password updated successfully!
Reloading privilege tables..
 ... Success!


By default, a MariaDB installation has an anonymous user, allowing anyone
to log into MariaDB without having to have a user account created for
them.  This is intended only for testing, and to make the installation
go a bit smoother.  You should remove them before moving into a
production environment.

Remove anonymous users? [Y/n] y
 ... Success!

Normally, root should only be allowed to connect from 'localhost'.  This
ensures that someone cannot guess at the root password from the network.

Disallow root login remotely? [Y/n] y
 ... Success!

By default, MariaDB comes with a database named 'test' that anyone can
access.  This is also intended only for testing, and should be removed
before moving into a production environment.

Remove test database and access to it? [Y/n] y
 - Dropping test database...
 ... Success!
 - Removing privileges on test database...
 ... Success!

Reloading the privilege tables will ensure that all changes made so far
will take effect immediately.

Reload privilege tables now? [Y/n] y
 ... Success!

Cleaning up...

All done!  If you've completed all of the above steps, your MariaDB
installation should now be secure.

Thanks for using MariaDB!

sudo mariadb
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 41
Server version: 10.11.14-MariaDB-0ubuntu0.24.04.1 Ubuntu 24.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.001 sec)

MariaDB [(none)]> exit
Bye

mariadb -u root -p
Enter password: 453p53p714D1
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 42
Server version: 10.11.14-MariaDB-0ubuntu0.24.04.1 Ubuntu 24.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.001 sec)

MariaDB [(none)]> 

sudo apt install php-fpm php-mysql
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libsodium23 php-common php8.3-cli php8.3-common php8.3-fpm php8.3-mysql php8.3-opcache php8.3-readline
Suggested packages:
  php-pear
The following NEW packages will be installed:
  libsodium23 php-common php-fpm php-mysql php8.3-cli php8.3-common php8.3-fpm php8.3-mysql php8.3-opcache
  php8.3-readline
0 upgraded, 10 newly installed, 0 to remove and 3 not upgraded.
Need to get 5,274 kB of archives.
After this operation, 23.4 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libsodium23 amd64 1.0.18-1ubuntu0.24.04.1 [161 kB]
Get:2 http://archive.ubuntu.com/ubuntu noble/main amd64 php-common all 2:93ubuntu2 [13.9 kB]

php -v
PHP 8.3.6 (cli) (built: Jan  7 2026 08:40:32) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.3.6, Copyright (c) Zend Technologies
    with Zend OPcache v8.3.6, Copyright (c), by Zend Technologies

sudo systemctl status php8.3-fpm
● php8.3-fpm.service - The PHP 8.3 FastCGI Process Manager
     Loaded: loaded (/usr/lib/systemd/system/php8.3-fpm.service; enabled; preset: enabled)
     Active: active (running) since Wed 2026-03-04 17:24:27 WIB; 33s ago
       Docs: man:php-fpm8.3(8)
    Process: 15118 ExecStartPost=/usr/lib/php/php-fpm-socket-helper install /run/php/php-fpm.sock /etc/php/8.3/fpm/pool>
   Main PID: 15115 (php-fpm8.3)
     Status: "Processes active: 0, idle: 2, Requests: 0, slow: 0, Traffic: 0req/sec"
      Tasks: 3 (limit: 18885)
     Memory: 7.7M (peak: 9.7M)
        CPU: 61ms
     CGroup: /system.slice/php8.3-fpm.service
             ├─15115 "php-fpm: master process (/etc/php/8.3/fpm/php-fpm.conf)"
             ├─15116 "php-fpm: pool www"
             └─15117 "php-fpm: pool www"

Mar 04 17:24:27 sarangkamarang systemd[1]: Starting php8.3-fpm.service - The PHP 8.3 FastCGI Process Manager...
Mar 04 17:24:27 sarangkamarang systemd[1]: Started php8.3-fpm.service - The PHP 8.3 FastCGI Process Manager.
lines 1-17/17 (END)

sudo rm /etc/nginx/sites-enabled/default 
neangan@sarangkamarang:~$ sudo code /etc/nginx/conf.d/default.conf
You are trying to start Visual Studio Code as a super user which isn't recommended. If this was intended, please add the argument `--no-sandbox` and specify an alternate user data directory using the `--user-data-dir` argument.
neangan@sarangkamarang:~$ sudo nano /etc/nginx/conf.d/default.conf
neangan@sarangkamarang:~$ cat /etc/nginx/conf.d/default.conf 
server {
    listen 80;
    root /var/www/html;
    index index.php index.html index.htm;
    server_name localhost;

    location / {
        try_files $uri $uri/ =404;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php8.3-fpm.sock;
    }
}
neangan@sarangkamarang:~$ sudo nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
neangan@sarangkamarang:~$ sudo systemctl reload nginx
neangan@sarangkamarang:~$ sudo systemctl reload nginx
neangan@sarangkamarang:~$ sudo nano /var/www/html/info.php

neangan@sarangkamarang:~$ cat /var/www/html/info.php
<?php
phpinfo();
?>

http://172.29.18.237/info.php