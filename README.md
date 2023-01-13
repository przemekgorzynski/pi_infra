# Local inftarstructure built on raspbery pi.
Infrastructure include:
- samba server
- monitoring server


### Base config 
Should run against every raspberry pi module within infrastructure </br>
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/base_config.md

### Samba
Should run against raspberry pi module decidated for samba server
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/samba.md

### Monitoring
Metric collector should run against every raspberry pi module within infrastructure
Monitoring server should run against pi module dedicates for monitoring server
https://github.com/przemekgorzynski/pi_infra/blob/master/docs/monitoring.md

### Maintenance
Playbook to update packages on all hosts </br>
`ansible-playbook -i ../inventory maintenance.yml`
