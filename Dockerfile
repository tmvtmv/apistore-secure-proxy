FROM nginx:alpine
COPY conf/default.conf /etc/nginx/conf.d/default.conf
COPY content/index.html /usr/share/nginx/html/
COPY certs/ /etc/nginx/certs/
EXPOSE 80 443
