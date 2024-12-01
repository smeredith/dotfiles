# Dotfiles

[Dot files guide](https://dotfiles.github.io/)

## Neovim

- Install Neovim
  - download and use the appimage
  - or https://github.com/neovim/neovim/blob/master/INSTALL.md#linux (download and unzip the binaries)
- 'sudo apt-get install ripgrep'
- For proper colors in tmux: set-option -sa terminal-features ',xterm-256color:RGB'
- To use neovim in vscode.dev terminal, add "Hack Nerd Font" to front of Editor:Font Family setting.

### Windows Terminal
- For proper colors when using ssh in Windows Terminal, set Windows Terminal color to Soloarized Light.
- For symbols, download and install Hack Nerd Font from https://www.nerdfonts.com/ and set Windows Terminal to use it.

## Bash

See <https://shreevatsa.wordpress.com/2008/03/30/zshbash-startup-files-loading-order-bashrc-zshrc-etc/>.
And see <http://blog.flowblok.id.au/2013-02/shell-startup-scripts.html>.

Put almost everything in .bashrc.

Interactive login shells, like for ssh, call one of, searched in order:

1. .bash_profile
1. .bash_login
1. .profile (also loaded by sh)

Only one of the above should exist on your system.
Probably .bash_profile.
It should source .bashrc.

On OSX, terminal windows are login sessions, even though you don't log in.
Go figure.
