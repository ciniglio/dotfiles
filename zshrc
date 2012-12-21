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
 && open -a Emacs"
alias ec="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -nw"
alias esr="(killall Emacs || killall emacs || true)\
 && /Applications/Emacs.app/Contents/MacOS/Emacs --daemon"

alias hibernate_on="sudo pmset -a hibernatemode 25"
alias hibernate_off="sudo pmset -a hibernatemode 3"

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
GOPATH=$HOME/_dev/lib/gocode

export GOPATH
