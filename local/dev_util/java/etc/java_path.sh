JDK_BASE=/opt/mybin/jdk

# java8
export JAVA_HOME=${JDK_BASE}/jdk1.8.0_162

# java9
#export JAVA_HOME=${JDK_BASE}/jdk-9.0.4

# java10
#export JAVA_HOME=${JDK_BASE}/jdk-10

export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'

# maven
# export MAVEN_HOME=/usr/local/lib64/apache-maven
# export PATH=${PATH}:${MAVEN_HOME}/bin
#JAVA_UTIL_DIR=$I_CONFIGURATIONS_HOME/developments/java/scripts/shell
#alias createjava="/opt/configurations/developments/java/scripts/shell/createjava"
#alias createJavaClass="/opt/configurations/developments/java/scripts/shell/createJavaClass.sh"
#alias javatree="/opt/configurations/developments/java/scripts/shell/javatree"

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
