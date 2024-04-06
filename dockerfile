# Use an official Node.js runtime as a base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy Vite config
COPY vite.config.js /app

# Install vite globally
RUN npm install -g vite

# Copy the rest of your application code
COPY . .

# Expose dev server
EXPOSE 5173

# Specify a command to run your application (in this case, serving the built files)
CMD ["npm", "run", "dev"]
