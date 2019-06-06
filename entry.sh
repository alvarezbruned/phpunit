#!/bin/bash
sleep 20s
cd /files
rm -fv /files/sem/ACTION
touch /files/sem/stop
while :;
  do
  if [ -f /files/sem/stop ]; then
    echo "nothing to do"
  else
    if [ -f /files/sem/ACTION ]; then
      export ACTION=$(cat /files/sem/ACTION) && /src/vendor/bin/phpunit /files/bixpe.php
      echo "action loaded ${ACTION}"
    fi
  fi
  touch /files/sem/stop
  rm -fv /files/sem/ACTION
  sleep 5s
done

