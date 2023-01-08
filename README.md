# .dotfiles for linux distributions

Make sure you have latest neovim installed on your computer.

move nvim and vim folders to ~/.config/ individually

not sure if you need to place .vim to ~/.vim, I think its generated automatically

Make sure you have nerd fonts installed from  https://github.com/ryanoasis/nerd-fonts or just place HackFont.tff from repo directory and place it to ~/.local/share/fonts

You will need python for neovim and golang installed 

1. Install vim-plug
3. enter nvim and enter :PlugInstall or to clean and remove use :PlugClean
4. enter nvim and enter :CocInstall if needed
5. enter nvim and enter :CocInstall coc-clangd if needed
6. also you can install cclc if necessary

## Quick review of features:

# to move around ctrl + h or j or k or l
# to open terminal alt + t or to open terminal all over window press alt + shift + t
# to open coc suggestions move on word and press alt + k and to select suggestions down arrow or up arrow and alt + y
# to go to definiton press alt + d and to go back from definition press alt + o
# to open nerd-tree ctrl + n
# to comment quickly press // or to comment sexy press /y /s
