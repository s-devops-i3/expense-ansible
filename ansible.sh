component=$1
#env >/tmp/env
ansible-playbook get-secrets.yml -e vault_token=$vault_token
#ansible-playbook -i $component-dev.shujadevops.shop, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e env=$env -e role_name=$component expense.yml