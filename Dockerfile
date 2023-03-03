FROM appsmith/appsmith-ce:latest
LABEL maintainer Naba Das <hello@get-deck.com>
RUN rm -rf /var/www/html/*
RUN mkdir /app
COPY default /app/smith.conf
# RUN rm -rf /etc/nginx/sites-available/default
COPY entrypoint.sh /opt/appsmith/entrypoint.sh
RUN chmod +x /opt/appsmith/entrypoint.sh
# WORKDIR /var/www/html
# ENTRYPOINT [ "/docker-entrypoint.sh" ]
# CMD /opt/appsmith/entrypoint.sh & /usr/bin/supervisord
# CMD ["/usr/bin/supervisord", "-n"]