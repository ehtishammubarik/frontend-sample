#FROM nginx:alpine
#COPY . /usr/share/nginx/html
FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
