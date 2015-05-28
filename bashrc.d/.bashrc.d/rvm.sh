export PATH=$PATH:"$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


function create_rvmrc() {
  
  if [ $# -lt 1 ] ; then
    echo "Need to give a ruby version and a gemset name."
    exit
  fi

  ruby_version=$1
  gemset=$2 

  echo "rvm --create use ${ruby_version}@${gemset}" > .rvmrc

}

