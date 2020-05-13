#!/bin/bash
#add fix to exercise3 here
####did not succeed
## managed to find the solution at:
## https://stackoverflow.com/questions/18447454/apache-giving-403-forbidden-errors


sudo sh -c 'echo "<Directory />" >> /etc/apache2/httpd.conf'
sudo sh -c 'echo    "Allow from all" >> /etc/apache2/httpd.conf'
sudo sh -c 'echo     "Order allow,deny">> /etc/apache2/httpd.conf'
sudo sh -c 'echo "</Directory>">> /etc/apache2/httpd.conf'

sudo sh -c 'echo "<VirtualHost *:80>">> /etc/apache2/httpd.conf'
sudo sh -c 'echo    "DocumentRoot "/Users/myusername/Sites/mySite/public"">> /etc/apache2/httpd.conf'
sudo sh -c 'echo     "ServerName mysite">> /etc/apache2/httpd.conf'
sudo sh -c 'echo    "<Directory "/Users/myusername/Sites/mySite/public">">> /etc/apache2/httpd.conf'
sudo sh -c 'echo        "Options Indexes FollowSymLinks Includes ExecCGI">> /etc/apache2/httpd.conf'
sudo sh -c 'echo        "AllowOverride All">> /etc/apache2/httpd.conf'
sudo sh -c 'echo        "Order allow,deny">> /etc/apache2/httpd.conf'
sudo sh -c 'echo        "Allow from all">> /etc/apache2/httpd.conf'
sudo sh -c 'echo        "Require all granted">> /etc/apache2/httpd.conf'
sudo sh -c 'echo    "</Directory>">> /etc/apache2/httpd.conf'
sudo sh -c 'echo  "</VirtualHost>">> /etc/apache2/httpd.conf'
