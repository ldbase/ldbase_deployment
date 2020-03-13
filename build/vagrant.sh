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
sh /vagrant/build/timezone.sh
sh /vagrant/build/swap.sh
sh /vagrant/build/osdeps-install.sh
sh /vagrant/build/mysql-install.sh
sh /vagrant/build/drupal-mysql-config.sh
sh /vagrant/build/drupal-apache-config.sh
sh /vagrant/build/drupal-core-download.sh
sh /vagrant/build/drupal-core-config.sh
sh /vagrant/build/drupal-custom-codebase-config.sh
sh /vagrant/build/drupal-custom-system-config.sh
sh /vagrant/build/matomo-install.sh


# Install bash helpers 
cat /vagrant/assets/bash.sh >> /root/.bashrc
