#/usr/bin/env bash
if which nvim > /dev/null ; then
  echo "=======> Neovim already installed. <======="
else
  echo "------->> Installing neovim <<-------"
  sudo apt-get install software-properties-common
  sudo add-apt-repository --remove -y ppa:neovim-ppa/unstable
  sudo add-apt-repository -y ppa:neovim-ppa/unstable
  sudo apt-get update
  sudo apt-get install -y --force-yes neovim
  sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
  sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
  sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
fi

if [[ -d ~/.config/nvim/autoload/plug.vim ]]; then
  echo -e "=======> mvim-plug already installed. <======="
else
  echo "------->> Installing vim plug <<-------"
  \curl --silent -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  which nvim > /dev/null && nvim +PlugUpgrade +PlugUpdate +PlugClean +qa
fi 

if which ctags > /dev/null; then
  echo "=======> ctags already installed. <=======" 
else
   echo "------->> Installing ctags <<-------"
   sudo apt-get install -y --force-yes exuberant-ctags
fi

if which ag > /dev/null; then
  echo "=======> silversearcher-ag already installed. <======="
else
  echo "------->> Installing silversearcher-ag <<-------"
  sudo apt-get install -y --force-yes silversearcher-ag
fi