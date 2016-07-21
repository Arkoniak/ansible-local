## Inventory
```
# localhost and arkoniak.com ping
ansible-playbook -i production playbook.yml

# or only localhost
ansible-playbook -i production playbook.yml
```
Alternatively, edit /etc/ansible/hosts, add 
```
[default]
localhost
```
and use for testing only on localhost
```
ansible-playbook playbook.yml
```

## Vault
```
ansible-vault encrypt roles/aliens/vars/spoilers.yml --vault-password-file ~/.ssh/vault_pass.txt

# export ANSIBLE_VAULT_PASSWORD_FILE=~/.ssh/vault_pass.txt

ansible-vault encrypt roles/aliens/vars/spoilers.yml
```
