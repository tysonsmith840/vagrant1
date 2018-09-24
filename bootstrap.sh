#!/bin/bash

apt-get update
apt-get install -y apache2
apt-get install -y libapache2-mod-php
apt-get install -y php7.0

mv /var/www/html/web  /var/www/html/web.0
ln -s /vagrant/web /var/www/html/web

mv /etc/apache2/sites-enabled/000-default.conf /etc/apache2/sites-enabled/000-default.conf.0 
ln -s /vagrant/virtualhosts/default/default.conf /etc/apache2/sites-enabled/000-default.conf

