FROM appsmith/appsmith-ce:latest
LABEL maintainer Naba Das <hello@get-deck.com>
RUN rm -rf /var/www/html/*
RUN mkdir /app
COPY default /app/smith.conf
COPY entrypoint.sh /opt/appsmith/entrypoint.sh
RUN chmod +x /opt/appsmith/entrypoint.sh
