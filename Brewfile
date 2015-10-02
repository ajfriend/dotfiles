# Aj's brewfile
# run with 'brew bundle'
# brew cask search string
# brew cask info vlc

tap caskroom/cask
install brew-cask

install htop
install wget
install git
install mosh
install python
# does git get linked properly?
# run `echo export PATH='/usr/local/bin:$PATH' >> ~/.bash_profile`
install emacs
install ack
install ag
install mobile-shell

tap homebrew/versions
install gcc49
# installs compiler gcc-4.9

## scientific python
tap homebrew/science
tap homebrew/python
install freetype
# if a problem, do this:
#ln -s /usr/local/include/freetype2 /usr/local/include/freetype
install pillow imagemagick graphviz
install qt pyqt

install numpy
install scipy
# install cairo --without-x11 # i don't think i actually need this
install ghostscript
# sudo pip install matplotlib
install zmq
# install pyside # takes forever, don't actually need it
#pip install ipython[all]
# pip install virtualenv
# pip install nose


# all cask things are symlinked to ~/Applications, so only available to single user

# do this before matplotlib and ipython
#cask install mactex
# then, make sure to restart terminal, so that latex is in path

cask install google-chrome
cask install iterm2
cask install virtualbox
# do i need the virtual box extras?
cask install vagrant
cask install vagrant-manager
cask install vlc
cask install spotify
cask install transmission
cask install marked --appdir=/Applications
# need to add license
# then add extras for sublime
cask install steam
cask install pdftk
cask install spectacle
cask install appcleaner


