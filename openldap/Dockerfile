FROM osixia/openldap:1.2.2
MAINTAINER Bryt <bryt@oriente.com>

ADD ./ldif/*.ldif /container/service/slapd/assets/config/bootstrap/ldif/
ADD ./schema/*.schema /container/service/slapd/assets/config/bootstrap/schema/
ADD ./ldif/custom/*.ldif /container/service/slapd/assets/config/bootstrap/ldif/custom
