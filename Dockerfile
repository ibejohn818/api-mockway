FROM ibejohn818/php:php71w-base

RUN yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2 && yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo \
    && yum install docker-ce -y

RUN mkdir /app
RUN mkdir /server

ENV prt 80

WORKDIR /app

COPY ./router.php /server/router.php

CMD ["php", "-S",  "0.0.0.0:80", "/server/router.php"]
