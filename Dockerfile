FROM alpine:latest


MAINTAINER zhuzhenhua<zhuzhenhua@gosun.com> 


RUN apk --update add nginx && mkdir /run/nginx && cp -a default.conf /etc/nginx/conf.d/
COPY 2048 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "\'daemon off;\'"]
