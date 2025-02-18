FROM node:16.3.0-alpine

# Create app directory
RUN mkdir -p /src/app
WORKDIR /src/app

# Install app dependencies
COPY package.json /src/app/
RUN npm install

# Bundle app source
COPY . /src/app

# Build and optimize react app
RUN npm run build

EXPOSE 3000

# defined in package.json
CMD [ "npm", "start" ]

