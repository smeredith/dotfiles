# Dotfile Strategy

Defaults are located in directory "default".
These get symlinked to home.

Machine specific files are in a directory named after the host under "hosts".

Upon installation, files are linked from default to home.
Then host-specific files are linked if found, replacing the default of the same name.

## Bash

See <https://shreevatsa.wordpress.com/2008/03/30/zshbash-startup-files-loading-order-bashrc-zshrc-etc/>.

Put almost everything in .bashrc.

Interactive login shells, like for ssh, call one of, searched in order:

1. .bash_profile
1. .bash_login
1. .profile (also loaded by sh)

Only one of the above should exist on your system.
Probably .bash_profile.
It should source .bashrc.
