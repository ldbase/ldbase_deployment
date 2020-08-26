# ldbase_deployment
Scripts for provisioning a fresh LDbase instance

## Commands
Once inside a running VM, change to the super user with `sudo su` to execute any of provided commands, which live in the `ldbase_deployment/commands/` directory and are automatically added to the root user's `$PATH` by `ldbase_deployment/assets/bash.sh` during the build process.

### `ldb-import` (replaces `ldbi`)
Executes the `drupal config:import` command with the directory argument preset to the correct location (/var/www/html/drupal/web/libraries/ldbase_config/sync/).

### `ldb-export` (replaces `ldbx`)
Executes the `drush config:export` command with the destination argument preset to the correct location (/var/www/html/drupal/web/libraries/ldbase_config/sync/).

### `ldb-refresh`
Empties the Drupal database from MySQL without actually dropping the table, preserving the Drupal database user's privileges. Also updates LDbase-specific modules via composer and reloads stored configurations. Appropriate for when you want to do an update that includes a change to the data model.

### `ldb-update`
Updates all development modules relevant to the LDbase project, and then reloads configurations.
