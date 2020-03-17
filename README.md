# ldbase_deployment
Scripts for deploying LDbase to AWS or Vagrant

## Commands
Once inside a running VM, change to the super user with `sudo su` to execute any of the following commands:

### `ldb-import` (replaces `ldbi`)
Executes the `drupal config:import` command with the directory argument preset to the correct location (/var/www/html/drupal/web/libraries/ldbase_config/sync/).

### `ldb-export` (replaces `ldbx`)
Executes the `drush config:export` command with the destination argument preset to the correct location (/var/www/html/drupal/web/libraries/ldbase_config/sync/).

### `ldb-refresh`
Empties the Drupal database from MySQL without actually dropping the table, preserving the Drupal database user's privileges. Also updates LDbase-specific modules via composer and reloads stored configurations.

### `ldb-rebuild`
Completely drops and rebuilds the Drupal database, completely removes and rebuilds the Drupal filesystem. Only things external to Drupal survive.
