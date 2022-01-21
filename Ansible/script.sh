#! /bin/bash
cd /home/ec2-user/ansible/Ansible
ansible _database -i inventory_aws_ec2.yml -m shell -a 'hostname -I' > database_private_ip && echo database_IP: $(sed -n '2p' database_private_ip) >> roles/phpmyadmin/vars/main.yml;
ansible-playbook -i inventory_aws_ec2.yml playbook.yml --vault-password-file /home/ec2-user/vault_pass.txt
