FROM composer

RUN mkdir -p /src
WORKDIR /src

RUN composer require --dev phpunit/phpunit==6.0
RUN composer require --dev phpunit/phpunit-selenium

RUN mkdir /files
RUN curl -o /files/bixpe.php https://raw.githubusercontent.com/alvarezbruned/bixpe/master/bixpe.php

COPY entry.sh /tmp

ENTRYPOINT [ "/tmp/entry.sh"]
