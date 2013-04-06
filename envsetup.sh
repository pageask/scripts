#!/bin/bash -
# envsetup.sh
#
# author : hzhiwen
# date   : 20120625
#

export TOOLS_HOME=/home/pageask/tools
export PATH=$TOOLS_HOME:$PATH

export JAVA_HOME=$TOOLS_HOME/jdk1.6.0_39
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

export DEX2JAR_HOME=$TOOLS_HOME/dex2jar
export PATH=$DEX2JAR_HOME:$PATH

export JDGUI_HOME=$TOOLS_HOME/jd-gui
export PATH=$JDGUI_HOME:$PATH

export ANDROID_HOME=$TOOLS_HOME/android-sdks
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH

export ANT_HOME=$TOOLS_HOME/ant
export PATH=$ANT_HOME/bin:$PATH

export SMALI_HOME=$TOOLS_HOME/smali
export PATH=$SMALI_HOME:$PATH

export USE_CCACHE=1

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$TOOLS_HOME/depot_tools:$PATH"
