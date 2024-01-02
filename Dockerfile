FROM ubuntu
WORKDIR 
COPY requirements.txt requirements.txt
RUN apt update \
&& apt upgrade -y \
&& apt install httpd iproute 