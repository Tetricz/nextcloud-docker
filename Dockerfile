# Maintainer https://github.com/Tetricz
# https://hub.docker.com/_/nextcloud

FROM nextcloud:latest

RUN apt-get update && apt-get install libfuse2 libmagickcore-6.q16-6-extra -y

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions

RUN install-php-extensions ffi

ADD ./custom-entry.sh /custom-entry.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash", "/custom-entry.sh"]