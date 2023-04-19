# Dotfiles

[Dot files guide](https://dotfiles.github.io/)

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
