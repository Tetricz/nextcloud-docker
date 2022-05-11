# Nextcloud - thirdparty dependencies
This is a simple nextcloud container based off the official docker image, but with dependencie built in for thirdparty apps.
## Built-in dependencies for apps
* php-ffi: storj external
* libfuse2: Built-In CODE
* smbclient
## Planned added dependencies
If you have a request, just make an issue or add it yourself and I will review it
## OCC
To utilize occ you will need to run a command on the host or utilize the occ app from inside nextcloud. I recommend running occ using ```docker exec -u 33 -it nextcloud /var/www/html/occ```
