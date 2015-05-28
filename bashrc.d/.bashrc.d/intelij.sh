export INTELIJH=~/Documents/InteliJ_workspace

alias intelij='cd $INTELIJH'

function goto_proj {
  cd $INTELIJH/work_project/$1
}

# Setup project tmux
function startup_proj {
  goto_proj $1 && tmux new -s $1
}

# sb2
#export sb2=/Users/dave.barcelo/Documents/InteliJ_workspace/work_project/switchboard-ops
