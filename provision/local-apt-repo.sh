#!/bin/bash
echo "Running" > /tmp/local-apt-repo.sh.log

cat > /etc/apt/apt.conf.d/02periodic << EOF
APT::Periodic::Enable "1";
APT::Periodic::Update-Package-Lists "1";
APT::Periodic::Download-Upgradeable-Packages "1";
APT::Periodic::Unattended-Upgrade "1";
APT::Periodic::AutocleanInterval "7";
APT::Periodic::MaxSize "10000";
APT::Periodic::MaxAge "365";
APT::Periodic::MinAge "10";
EOF
chmod 644 /etc/apt/apt.conf.d/02periodic

apt-get upgrade

apt-get -d install nginx 
cd /var/cache/apt/archives
dpkg-scanpackages  . /dev/null | gzip -9c > /var/cache/apt/archives/Packages.gz 
chsh -s /bin/bash vagrant
echo -e "set -o vi" >> /etc/bash.bashrc
echo -e "alias ll='ls -l'" >> /etc/bash.bashrc


