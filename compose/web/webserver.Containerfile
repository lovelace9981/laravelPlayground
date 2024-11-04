FROM  bitnami/laravel:11-debian-12

WORKDIR /app
RUN apt update 
RUN apt install -y php-pgsql php-redis
RUN sed -i 's/;extension=pgsql/extension=pgsql/' /opt/bitnami/php/etc/php.ini
RUN sed -i 's/;extension=pdo_pgsql/extension=pdo_pgsql/' /opt/bitnami/php/etc/php.ini
RUN sed -i 's/;extension=pgsql/extension=pgsql/' /etc/php/8.2/cli/php.ini 
RUN sed -i 's/;extension=pdo_pgsql/extension=pdo_pgsql/' /etc/php/8.2/cli/php.ini 
RUN composer require predis/predis