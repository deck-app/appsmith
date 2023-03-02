#!/bin/bash
set +x
if [[ -d "/var/www/backend" ]] 
then
    echo "Apps alrady installed."
else
    cp -a /opt/appsmith/* /var/www/html/
    service nginx restart
fi
echo "App is ready for use"
exec "$@"