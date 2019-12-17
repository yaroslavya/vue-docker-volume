# vue-docker-volume

## Project setup

Should work in the following way:

- build the image by executing the 
```
docker build -t vue-dev .
```

- after its done start the container
```
docker run -v $(pwd)/src:/app/src --rm --name vue-dev-container -p 1337:8080 vue-dev
```
for windows instead of $(pwd) use the absolute path, something like that
-v c:/path/to/src/on/windows:/app/src

Instructions on working with docker are written in the top of the Docker file.
You basically have to build the image being in the root( the folder that has all the stuff inside, like node_modules, src etc. ) folder of the solution.
Then you start the container in one of the modes provided. For details see Dockerfile.

To run the solution locally execute the commands below:

```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```