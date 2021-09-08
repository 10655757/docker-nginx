# Docker container with CentOS 7 and running nginx

## Prerequisites for host machine
1. CentOS 7
2. Docker, Docker SDK for Python, Ansible, Docker Community Collection,  

### Run following commands nn CentOS host machine 
- `yum -y install epel-release && yum -y update`
- `yum -y install docker python-docker-py`
- `yum -y install ansible`
- `ansible-galaxy collection install community.docker`
- `yum -y clean all`
- `systemctl start docker && systemctl enable docker`

### Steps to run the project
1. unzip `docker-nginx.zip` file to the `/home` folder of host machine
2. change current directory to unpacked folder
3. run `ansible-playbook main.yml` 
4. open `http:/ip-address-of-host-machine` in web browser 
5. you should see the webpage showing the date and time of `index.html` file createtion
