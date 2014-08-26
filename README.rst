My dotfiles
###########

I keep a master copy of my system dotfiles here, and clone this repository onto
all machines I set up. I create links to these files from the clone directory
to their actual file names on that system. (Note that this only works on
Mac/Linux systems at present.)

Here is the process I use:

..  code-block:: text

    cd ~/_lib
    git clone https://github.com/rblack42/dotfiles
    cd dotfiles
    ln -s vimrc ~/.vimrc
    ln -s bashrc ~/.bashrc
    ln -s gitconfig ~/.gitconfig
    ln -s gitignore_global ~/.gitignore_global
    ln -s bash_aliases ~/.bash_aliases


