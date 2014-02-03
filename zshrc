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

if [[ -d /Applications/Emacs.app ]]; then
    emacs_path=/Applications/Emacs.app/Contents/MacOS
    emacsclient=$emacs_path/bin/emacsclient
    exit_elisp="(kill-emacs)"
    alias e="($emacsclient -c &) && osascript -e 'tell application \"Emacs\" to activate'"
    alias ec="$emacsclient -nw"
    alias esr="($emacsclient --eval \"$exit_elisp\" || true) &&
	(killall Emacs || killall emacs || killall Emacs-10.7 || true)\
	&& $emacs_path/Emacs --daemon --debug-init"
    alias emacs="$emacs_path/Emacs -nw"

    PATH=$emacs_path/bin:$PATH
fi

PATH=/opt/local/bin:/opt/local/sbin:$PATH
PATH=/opt/local/lib/postgresql92/bin/:$PATH
PATH=/opt/local/lib/postgresql93/bin/:$PATH
PATH=$HOME/_dev/lib/go/bin:$PATH

PATH=~/bin:$PATH
PATH=$HOME/.cask/bin:$PATH

export PATH=$PATH
export MANPATH=/opt/local/share/man:$MANPATH

export GOPATH=$HOME/_dev/lib/gocode
