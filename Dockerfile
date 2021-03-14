FROM node:latest

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

#ARG username
#ARG password

#RUN git clone https://${username}:${password}@github.com/${username}/mymern.git .

COPY . .

RUN npm install
RUN npm run client:install
RUN npm run client:build

EXPOSE 3000

CMD [ "npm", "start" ]