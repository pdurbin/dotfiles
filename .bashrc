# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

if [[ $OSTYPE == 'darwin10.0' ]]; then
  # http://transfixedbutnotdead.com/2010/01/24/mac-os-x-snow-leopard-10-6-and-perl/
  source ~/perl5/perlbrew/etc/bashrc
fi
