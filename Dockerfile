# Use a lightweight base image
FROM nginx:alpine

# Copy the index.html file into the container at /usr/share/nginx/html
COPY index1.html /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the application
CMD ["nginx", "-g", "daemon off;"]
