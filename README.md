


docker build -t wagena/laravel:1.0 -t wagena/laravel:latest 
$ docker push wagena/laravel:1.0
$ docker push wagena/laravel:latest

// bring up application
$ docker-compose up

the application will be viewable at localhost:8080 (or whatever port you specify in .env APP_PORT variable) 

## Run artisan commands

Have to run migrate commands from within docker container

```
# list out docker containers
$ docker-compose images
      Container            Repository     Tag     Image Id      Size
---------------------------------------------------------------------
docker-laravel_app_1     wagena/laravel   1.0   fd4ae84cfcbe   327 MB
docker-laravel_mysql_1   mysql            5.7   66bc0f66b7af   355 MB

# run bash in interactive mode in the laravel app container
$ docker exec -it docker-laravel_app_1 bash

# now you can run artisan commands
root@10998dcfbee2:/var/www/html# php artisan migrate
```

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
