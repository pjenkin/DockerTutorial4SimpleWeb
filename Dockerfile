# As per 4-39 diagram

# Specify a base image
FROM node:alpine

# Run some commands to install additional programs - use npm
RUN npm install

# Specify a command to run on container startup - default command
CMD ["npm", "start"]
# could be done as CMD ["npm start"] but this would start a shell in the container and thus would be slower


