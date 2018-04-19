#export  CATALINA_BASE=/usr/local/lib64/apache-tomcat-9.0.1 
#export  CATALINA_HOME=/usr/local/lib64/apache-tomcat-9.0.1
#alias createsite="~/.usr/tomcat/createsite"
#alias tomcatstart="$CATALINA_BASE/bin/startup.sh"
#alias tomcatstop="$CATALINA_BASE/bin/shutdown.sh"
#export  CATALINA_BASE=/opt/tomcat/apache-tomcat-9.0.2 
#export  CATALINA_HOME=/opt/tomcat/apache-tomcat-9.0.2

#export  CATALINA_BASE=/opt/tomcat/current-tomcat 
#export  CATALINA_HOME=/opt/tomcat/current-tomcat
TOMCAT_HOME=/opt/mybin/tomcat/apache-tomcat-9.0.7

export CATALINA_BASE=${TOMCAT_HOME}
export CATALINA_HOME=${TOMCAT_HOME}
#export CATALINA_TEMPDIR=/opt/servers/tomcat/current-tomcat/bin
#alias createsite="~/.usr/tomcat/createsite"

#alias tomcatrun="$CATALINA_BASE/bin/catalina.sh run"
#alias tomcatstart="$CATALINA_BASE/bin/startup.sh"
#alias tomcatstop="$CATALINA_BASE/bin/shutdown.sh"
alias tomcatrun="tomcat run"
alias tomcatstart="tomcat start"
alias tomcatstop="tomcat stop"

#实时查看log日志
alias tomcatlogs="tomcat log"
