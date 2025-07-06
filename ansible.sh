component=$1
#env >/tmp/env
ansible-playbook get-secrets.yml -e vault_token=$vault_token
#ansible-playbook -i $component-$env.shujadevops.shop,  -e env=$env -e role_name=$component expense.yml