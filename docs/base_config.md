## Prerequisities
* Create ansible vault with all sensitive data ( passwords)
On clean raspios run following commands ( default ssh pass for user pi is "raspberry" ):

`cd base_config`                                                                                         
`ansible-playbook -i ../inventory playbooks/base_config.yml --limit SERVERNAME --ask-vault-pass --ask-pass`

It does:
* update system and install custom packages
* change default pi user password
* creates master group "admins" with full priviledges
* create and configure user przemek (athorized keys, adds to "admins" group)
* cofigure system - eg. MOTD, disable password login, hostname, set raspberry fan speed control