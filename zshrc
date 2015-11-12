echo "Loading zgen..."
source ~/bin/zgen/zgen.zsh

source ~/bin/fixcolors
HIST_STAMPS="yyyy-mm-dd"
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
setopt appendhistory autocd extendedglob

#xset -b

unsetopt beep
bindkey -e
export LESS="-X -R -F"
alias http='python -m http.server'

alias t=todo.sh
export EDITOR=mg

export PATH=$HOME/bin:/usr/local/bin:$PATH

autoload insert-composed-char
zle -N insert-composed-char
# bind it to some key (Ctrl+x in this example)
bindkey  insert-composed-char

if ! zgen saved; then
	echo "creating zgen save..."
	zgen oh-my-zsh
	zgen oh-my-zsh plugins/sudo
	zgen oh-my-zsh plugins/tmux
	zgen oh-my-zsh plugins/themes
	zgen oh-my-zsh plugins/rsync
#	zgen oh-my-zsh plugins/archlinux
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh plugins/mosh
	zgen oh-my-zsh plugins/vagrant
	zgen oh-my-zsh plugins/virtualenv
	zgen oh-my-zsh plugins/history
	zgen oh-my-zsh plugins/pip
	zgen oh-my-zsh plugins/python
	zgen oh-my-zsh plugins/systemd
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load Tarrasch/zsh-bd
	zgen load Tarrasch/zsh-colors
	zgen load supercrabtree/k
#	zgen load jplitza/zsh-virsh-autocomplete
	zgen load truck/zsh-virsh-autocomplete
#	zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train
	
	zgen save
fi

unsetopt share_history
setopt NO_SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST

#. ~/bin/bullettrain
#. ~/bin/aliases

theme linuxonly


yellow All Done!
