#!/bin/bash

if [[ `uname` == CYGWIN* ]]
then
    NOTEPADPP_HOME=/cygdrive/c/Program\ Files\ \(x86\)/Notepad++
    export PATH=$PATH:$NOTEPADPP_HOME/
    alias npp=notepad++
fi

export PATH=~/tools/sublimetext2/
