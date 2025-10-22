

# Custom bash extensions created by ldbase_deployment vagrant boot 
PATH=$PATH:/ldbase_deployment/commands/:/var/www/html/drupal/vendor/bin/

function git_set {
  if [ "$1" = "bb" ]
  then
    echo "Setting git configurations for Bryan Brown"
    git config --system user.name "Bryan J. Brown"
    git config --system user.email "bjbrown@fsu.edu"
  elif [ "$1" = "fc" ]
  then
    echo "Setting git configurations for Favenzio Calvo"
    git config --system user.name "Favenzio Calvo"
    git config --system user.email "fcalvo@admin.fsu.edu"
  elif [ "$1" = "ba" ]
  then
    echo "Setting git configurations for Brian Arsenault"
    git config --system user.name "Brian Arsenault"
    git config --system user.email "barsenault@fsu.edu"
  else
    echo "$1 is not a valid argument\n"
  fi
  git config --list
}
