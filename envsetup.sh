#!/bin/bash -
# envsetup.sh
#
# author : hzhiwen
# date   : 20120625
#

export TOOLS_HOME=/home/pageask/tools
export PATH=$TOOLS_HOME:$PATH

export JAVA_HOME=$TOOLS_HOME/java/jdk1.6.0_31
export PATH=$JAVA_HOME/bin:$PATH

export SCRIPTS_HOME=$TOOLS_HOME/scripts
export PATH=$SCRIPTS_HOME:$PATH

export ECLIPSE_HOME=$TOOLS_HOME/eclipse
export PATH=$ECLIPSE_HOME:$PATH

export M2_HOME=$TOOLS_HOME/maven/apache-maven-3.0.4
export M2=$M2_HOME/bin
#export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$M2:$PATH

export APKTOOL_HOME=$TOOLS_HOME/apktool
export PATH=$APKTOOL_HOME:$PATH

