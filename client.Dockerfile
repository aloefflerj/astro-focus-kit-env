FROM node:16-alpine

WORKDIR /app

RUN mkdir -p /opt/node_modules

COPY ./astro-focus-kit-client /app
COPY ./astro-focus-kit-client/package*.json /app/

ARG UID=1000
ARG GID=1000

RUN chown -Rh ${UID}:${GID} /app
USER ${UID}:${GID}

RUN npm i

EXPOSE 5173
