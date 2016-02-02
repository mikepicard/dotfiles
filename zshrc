export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="pygmalion"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

alias ls='ls --color=auto'
alias grep="grep --color"
alias egrep="egrep --color"
alias fgrep="fgrep --color"

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

proxy() {
    export http_proxy="INSERT_PROXY_ADDRESS"
    export https_proxy="$http_proxy"
    export ftp_proxy="$http_proxy"
    export rsync_proxy="$http_proxy"
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    echo -e "\nProxy environment variables set."
}

proxyoff() {
    unset HTTP_PROXY
    unset http_proxy
    unset HTTPS_PROXY
    unset https_proxy
    unset FTP_PROXY
    unset ftp_proxy
    unset RSYNC_PROXY
    unset rsync_proxy
    echo -e "\nProxy environment variables removed."
}

#for ansi art to properly render
echo -e "\033(U"

PATH="/home/mp/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/mp/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/mp/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/mp/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/mp/perl5"; export PERL_MM_OPT;
