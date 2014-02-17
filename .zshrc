ZSH=$HOME/.oh-my-zsh
ZSH_THEME="random"
#ZSH_THEME="af-magic"
plugins=(git osx brew rsync autojump)
source $ZSH/oh-my-zsh.sh
COPYFILE_DISABLE=true # don't create additional files during tar
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_11.jdk/Contents/Home/jre

export SSG_DATA=/Users/james/Dropbox/GRAPHICS/ssg/data

# Disable sharing history.
setopt NO_SHARE_HISTORY

# PATHS
USER_BIN=$HOME/.bin
LOCAL_BIN=/usr/local/bin
RSENSE_HOME=/usr/local/rsense-0.3
SHARE_PYTHON=/usr/local/share/python
HEROKU=/usr/local/heroku/bin
ANDROID_TOOLS=$HOME/Developer/Android/sdk/tools
ANDROID_PLATFORM_TOOLS=$HOME/Developer/Android/sdk/platform-tools
POSTGRES=/Library/PostgreSQL/9.2/bin
OPT_BIN=/opt/local/bin
OPT_SBIN=/opt/local/sbin
XAMP=/Applications/xampp/xamppfiles/bin
CABAL=$HOME/.cabal/bin

export PATH=$USER_BIN:$LOCAL_BIN:$CABAL:$SHARE_PYTHON:$HEROKU:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$RSENSE_HOME:$POSTGRES:$OPT_BIN:$OPT_SBIN:$XAMP:$PATH

DOCTORJS=/usr/local/lib/jsctags
NODE_PATH='$DOCTORJS:${NODE_PATH}'

# Aliases
alias tmux='tmux -2' #get dat color
alias vi='vim -u NONE'
alias vvimrc='vim ~/.vim/.vimrc'
alias sshschool='ssh ym3798@algebra.sci.csueastbay.edu'
alias sshfsschool='sshfs ym3798@algebra.sci.csueastbay.edu:/home/students/13wi/ym3798 ~/SchoolSSHFS'
alias gmacs='/usr/local/Cellar/emacs-mac/emacs-24.3-mac-4.2/Emacs.app/Contents/MacOS/Emacs'
alias rvim='/usr/local/Cellar/vim/7.3.923/bin/vim'
alias jformat='python -m json.tool'
alias seedbox='ssh jojojames@walnut.whatbox.ca'

# Status Line
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# source ruby/rvm/rails
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# disable automatica renaming
export DISABLE_AUTO_TITLE="true"
