vmAMN213:
sudo apt update
sudo apt install ansible
sudo apt list --installed | grep ansible
ip address show
ssh-keygen
cat .ssh/id_rsa.pub
ssh vagrant@192.168.56.9
exit
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
cd UTN-FRA_SO_Ansible/
cd ejemplo_02
vim inventory
vim playbook.yml
ansible-playbook -i inventory playbook.yml

vmAnsDev213:
ip address show
vim .ssh/authorized_keys
sudo apt list --installed |grep apache
