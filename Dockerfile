# Start from the official Node.js image
FROM node:18

# Create and set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install the starknet-devnet-js library and dependencies
RUN npm install starknet-devnet

# Copy your application files (optional, if you have other scripts or code to add)
COPY . .

# Set the default command to open a Node.js REPL (or a script if you have one)
CMD ["node", "test.js"]