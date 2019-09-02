# As per 4-39 diagram

# Specify a base image
FROM node:alpine

# 4-44 Working directory specified to avoid risk of over-writing
WORKDIR /usr/app

# 4-42 Copy over build files to container (from context to current working directory (.) in container root)
COPY ./ ./

# Run some commands to install additional programs - use npm
RUN npm install

# Specify a command to run on container startup - default command
CMD ["npm", "start"]
# could be done as CMD ["npm start"] but this would start a shell in the container and thus would be slower


