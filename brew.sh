#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install zshell
brew install zsh

# Install other useful binaries.
brew install ack
brew install ag
brew install awscli
brew install dark-mode
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install speedtest_cli

# Install Python 2 tools
brew install python
pip install cython
pip install ipython
pip install matplotlib
pip install numpy
pip install pandas
pip install scipy
pip install virtualenv

# Install Python 3 tools
brew install python3
pip3 install cython
pip3 install ipython
pip3 install matplotlib
pip3 install numpy
pip3 install pandas
pip3 install scipy
pip3 install virtualenv

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
brew install homebrew/x11/xpdf
brew install xz

# Install MacVim
brew install macvim --with-python-3 --with-custom-icons --override-system-vim

# Install binaries with brew-cask
brew tap caskroom/cask
brew install brew-cask

function installcask() {
    if brew cask info "${@}" | grep "Not installed" > /dev/null; then
        brew cask install "${@}"
    else
        echo "${@} is already installed."
    fi
}

installcask alfred
installcask dockertoolbox
installcask dropbox
installcask firefox
installcask google-chrome
installcask google-chrome-canary
installcask hipchat
installcask iterm2
installcask java
installcask sizeup
installcask spectacle
installcask spotify
installcask torbrowser
installcask transmission
installcask vagrant
installcask virtualbox
installcask vlc

# Link installed apps to /Applications
brew linkapps

# Remove outdated versions from the cellar.
brew cleanup
brew cask cleanup
