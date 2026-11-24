FROM php:7.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html/files && chmod -R 775 /var/www/html/files

EXPOSE 80
