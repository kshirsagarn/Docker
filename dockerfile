# Use an official Nginx base image
FROM nginx:latest

# Author information
LABEL maintainer="Your Name <your.email@example.com>"

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/

# Copy your web content to the default Nginx public folder
COPY ./html /usr/share/nginx/html

# Expose the port Nginx will run on
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
