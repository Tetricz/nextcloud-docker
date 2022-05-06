# Maintainer https://github.com/Tetricz
# https://hub.docker.com/_/nextcloud

FROM nextcloud:latest

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions

RUN install-php-extensions ffi