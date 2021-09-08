# docker with nginx

## Prerequisites for host machine
1. Centos 7
2. Docker, Ansible, Docker Community Collection

### Run following commands nn CentOS host machine 
- `yum -y install epel-release && yum -y update`
- `yum -y install docker python-docker-py`
- `yum -y install ansible`
- `ansible-galaxy collection install community.docker`
- `yum -y clean all`
- `systemctl start docker && systemctl enable docker`

## Steps to deploy the project
1. unzip docker-nginix.zip file 
2. execute ansible-playbook main.yml 
