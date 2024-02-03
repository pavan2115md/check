# Use an official lightweight Node.js image
FROM nginx

# Copy package.json and package-lock.json to the working directory
COPY  src/usr/nginx/html

# Install dependencies
RUN npm install

# Copy the HTML file to the working directory
COPY index1.html .

# Command to run the application
CMD ["npm", "start"]

