# Use a small nginx image
FROM nginx:alpine

# Remove default nginx content (optional) and copy our index.html
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 and run nginx in foreground
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
