echo "Configuring Apache server for Drupal..." | tee /root/drupal.apache.log 2>&1
echo "AddHandler php5-script .php" >> /etc/apache2/apache2.conf 2>&1
echo "AddType text/html .php" >> /etc/apache2/apache2.conf 2>&1
sed -i -e 's/AllowOverride\ None/AllowOverride\ All/g' /etc/apache2/apache2.conf >/dev/null 2>&1
sed -i -e 's/\/var\/www\/html/\/var\/www\/html\/drupal\/web/g' /etc/apache2/sites-available/000-default.conf >/dev/null 2>&1
rm /etc/php/7.2/apache2/php.ini >/dev/null 2>&1
cp /ldbase_deployment/assets/apache.php.ini /etc/php/7.2/apache2/php.ini >/dev/null 2>&1
service apache2 restart >> /root/drupal.apache.log 2>&1
echo "Done configuring Apache server for Drupal..." | tee /root/drupal.apache.log 2>&1
