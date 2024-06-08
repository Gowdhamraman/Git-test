# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the HTML file into the Nginx directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 8000

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

