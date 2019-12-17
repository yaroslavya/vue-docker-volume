# build image
#   docker build -t vue-dev .
#
# start container
#   docker run --rm --name vue-dev-container -v /app/src:/src -p 1337:8080 vue-dev
FROM node:10-alpine as builder

COPY package.json ./

RUN npm i && mkdir /app && mv ./node_modules ./app

WORKDIR /app

COPY . .

CMD ["npm", "run", "serve"]