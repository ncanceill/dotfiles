# Path to OMZ
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="agnoster"

# Set to this to use case-sensitive completion
#CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(nyan rationalise-dot zsh_reload)
plugins+=(git github)
plugins+=(ruby rails)
plugins+=python

source $HOME/.aliases.local
source $HOME/.zshrc.local

source $ZSH/oh-my-zsh.sh

source $HOME/.aliases

# Update
update () {
	update_local
	cd $ZSH&&gco master&&\
		gl --rebase origin&&gl upstream master&&\
		gco -&&\
		gco upstream-edge&&gl upstream master&&\
		gco -&&-
	vcsh dotfiles pull origin master
}

ZSH=$ZSH # for cdablevars

