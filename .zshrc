# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/till/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Use the pure prompt theme
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# Usual bash aliases/etc
source ~/code/dotfiles/bashrc.till

# Use the syntax highlighting AUR package
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
