#!/bin/bash

# Dump Vagrant VM envars
cat /ldbase_deployment/assets/vagrant.env >> /etc/environment

# Install components
bash /ldbase_deployment/build/os.sh
bash /ldbase_deployment/build/minio.sh
bash /ldbase_deployment/build/matomo.sh
bash /ldbase_deployment/build/composer.sh
bash /ldbase_deployment/build/drupal.mysql.sh
bash /ldbase_deployment/build/drupal.apache.sh
bash /ldbase_deployment/build/drupal.download.sh
bash /ldbase_deployment/build/drupal.install.sh
bash /ldbase_deployment/build/drupal.config.sh

# Install bash helpers 
cat /ldbase_deployment/assets/bash.sh >> /root/.bashrc
cat /ldbase_deployment/assets/.vimrc >> /root/.vimrc

