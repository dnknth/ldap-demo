FROM mwaeckerlin/openldap

COPY --chmod=555 start.sh /start.sh
COPY flintstones-data.ldif /var/restore/

RUN mkdir -p /ssl
COPY --chmod=444 ssl-cert-snakeoil.key /ssl/flintstones.com.key
COPY --chmod=444 ssl-cert-snakeoil.pem /ssl/flintstones.com.pem
# RUN apk add --no-cache ca-certificates

ENV DEBUG 256
ENV DOMAIN flintstones.com

ENV ACCESS_RULES access to attrs=userPassword \
    by anonymous auth \
    by self write \
    by * none \
  access to * \
    by * read
