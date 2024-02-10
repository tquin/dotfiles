#  tquin/dotfiles

## Shell Settings
* `source dotfiles/bashrc.till` in `~/.bashrc` or `~/.zshrc`
* `source dotfiles/.zshrc` in `~/.zshrc`

## Other Programs
* `ln -s ~/.config/i3 dotfiles/i3`
* `ln -s ~/.config/alacritty dotfiles/alacritty`
* `ln -s ~/.tmux.conf dotfiles/tmux/tmux.conf`
* `ln -s ~/.vimrc dotfiles/.vimrc`

## Stow

Alternatively, you can use `stow` to manage all the linking based on the structure of this repo for you, then add the shell sources manually:
```
stow -v */
echo 'source /path/to/dotfiles/bashrc.till' >> ~/.bashrc
echo 'source /path/to/dotfiles/bashrc.till' >> ~/.zshrc
```