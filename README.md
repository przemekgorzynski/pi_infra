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
Go to <yourip>:8080 or https://your-domain-address and finish configuration of Nextcloud.
    
    ![image](https://user-images.githubusercontent.com/43602911/132582956-08ce9bdd-792a-4e92-9fb4-a17b34966135.png)


##############
Connect CIFS shares from OpenMediavault
    - install "external Storage Support" from app store
        ![image](https://user-images.githubusercontent.com/43602911/132583424-28169c25-cd8b-4780-b420-312eda0629b1.png)

    - map shared direcories from OpenMediavault
        ![image](https://user-images.githubusercontent.com/43602911/132583640-08267450-fe30-464b-89b3-0bcd25911866.png)
