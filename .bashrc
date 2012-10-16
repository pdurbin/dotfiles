# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias gits='git status'

if [[ $OSTYPE == 'darwin10.0' ]]; then
  # http://transfixedbutnotdead.com/2010/01/24/mac-os-x-snow-leopard-10-6-and-perl/
  source ~/perl5/perlbrew/etc/bashrc
fi

export PATH=$PATH:$HOME/gr/scripts

[[ -d /opt/vagrant/bin ]] && export PATH=$PATH:/opt/vagrant/bin 

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)

source ~/stuff/etc/.bashrc
