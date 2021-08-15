## Configuration for Skill Tracker instance

How to run (restricting to only the single host expressed in $DO_HOST rather than all hosts in the inventory in /etc/ansible/hosts).
You can do a dry run with `ansible-playbook --check` which won't execute any remote commands.  It will just report what would
be executed.

```
$ cd ansible
$ ansible-playbook playbook.yml -l $DO_HOST
```

Running the playbook will terminate the running app container - should be able to start it again with `docker start <container id>`.
This could be resolved by adding the app docker container setup to the playbook similar to the mariadb container management.

Requires a file MARIADB_ROOT_PASSWORD.txt in the current directory containing the maria DB root password.
Requires an ansible hosts file in the default location - on MacOS this is /etc/ansible/hosts containing e.g.:
```
<ip address> ansible_user=root
```
Setting up key-based SSH access will make this process simpler.