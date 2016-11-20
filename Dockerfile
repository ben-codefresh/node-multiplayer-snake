FROM node:6.9.1-onbuild

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/

COPY . /usr/src/app
RUN npm install

RUN npm run unbundle

EXPOSE 3000

CMD [ "npm", "start" ]
