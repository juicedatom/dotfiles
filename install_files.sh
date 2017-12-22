# This script installs all the files into the correct folders.

# This is very primitive and error prone.
#
# TODO(juicedatom) - Make this smarter and check to see if files exist.
#               - Add error handling logic and modules for different
#                 types of files.

# TODO(juicedatom) install neovim.

# neovim
# TODO(juicedatom) -- Add safety checks.
ln -s $(pwd)/nvim ~/.config/nvim

# vimplug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# TODO(juicedatom) -- install neovim.

# TODO(juicedatom) -- setup install for i3 config.
