#!/usr/bin/env bash
WITH_CTF=false

# Install Homebrew.
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

brew install docker
brew install gnupg
brew install neovim
brew install macvim --with-python-3 --with-custom-icons --override-system-vim

# Install python tools
brew install pyenv


if [ "$WITH_CTF" = true ]; then
  # Install some CTF tools; see https://github.com/ctfs/write-ups.
  brew install aircrack-ng
  brew install bfg
  brew install binutils
  brew install binwalk
  brew install cifer
  brew install dex2jar
  brew install dns2tcp
  brew install fcrackzip
  brew install foremost
  brew install hashpump
  brew install hydra
  brew install john
  brew install knock
  brew install netpbm
  brew install nmap
  brew install pngcheck
  brew install socat
  brew install sqlmap
  brew install tcpflow
  brew install tcpreplay
  brew install tcptrace
  brew install ucspi-tcp # `tcpserver` etc.
  brew install xpdf
  brew install xz
fi

function installcask() {
  if brew list --cask "${@}" | grep "Not installed" > /dev/null; then
    brew install --cask "${@}"
  else
    echo "${@} is already installed."
  fi
}

installcask firefox
installcask google-chrome
installcask iterm2
installcask postman
installcask rectangle
installcask spotify
installcask wireshark
installcask zoomus

# Install other useful binaries.
brew install ack
brew install ag
brew install git
brew install go
brew install imagemagick --with-webp
brew install rename
brew install rlwrap
brew install tree
brew install vbindiff
brew install zip

# Remove outdated versions from the cellar.
brew cleanup
