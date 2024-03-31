FROM nginx:1.23.1-alpine

# RUN apt-get update && apt-get install -y \
#     nginx \
#     nodejs \
#     npm

# RUN systemctl enable nginx

#COPY . /var/www/html
COPY . /usr/share/nginx/html

EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]
CMD ["sh", "-c", "cd /usr/share/nginx/html/ && nginx -g 'daemon off;'"]