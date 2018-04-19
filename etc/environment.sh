#!/usr/bin/env bash
export MY_APPLICATION_HOME=/opt/myapplication
export MY_BIN_HOME=/opt/mybin
export MY_SCRIPT_PATH=/opt/bin/script

# register applications
# initial 

# PATH
export PATH=$PATH:$MY_APPLICATION_HOME/bin:$MY_SCRIPT_PATH

# tmux
source $HOME/.tmuxinator/.tmuxinator.zsh

# jdk
source $MY_APPLICATION_HOME/local/dev_util/java/etc/java_path.sh

# tomcat
source $MY_APPLICATION_HOME/local/server/tomcat/etc/tomcat_profile.sh

# mysql
source $MY_APPLICATION_HOME/local/database/mysql/etc/mysql.sh

# gradle
alias createJava="source createJava"
