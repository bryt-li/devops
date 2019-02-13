# Start local registry
```
docker service create --name registry --publish published=5000,target=5000 registry:2
```

# Build Docker Image & Push to local registry
```
cd openldap
make

cd pwm
make
```

# Setup Environments for credentials

```
export LDAP_SERVER="openldap"
export LDAP_ADMIN_DN="cn=admin,dc=redin,dc=co"
export LDAP_ADMIN_PASSWORD=""
export LDAP_CONFIG_PASSWORD=""

export SMTP_SERVER=
export SMTP_SERVER_PORT=
export SMTP_ENCRYPTION=
export SMTP_USER=
export SMTP_PASS=
```

# Test the stack
```
docker-compose up -d
```

# Deploy the stack to swarm
```
docker stack deploy -c docker-compose.yml devops

# check
docker stack services devops
```
