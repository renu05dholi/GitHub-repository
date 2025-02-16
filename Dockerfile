# Use Ubuntu as the base image
FROM ubuntu:latest

# Update package list and install Apache2
RUN apt update && apt install -y apache2

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache2 in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
