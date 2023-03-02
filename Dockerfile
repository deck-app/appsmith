FROM appsmith/appsmith-ce:latest
LABEL maintainer Naba Das <hello@get-deck.com>
# RUN rm -rf /var/www/html/*
# COPY default /etc/nginx/sites-enabled/default
# COPY entrypoint.sh /opt/appsmith/entrypoint.sh
# RUN chmod +x /opt/appsmith/entrypoint.sh
# ENTRYPOINT [ "/docker-entrypoint.sh" ]
# CMD /opt/appsmith/entrypoint.sh & /usr/bin/supervisord
# CMD ["/usr/bin/supervisord", "-n"]