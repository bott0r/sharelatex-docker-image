#!/bin/sh

sleep 60s 
echo "Checking can connect to mongo and redis"
cd /var/www/sharelatex && grunt check:redis
sleep 60s & echo "waiting 60s"
cd /var/www/sharelatex && grunt check:mongo
echo "All checks passed"
