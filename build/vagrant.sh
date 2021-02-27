#!/bin/bash

# Dump Vagrant VM envars
cat /vagrant/assets/vagrant.env >> /etc/environment

# Install components
sh /vagrant/build/os.sh
sh /vagrant/build/minio.sh
sh /vagrant/build/matomo.sh
sh /vagrant/build/composer.sh
sh /vagrant/build/drupal.mysql.sh
sh /vagrant/build/drupal.apache.sh
sh /vagrant/build/drupal.download.sh
sh /vagrant/build/drupal.install.sh
sh /vagrant/build/drupal.config.sh


# Install bash helpers 
cat /vagrant/assets/bash.sh >> /root/.bashrc
cat /vagrant/assets/.vimrc >> /root/.vimrc
