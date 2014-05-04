ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="random"
ZSH_THEME="af-magic"
plugins=(git osx brew rsync autojump)
source $ZSH/oh-my-zsh.sh
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_11.jdk/Contents/Home/jre
export EDITOR=/usr/local/bin/mvim

# Disable sharing history.
setopt NO_SHARE_HISTORY
# Don't create additional files during tar.
COPYFILE_DISABLE=true 

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
# BEGIN: WORK RELATED
##############
export EMPROJECTROOT=$HOME/Developer/emroot
export EM_SOFTWARE=/usr/local
export EM_REPO=${EMPROJECTROOT}/EveryoneMessages

export EM_REDIS_HOME=${EMPROJECTROOT}/redis
export EM_REDIS_DATA=${EMPROJECTROOT}/redis/data

CASSANDRA=/usr/local/Cassandra/apache-cassandra-2.0.7/bin
ERLANG=${EMPROJECTROOT}/erlang/bin
##############
# END: WORK RELATED
##############

export PATH=$USER_BIN:$LOCAL_BIN:$ERLANG:$CABAL:$SBIN_BIN:$HEROKU:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$POSTGRES:$OPT_BIN:$OPT_SBIN:$XAMP:$CASSANDRA:$PATH

DOCTORJS=/usr/local/lib/jsctags
NODE_PATH='$DOCTORJS:${NODE_PATH}'

# Aliases
# -2 for color, || to attach to a current session or create a new session
alias tm='tmux -2 attach || tmux -2 new'
# vim with no plugins
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
