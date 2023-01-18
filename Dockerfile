FROM mwaeckerlin/openldap

COPY flintstones-data.ldif /var/restore/

ENV DEBUG 256
ENV DOMAIN flintstones.com
ENV ACCESS_RULES access to attrs=userPassword \
    by anonymous auth \
    by self write \
    by * none \
  access to * \
    by * read
