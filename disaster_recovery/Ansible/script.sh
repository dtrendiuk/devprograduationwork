#! /bin/bash
cd /home/ec2-user/ansible/disaster_recovery/Ansible;
ansible-galaxy collection install amazon.aws;
pip3 install --user boto3;
database_private_ip=$(ansible _database -i inventory_aws_ec2.yml -m shell -a 'hostname -I' | sed -n '2p')
echo database_IP: $database_private_ip >> roles/phpmyadmin/vars/main.yml;
ansible-playbook -i inventory_aws_ec2.yml playbook.yml --vault-password-file /home/ec2-user/vault_pass.txt
