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

# Update package cache and install devtools
yum -y update > /root/vagrant-updates.txt
yum -y install git vim nano > /root/vagrant-installs.txt

# Install MySQL server components and turn on service
yum -y install mysql mysql-server
/sbin/service mysqld start
chkconfig mysqld on

# Download and run build scripts
sh /vagrant/build_scripts/drupal.sh vagrant > /root/build-log.drupal.txt 2>&1
