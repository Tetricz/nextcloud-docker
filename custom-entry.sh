#!/bin/bash
mkdir /var/www/html/logs
busybox crond -b -l 0 -L /var/www/html/logs/cron.log
apache2-foreground