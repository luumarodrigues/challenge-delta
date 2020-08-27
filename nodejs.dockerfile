FROM node:latest
LABEL maintainer="Luma Rodrigues"

RUN mkdir /home/app

COPY ./src /home/app

WORKDIR /home/app

RUN npm install

CMD [ "node", "server.js" ]
