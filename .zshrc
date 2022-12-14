# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
plugins=(git zsh-syntax-highlighting)

## Source Oh my zsh
source $ZSH/oh-my-zsh.sh

## set cat > batcat
alias cat="batcat"
## Set vim > nvim ##
alias vim="nvim"
## dotfile quick edits 
alias .i3="nvim ~/.config/i3/config"
alias .zshrc="nvim ~/.zshrc"
alias .vimrc="nvim ~/.config/nvim/init.vim"
alias .kitty="nvim ~/.config/kitty/kitty.conf"
alias venv=". env/bin/activate"
alias weather='curl wttr.in/morgantown'

# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin
