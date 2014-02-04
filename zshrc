# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# Good ones: nanotech, candy, macovsky-ruby
# Have potential but need work: dieter

ZSH_THEME="candy"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias e="(/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c &)\
 && open -a /Applications/Emacs.app"
alias ec="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -nw"
alias esr="(killall Emacs || killall emacs || killall Emacs-10.7 || true)\
 && /Applications/Emacs.app/Contents/MacOS/Emacs --daemon"

alias hibernate_on="sudo pmset -a hibernatemode 25"
alias hibernate_off="sudo pmset -a hibernatemode 3"

git-delete-branch () {
    branch=$1
    git branch -d $branch && git push origin :$branch
}

alias gdelb="git-delete-branch"

alias dev="cd ~/_dev"

alias hrc="heroku run console"
alias hlg="heroku logs -t"
alias hps="heroku ps"

CG=(--app campaign-grouper)
CGS=(--app campaign-grouper-staging)
FBM=(--app facebook-mirror)
FBMS=(--app facebook-mirror-staging)
ES=(--app ending-system)
ESS=(--app ending-system-staging)
AI=(--app adaptly-insightful)
PGB=(--app adaptly-fb-bench-pg)
BENCH=(--app adaptly-fb-benchmarks)


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rbenv macports bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# LS_COLORS="di=01;32:ln=01;32:ex=01;32"
# export LS_COLORS
PATH=~/bin:$PATH
PATH=/Users/aciniglio/_dev/lib/go/bin:$PATH
export PATH=/opt/local/lib/postgresql92/bin:$PATH
export PATH=~/bin/elastic-mapreduce-ruby:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/Users/alejandro/Downloads/AWSCloudFormation-1.0.12/bin:$PATH

export GOPATH=$HOME/_dev/lib/gocode

export AWS_CREDENTIAL_FILE=~/.aws_credentials
export AWS_CLOUDFORMATION_HOME=/Users/alejandro/Downloads/AWSCloudFormation-1.0.12
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
