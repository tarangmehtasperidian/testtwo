FROM node:lts-alpine
# Install packages
RUN apk update && apk add --update --no-cache \
    git \
    bash \
    curl \
    openssh \
    python3 \
    py3-pip \
    py-cryptography \
    wget \
    curl \
    nodejs \
    npm
RUN apk --no-cache add --virtual builds-deps build-base python3
# Update NPM
RUN npm config set unsafe-perm true
RUN npm update -g
# Install AWSCLI
RUN pip install --upgrade pip && \
    pip install --upgrade awscli
RUN npm install -g aws-cdk 
RUN npm install -g typescript 
RUN cdk --version
#RUN npm cache clean --force 
ENTRYPOINT []
