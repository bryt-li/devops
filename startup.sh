#!/bin/bash

export LDAP_ADMIN_DN="cn=admin,dc=redin,dc=co"
export LDAP_ADMIN_PASSWORD="admin"
export LDAP_CONFIG_PASSWORD="config"

export SMTP_SERVER=
export SMTP_SERVER_PORT=
export SMTP_ENCRYPTION=
export SMTP_USER=
export SMTP_PASS=

docker stack deploy -c docker-compose.yml devops
