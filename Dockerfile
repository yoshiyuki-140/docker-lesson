FROM ubuntu:latest
EXPOSE 80
COPY requirements.txt requirements.txt
RUN apt update \
&& apt upgrade -y \
&& apt install httpd iproute \
&& echo "Hello Apach." > /var/www/html/index.html \
&& systemctl enable httpd
