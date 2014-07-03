# for Ubuntu: run the default bashrc 
if [ -e /etc/skel/.bashrc ] ; then
  . /etc/skel/.bashrc
fi

# fancy console colors
source ~/.bash_prompt

# to find homebrew versions first
# make the symbolic link
# ln -s $HOME/Dropbox/dotfiles/.bash_profile $HOME/.bash_profile
# ln -s $HOME/Dropbox/dotfiles/.gitconfig $HOME/.gitconfig
# ln -s $HOME/Dropbox/dotfiles/.gitignore $HOME/.gitignore
export PATH=/usr/local/bin:$PATH
export EDITOR=emacs

alias kona='ssh ajfriend@kona.stanford.edu'
alias kona64='ssh ajfriend@kona64.stanford.edu'
alias scsup="rsync -trzvv -e ssh . ajfriend@kona64.stanford.edu:/home/ajfriend/scs --exclude 'sftp-config.json'"


# When you exit a shell, the history from that session is appended to
# ~/.bash_history.  Without this, you might very well lose the history of entire
# sessions (weird that this is not enabled by default).
shopt -s histappend

# increase the default size from only 1,000 items
export HISTSIZE=10000


# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

# List all files colorized in long format
alias ll='ls -lh'

# List all files colorized in long format, including dot files
alias la="ls -lha"

# List only directories
alias lsd='ls -l | grep "^d"'

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
export LESS=-RFX

## put local customizations in ~/.bash_local
if [ -e ~/.bash_local ] ; then
  . ~/.bash_local
fi