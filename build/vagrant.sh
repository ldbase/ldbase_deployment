#!/bin/bash


# Export data to system for other scripts to pick up
export DATABASE_ENDPOINT="localhost"
export DATABASE_ROOT_USER="root"
export DATABASE_ROOT_PASS="root"
export DRUPAL_DATABASE_USER="drupal"
export DRUPAL_DATABASE_PASS="drupal"
export DRUPAL_ADMIN_USER="admin"
export DRUPAL_ADMIN_PASS="admin"
export DRUPAL_ADMIN_EMAIL="admin@admin.edu"


# Install components
echo "\n\n"
sh /vagrant/build/os.sh
sh /vagrant/build/minio.sh
sh /vagrant/build/matomo.sh
sh /vagrant/build/drupal.sh


# Install bash helpers 
cat /vagrant/assets/bash.sh >> /root/.bashrc
cat /vagrant/assets/.vimrc >> /root/.vimrc
