## SAMBA config (2do)
Installs and configure samba shares.

`cd samba`
`ansible-playbook -i ../inventory playbooks/samba.yml --limit nas --ask-vault-pass`

It does:
* installs samba
* creates ro user for samba "read only" accessaccess
* mounts externall SSD drice where samba shares will be stored
* configure samba shares