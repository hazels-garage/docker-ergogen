FROM node:18.4.0
WORKDIR /app

COPY package.json ./
RUN yarn install

ENV PATH /app/node_modules/.bin:$PATH

CMD nodemon --exec "ergogen /app/src -o /app/build" /app/src/config.yaml
