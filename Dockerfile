FROM node:lts-alpine

WORKDIR /app
COPY ./serveereless .
#Install packages
RUN npm i -g aws-cdk @aws-cdk/aws-s3 @aws-cdk/core @aws-cdk/aws-apigateway @aws-cdk/aws-lambda typescript
