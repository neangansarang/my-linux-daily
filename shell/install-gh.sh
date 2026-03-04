eangan@sarangkamarang:~/Documents/ErEnDi/my-linux-daily$ sudo apt -y install gh
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  gh
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 8,836 kB of archives.
After this operation, 45.4 MB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 gh amd64 2.45.0-1ubuntu0.3 [8,836 kB]
Fetched 8,836 kB in 7s (1,281 kB/s)                                                                                              
Selecting previously unselected package gh.
(Reading database ... 157575 files and directories currently installed.)
Preparing to unpack .../gh_2.45.0-1ubuntu0.3_amd64.deb ...
Unpacking gh (2.45.0-1ubuntu0.3) ...
Setting up gh (2.45.0-1ubuntu0.3) ...
Processing triggers for man-db (2.12.0-4build2) ...
neangan@sarangkamarang:~/Documents/ErEnDi/my-linux-daily$ gh auth login
? What account do you want to log into? GitHub.com
? What is your preferred protocol for Git operations on this host? HTTPS
? Authenticate Git with your GitHub credentials? Yes
? How would you like to authenticate GitHub CLI? Login with a web browser

! First copy your one-time code: 7086-554E
Press Enter to open github.com in your browser... 
Opening in existing browser session.
✓ Authentication complete.
- gh config set -h github.com git_protocol https
✓ Configured git protocol
✓ Logged in as narundung
