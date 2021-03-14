FROM node:15.11.0

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

ARG username
ARG password

RUN git clone https://${username}:${password}@github.com/${username}/mymern.git

RUN npm install
RUN npm run client:install
RUN npm run client:build

CMD [ "npm", "start" ]