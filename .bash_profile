# Reset PATH to keep it from being clobbered in tmux
if [ -x /usr/libexec/path_helper ]; then
  PATH=''
  source /etc/profile
fi

[[ -r ~/.bashrc ]] && . ~/.bashrc
