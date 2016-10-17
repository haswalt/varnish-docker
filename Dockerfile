FROM alpine:3.4

RUN apk add --no-cache varnish \
    && mkdir -p /etc/varnish

COPY default.vcl /etc/varnish/default.vcl

EXPOSE 80

CMD [ "varnishd", "-F", "-f", "/etc/varnish/default.vcl" ]
