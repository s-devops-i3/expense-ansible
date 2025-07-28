component=$1
#env >/tmp/env
rm -rf ~/*.json
ansible-playbook get-secrets.yml -e vault_token=$vault_token -e env=$env -e role_name=$component
ansible-playbook -i $component-$env.shujadevops.shop,  -e env=$env -e role_name=$component expense.yml -e '@~/final.json'
rm -rf ~/*.json
