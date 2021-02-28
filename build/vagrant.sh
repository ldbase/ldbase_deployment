#!/bin/bash

# Dump Vagrant VM envars
cat /vagrant/assets/vagrant.env >> /etc/environment

# Install components
bash /vagrant/build/os.sh
bash /vagrant/build/minio.sh
bash /vagrant/build/matomo.sh
bash /vagrant/build/composer.sh
bash /vagrant/build/drupal.mysql.sh
bash /vagrant/build/drupal.apache.sh
bash /vagrant/build/drupal.download.sh
bash /vagrant/build/drupal.install.sh
bash /vagrant/build/drupal.config.sh


# Install bash helpers 
cat /vagrant/assets/bash.sh >> /root/.bashrc
cat /vagrant/assets/.vimrc >> /root/.vimrc

# Install secondary ldbase_deployment inside VM
git clone https://github.com/ldbase/ldbase_deployment /ldbase_deployment
