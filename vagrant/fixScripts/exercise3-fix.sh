#!/bin/bash
#add fix to exercise3 here
####did not succeed
## managed to find the solution at:
## https://stackoverflow.com/questions/18447454/apache-giving-403-forbidden-errors

echo "<Directory />" >> /etc/apache2/httpd.conf
echo    "Allow from all" >> /etc/apache2/httpd.conf
echo     "Order allow,deny">> /etc/apache2/httpd.conf
echo "</Directory>">> /etc/apache2/httpd.conf

echo "<VirtualHost *:80>">> /etc/apache2/httpd.conf
echo    "DocumentRoot "/Users/myusername/Sites/mySite/public"">> /etc/apache2/httpd.conf
echo     "ServerName mysite">> /etc/apache2/httpd.conf
echo    "<Directory "/Users/myusername/Sites/mySite/public">">> /etc/apache2/httpd.conf
echo        "Options Indexes FollowSymLinks Includes ExecCGI">> /etc/apache2/httpd.conf
echo        "AllowOverride All">> /etc/apache2/httpd.conf
echo        "Order allow,deny">> /etc/apache2/httpd.conf
echo        "Allow from all">> /etc/apache2/httpd.conf
echo        "Require all granted">> /etc/apache2/httpd.conf
echo    "</Directory>">> /etc/apache2/httpd.conf
echo  "</VirtualHost>">> /etc/apache2/httpd.conf
