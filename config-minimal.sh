#!/bin/bash

dist=$(lsb_release -i)
deb_package=false
rpm_package=false

function install_vim {
	sudo apt-get install aptitude 	
	sudo aptitude install vim, curl, git
	# Install pathogen
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    # Install vim and configure
	cp vimrc ~/ && cd ~/ && mv vimrc .vimrc
    chown danielamorais:danielamorais .vimrc
    cd .vim && mkdir _swap
    chown danielamorais:danielamorais _swap
    # Install vim-airline
    cd bundle/ && git clone https://github.com/bling/vim-airline
}

function generate_ssh {
    ssh-keygen -t rsa -b 4096 -C "dani.m@hotmail.co.uk"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
    git config --global user.name "Daniela Morais"
    git config --global user.email dani.m@hotmail.co.uk
}

function install_zsh {
    aptitude install zsh
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    # Install zsh highlighting 
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
    echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
    # Add options in plugins 
}

if [[ $dist == *"Ubuntu"* ]]; then
	echo "Unfortunately, it's Ubuntu"
	deb_package=true
elif [[ $dist == *"Fedora"* ]]; then
	echo "Cool :-) It's a Fedora"
	rpm_package=true
else
	echo "I'm sorry Dave, I'm afraid I can't do that"
fi

if [ "$deb_package" = true ]; then 
	install_vim
    generate_ssh
    install_zsh
fi 
