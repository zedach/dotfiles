#!/usr/bin/env bash
# Simple setup.sh 
# for headless setup. 

# Install Homebrew

# Install Command Line Tools for Xcode
 xcode-select --install
 ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
function installcask() {
				brew cask install "${@}" 2> /dev/null
}
# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

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
brew install bash-completion
brew install findutils

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri


# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2


# Install other useful binaries.
brew install rsync
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff
brew install webkit2png
brew install zopfli
brew install node
brew install cpulimit
brew install curl
brew install diff-so-fancy
brew install djview4
brew install djvu2pdf
brew install faac
brew install ffmpeg

npm install -g tldr
npm install -g brb

brew install homebrew/fuse/ntfs-3g

installcask java
installcask docker 
installcask dropbox
installcask flux
installcask franz
installcask eloston-chromium
installcask imagealpha
installcask imageoptim
installcask iterm2
installcask itsycal
installcask menumeters
installcask moom
installcask nvalt
installcask osxfuse
installcask pdfsam-basic
installcask soundflower
installcask sourcetree
installcask spectacle
installcask spotify
installcask tomighty
installcask transmission
installcask waterfox
installcask atom
installcask disk-inventory-x
installcask docker
installcask dropbox
installcask flowdock
installcask vagrant
installcask vagrant-bar
installcask vagrant-manager
brew install vagrant-completion
installcask virtualbox
installcask virtualbox-extension-pack
installcask vlc
installcask free-download-manager
installcask skype
installcask zotero
installcask android-file-transfer
installcask postman
installcask appcleaner
installcask gitup
brew install subversion
brew install scala --with-docs --with-src
brew install apache-spark
brew install ansible
brew install gradle
brew install grails
brew install httpie
brew install iproute2mac
brew install jsonschema2pojo
brew install kafka
brew install kafkacat
brew install klibidn
brew install klibksba
brew install klibvo-aacenc
brew install pyenv
brew install python
brew install python3
brew install wxpython
brew install logstash
brew install lua@5.1
brew install lynx

brew install mongodb
brew install nginx 
brew install nss


brew install ossp-uuid
brew install p7zip
brew install parallel
brew install pdf2htmlex 
brew install pigz
# postgresql


brew install sdl
brew install sqoop
brew install storm
brew install subversion
brew install tesseract
brew install transmission
brew install tre
brew install tree
# brew install typesafe-ectivator
brew install watch

npm install -g tldr
npm install -g aglio

# hacks for scala
# http://scalacookbook.blogspot.fr/2012/09/scala-for-intellij.html
scalaversion="$(brew which scala | sed 's/[^0-9.]*\([0-9.]*\).*/\1/')"

if [ ! -L /usr/local/Cellar/scala/$scalaversion/src ]; then
                                ln -s /usr/local/Cellar/scala/$scalaversion/libexec/src /usr/local/Cellar/scala/$scalaversion/src
fi
if [ ! -L /usr/local/Cellar/scala/$scalaversion/lib ]; then
                                ln -s /usr/local/Cellar/scala/$scalaversion/libexec/lib /usr/local/Cellar/scala/$scalaversion/lib
fi
if [ ! -d /usr/local/Cellar/scala/$scalaversion/doc/scala-devel-docs ] ; then
                                mkdir -p /usr/local/Cellar/scala/$scalaversion/doc/scala-devel-docs
                                ln -s /usr/local/Cellar/scala/$scalaversion/share/doc/scala /usr/local/Cellar/scala/$scalaversion/doc/scala-devel-docs/api
fi

brew install sbt
brew install maven

#install gvm
curl -s get.gvmtool.net | bash
[[ -s ~/.gvm/bin/gvm-init.sh ]] && source ~/.gvm/bin/gvm-init.sh

#gvm install grails 2.3.5
#gvm install groovy

# Remove outdated versions from the cellar.
brew cleanup
