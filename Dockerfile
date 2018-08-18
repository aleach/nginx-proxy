FROM jwilder/nginx-proxy

RUN touch /etc/apt/sources.list.d/sources.list  && \
    echo "deb http://ftp.debian.org/debian stretch-backports main" >> /etc/apt/sources.list.d/sources.list && \
    apt-get -y update && \
    apt-get install -y --no-install-recommends python-certbot-nginx -t stretch-backports && \
    rm -fr /tmp/* /var/lib/apt/lists/* /var/tmp/* \
    && apt-get autoremove -y \
    && apt-get autoclean \
    && apt-get clean

COPY nginx.conf /etc/nginx/nginx.conf
