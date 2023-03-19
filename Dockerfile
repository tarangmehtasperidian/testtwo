FROM node:lts-alpine

WORKDIR /app
COPY ./serverless .
#Install packages
RUN npm i -g aws-cdk @aws-cdk/aws-s3 @aws-cdk/core typescript
