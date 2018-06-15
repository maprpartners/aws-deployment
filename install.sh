sed -i '/mapr0/d' /etc/hosts
sed -i '/PasswordAuthentication/d' /etc/ssh/sshd_config
sed -i '/PermitRootLogin/d' /etc/ssh/sshd_config

echo `ifconfig -a | grep -A1 eth0 | tail -1 | awk -F: '{print $2}' | sed 's/Bcast//g'` mapr0 >> /etc/hosts
echo PasswordAuthentication yes >> /etc/ssh/sshd_config

service sshd restart

groupadd mapr -g 5000
useradd mapr -u 5000 -g mapr
echo root:mapr | chpasswd
echo mapr:mapr | chpasswd
sed -i '/HOSTNAME/d' /etc/sysconfig/network
echo HOSTNAME=mapr0 >> /etc/sysconfig/network

hostname mapr0

wget http://package.mapr.com/releases/installer/redhat/mapr-setup.sh
sh mapr-setup.sh -y
echo sleeping for 20 seconds...
sleep 20
wget https://raw.githubusercontent.com/jsunmapr/tweets-dsr-demo/master/template-converged-600-400.yaml -O /tmp/template-converged-600-400.yaml
chmod 755 /tmp/template-converged-600-400.yaml
su - mapr -c "/opt/mapr/installer/bin/mapr-installer-cli install -fnv -t /tmp/template-converged-600-400.yaml -u mapr:mapr@localhost:9443"
