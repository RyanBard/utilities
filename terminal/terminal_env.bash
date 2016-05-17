#!/bin/bash

if [ `uname` == 'Darwin' ]
then
    # add the "title" function that can be used to change the mac's terminal title in the shell
    source $UTIL_SCRIPTS_DIR/terminal/mac_term.bash
else
    hash mate-screensaver-preferences 2> /dev/null
    if [ $? -eq 0 ]
    then
        # convenience alias for turning off screen lock when watching long youtube movies
        # (the browser doesn't always seems to turn on/off the right things)
        alias disable_screen_lock='mate-screensaver-preferences'
    fi
fi
