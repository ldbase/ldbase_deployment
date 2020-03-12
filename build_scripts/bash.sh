
# Custom bash extensions created by ldbase_deployment vagrant boot 
alias ldbx="/var/www/html/drupal/vendor/bin/drush config:export --destination=/var/www/html/drupal/web/libraries/ldbase_config/sync"

function git_set {
  if [ "$1" = "bb" ]
  then
    echo "Setting git configurations for Bryan Brown"
    git config --global user.name "Bryan J. Brown"
    git config --global user.email "bjbrown@fsu.edu"
  elif [ "$1" = "fc" ]
  then
    echo "Setting git configurations for Favenzio Calvo"
    git config --global user.name "Favenzio Calvo"
    git config --global user.email "fcalvo@admin.fsu.edu"
  elif [ "$1" = "ba" ]
  then
    echo "Setting git configurations for Brian Arsenault"
    git config --global user.name "Brian Arsenault"
    git config --global user.email "barsenault@fsu.edu"
  else
    echo "$1 is not a valid argument\n"
  fi
  git config --list
}
