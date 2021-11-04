# Home Cloud and NAS Infrastructure deployed on raspberry pi compute modules.
Infrastructure contains NAS server hosted on raspberry pi. </br>
In local network shares are exposed via samba/cifs shares.

![image](https://user-images.githubusercontent.com/43602911/133680838-26ed93f2-ae1e-4694-99b3-52e99e1d8170.png)


## Prerequisities
* Create ansible vault with all sensitive data ( passwords)
## Basic raspberry pi configuration
On clean raspios run following commands ( default ssh pass for user pi is "raspberry" ):

`cd os_config`                                                                                         
`ansible-playbook -i ../inventory playbooks/initial_configuration.yml --limit nas --ask-vault-pass --ask-pass`

It does:
* update system
* change pi user password
* create user przemek

## SAMBA config (2do)