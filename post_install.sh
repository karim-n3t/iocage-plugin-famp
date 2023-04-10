#!/bin/sh

# Create user 'famp'
pw add user -n famp -c Famp -s /bin/csh -m

# Step 1 — Installing Apache
pkg install apache24
sysrc apache24_enable="YES"
service apache24 start

# Step 2 — Installing MySQL
pkg install mysql80-server
sysrc mysql_enable="YES"
service mysql-server start

# Step 3 — Installing PHP
pkg install php80 php80-mysqli mod_php80
# cp /usr/local/etc/php.ini-production /usr/local/etc/php.ini
