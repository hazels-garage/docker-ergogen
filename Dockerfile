FROM node:18.4.0
WORKDIR /app

COPY package.json ./
RUN yarn install

ENV PATH /app/node_modules/.bin:$PATH

CMD nodemon --exec "ergogen /app/project -o /app/build" /app/project/config.yaml
