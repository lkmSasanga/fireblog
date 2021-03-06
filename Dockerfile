# FROM node:12

# WORKDIR /app

# COPY package.json /app

# RUN npm install

# COPY . /app

# EXPOSE 80

# CMD ["npm", "run", "serve"]

FROM node:lts-alpine

# install simple http server for serving static content
# RUN npm install -g http-server

RUN npm install -g @vue/cli

# make the 'app' folder the current working directory
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package.json /app/package.json

# install project dependencies
RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# build app for production with minification
# RUN npm run build

EXPOSE 8080

CMD [ "npm", "run", "serve" ]