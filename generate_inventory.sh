#!/bin/bash

# Pega o IP do output do Terraform
IP=$(terraform -chdir=terraform output -raw instance_ip)

# Cria ou sobrescreve o inventory do Ansible
cat <<EOF > ansiblev2/inventory.ini
[all:vars]
ansible_ssh_common_args: '-o UserKnownHostsFile=/dev/null'
[servers]
$IP ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/aws-key.pem
EOF

echo "Inventário gerado com sucesso em inventory.ini"
