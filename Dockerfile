FROM nginx:1.29.2-alpine

# Set environment variables
ENV LANG en_US.UTF-8

# Clean and set NGINX configuration
RUN rm -rf /etc/nginx/conf.d/* && \
    chgrp -R 0 /var/cache/ /var/log/ /var/run/ && \
    chmod -R g=u /var/cache/ /var/log/ /var/run/

# Copy the NGINX config
COPY default.conf /etc/nginx/conf.d/default.conf

# Expose port
EXPOSE 8080

# Start NGINX
ENTRYPOINT ["nginx", "-g", "daemon off;"]
