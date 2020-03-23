FROM inogo/docker-compose:1.24.0

RUN apt update
RUN apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install -y python3-pip nodejs openssh-client
RUn npm install -g yarn
RUN pip3 install awscli
