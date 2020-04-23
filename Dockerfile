FROM node:14.0.0-alpine3.11

WORKDIR /usr/src/app
ENV NPM_CONFIG_LOGLEVEL info

COPY package*.json ./

RUN npm install

COPY ./src/* ./

CMD [ "npm", "start" ]
