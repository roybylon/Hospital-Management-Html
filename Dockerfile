FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    nginx \
    nodejs \
    npm

RUN systemctl enable nginx

#COPY . /var/www/html
COPY src/. /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]