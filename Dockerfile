# Stage 1: Build the React app
FROM node:alpine

# Set the working directory
WORKDIR /build

# Install dependencies
RUN npm install

# Copy the source code
COPY . .

# Build the React app
RUN npm run build


# Use the official Nginx image as a base
FROM nginx:latest


# Copy the HTML file into the Nginx directory
COPY build/ /usr/share/nginx/html/

# Copy custom configuration file to the image
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port Nginx will run on
EXPOSE 80
