neangan@sarangkamarang:~$ sudo systemctl restart nginx

Muncul pesan error--> Warning: The unit file, source configuration file or drop-ins of nginx.service changed on disk. Run 'systemctl daemon-reload' to reload units.

neangan@sarangkamarang:~$ sudo systemctl daemon-reload
neangan@sarangkamarang:~$ sudo systemctl status nginx
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: enabled)
     Active: active (running) since Wed 2026-03-04 12:21:26 WIB; 15s ago
       Docs: man:nginx(8)
   Main PID: 8468 (nginx)
      Tasks: 5 (limit: 18885)
     Memory: 3.7M (peak: 4.4M)
        CPU: 25ms
     CGroup: /system.slice/nginx.service
             ├─8468 "nginx: master process /usr/sbin/nginx -g daemon on; master_process on;"
             ├─8469 "nginx: worker process"
             ├─8470 "nginx: worker process"
             ├─8471 "nginx: worker process"
             └─8472 "nginx: worker process"

Mar 04 12:21:26 sarangkamarang systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy server...
Mar 04 12:21:26 sarangkamarang systemd[1]: Started nginx.service - A high performance web server and a reverse proxy server.

Cara Fixnya

neangan@sarangkamarang:~$ sudo systemctl restart nginx
Warning: The unit file, source configuration file or drop-ins of nginx.service changed on disk. Run 'systemctl daemon-reload' to reload units.
neangan@sarangkamarang:~$ sudo systemctl daemon-reload
neangan@sarangkamarang:~$ sudo systemctl status nginx
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: enabled)
     Active: active (running) since Wed 2026-03-04 12:21:26 WIB; 15s ago
       Docs: man:nginx(8)
   Main PID: 8468 (nginx)
      Tasks: 5 (limit: 18885)
     Memory: 3.7M (peak: 4.4M)
        CPU: 25ms
     CGroup: /system.slice/nginx.service
             ├─8468 "nginx: master process /usr/sbin/nginx -g daemon on; master_process on;"
             ├─8469 "nginx: worker process"
             ├─8470 "nginx: worker process"
             ├─8471 "nginx: worker process"
             └─8472 "nginx: worker process"

Mar 04 12:21:26 sarangkamarang systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy server...
Mar 04 12:21:26 sarangkamarang systemd[1]: Started nginx.service - A high performance web server and a reverse proxy server.
neangan@sarangkamarang:~$