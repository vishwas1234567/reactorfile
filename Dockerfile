# FROM snyk/snyk:linux
# FROM debian:unstable-20211115-slim
FROM ubuntu:latest
RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install nginx -y
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
