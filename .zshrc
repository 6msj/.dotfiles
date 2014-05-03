ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="random"
ZSH_THEME="af-magic"
plugins=(git osx brew rsync autojump)
source $ZSH/oh-my-zsh.sh
COPYFILE_DISABLE=true # don't create additional files during tar
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_11.jdk/Contents/Home/jre

# Disable sharing history.
setopt NO_SHARE_HISTORY

# PATHS
USER_BIN=$HOME/.bin
LOCAL_BIN=/usr/local/bin
SBIN_BIN=/usr/local/sbin
HEROKU=/usr/local/heroku/bin
ANDROID_TOOLS=$HOME/Developer/Android/sdk/tools
ANDROID_PLATFORM_TOOLS=$HOME/Developer/Android/sdk/platform-tools
POSTGRES=/Library/PostgreSQL/9.2/bin
OPT_BIN=/opt/local/bin
OPT_SBIN=/opt/local/sbin
XAMP=/Applications/xampp/xamppfiles/bin
CABAL=$HOME/.cabal/bin

##############
# WORK RELATED
##############
export EMPROJECTROOT=$HOME/Developer/emroot
export EM_SOFTWARE=/usr/local
export EM_REPO=${EMPROJECTROOT}/EveryoneMessages

export PATH=$USER_BIN:$LOCAL_BIN:$CABAL:$SBIN_BIN:$HEROKU:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$POSTGRES:$OPT_BIN:$OPT_SBIN:$XAMP:$PATH

DOCTORJS=/usr/local/lib/jsctags
NODE_PATH='$DOCTORJS:${NODE_PATH}'

# Aliases
alias tmux='tmux -2' #get dat color
alias vi='vim -u NONE'
alias vvimrc='vim ~/.vim/.vimrc'
alias jformat='python -m json.tool'
alias seedbox='ssh jojojames@walnut.whatbox.ca'

# Status Line
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# source ruby/rvm/rails
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# disable automatica renaming
export DISABLE_AUTO_TITLE="true"
