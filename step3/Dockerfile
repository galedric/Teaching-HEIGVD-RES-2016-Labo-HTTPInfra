FROM php:5.6-apache

COPY 001-reverse-proxy.conf /etc/apache2/sites-available/
RUN a2ensite 001-reverse-proxy.conf
RUN a2enmod proxy_http

