#!/bin/bash

if [ `uname` == 'Darwin' ]
then
    # very efficient and popular AMQP message broker
    export RABBITMQ_HOME=~/tools/rabbitmq_server-3.1.1
    export PATH=$PATH:$RABBITMQ_HOME/sbin
    alias start_rabbitmq='rabbitmq-server'

    # popular NoSql DB
    #export MONGO_HOME=~/tools/mongodb-osx-x86_64-2.4.7/sdk
    export MONGO_HOME=~/tools/mongodb-osx-x86_64-2.6.0/sdk
    export PATH=$PATH:$MONGO_HOME/bin
else
    # useful as a proxy to setup ssl, load balancing, etc.
    export APACHE_HOME=~/tools/httpd-2.2.29
    export PATH=$PATH:$APACHE_HOME/bin
fi
