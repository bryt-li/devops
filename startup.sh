#!/bin/bash

LDAP_ADMIN_DN="cn=admin,dc=redin,dc=co" \
LDAP_ADMIN_PASSWORD="admin" \
LDAP_CONFIG_PASSWORD="config" \
\
SMTP_SERVER= \
SMTP_SERVER_PORT= \
SMTP_ENCRYPTION= \
SMTP_USER= \
SMTP_PASS= \
docker stack deploy -c docker-compose.yml devops
