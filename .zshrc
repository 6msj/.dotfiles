ZSH=$HOME/.oh-my-zsh
ZSH_THEME="random"
plugins=(git, osx)
source $ZSH/oh-my-zsh.sh
COPYFILE_DISABLE=true # don't create additional files during tar
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_11.jdk/Contents/Home/jre

# PATHS
USER_BIN=~/.bin
LOCAL_BIN=/usr/local/bin
RSENSE_HOME=/usr/local/rsense-0.3
SHARE_PYTHON=/usr/local/share/python
HEROKU=/usr/local/heroku/bin
ANDROID_TOOLS=/Users/james/Developer/Android/sdk/tools
ANDROID_PLATFORM_TOOLS=/Users/james/Developer/Android/sdk/platform-tools
POSTGRES=/Library/PostgreSQL/9.2/bin
OPT_BIN=/opt/local/bin
OPT_SBIN=/opt/local/sbin
XAMP=/Applications/xampp/xamppfiles/bin

export PATH=$USER_BIN:$LOCAL_BIN:$SHARE_PYTHON:$HEROKU:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$RSENSE_HOME:$POSTGRES:$OPT_BIN:$OPT_SBIN:$XAMP:$PATH

# Aliases
alias tmux='tmux -2' #get dat color
alias vi='vim -u NONE'
alias vvimrc='vim ~/.vimrc'
alias sshschool='ssh ym3798@algebra.sci.csueastbay.edu'
alias sshfsschool='sshfs ym3798@algebra.sci.csueastbay.edu:/home/students/13wi/ym3798 ~/SSHFS'
alias gmacs='/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs'

# Status Line
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# source ruby/rvm/rails
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# disable automatica renaming
export DISABLE_AUTO_TITLE="true"

