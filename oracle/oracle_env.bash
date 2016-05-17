#!/bin/bash

if [ `uname` == 'Darwin' ]
then
    export SQL_PLUS_HOME=~/tools/instantclient_11_2/
    export DYLD_LIBRARY_PATH=$SQL_PLUS_HOME
    export PATH=$PATH:$SQL_PLUS_HOME
else
    # TODO
    echo 'TODO: what do I use on linux machine in oracle_env.bash?'
fi

export TNS_ADMIN=~/tnsadmin
export SQL_PATH=$TNS_ADMIN
