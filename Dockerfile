FROM node:lts-alpine

WORKDIR /app
COPY ./serverless .
#Install packages
RUN npm install -g aws-cdk 
RUN npm install -g typescript 
RUN npm install @aws-cdk/aws-s3
RUn npm update
