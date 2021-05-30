FROM nginx:alpine
RUN apk add certbot certbot-nginx
RUN mkdir /etc/letsencrypt

# Delete the default welcome to nginx page.
RUN rm /usr/share/nginx/html/*

EXPOSE 80

# Copy over the custom default configs.
COPY default.conf /etc/nginx/conf.d/default.conf

# Start nginx in the foreground to play nicely with Docker.
CMD ["nginx", "-g", "daemon off;"]
