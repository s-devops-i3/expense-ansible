component=$1
ansible-playbook -i $component-dev.shujadevops.shop, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e env=d$env -e role_name=$component expense.yml