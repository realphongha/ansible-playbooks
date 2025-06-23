# ansible-playbooks
My Ansible playbooks in one single Git repository.

# Installation
To install Ansible:
```bash
pip install ansible
```

# Usage
## Create your inventory
in `./inventory.yaml`  
Example inventory:
```yaml
# define a group
work:
  hosts:
    host1:
      ansible_host: 192.168.1.0
    host2:
      ansible_host: 192.168.1.1
# define a metagroup
all:
  children:
    work:
```

## To run a playbook
with inventory
```bash
ansible-playbook -i inventory.yaml ./playbooks/{playbook_name}.yaml [--limit host_or_group]
```
or not
```bash
ansible-playbook -i {host_address} ./playbooks/{playbook_name}.yaml --limit {host_address}
```
