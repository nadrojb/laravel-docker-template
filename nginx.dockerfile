FROM nginx:stable-alpine

ARG PROJECT_NAME=laravel
ENV PROJECT_NAME=${PROJECT_NAME}
ENV NGINXUSER=${PROJECT_NAME}
ENV NGINXGROUP=${PROJECT_NAME}

RUN mkdir -p /var/www/html/public

# Use envsubst to substitute PROJECT_NAME in nginx config
RUN apk add --no-cache gettext
ADD nginx/default.conf /tmp/default.conf.template
RUN envsubst < /tmp/default.conf.template > /etc/nginx/conf.d/default.conf && rm /tmp/default.conf.template

RUN sed -i "s/user www-data/user ${NGINXUSER}/g" /etc/nginx/nginx.conf

RUN adduser -g ${NGINXGROUP} -s /bin/sh -D ${NGINXUSER}
