


docker build -t wagena/laravel:1.0 -t wagena/web-app-lemp:latest 
$ docker push wagena/laravel:1.0
$ docker push wagena/laravel:latest

## Notes

running the "supervisord" command will run both nginx and php fpm

php-fpm.conf
error_log = /proc/self/fd/2


docker logs {container id/name}
docker logs -f {container id/name}

nginx serves /var/www/html/public

## questions

working directory on current machine
what directory it gets mapped to so nginx serves it
example with laravel app
.env changes needed
