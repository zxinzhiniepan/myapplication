# java8
# export JAVA_HOME=/opt/developments/java/utils/jdk/jdk1.8.0_162
# java9
#export JAVA_HOME=/opt/developments/java/utils/jdk/jdk-9.0.4
# export PATH=$JAVA_HOME/bin:$PATH
# export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'
# 让sqlplus能使用方向键查看历史

# 环境设置
export ORACLE_BASE=/home/oracle/app/oracle
export ORACLE_HOME=/home/oracle/app/oracle/product/db
export ORACLE_INVENTORY=/home/oracle/app/oraInventory
export ORACLE_SID=orcl
export ORACLE_BASE ORACLE_HOME ORACLE_SID
export PATH=$ORACLE_HOME/bin:$PATH
export LD_LIBRARY_PATH=$ORACLE_HOME/lib:$LD_LIBRARY_PATH
export TMP=/tmp
alias sqlplus="rlwrap sqlplus"
# 乱码设置
export NLS_LANGUAGE=AMERICAN_AMERICA.UTF8
export NLS_LANG=AMERICAN_AMERICA.UTF8

# maven
# export MAVEN_HOME=/usr/local/lib64/apache-maven
# export PATH=${PATH}:${MAVEN_HOME}/bin

# gradle
#export GRADLE_HOME=/opt/gradle/gradle
#export PATH=${PATH}:${GRADLE_HOME}/bin

# groovy
#set groovy environment
# export GROOVY_HOME="/opt/groovy/groovy"
# export PATH=${GROOVY_HOME}/bin:${PATH}

# Junit java测试工具
#export JUNIT_HOME=/home/zhanghua/.java/tools/junit
#export CLASSPATH=$CLASSPATH:$JUNIT_HOME/junit-4.12.jar:$JUNIT_HOME/hamcrest-core-1.3.jar:.
