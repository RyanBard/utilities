#!/bin/bash

if [ `uname` == 'Darwin' ]
then
    alias ls='ls -G'
else
    alias ls='ls --color'
    # useful iptables commands to simulate a bad network
    alias loss10on='sudo iptables -A INPUT -m statistic --mode random --probability 0.1 -j DROP && sudo iptables -A OUTPUT -m statistic --mode random --probability 0.1 -j DROP'
    alias loss10off='sudo iptables -D INPUT -m statistic --mode random --probability 0.1 -j DROP && sudo iptables -D OUTPUT -m statistic --mode random --probability 0.1 -j DROP'
    alias loss20on='sudo iptables -A INPUT -m statistic --mode random --probability 0.2 -j DROP && sudo iptables -A OUTPUT -m statistic --mode random --probability 0.2 -j DROP'
    alias loss20off='sudo iptables -D INPUT -m statistic --mode random --probability 0.2 -j DROP && sudo iptables -D OUTPUT -m statistic --mode random --probability 0.2 -j DROP'
fi


alias ll='ls -la'
alias c='clear'
alias h='history'
alias j='jobs -l'

alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# TODO - vet these
# alias meminfo='free -m -l -t'
# alias psmem='ps auxf | sort -nr -k 4'
# alias pscpu='ps auxf | sort -nr -k 3'
# alias cpuinfo='lscpu'
# alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
