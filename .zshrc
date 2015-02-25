ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="random"
ZSH_THEME="af-magic"
plugins=(git osx brew rsync autojump)
source $ZSH/oh-my-zsh.sh

#JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home/jre
#export JAVA_HOME=`/usr/libexec/java_home -v1.6`
export JAVA_HOME=`/usr/libexec/java_home -v1.7`

export EDITOR=/usr/local/bin/mvim
export ANDROID_HOME=/Applications/adt-bundle-mac-x86_64-20140702/sdk
export XCODE_BUILD=$HOME/Library/Developer/Xcode/DerivedData

# Disable sharing history.
setopt NO_SHARE_HISTORY
# Don't create additional files during tar.
COPYFILE_DISABLE=true 

# PATHS
USER_BIN=$HOME/.bin
LOCAL_BIN=/usr/local/bin
SBIN_BIN=/usr/local/sbin
HEROKU=/usr/local/heroku/bin
ANDROID_TOOLS=$HOME/Library/Developer/Xamarin/android-sdk-mac_x86/tools
ANDROID_PLATFORM_TOOLS=$HOME/Library/Developer/Xamarin/android-sdk-mac_x86/platform-tools
POSTGRES=/Library/PostgreSQL/9.2/bin
OPT_BIN=/opt/local/bin
OPT_SBIN=/opt/local/sbin
XAMP=/Applications/xampp/xamppfiles/bin
CABAL=$HOME/.cabal/bin

export GOBIN=/usr/local/go/bin
export GOPATH=$HOME/Developer/kandi/servers

##############
# BEGIN: WORK RELATED
##############
export EMPROJECTROOT=$HOME/Developer/emroot
export EM_SOFTWARE=/usr/local
export EM_REPO=${EMPROJECTROOT}/EveryoneMessages

export EM_REDIS_HOME=${EMPROJECTROOT}/redis
export EM_REDIS_DATA=${EMPROJECTROOT}/redis/data

export GRAILS_HOME=/usr/local/grails

CASSANDRA=/usr/local/Cassandra/apache-cassandra-2.0.7/bin
ERLANG=${EMPROJECTROOT}/erlang/bin

export JAVA_OPTS="-Xms1g -Xmx2g -XX:MaxPermSize=2g"
export WHPROJECTROOT=$HOME/Developer/whoshere
##############
# END: WORK RELATED
##############

export PATH=$USER_BIN:$LOCAL_BIN:$GRAILS_HOME/bin:$ERLANG:$CABAL:$SBIN_BIN:$HEROKU:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$POSTGRES:$OPT_BIN:$OPT_SBIN:$XAMP:$CASSANDRA:$PATH

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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
