# Configure Apache for serving Drupal 
echo "AddHandler php5-script .php" >> /etc/apache2/apache2.conf
echo "AddType text/html .php" >> /etc/apache2/apache2.conf
sed -i -e 's/AllowOverride\ None/AllowOverride\ All/g' /etc/apache2/apache2.conf
sed -i -e 's/\/var\/www\/html/\/var\/www\/html\/drupal\/web/g' /etc/apache2/sites-available/000-default.conf
service apache2 restart
