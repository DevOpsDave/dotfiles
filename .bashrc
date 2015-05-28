# Aliases
alias ls='ls -laG'

# Custom aliases
alias vi="/usr/local/bin/vim"

# Prompt for ~/.bashrc.d/git-prompt.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# Set TZ data
export TZ="US/Central"

# bashrc.d:snippet:head
shopt -s nullglob
for file in "$HOME/.bashrc.d/"*.sh ; do
   source "$file"
done
shopt -u nullglob
# bashrc.d:snippet:tail

