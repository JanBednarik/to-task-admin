#!/bin/bash

# refresh package list
apt-get update

# install nginx
apt-get install -y nginx

# copy public files dir
cp -r public /var/www

# re-configure nginx webserver
cp site.conf /etc/nginx/sites-enabled/default

# run webserver
service nginx start
