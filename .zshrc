ZSH=$HOME/.oh-my-zsh
ZSH_THEME="random"
plugins=(git, osx)
source $ZSH/oh-my-zsh.sh
COPYFILE_DISABLE=true # don't create additional files during tar
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_11.jdk/Contents/Home/jre

export PATH=~/.bin:/usr/local/bin:/usr/local/share/python:/usr/local/heroku/bin:/Users/james/Developer/Android/sdk/tools:/Users/james/Developer/Android/sdk/platform-tools:/Library/PostgreSQL/9.2/bin:/opt/local/bin:/opt/local/sbin:/Applications/xampp/xamppfiles/bin:$PATH
# Aliases
alias tmux='tmux -2' #get dat color
alias sshschool='ssh ym3798@algebra.sci.csueastbay.edu'
alias sshfsschool='sshfs ym3798@algebra.sci.csueastbay.edu:/home/students/13wi/ym3798 ~/SSHFS'

# Status Line
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# source ruby/rvm/rails
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# disable automatica renaming
export DISABLE_AUTO_TITLE="true"

