FROM node:16-alpine

WORKDIR /usr/src/app

COPY ./server/package*.json /usr/src/app/

ARG UID=1000
ARG GID=1000

RUN chown -Rh ${UID}:${GID} .
USER ${UID}:${GID}

RUN npm i

COPY --chown=node:node ./server .

EXPOSE 3000