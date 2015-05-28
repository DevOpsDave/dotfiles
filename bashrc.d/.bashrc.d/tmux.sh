
ins-move() {
  for ((i=$1; i<$2-1; i++))
  do
    tmux swap-window -s :$i -t :$((i+1))
  done
}

