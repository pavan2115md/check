# Use an official lightweight Node.js image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the HTML file to the working directory
COPY index:1.html .

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["npm", "start"]

