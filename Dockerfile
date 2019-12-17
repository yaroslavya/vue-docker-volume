# build image
#   docker build -t vue-dev .
#
# start container with no source files synchronization, just to make sure it works:
#   docker run --rm --name vue-dev-container -v /app/src:/src -p 1337:8080 vue-dev
#
#  Ctrl+C shuts down the container and removes it from the system, so no need to clean it up.
#
# 
#  Below command starts the built container and attaches the local src folder to container's src folder.
#    docker run -v $(pwd)/src:/app/src --rm --name vue-dev-container -p 1337:8080 vue-dev
#
# NOTE: above the volume flag -v $(pwd) stands for the current directory absolute path. 
# On windows it should be changed to whatever it is on windows.

FROM node:10-alpine as builder

COPY package.json ./

RUN npm i && mkdir /app && mv ./node_modules ./app

WORKDIR /app

COPY . .

CMD ["npm", "run", "serve"]