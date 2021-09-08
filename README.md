# docker with nginx

## Prerequisites for host machine
1. Centos 7
2. Docker, Ansible, Docker Community Collection

### Ensure that following command are executed on CentOS host machine 
yum -y install epel-release && yum -y update
yum -y install docker python-docker-py
yum -y install ansible
ansible-galaxy collection install community.docker
yum -y clean all 
systemctl start docker && systemctl enable docker


