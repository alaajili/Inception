FROM alpine:3.14

RUN apk update && apk upgrade --no-cache && apk add --no-cache nginx

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]