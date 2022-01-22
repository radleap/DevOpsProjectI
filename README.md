# README

## EC2 Instance Setup: Master Node

1. AWS initial EC2 instance Ubuntu 18.04 (manual procurement)
    - Ubuntu Server 18.04 LTS (HVM), SSD Volume Type - ami-0e472ba40eb589f49 (64-bit x86) / ami-0a940cb939351ccca (64-bit Arm)
    - t2.micro free tier
    - tags, Name: Ubuntu-Master-Node
    - launch-wizard-3: SSH ports enabled
    - Use of PEM file for SSH protocol
2. SSH into EC2 instance
    -  ssh -i <filename.pem> ubuntu@<IPV4 Address>
    - Installing Terraform on instance (ssh into EC2 instance)
        - sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
        - curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
        - sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
        - confirm installation with:
            - terraform -v
    - Installing Git 
        - sudo apt-get update
        - sudo apt-get install git
        - confirm installation
            - git --version
    



