# ldbase_deployment
Scripts for provisioning a fresh LDbase instance

## Commands
Once inside a running VM, change to the super user with `sudo su` to execute any of provided commands, which live in the `ldbase_deployment/commands/` directory and are automatically added to the root user's `$PATH` by `ldbase_deployment/assets/bash.sh` during the build process.

### `ldb-import`
Executes the `drupal config:import` command with the directory argument preset to the correct location (/var/www/html/drupal/web/libraries/ldbase_config/sync/).

### `ldb-export` (replaces `ldbx`)
Executes the `drush config:export` command with the destination argument preset to the correct location (/var/www/html/drupal/web/libraries/ldbase_config/sync/).

### `ldb-reset`
Empties the Drupal database from MySQL without actually dropping the table, preserving the Drupal database user's privileges, and then runs `ldb-update` (explained below). **WARNING:** This will drop all the content data, so don't run this on a production site unless you have a good reason.

### `ldb-update`
Updates all development modules relevant to the LDbase project, reloads configurations, and overrides environment-specific configurations with environmental variables.
