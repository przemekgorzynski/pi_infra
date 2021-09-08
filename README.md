# pi_infra
Infrastructure contains NAS servver hosted on raspberry pi - Open media vault + Nextcloud to expose it into internet over ssl

1)
On clean raspios run following commands ( default ssh pass for user pi is "raspberry" ):
    ansible-playbook -i ../inventory playbooks/initial_configuration.yml --limit nas --ask-vault-pass --ask-pass
It does:
- update system
- change pi user password
- create user przemek


2)
Next run command to install Open Media vault
    ansible-playbook -i ../inventory playbooks/initial_configuration.yml --limit nas --ask-vault-pass --ask-pass
Login into OMV server. Default credentials: admin:openmediavault.
Confguration of SMB/CIFS in OMV should be done manually.
Change port from 80 to 8081.

3)
Run following command to run docker-compose stack for Nextcloud over ssl. Modify vars file if neccessary with correct data.
    ansible-playbook -i ../inventory playbooks/initial_configuration.yml --limit nas --ask-vault-pass
Go to <yourip>:8080 and finish configuration of Nextcloud.

##############
Connect CIFS shares from OpenMediavault