# Maintainer https://github.com/Tetricz
# https://hub.docker.com/_/nextcloud
ARG NC_VERSION=latest
FROM nextcloud:${NC_VERSION}

RUN apt-get update && apt-get install libfuse2 libmagickcore-6.q16-6-extra -y

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions

RUN install-php-extensions ffi imagick smbclient

RUN echo "ffi.enable=true" > /usr/local/etc/php/conf.d/ffi.ini
RUN sed '\$ibusybox crond -b' entrypoint.sh > /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]