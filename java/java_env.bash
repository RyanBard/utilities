#!/bin/bash

if [ `uname` == 'Darwin' ]
then
    # setup all versions of java for later
    export JAVA6_HOME=$(/usr/libexec/java_home -v1.6)
    export JAVA7_HOME=$(/usr/libexec/java_home -v1.7)
    export JAVA8_HOME=$(/usr/libexec/java_home -v1.8)
    # add convenient aliases for switching java versions
    alias java6='export JAVA_HOME=$JAVA6_HOME && export PATH=$PATH:$JAVA_HOM/bin'
    alias java7='export JAVA_HOME=$JAVA7_HOME && export PATH=$PATH:$JAVA_HOM/bin'
    alias java8='export JAVA_HOME=$JAVA8_HOME && export PATH=$PATH:$JAVA_HOM/bin'
    # default to java8
    export JAVA_HOME=$JAVA8_HOME
else
    export JAVA_HOME=TODO
fi

export PATH=$PATH:$JAVA_HOME/bin

# jmeter is a nice testing tool written in java
export JMETER_HOME=~/tools/apache-jmeter-2.13
export PATH=$PATH:$JMETER_HOME/bin

# groovy is a dynamic language on the JVM
export GROOVY_HOME=~/tools/groovy-TODO
export PATH=$PATH:$GROOVY_HOME/bin

# gradle is a good groovy/java build tool
export GRADLE_HOME=~/tools/gradle-2.2.1
export PATH=$PATH:$GRADLE_HOME/bin

# maven is a popular java build tool
export M2_HOME=~/tools/apache-maven-3.0.5
export PATH=$PATH:$M2_HOME/bin

# ant is an older java build tool
export ANT_HOME=~/tools/apache-ant-1.9.4
export PATH=$PATH:$ANT_HOME/bin

# tomcat is a popular java servlet container
export TC_HOME=~/tools/apache-tomcat-7.0.62
export PATH=$PATH:$TC_HOME/bin


# clean up existing state in tomcat (includes work, exploded war, and the war)
# TODO - include temp directory as well
function tomcat_clean() {
    module=$1
    destination=$2

    if [ -z $module ]
    then
        echo "Please specify a module to clean."
        return 1
    fi

    if [ -z $destination ]
    then
        echo "Please specify a destination to clean module from."
        return 2
    fi

    echo "rm -rf $destination/work/Catalina/localhost/$module/ &&" &&
        rm -rf $destination/work/Catalina/localhost/$module/ &&
        echo "rm -rf $destination/webapps/$module $destination/webapps/$module.war &&" &&
        rm -rf $destination/webapps/$module $destination/webapps/$module.war

    return $?
}

# verify params are specified for deploying to tomcat
function check_deploy_params() {
    module=$1
    destination=$2

    if [ -z $module ]
    then
        echo "Please specify a module to deploy."
        return 1
    fi

    if [ -z $destination ]
    then
        echo "Please specify a destination to deploy to."
        return 2
    fi

    return 0
}

# verify params for deploying to tomcat and clean existing state in tomcat
function check_params_and_clean() {
    module=$1
    destination=$2

    check_deploy_params $module $destination

    if [ "$?" -ne "0" ]
    then
        return $?
    fi

    tomcat_clean $module $destination

    if [ "$?" -ne "0" ]
    then
        return $?
    fi

    return 0
}

# deploy module (war) to tomcat
function deploy() {
    module=$1
    destination=$2

    check_params_and_clean $module $destination

    if [ "$?" -ne "0" ]
    then
        return $?
    fi

    exclude=$3

    if [ -z $exclude ]
    then
        echo "Error: you didn't specify an exclude!"
        return 3
    fi

    my_cmd="find $PWD -type f -name '$module.war' | grep '/$exclude/' xargs -I '{}' cp {} $destination/webapps/"

    echo $my_cmd &&
        eval $my_cmd

    return $?
}

# deploy module (war) built by maven to tomcat
function mdeploy() {
    module=$1
    destination=$2
    exclude='build'
    deploy $module $destination $exclude
    return $?
}

# deploy module (war) built by gradle to tomcat
function gdeploy() {
    module=$1
    destination=$2
    exclude='target'
    deploy $module $destination $exclude
    return $?
}

# wrapper around jmap: mostly to rememeber the common options to use
function jmapit() {
    jpid=$1

    if [ -z $2 ]
    then
        out_file='hdump.hprof'
    else
        out_file=$2
    fi

    jmap -dump:format=b,file=$out_file $jpid
    return $?
}
