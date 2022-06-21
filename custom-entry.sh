#!/bin/bash
/entrypoint.sh
busybox crond -b
apache2-foreground