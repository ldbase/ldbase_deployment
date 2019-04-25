

function git_set {
  if [ "$1" = "b" ]
  then
	  echo "Setting git for Bryan"
	  git config --global user.name "Bryan J. Brown"
	  git config --global user.email "bjbrown@fsu.edu"
  elif [ "$1" = "f" ]
  then
	  echo "Setting git for Favenzio"
	  git config --global user.name "Favenzio Calvo"
	  git config --global user.email "fcalvo@admin.fsu.edu"
  else
	  echo "$1 is not a valid argument\n"
  fi
  git config --list
}
