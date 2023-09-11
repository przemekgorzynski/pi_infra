# Local inftarstructure built on raspbery pi.
Infrastructure include:
- samba server
- tools


### Base config 
Should run against every raspberry pi module within infrastructure </br>
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/base_config.md

### Samba
Should run against raspberry pi module decidated for samba server
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/samba.md

### Tooling
Stacks are docker-compose based and deployed using ansible playbooks.
Following tools are included:
- monitoring stack - prometheus and grafana
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/monitoring.md
- Nextcloud instance
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/nextcloud.md

Example of nexcloud deployment command.
```
ansible-playbook -i ../../inventory nextcloud.yml --vault-pass-file ~/vault_pass
```