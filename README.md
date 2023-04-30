# .dotfiles for linux distributions

Make sure you have latest neovim installed on your computer.

move nvim and vim folders to ~/.config/ individually

Make sure you have nerd fonts installed from  https://github.com/ryanoasis/nerd-fonts or just place Gohu.tff from repo directory and place it to ~/.local/share/fonts

You will need python for neovim and golang installed 

1. Install vim-plug
3. enter nvim and enter :PlugInstall or to clean and remove use :PlugClean
4. enter nvim and enter :CocInstall if needed
5. enter nvim and enter :CocInstall coc-clangd if needed
6. also you can install cclc if necessary "sudo apt install ccls"
7. sudo apt-get install exuberant-ctags in order to run TAGBAR plugin
8. Install latest stable nodejs
9. enter nvim and enter :CocInstall clangd.install if needed
10. sudo apt-get install gnome-screenshot

## Quick review of features:

to move around ctrl + h or j or k or l
to open terminal alt + t or to open terminal all over window press alt + shift + t
to open coc suggestions move on word and press alt + k and to select suggestions down arrow or up arrow and alt + y
to go to definiton press "gd" and to go back from definition press "ctr + o"
to open nerd-tree ctrl + n
to comment quickly press // or to comment sexy press /y /s
to open smart TAGBAR press f8 . 
to comment in react press super key plus l
to console.log write log and press enter
