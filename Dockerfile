FROM sadokf/php7-nginx-supervisord

COPY docker/resources/etc/ /etc/

ADD . /var/www/html
WORKDIR /var/www/html

CMD ["/usr/bin/supervisord"]