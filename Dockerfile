FROM wagena/workstation:latest

LABEL maintainer="Wesley Agena"

ENV DEBIAN_FRONTEND=noninteractive

USER root

# this symlinks nginx default log location to stdout and stderr so that "docker logs" command can read it
# we did the same thing for php fpm in the fpm config file
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

RUN apt-get update \
    && apt-get install -y mysql-client

ADD default /etc/nginx/sites-available/default
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD php-fpm.conf /etc/php/7.2/fpm/php-fpm.conf

CMD ["supervisord"]
