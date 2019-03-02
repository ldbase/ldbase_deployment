# Configure local connections
echo "10.50.0.101 drupal drupal" >> /etc/hosts
echo "alias drupal='ssh ec2-user@drupal'" >> /home/ec2-user/.bashrc
