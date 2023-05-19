FROM alpine:3.14

RUN apk update && apk upgrade --no-cache && apk add --no-cache nginx openssl

COPY conf/nginx.conf /etc/nginx/

COPY ./index.html /usr/share/nginx/html/index.html

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/CN=alaajili.1337.ma"

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]