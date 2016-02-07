# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "box-cutter/ubuntu1404-desktop"

  config.vm.provision "shell", inline: <<-SHELL
    setxkbmap -layout gb
    mkdir -p ~/.fonts
    mkdir -p ~/repos
    
    cd ~/.fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
    fc-cache -vf ~/.fonts

    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install -y python-dev python-pip python3-dev python3-pip
    sudo apt-get install -y neovim
    sudo pip2 install neovim
    mkdir -p ~/.config/nvim
    sudo apt-get install -y git 
    sudo apt-get install -y tmux
    ssh-keyscan github.com >> ~/.ssh/known_hosts

	curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
    sudo apt-get install -y nodejs

    sudo npm install -g eslint

    #wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
    #mv PowerlineSymbols.otf ~/.fonts/
    #fc-cache -vf ~/.fonts
    #mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

    git clone git@github.com:simoncrabtree/dotfiles.git
    ./dotfiles/install.sh
    
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  SHELL
end
