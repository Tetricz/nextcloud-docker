#!/bin/bash
busybox crond -b -l 0 -L /var/www/html/logs/cron.log
apache2-foreground