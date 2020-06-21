# https://hub.docker.com/r/tiangolo/uwsgi-nginx-flask/

FROM nginx:alpine

ADD ./dist /etc/nginx/html

COPY ./deploy/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
EXPOSE 443
