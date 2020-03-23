FROM inogo/docker-compose:1.24.0

RUN apt update
# Install python, nodejs, openssh-client
RUN apt install -y python3-pip nodejs openssh-client
# Install Curl
RUN apt install -y curl && curl -sL https://deb.nodesource.com/setup_10.x | bash -
# Install awscli
RUN pip3 install awscli
