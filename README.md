# Dotfiles

## Github CodeSpaces

Codespaces can automatically pull your dotfiles repo and run a setup script. See [documentation](https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account).
It is a per-account setting found under Settings -> Codespaces -> Dotfiles.

`install.sh` exists for that purpose.

## Ansible

You can use ansible to pull the repo and set symlinks to the directories under `config`.

## Neovim notes

- To install Neovim:
  - download and use the appimage
  - or https://github.com/neovim/neovim/blob/master/INSTALL.md#linux (download and unzip the binaries)
- `sudo apt-get install ripgrep`
- For proper colors in neovim in tmux: set-option -sa terminal-features ',xterm-256color:RGB'. This is already in the tmux config file here.
- To use neovim in vscode.dev terminal, add "Hack Nerd Font" to front of Editor:Font Family setting.

### Windows Terminal
- For proper colors when using ssh in Windows Terminal, set Windows Terminal color to Soloarized Light.
- For symbols, download and install Hack Nerd Font from https://www.nerdfonts.com/ and set Windows Terminal to use it.

### Linux Terminal
- You can add nerd font .ttf files to `~/.local/share/fonts`.

## Bash notes

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
