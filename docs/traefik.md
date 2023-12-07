## Traefik

Traefik tool as reverse proxy. Tools tasks:
- Obtains SSL certificates from let's encrypt.
- Redirect traffic to service docker containers

Tool configuration. It is mounted to /etc/traefik directowy within container.
https://github.com/przemekgorzynski/pi_infra/blob/master/tools/templates/traefik/traefik.yml

Before deployment, depends on domain provider it is necessary to set authentication envoronment variables and pass it to docker-compose file. It is necessery to execute DNS challenge and obtain valid SSL certificate.

```
environment:
    DYNU_API_KEY: ${DYNU_API_KEY} 
```
Compatible DNS providers and it's variables: <br>
https://doc.traefik.io/traefik/https/acme/


Certificates are stored in docker volume:

```
/var/lib/docker/volumes/traefik_traefik-ssl-certs/_data/acme.json
```

Deployment of traefik:
```
ansible-playbook -i ../../inventory traefik.yml --vault-pass-file ~/vault_pass
```

To enable traffic routing following tags should be applied on container (nextcloud in this example)

```
labels:
  - "traefik.enable=true"
  - "traefik.http.routers.nextcloud.rule=Host(`nextcloud.{{ domain }}`)"
  - "traefik.http.routers.nextcloud.entrypoints=websecure"
  - "traefik.http.routers.nextcloud.tls.certresolver=production"
```


## Certs rotation
- stop traefik docker compose 
```
docker-compose down
```
- OPTIONAL - remove existing ACME file 
```
rm /var/lib/docker/volumes/traefik_traefik-ssl-certs/_data/acme.json
```
- start docker-compose
```
docker-compose up-d
```
After few minutes new certification should be present