#zsh > bash
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
#pretty lazy verbosity
alias ls='ls --color=auto'
alias grep="grep --color"
alias egrep="egrep --color"
alias fgrep="fgrep --color"
alias yt="youtube-viewer -C"
alias rm="rm -v"
alias cp="cp -v"
alias mv="mv -v"
alias fucking="sudo"
#ssh alias's redacted
#fatty files
diskhog() {
  for i in G M K; do
    du -ah | grep [0-9]$i | sort -nr -k 1
  done | head -n 11
}
#easier to read
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
#make sure to edit your sudoers to inherit this env var
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
#stuff to avoid starting X
gethref() { curl -k $1 2>&1 | grep -o -E 'href="([^"#]+)"' | cut -d'"' -f2 | sort -u; }
gettext() { curl -L -A "Mozilla/5.0" -k $1 -s | w3m -dump -T text/html; }
#i should really just make this a for loop
colours() {
  echo -e '\033[1;37m]=\u2620=[ White,       mirc=0,  bash=\\033[1;37m'
  echo -e '\033[0;30m]=\u2620=[ Black,       mirc=1,  bash=\\033[0;30m'
  echo -e '\033[0;34m]=\u2620=[ Blue,        mirc=2,  bash=\\033[0;34m'
  echo -e '\033[0;32m]=\u2620=[ Green,       mirc=3,  bash=\\033[0;32m'
  echo -e '\033[1;31m]=\u2620=[ Light Red,   mirc=4,  bash=\\033[0;31m'
  echo -e '\033[0;31m]=\u2620=[ Dark Red,    mirc=5,  bash=\\033[0;33m'
  echo -e '\033[0;35m]=\u2620=[ Purple,      mirc=6,  bash=\\033[0;35m'
  echo -e '\033[0;33m]=\u2620=[ Orange,      mirc=7,  bash=\\033[0;33m'
  echo -e '\033[1;33m]=\u2620=[ Yellow,      mirc=8,  bash=\\033[1;33m'
  echo -e '\033[1;32m]=\u2620=[ Light Green, mirc=9,  bash=\\033[1;32m'
  echo -e '\033[0;36m]=\u2620=[ Cyan,        mirc=10, bash=\\033[0;36m'
  echo -e '\033[1;36m]=\u2620=[ Light Cyan,  mirc=11, bash=\\033[1;36m'
  echo -e '\033[1;34m]=\u2620=[ Light Blue,  mirc=12, bash=\\033[1;34m'
  echo -e '\033[1;35m]=\u2620=[ Pink,        mirc=13, bash=\\033[1;35m'
  echo -e '\033[1;30m]=\u2620=[ Grey,        mirc=14, bash=\\033[1;30m'
  echo -e '\033[1;37m]=\u2620=[ Light Grey,  mirc=15, bash=\\033[1;37m'
}
#for extended ansi support
echo -e "\033(U"
#fix paths
PATH="/home/REDACTED/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/REDACTED/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/REDACTED/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/REDACTED/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/REDACTED/perl5"; export PERL_MM_OPT;
