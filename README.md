# docker with nginx

## Prerequisites for host machine
1. Centos 7
2. Docker, Docker SDK for Python, Ansible, Docker Community Collection,  

### Run following commands nn CentOS host machine 
- `yum -y install epel-release && yum -y update`
- `yum -y install docker python-docker-py`
- `yum -y install ansible`
- `ansible-galaxy collection install community.docker`
- `yum -y clean all`
- `systemctl start docker && systemctl enable docker`

## Steps to run the project
1. unzip `docker-nginix.zip` file to /home folder
2. chenge current directory to unpacked folder
3. run `ansible-playbook main.yml` 
4. open `http:/ip-address-of-host-machine` in web browser 
5. you whould see the webage showing the date and time of `index.html` file's createtion
