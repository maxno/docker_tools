cd /etc/yum.repos.d
vim doker.repo
>>
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/centos/7/
enable=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
<<
yum update
yum install -y docker-engine
systemctl enable docker
systemctl start docker
docker --versions
usermod -a -G docker {current_user} #need to connect user to docker socket
cat /etc/group | grep docker
