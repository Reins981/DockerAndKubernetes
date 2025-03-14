FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

RUN mv nginx.conf default.conf

RUN chmod 444 default.conf    

WORKDIR /var/www/html

COPY src .

EXPOSE 80

# Default command from nxing base image is executed to start the server