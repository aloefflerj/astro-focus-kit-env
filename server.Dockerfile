FROM node:16-alpine

ARG ENV=development
ENV ENV=${ENV}

WORKDIR /usr/src/app

COPY ./server /usr/src/app
COPY ./server/package*.json /usr/src/app/

RUN npm install

EXPOSE 8000
CMD  [ "npm", “run”, "${NODE_ENV}" ]