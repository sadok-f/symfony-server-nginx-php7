FROM sadokf/php7-nginx-supervisord

COPY docker/resources/etc/ /etc/

RUN apt-get update && apt-get -y upgrade \  
&& apt-get -y install openssh-server supervisor \
&& echo 'root:root' | chpasswd \
&& sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config\
&& mkdir /var/run/sshd 


EXPOSE 3306 80

# volumes
VOLUME ["/var/lib/mysql"]

ADD . /var/www/html
WORKDIR /var/www/html

CMD ["/usr/bin/supervisord"]