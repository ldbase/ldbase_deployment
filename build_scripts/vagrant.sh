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
sh /vagrant/build_scripts/timezone.sh
sh /vagrant/build_scripts/update.sh
sh /vagrant/build_scripts/mysql.sh
sh /vagrant/build_scripts/drupal-build.sh
sh /vagrant/build_scripts/drupal-config.sh
sh /vagrant/build_scripts/matomo.sh


# Install bash helpers 
cat /vagrant/build_scripts/bash.sh >> /root/.bashrc
