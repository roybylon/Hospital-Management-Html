FROM ubuntu:22.04

RUN apt-get update && apt-get install -y nginx 

RUN service enable nginx

#COPY . /var/www/html
COPY . /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]