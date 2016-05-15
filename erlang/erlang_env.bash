#!/bin/bash

export ERL_HOME=~/tools/otp_R17.0
export PATH=$PATH:$ERL_HOME/bin

export ELIXIR_HOME=~/tools/elixir
export PATH=$PATH:$ELIXIR_HOME/bin

export REBAR_HOME=~/projects/erlang/rebar
export PATH=$PATH:$REBAR_HOME

# search erlang source and  header files, but not libs and unit test generated files
function erlsea() {
    find "$1" -iname '*.hrl' -o -iname '*.erl' | grep -v '/deps/' | grep -v '.eunit' | xargs grep -n "$2"
    return $?
}

# search through the DB and unit test json files, but not in the libs dirs
function jsea() {
    find "$1" -iname '*.json' -o -iname '*.db.index' | grep -v '/deps/' | xargs grep -n "$2"
    return $?
}
