#!/bin/bash
#add fix to exercise3 here
####did not succeed
## managed to find the solution at:
## https://stackoverflow.com/questions/18447454/apache-giving-403-forbidden-errors

echo "<Directory />" >> /etc/hosts/httpd.conf
echo    "Allow from all" >> /etc/hosts/httpd.conf
echo     "Order allow,deny">> /etc/hosts/httpd.conf
echo "</Directory>">> /etc/hosts/httpd.conf

echo "<VirtualHost *:80>">> /etc/hosts/httpd.conf
echo    "DocumentRoot "/Users/myusername/Sites/mySite/public"">> /etc/hosts/httpd.conf
echo     "ServerName mysite">> /etc/hosts/httpd.conf
echo    "<Directory "/Users/myusername/Sites/mySite/public">">> /etc/hosts/httpd.conf
echo        "Options Indexes FollowSymLinks Includes ExecCGI">> /etc/hosts/httpd.conf
echo        "AllowOverride All">> /etc/hosts/httpd.conf
echo        "Order allow,deny">> /etc/hosts/httpd.conf
echo        "Allow from all">> /etc/hosts/httpd.conf
echo        "Require all granted">> /etc/hosts/httpd.conf
echo    "</Directory>">> /etc/hosts/httpd.conf
echo "</VirtualHost>">> /etc/hosts/httpd.conf
