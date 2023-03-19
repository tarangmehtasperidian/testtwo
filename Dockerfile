FROM node:lts-alpine

ENV SOURCE_DIR=/
COPY . $SOURCE_DIR
WORKDIR $SOURCE_DIR
#Install packages
RUN npm install -g aws-cdk 
RUN npm install -g typescript 
RUN npm update
RUN npm cache clean --force 
