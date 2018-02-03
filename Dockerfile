FROM jwilder/nginx-proxy

COPY nginx.conf /etc/nginx/nginx.conf

RUN { \
      echo 'server_tokens off;'; \
      echo 'client_max_body_size 100m;'; \
    } > /etc/nginx/conf.d/my_proxy.conf
