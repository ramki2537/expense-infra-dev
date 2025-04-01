#!/bin/bash

dnf install ansible -y

# push
# ansible-playbook -i inventory mysql.yaml <general ansible push based architecture>


# below is new ansible pull based architecture
ansible-pull -i localhost, -U https://github.com/ramki2537/expense-ansible-roles-tf.git main.yaml -e COMPONENT=backend -e ENVIRONMENT=$1
