export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

ZSH_THEME="clean"

plugins=(git)
source $ZSH/oh-my-zsh.sh

alias vim="nvim"
eval $(thefuck --alias)

# directories
alias src="cd ~/dotfiles/suckless"
alias prg="cd ~/Documents/studium/Semester1/Programmieren\ 1/"
alias alg="cd ~/Documents/studium/Semester1/ALG/"
alias gdi="cd ~/Documents/studium/Semester1/GDI/"
alias dev="cd ~/Developer"
alias dot="cd ~/dotfiles/"

# useful
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias ls='ls --color=auto'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

# ping 
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'


# sudo workaround
# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

chc() {
  wc -m $1 | awk '{print $1}'
}


export PATH="$HOME/.local/bin/:$PATH"
