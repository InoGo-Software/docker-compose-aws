FROM inogo/docker-compose:1.24.0

RUN apt update
RUN apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install -y python3-pip nodejs openssh-client
RUN npm install -g yarn
RUN yarn global add semantic-release @semantic-release/git @semantic-release/commit-analyzer @semantic-release/release-notes-generator @semantic-release/npm @semantic-release/changelog
RUN pip3 install awscli
