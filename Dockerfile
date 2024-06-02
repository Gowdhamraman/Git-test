# Use Amazon Linux as the base image
FROM amazonlinux 

# Maintainer information
MAINTAINER Gowdham
LABEL Remarks="Website test using Apache webserver"

# Install Apache HTTP Server
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all

# Copy the sample index.html file to the web server's root directory
COPY index.html /var/www/html/index.html

# Expose port 80 to the host
EXPOSE 80

# Set the entry point for the container to run Apache in the foreground
#ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

