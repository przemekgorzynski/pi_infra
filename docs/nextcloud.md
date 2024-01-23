```
ansible-playbook -i ../../inventory nextcloud.yml --vault-pass-file ~/vault_pass
```

Reset admin password:
```
docker exec -it -u www-data nextcloud_app php /var/www/html/occ user:resetpassword przemek
```