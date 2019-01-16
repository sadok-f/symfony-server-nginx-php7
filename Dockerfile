FROM sadokf/php7-nginx-supervisord

COPY resources/etc/ /etc/

ADD . /var/www/html
WORKDIR /var/www/html

RUN curl -sS https://get.symfony.com/cli/installer | bash

CMD ["/usr/bin/supervisord"]