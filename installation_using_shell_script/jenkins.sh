wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key |  apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt update
apt install jenkins
systemctl start jenkins
                                                                                                                                   ~                                 
