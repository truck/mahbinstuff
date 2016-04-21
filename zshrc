echo "Loading zgen..."
source ~/bin/zgen/zgen.zsh

source ~/bin/fixcolors
HIST_STAMPS="yyyy-mm-dd"
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
setopt appendhistory autocd extendedglob
xset -b
unsetopt beep
bindkey -e
export LESS="-X -R -F"
alias http='python -m http.server'
export PATH=$HOME/bin:/usr/local/bin:$PATH
alias t=todo.sh
export EDITOR=mg

autoload insert-composed-char
zle -N insert-composed-char
# bind it to some key (Ctrl+x in this example)
bindkey  insert-composed-char

if ! zgen saved; then
	echo "creating zgen save..."

# prezto options
	zgen prezto editor key-bindings 'emacs'
#	zgen prezto prompt theme 'off'

# prezto load
	zgen prezto
	zgen prezto terminal
	zgen prezto ssh
	zgen prezto python
	zgen prezto git
	zgen prezto history
	zgen prezto tmux
	zgen prezto syntax-highlighting
	zgen prezto completion

# not prezto
	zgen load Tarrasch/zsh-bd
	zgen load Tarrasch/zsh-colors
	zgen load supercrabtree/k
	zgen save
fi

. ~/bin/aliases

prompt fire 125 234 084 054 020

# powerline (arch location)
#. /usr/share/zsh/site-contrib/powerline.zsh

unalias rm
unalias mv
unalias cp

# STOP SHARING HISTORY
#unsetopt share_history
setopt NO_SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST

yellow All Done!
