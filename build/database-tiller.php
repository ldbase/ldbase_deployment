<?php

@require_once '/root/settings.php';

$db_name = $databases['default']['default']['database'];
$db_user = $databases['default']['default']['username'];
$db_pass = $databases['default']['default']['password'];
$db_host = $databases['default']['default']['host'];
$randpass = rand();

$db_auth_string = "mysql --user=\"${db_user}\" --password=\"${db_pass}\" --host=\"${db_host}\" --execute=\"";
$db_end_string = "\" >> /root/drupal-rebuild.txt 2>&1";

shell_exec($db_auth_string . "DROP DATABASE ${db_name};" . $db_end_string);
shell_exec($db_auth_string . "CREATE DATABASE ${db_name};" . $db_end_string);
shell_exec('service mysql restart');
shell_exec('cd /var/www/html; composer create-project drupal-composer/drupal-project:8.x-dev drupal --stability dev --no-interaction >> /root/drupal.txt 2>&1');
shell_exec("cd /var/www/html/drupal; /var/www/html/drupal/vendor/bin/drupal site:install standard --langcode=\"en\" --db-type=\"mysql\" --db-host=\"${db_host}\" --db-name=\"${db_name}\" --db-user=\"${db_user}\" --db-pass=\"${db_pass}\" --db-port=\"3306\" --site-mail=\"bjbrown@fsu.edu\" --account-name=\"admin\" --account-pass=\"${randpass}\" --account-mail=\"bjbrown@fsu.edu\" --no-interaction >> /root/drupal.txt 2>&1");
shell_exec("echo ${randpass} > /root/u1p.txt");
