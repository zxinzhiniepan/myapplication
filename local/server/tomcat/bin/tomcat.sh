#!/bin/bash
DATE=`date +'%Y-%m-%d'`
case $1 in
    "run")
        echo "tomcat is running..."
        ${CATALINA_HOME}/bin/catalina.sh run
        ;;
    "start")
        echo "tomcat is start."
        ${CATALINA_HOME}/bin/startup.sh
        ;;
    "stop")
        echo "tomcat is stop."
        ${CATALINA_HOME}/bin/shutdown.sh
        ;;
    "restart")
        echo "tomcat is restarting..."
        echo -e && \
            ${CATALINA_HOME}/bin/shutdown.sh && \
            echo -e && \
            ${CATALINA_HOME}/bin/startup.sh && \
            echo -e && \
            echo "restart tomcat"
        ;;
    "log")
        tail -f ${CATALINA_HOME}/logs/localhost.${DATE}.log
        ;;
    *)
        echo "tomcat is restarting..."
        ${CATALINA_HOME}/bin/catalina.sh $1
        ;;
esac
#/opt/tomcat/current-tomcat/bin/startup.sh $1
