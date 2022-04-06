#!/bin/bash
FILE=$HOME/.sentinel/config

if [ ! -d "$FILE" ]; then
    echo Creating config files
    #Create directory structure
    mkdir -p $HOME/.sentinel/config/terraform/
    mkdir $HOME/.sentinel/config/ansible/

    # Download terraform files
    wget -P $HOME/.sentinel/config/terraform https://raw.githubusercontent.com/Sentinel-PaaS/cli-configs/main/terraform/ec2_policy.json
    wget -P $HOME/.sentinel/config/terraform https://raw.githubusercontent.com/Sentinel-PaaS/cli-configs/main/terraform/main.tf
    wget -P $HOME/.sentinel/config/terraform https://raw.githubusercontent.com/Sentinel-PaaS/cli-configs/main/terraform/output.tf
    wget -P $HOME/.sentinel/config/terraform https://raw.githubusercontent.com/Sentinel-PaaS/cli-configs/main/terraform/security-groups.tf
    wget -P $HOME/.sentinel/config/terraform https://raw.githubusercontent.com/Sentinel-PaaS/cli-configs/main/terraform/variable.tf

    # Download ansible files
    wget -P $HOME/.sentinel/config/ansible https://raw.githubusercontent.com/Sentinel-PaaS/cli-configs/main/ansible/ansible.cfg  
    wget -P $HOME/.sentinel/config/ansible https://raw.githubusercontent.com/Sentinel-PaaS/cli-configs/main/ansible/playbook.yml
fi

