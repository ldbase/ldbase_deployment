# ldbase_deployment
Scripts for provisioning a fresh LDbase instance

## Commands
Once inside a running VM, change to the super user with `sudo su` to execute any of provided commands, which live in the `ldbase_deployment/commands/` directory and are automatically added to the root user's `$PATH` by `ldbase_deployment/assets/bash.sh` during the build process.

### `ldb-import`
Executes the `drupal config:import` command with the directory argument preset to the correct location (/var/www/html/drupal/web/libraries/ldbase_config/sync/).

### `ldb-export`
Executes the `drush config:export` command with the destination argument preset to the correct location (/var/www/html/drupal/web/libraries/ldbase_config/sync/).

### `ldb-update`
Updates all packages and modules, reloads configurations, and overrides environment-specific configurations with environmental variables.

### `ldb-rebuild`
Empties the Drupal database (preserves the Drupal user and privileges) and deletes the Drupal file system, then rebuilds from scratch. Only use when you want to completely wipe the system and start fresh, all content will be lost.
