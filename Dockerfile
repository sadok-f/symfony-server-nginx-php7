FROM sadokf/php7-nginx-supervisord

COPY docker/resources/etc/ /etc/

CMD ["/usr/bin/supervisord"]