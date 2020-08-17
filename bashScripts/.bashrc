# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PATH=/home/common/local/bin:/home/akasturi/bin:$PATH
PS1='\[$(tput bold)\]\u\[$(tput sgr0)\]@\h:\[$(tput sgr0)\]\[\033[38;5;33m\][\[$(tput sgr0)\]\[\033[38;5;39m\]\w\[$(tput sgr0)\]\[\033[38;5;         33m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]\\\n\$ \[$(tput sgr0)\]'
#echo $PROMPT_COMMAND --> printf "\033k%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"
unset PROMPT_COMMAND # to make screen window rename fix


############################3
export HISTTIMEFORMAT="%F %T "
export CSCOPE_EDITOR=vim


############################3
function cd_up() {
    cd $(printf "%0.s../" $(seq 1 $1 ));
}

alias 'bcd'='cd_up'

alias ssh_171='ssh root@192.168.0.171'
alias sshtrivedia='ssh root@192.168.0.50'
alias ssh_rhel='ssh kasturia@10.10.205.45'

## git alias
alias gst='git status'
alias gstvim='git status | grep modified: | awk '\''{print $3}'\'' | xargs vim '
alias gapply='git apply --3way '
alias gfiles='git diff-tree --no-commit-id --name-only -r '
alias gname='git show --name-only '
alias gtags='git log --simplify-by-decoration --decorate --pretty=oneline'
alias glocal='git log --branches --not --remotes'

##############
alias vibash='vim ~/.bashrc'
alias sbash='source ~/.bashrc'
##############
alias nwdpe='vim vcm-dpe/nw-dpe/main/src/NwDpe.c'

#backspace not working
stty erase '^?'
stty erase '^H'
