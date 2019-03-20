# Save build parameters
echo "Build Parameters:" >> /root/drupal-build-params.txt
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/drupal-build-params.txt
echo "DatabaseRootUser: ${DATABASE_ROOT_USER}" >> /root/drupal-build-params.txt
echo "DatabaseRootPass: ${DATABASE_ROOT_PASS}" >> /root/drupal-build-params.txt
echo "DrupalDatabaseUser: ${DRUPAL_DATABASE_USER}" >> /root/drupal-build-params.txt
echo "DrupalDatabasePass: ${DRUPAL_DATABASE_PASS}" >> /root/drupal-build-params.txt
echo "DrupalAdminUser: ${DRUPAL_ADMIN_USER}" >> /root/drupal-build-params.txt
echo "DrupalAdminPass: ${DRUPAL_ADMIN_PASS}" >> /root/drupal-build-params.txt
echo "DrupalAdminEmail: ${DRUPAL_ADMIN_EMAIL}" >> /root/drupal-build-params.txt


# Set up swapfile because composer is greedy
fallocate -l 1G /swapfile
chmod 600 /swapfile
mkswap /swapfile
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
swapon -a /swapfile


# Run updates & installations
apt -y install apache2 unzip \
	php php-dev php-gd php-soap php-mysql php-mbstring php-zip php-curl \
	> /root/drupal-dependencies.txt 2>&1


# Install latest & greatest version of Composer
cd /root
curl -sS https://getcomposer.org/installer | php >> /root/composer-install.txt 2>&1
mv composer.phar /usr/local/bin/composer >> /root/composer-install.txt 2>&1
chmod +x /usr/local/bin/composer >> /root/composer-install.txt 2>&1


# Configure MySQL
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE DATABASE ldbasedb;" \
	>> /root/mysql-setup.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE USER '${DRUPAL_DATABASE_USER}'@'%' IDENTIFIED BY '${DRUPAL_DATABASE_PASS}';" \
	>> /root/mysql-setup.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="GRANT ALL PRIVILEGES ON ldbasedb.* TO '${DRUPAL_DATABASE_USER}'@'%';" \
	>> /root/mysql-setup.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="FLUSH PRIVILEGES;" \
	>> /root/mysql-setup.txt 2>&1


# Set up Drupal codebase
cd /var/www/html/
rm index.html
composer global require zaporylie/composer-drupal-optimizations >> /root/drupal-download.txt 2>&1
composer create-project drupal-composer/drupal-project:8.x-dev drupal \
	--stability dev --no-interaction \
        >> /root/drupal-download.txt 2>&1
echo "PATH=/var/www/html/drupal/vendor/bin/:$PATH" >> /root/.bashrc
echo "PATH=/var/www/html/drupal/vendor/bin/:$PATH" >> /home/vagrant/.bashrc
. /root/.bashrc


# Pre-install missing dependencies
if [ -d /vagrant ]; then service mysql stop; fi
cd /var/www/html/drupal
composer require drupal/devel >> /root/composer-preinstalls.txt 2>&1
composer require drupal/backup_migrate >> /root/composer-preinstalls.txt 2>&1
composer require drupal/simple_sitemap >> /root/composer-preinstalls.txt 2>&1
composer require drupal/metatag >> /root/composer-preinstalls.txt 2>&1
composer require drupal/search_api >> /root/composer-preinstalls.txt 2>&1
composer require drupal/search_api_autocomplete >> /root/composer-preinstalls.txt 2>&1
composer require drupal/facets >> /root/composer-preinstalls.txt 2>&1
composer require drupal/paragraphs >> /root/composer-preinstalls.txt 2>&1
composer require drupal/entity_usage >> /root/composer-preinstalls.txt 2>&1
composer require drupal/rules >> /root/composer-preinstalls.txt 2>&1
composer require drupal/group >> /root/composer-preinstalls.txt 2>&1
composer require strawberryfield/strawberryfield >> /root/composer-preinstalls.txt 2>&1
composer require strawberryfield/webform_strawberryfield >> /root/composer-preinstalls.txt 2>&1
composer require strawberryfield/format_strawberryfield >> /root/composer-preinstalls.txt 2>&1
if [ -d /vagrant ]; then service mysql start; fi


# Install Drupal
cd /var/www/html/drupal/web/profiles
git clone https://github.com/ldbase/ldbase_profile
cd /var/www/html/drupal
drupal site:install ldbase \
	--langcode="en" \
	--db-type="mysql" \
	--db-host="${DATABASE_ENDPOINT}" \
	--db-name="ldbasedb" \
	--db-user="${DRUPAL_DATABASE_USER}" \
	--db-pass="${DRUPAL_DATABASE_PASS}" \
	--db-port="3306" \
	--site-name="LDbase" \
	--site-mail="${DRUPAL_ADMIN_EMAIL}" \
	--account-name="${DRUPAL_ADMIN_USER}" \
	--account-pass="${DRUPAL_ADMIN_PASS}" \
	--account-mail="${DRUPAL_ADMIN_EMAIL}" \
	--no-interaction \
        >> /root/drupal-installation.txt 2>&1
drupal node:access:rebuild
drupal cache:rebuild


# Configure Apache 
echo "AddHandler php5-script .php" >> /etc/apache2/apache2.conf
echo "AddType text/html .php" >> /etc/apache2/apache2.conf
sed -i -e 's/AllowOverride\ None/AllowOverride\ All/g' /etc/apache2/apache2.conf
sed -i -e 's/\/var\/www\/html/\/var\/www\/html\/drupal\/web/g' /etc/apache2/sites-available/000-default.conf
service apache2 restart
