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
    
        ![image](https://user-images.githubusercontent.com/43602911/132583728-d8214806-4445-4fa0-90b4-39a9c2778bc1.png)


##############
Connect CIFS shares from OpenMediavault
    - install "external Storage Support" from app store
        ![image](https://user-images.githubusercontent.com/43602911/132583424-28169c25-cd8b-4780-b420-312eda0629b1.png)

    - map shared direcories from OpenMediavault
        ![image](https://user-images.githubusercontent.com/43602911/132583977-ac7f5c7e-84fe-4073-a87c-839d687ba461.png)

