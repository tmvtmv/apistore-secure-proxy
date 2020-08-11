FROM nginx
COPY conf/default.conf /etc/nginx/conf.d/default.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY content/index.html /usr/share/nginx/html/
COPY certs/ /etc/nginx/certs/
RUN rm -f /bin/busybox /usr/bin/*
EXPOSE 443
