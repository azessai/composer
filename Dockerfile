FROM php:5.6.40-zts-alpine
LABEL maintainer "A. ES SAI"
LABEL version "1.0"
LABEL description "php 5.6.40 with composer"


ENV DEBIAN_FRONTEND noninteractive


#RUN docker-php-ext-install pdo pdo_mysql
#RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer
RUN apk update
RUN apk upgrade
RUN apk add bash
RUN alias composer='php /usr/bin/composer'
