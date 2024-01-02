FROM ubuntu:latest
WORKDIR /app
COPY . /app/
RUN apt update \
&& apt upgrade -y \
&& apt install apache2 iproute2 -y \
&& echo "Hello Apach." > /var/www/html/index.html

EXPOSE 80

# run apache2 in the foreground
CMD [ "/usr/sbin/apache2ctl","-D","FOREGROUND" ]
