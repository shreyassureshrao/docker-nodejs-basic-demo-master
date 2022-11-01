# Node version 12 is the lastest Node.js package available
FROM node:12
# Working Directoy
WORKDIR /app
# Install dependency -> copy local JSON package location into the current directory 
COPY package*.json ./
# In the docker image, install npm
RUN npm install
# copy all local files to current directory. Put dockerignore to ignore local docker modules
# Source code is now copied into the docker image
COPY . .
# Set Environment Variable...Listen on Port 8080
ENV PORT=8080

EXPOSE 8080
# Array of Strings 
CMD [ "npm", "start" ]
