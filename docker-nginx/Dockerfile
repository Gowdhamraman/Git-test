# Use the official Nginx image as a base
FROM nginx:latest


# Copy the HTML file into the Nginx directory
COPY index.html /usr/share/nginx/html/index.html

# Copy custom configuration file to the image
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port Nginx will run on
EXPOSE 80

