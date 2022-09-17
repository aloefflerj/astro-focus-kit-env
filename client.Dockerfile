FROM node:16-alpine

WORKDIR /app

RUN mkdir -p /opt/node_modules

COPY ./client /app
COPY ./client/package*.json /app/

RUN npm i

EXPOSE 4000
