# Install nvm
printr "installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
nvm install 4.2
nvm use 4.2

# Install rvm
printr "installing rvm"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles
source ~/.rvm/scripts/rvm
rvm install 2.2
rvm use 2.2

# Install oh-my-zsh
print "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Powerline fonts
print "installing powerline fonts"
sh -c "$(curl -fsSL https://raw.github.com/powerline/fonts/master/install.sh)"
