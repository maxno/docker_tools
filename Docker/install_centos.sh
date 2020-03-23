#https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux_OpenStack_Platform/2/html/Getting_Started_Guide/ch02s03.html
sudo yum install -y device-mapper-persistent-data lvm2
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y docker-ce-18.09.5 docker-ce-cli-18.09.5 containerd.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -a -G docker cloud_user
docker run hello-world
