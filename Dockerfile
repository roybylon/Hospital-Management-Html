FROM nginx:1.23.1-alpine

COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["sh", "-c", "cd /usr/share/nginx/html/ && nginx -g 'daemon off;'"]