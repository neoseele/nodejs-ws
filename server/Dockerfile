FROM node:8

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install \
  && npm install ws \
  && npm install express

# Bundle app source
COPY app /usr/src/app

EXPOSE 8080
CMD [ "npm", "start" ]
