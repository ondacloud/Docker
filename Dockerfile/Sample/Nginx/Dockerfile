FROM nginx:alpine

COPY ./default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/
EXPOSE 8080

# CMD ["nginx", "-g", "daemon off;"]