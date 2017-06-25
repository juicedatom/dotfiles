# This script installs all the files into the correct folders.

# This is very primitive and error prone.
#
# TODO(jmanela) - Make this smarter and check to see if files exist.
#               - Add error handling logic and modules for different
#                 types of files.

# neovim
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim

# vimplug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# TOOD(jmanela): tmux (add tmux stuff here)
