# Use an official Nginx base image
FROM nginx:latest

# Author information
LABEL maintainer="Your Name <your.email@example.com>"

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Expose the port Nginx will run on
EXPOSE 90
# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
