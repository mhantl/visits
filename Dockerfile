FROM node:alpine

WORKDIR /usr/app

COPY ./package.json /usr/app
COPY ./index.js /usr/app
RUN ls -la
RUN npm install
RUN npm install --save express

CMD ["npm", "start"]