FROM node:14.16.0-buster-slim

ENV APPLICATION_DIR /app

WORKDIR $APPLICATION_DIR

COPY package.json $APPLICATION_DIR/
COPY package-lock.json $APPLICATION_DIR/
COPY src/index.js $APPLICATION_DIR/src/

RUN apt update
RUN npm i

EXPOSE 8080

CMD [ "npm", "start" ]
