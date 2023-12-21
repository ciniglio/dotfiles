# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# Good ones: nanotech, candy, macovsky-ruby
#            *pure*, intheloop, nicoulaj, af-magic
# Have potential but need work: dieter

ZSH_THEME="powerlevel10k/powerlevel10k"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias hibernate_on="sudo pmset -a hibernatemode 25"
alias hibernate_off="sudo pmset -a hibernatemode 3"

git-delete-branch () {
    branch=$1
    git branch -d $branch && git push origin :$branch
}

alias gdelb="git-delete-branch"

alias dev="cd ~/_dev"

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
ZSH_DISABLE_COMPFIX="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git macports nvm yarn z asdf)

source $ZSH/oh-my-zsh.sh
source $HOME/.drive_helper.sh

# Customize to your needs...
# LS_COLORS="di=01;32:ln=01;32:ex=01;32"
# export LS_COLORS

if [[ -d /Applications/Emacs.app ]]; then
    emacs_env='CFLAGS="-I/opt/local/include/gcc10" LDFLAGS="-I/opt/local/include/gcc10 -L/opt/local/lib/gcc10"'
    emacs_path=/Applications/Emacs.app/Contents/MacOS
    emacsclient=$emacs_path/bin/emacsclient
    exit_elisp="(kill-emacs)"
    alias e="($emacsclient -c &) && sleep 0.24 && osascript -e 'tell application \"Emacs\" to activate'"
    alias ec="$emacsclient -nw"
    alias esr="($emacsclient --eval \"$exit_elisp\" || true) &&
	(killall Emacs || killall emacs || killall Emacs-10.7 || true)\
	&& $emacs_env $emacs_path/Emacs --daemon"
    alias emacs="$emacs_env $emacs_path/Emacs -nw"

    PATH=$emacs_path/bin:$PATH
fi

alias yt="youtube-dl -f mp4"

PATH=/usr/local/bin:$PATH

### Macports bullshit
PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

export LDFLAGS="-I/opt/local/include/gcc12 -L/opt/local/lib/gcc12"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ ! -d ~/.asdf ]] || source $HOME/.asdf/asdf.sh  


# Local Variables:
# mode: sh
# End:

# opam configuration
[[ ! -r /Users/alejandro/.opam/opam-init/init.zsh ]] || source /Users/alejandro/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
