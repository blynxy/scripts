git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles add .bashrc .vimrc .config/nvim/ ...
dotfiles commit -m "Initial commit"