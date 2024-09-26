# Use an official lightweight Nginx image
FROM nginx:alpine

# Remove the default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy static assets from your project folder to the container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx and keep it running in the foregroun
CMD ["nginx", "-g", "daemon off;"]
