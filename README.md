# ldbase_deployment
Scripts for provisioning a fresh LDbase instance

## Commands
Once inside a running VM, change to the super user with `sudo su` to execute any of provided commands, which live in the `ldbase_deployment/commands/` directory and are automatically added to the root user's `$PATH` by `ldbase_deployment/assets/bash.sh` during the build process.

### `ldb-import` (replaces `ldbi`)
Executes the `drupal config:import` command with the directory argument preset to the correct location (/var/www/html/drupal/web/libraries/ldbase_config/sync/).

### `ldb-export` (replaces `ldbx`)
Executes the `drush config:export` command with the destination argument preset to the correct location (/var/www/html/drupal/web/libraries/ldbase_config/sync/).

### `ldb-refresh`
Empties the Drupal database from MySQL without actually dropping the table, preserving the Drupal database user's privileges. Also updates LDbase-specific modules via composer and reloads stored configurations. A gentle choice appropriate for when you want to quickly update a working Drupal instance to the freshest version of LDbase modules & config.

### `ldb-rebuild`
Completely drops and rebuilds the Drupal database, completely removes and rebuilds the Drupal filesystem. Only things external to Drupal survive. A harsh choice appropriate for wen you want to nuke a broken Drupal instance completely and start over fresh. Note that when using this script, a new Drupal admin password is automatically generated and stored at `/root/u1p.txt`.

### `ldb-update`
Updates all development modules relevant to the LDbase project, and then reloads configurations. A fluffy, comfy choice that wouldn't hurt a flyw.
