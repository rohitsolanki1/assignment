# Use the official Nginx base image
FROM nginx:latest

# Copy the HTML file to the Nginx HTML directory
COPY . /usr/share/nginx/html/

EXPOSE 80
