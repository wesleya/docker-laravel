


docker build -t wagena/laravel:1.0 -t wagena/laravel:latest 
$ docker push wagena/laravel:1.0
$ docker push wagena/laravel:latest

// bring up application
$ docker-compose up

the application will be viewable at localhost:8080 (or whatever port you specify in .env APP_PORT variable) 

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
