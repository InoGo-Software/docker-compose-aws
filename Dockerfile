FROM inogo/docker-compose:1.24.0

RUN apt update
RUN apt install -y python3-pip
RUN pip3 install awscli
