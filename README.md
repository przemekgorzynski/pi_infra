# pi_infra

OS CONFIG
ansible-playbook -i ../inventory playbooks/initial_configuration.yml --limit nas --ask-vault-pass --ask-pass

ssh pass is default user pi pass: raspberry

NextCloud config
ansible-playbook -i ../inventory playbooks/initial_configuration.yml --limit nas --ask-vault-pass