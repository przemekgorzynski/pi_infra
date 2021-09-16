# Home Cloud and NAS Infrastructure deployed on raspberry pi compute modules.
Infrastructure contains NAS server hosted on raspberry pi - Open media vault + Nextcloud to expose it into internet over ssl. </br>
In local network shares are exposed via samba/cifs shares.

![image](https://user-images.githubusercontent.com/43602911/133680838-26ed93f2-ae1e-4694-99b3-52e99e1d8170.png)


## Prerequisities
* Create ansible vault with all sensitive data ( passwords)
## Basic raspberry pi configuration
On clean raspios run following commands ( default ssh pass for user pi is "raspberry" ):

    ansible-playbook -i ../inventory playbooks/initial_configuration.yml --limit nas --ask-vault-pass --ask-pass
It does:
* update system
* change pi user password
* create user przemek


## Install OpenMediaVault on system
Next install Open Media vault

    ansible-playbook -i ../inventory playbooks/initial_configuration.yml --limit nas --ask-vault-pass --ask-pass
    
Login into OMV server. Default credentials: admin:openmediavault. </br>
Confguration of SMB/CIFS in OMV should be done manually. </br>
Change port from 80 to 8081.

### Deploy docker compose with Nextcloud stack

Run following command to run docker-compose stack for Nextcloud over ssl. </br> 
> Modify vars file if neccessary with correct data.

    ansible-playbook -i ../inventory playbooks/initial_configuration.yml --limit nas --ask-vault-pass

Go to < yourip >:8080 or https://your-domain-address and finish configuration of Nextcloud.
    
   ![Screenshot from 2021-09-08 22-42-51](https://user-images.githubusercontent.com/43602911/133676749-22a78a35-fd7f-4f99-be26-7627cfccb681.png)



### Conect OpenMediavault CIFS shares into NextCloud  

![image](https://user-images.githubusercontent.com/43602911/133678143-bf7ca4d9-3537-4757-9ba9-9d97c12fdaac.png)


### On NAS server change following files to enable upload of files over 1 MB via Nextcloud  ( To automate with ansible )

* Run command `find / -name "php.ini"` and add following to all files
  
    `upload_max_filesize = 16G` </br>
    `post_max_size = 16G`

![image](https://user-images.githubusercontent.com/43602911/133679798-d6010d3a-1059-4959-a79a-bd0886813891.png)

* Run commsnd `find / -name ".user.ini"` and add following to all files

    `upload_max_filesize = 16G` </br>
    `post_max_size = 16G`

![image](https://user-images.githubusercontent.com/43602911/133680053-33df6c76-bcdd-432d-ae9b-2e584fa461f2.png)

* Edit /etc/nginx/nginx.conf file and add at the end in http section
    `client_max_body_size 0;`
