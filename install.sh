
# packages to install
sudo apt install \
  git \
  vim \



# copy files 
cp ./vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall # install vim and quit

