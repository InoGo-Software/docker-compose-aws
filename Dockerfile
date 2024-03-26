FROM inogo/docker-compose:2.25.0

RUN apt update
RUN apt install -y curl python3-pip openssh-client
RUN yarn global add semantic-release @semantic-release/git @semantic-release/commit-analyzer @semantic-release/release-notes-generator @semantic-release/npm @semantic-release/changelog
RUN pip3 install awscli
