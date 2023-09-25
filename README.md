# Local inftarstructure built on raspbery pi.
Infrastructure include:
- samba server
- tools


### Base config 
Should run against every raspberry pi module within infrastructure </br>
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/base_config.md

### Samba
Should run against raspberry pi module decidated for samba server </br>
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/samba.md

### Tooling
Stacks are docker-compose based and deployed using ansible playbooks.
Following tools are included:
- Traefik as reverse proxy </br>
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/traefik.md </br>
- monitoring stack - prometheus and grafana </br>
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/monitoring.md </br>
- Nextcloud instance </br>
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/nextcloud.md </br>
- Plex </br>
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/plex.md </br>
- Jenkins</br>
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/jenkins.md </br>
