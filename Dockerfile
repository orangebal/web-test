#Download base image ubuntu 16.04
FROM ubuntu:16.04
 
# Update Software repository
RUN apt-get update

 
# Install nginx, php-fpm and supervisord from ubuntu repository
RUN apt-get install -y php5 libapache2-mod-php5 php5-mysql php5-cli && apt-get clean && rm -rf /var/lib/apt/lists/*
 
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

EXPOSE 80
