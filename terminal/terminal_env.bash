#!/bin/bash

if [ `uname` == 'Darwin' ]
then
    # add the "title" function that can be used to change the mac's terminal title in the shell
    source mac_term.bash
elif hash mate-screensaver-preferences 2> /dev/null
then
    # convenience alias for turning off screen lock when watching long youtube movies
    # (the browser doesn't always seems to turn on/off the right things)
    alias disable_screen_lock='mate-screensaver-preferences'
else
fi
