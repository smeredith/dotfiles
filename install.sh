create_symlinks() {
    # Get the directory in which this script lives.
    script_dir=$(dirname "$(readlink -f "$0")")

    files=".bash_aliases .config/tmux .config/nvim"

    # Create a symbolic link to each dot file and dir in the home directory.
    for file in $files; do
        ln -s $script_dir/$file ~/$file
    done
}

create_symlinks
