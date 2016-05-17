#!/bin/bash

if [ `uname` == 'Darwin' ]
then
    alias ff10='~/tools/firefox/ff10esr/Firefox.app/Contents/MacOS/parameterized-app.sh'
    alias ff17='~/tools/firefox/ff17esr/Firefox.app/Contents/MacOS/parameterized-app.sh'
    alias ff24='~/tools/firefox/ff24esr/Firefox.app/Contents/MacOS/parameterized-app.sh'
    alias ff31='~/tools/firefox/ff31esr/Firefox.app/Contents/MacOS/parameterized-app.sh'
    alias ff38='~/tools/firefox/ff38esr/Firefox.app/Contents/MacOS/parameterized-app.sh'
    alias ff45='~/tools/firefox/ff45esr/Firefox.app/Contents/MacOS/parameterized-app.sh'
else
    alias ff10='~/tools/firefox/ff10esr/firefox/firefox -P ff10 -no-remote'
    alias ff17='~/tools/firefox/ff17esr/firefox/firefox -P ff17 -no-remote'
    alias ff24='~/tools/firefox/ff24esr/firefox/firefox -P ff24 -no-remote'
    alias ff31='~/tools/firefox/ff31esr/firefox/firefox -P ff31 -no-remote'
    alias ff38='~/tools/firefox/ff38esr/firefox/firefox -P ff38 -no-remote'
    alias ff45='~/tools/firefox/ff45esr/firefox/firefox -P ff45 -no-remote'
fi
