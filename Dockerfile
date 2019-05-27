FROM ubuntu:latest     
MAINTAINER mohammad samour <m.fares1@yahoo.com>

RUN apt-get -q -y update && apt-get -y install nginx

COPY nginx.conf /etc/nginx/
COPY default   /etc/nginx/sites-available/

RUN rm -f /var/www/html/index.nginx-debian.html
COPY index.html /var/www/html

