echo "10.50.0.101 drupal drupal" >> /etc/hosts
yum -y update > /root/updates.txt

echo "alias drupal='ssh ec2-user@drupal'" >> /home/ec2-user/.bashrc
