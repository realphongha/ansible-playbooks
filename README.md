# ansible-playbooks
My Ansible playbooks in one single Git repository.

# Installation
To install Ansible:
```bash
pip install ansible==11.7.0
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
```bash
ansible-playbook -i inventory.yaml ./playbooks/{playbook_name}.yaml [--limit host_or_group] [{--ask-become-pass|-K}]
```
