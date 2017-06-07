#version: 0.0.1
FROM ubuntu:16.04
MAINTAINER Srini Govindaraji "gs@hotmail.com"
RUN apt-get update; apt-get install -y apache2
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ONBUILD ADD . /var/www
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apche2" ]
CMD ["-D", "FOREGROUND"]
