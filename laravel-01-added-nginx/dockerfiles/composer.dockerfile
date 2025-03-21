FROM composer:latest

WORKDIR /var/www/html

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

RUN chown -R laravel:laravel /var/www/html
RUN chmod -R 775 /var/www/html
 
USER laravel

ENTRYPOINT ["composer", "--ignore-platform-reqs"]