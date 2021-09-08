# docker-nginx

# Pre-requisites
# ============

# Ensure that Docker following compomentrs are run / installed on CentOS host machine 

#
yum -y install epel-release && yum -y update
yum -y install docker python-docker-py

# Ansible
yum -y install ansible

#
ansible-galaxy collection install community.docker
yum -y clean all 
docker --version
ansible --version
systemctl start docker && systemctl enable docker
systemctl status docker

