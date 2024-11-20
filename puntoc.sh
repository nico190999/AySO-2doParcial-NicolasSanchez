nicolas1999/2parcial-ayso:v1.0

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
mkdir appHomeBanking
cd appHomeBanking/
vim index.html
vim contacto.html
vim dockerfile
docker login -u nicolas1999
docker build -t nicolas1999/2parcial-ayso:v1.0 .
docker image list
docker push nicolas1999/2parcial-ayso:v1.0
docker run -d -p 8080:80 nicolas1999/2parcial-ayso:v1.0
docker container ls
