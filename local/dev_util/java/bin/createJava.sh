#!/bin/bash
BASEDIR=`pwd`
# echo "Please input name of project"
PROJECT=$1
echo $1
PROJECTPATH=${BASEDIR}"/${PROJECT}"
GRADLE_HOME=/opt/myapplication/local/dev_util/gradle
mkdir -p ${BASEDIR}/${PROJECT}
cd  ${PROJECTPATH}
case $2 in
    "noframe")
        gradle init && rm build.gradle && cp $GRADLE_HOME/etc/build_noframe.gradle ${BASEDIR}/${PROJECT}/build.gradle 
        ;;
    "ssh")
        gradle init && rm build.gradle && cp $GRADLE_HOME/etc/build_ssh.gradle ${BASEDIR}/${PROJECT}/build.gradle 
        ;;
    "ssm")
        gradle init && rm build.gradle && cp $GRADLE_HOME/etc/build_ssm.gradle ${BASEDIR}/${PROJECT}/build.gradle 
        ;;
    *)
    gradle init && rm build.gradle && cp -r $GRADLE_HOME/etc/build.gradle ${BASEDIR}/${PROJECT}/build.gradle 
    ;;
esac
# 创建index
gradle iWP

#不创建index
#case $3 in
#    noindex)
#        gradle iWP
#        ;;
#    *)
#        gradle initDir
#        ;;
#esac
#
WEBSRC=${BASEDIR}/${PROJECT}/src/main/webapp
# cp -r /home/zhanghua/.java/configs/tomcat/web.xml ${WEBSRC}/WEB-INF/
# cp -r /home/zhanghua/.java/configs/tomcat/error ${WEBSRC}/
# mv build.xml ${PROJECTPATH}/ 
#ln -s /opt/tomcat/current-tomcat/logs/catalina.out ${BASEDIR}/${PROJECT}/build/logs
