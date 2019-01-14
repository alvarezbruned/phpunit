FROM composer

RUN mkdir /src
WORKDIR /src

RUN composer require --dev phpunit/phpunit==6.0
RUN composer require --dev phpunit/phpunit-selenium

ENTRYPOINT /src/vendor/bin/phpunit $(ls *.php)
