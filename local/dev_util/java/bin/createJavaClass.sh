#!/bin/bash
# 这是java用来创建包和class源码的

# 字符串操作
# 提取字符串

# 时间
DATE=`date +'%Y-%m-%d %H:%M:%S'`

# 创建java源代码
function createJava() {
    # java 
    JAVATEMP=javatemp$RANDOM
    if [ ! -n "$PACKAGE" ]; then
        # 设置包的路径
        PACKAGEPATH="."
        # 初始化
        echo "/**" >> /tmp/$JAVATEMP
        echo " * @author xinzhiniepan" >> /tmp/$JAVATEMP
        echo " * @version 1.0" >> /tmp/$JAVATEMP
        echo " * @since ${DATE}" >> /tmp/$JAVATEMP
        echo " */" >> /tmp/$JAVATEMP
        echo " " >> /tmp/$JAVATEMP
    else
        # 设置包的路径
        PACKAGEPATH=${PACKAGE//./\/}
        # 初始化

        echo -e "package ${PACKAGE};\n" >> /tmp/$JAVATEMP
        echo " " >> /tmp/$JAVATEMP
        echo "/**" >> /tmp/$JAVATEMP
        echo " * @author xinzhiniepan" >> /tmp/$JAVATEMP
        echo " * @version 1.0" >> /tmp/$JAVATEMP
        echo " * @since ${DATE}" >> /tmp/$JAVATEMP
        echo " */" >> /tmp/$JAVATEMP
        echo " " >> /tmp/$JAVATEMP
    fi

    if [ ! -f "${PACKAGEPATH}/${CLASSNAME}.java" ]; then
        # 创建包
        mkdir -p $PACKAGEPATH
        touch ${PACKAGEPATH}/${CLASSNAME}.java
        cat /tmp/$JAVATEMP >> ${PACKAGEPATH}/${CLASSNAME}.java 

        # 判断是否创建接口
        if [[ $CHOOSE =~ "-" && $CHOOSE =~ "i" ]]; then
            # 是接口
            echo -e "public interface ${CLASSNAME}\n{\n\n}" >> ${PACKAGEPATH}/${CLASSNAME}.java
        else 
            if [[ $CHOOSE =~ "-" && $CHOOSE =~ "a" ]]; then    
                # 抽象类
                echo -e "public abstract class ${CLASSNAME}\n{\n\n}" >> ${PACKAGEPATH}/${CLASSNAME}.java
            else
                if [[ $CHOOSE =~ "-" && $CHOOSE =~ "m" ]]; then    
                    # 带main函数的
                    echo -e "public class ${CLASSNAME}\n{\n\tpublic static void main(String[] args)\n\t{\n\n\t}\n}" >> ${PACKAGEPATH}/${CLASSNAME}.java
                else
                    # 普通类
                    echo -e "public class ${CLASSNAME}\n{\n\n}" >> ${PACKAGEPATH}/${CLASSNAME}.java
                fi
            fi
        fi
    fi

    # 判断是否需要vim打开文件
    if [[  $CHOOSE =~ "-" && $CHOOSE =~ "e" ]]; then
        echo "class has create"
    else
        vim ${PACKAGEPATH}/${CLASSNAME}.java
    fi
    rm /tmp/$JAVATEMP
}

# 判断是否有输入参数

# 类的全名
if [ ! -n "$1" ] ; then
    echo "Please input args"
else
    if [ ! -n "$2" ] ;then
        TEMP=$1
    else
        if [[ $1 =~ "-" ]] ; then
            TEMP=$2
            CHOOSE=$1
        else
            TEMP=$1
            CHOOSE=$2
        fi
    fi
fi
# 提取class全名
TEMP=${TEMP//\//.}
CLASS=${TEMP/%.java/}

# 判断是否需要建包
if [[ $CLASS =~ "." ]] ;then

    # 提取classname
    CLASSNAME=${CLASS##*.}

    # 提取包名
    PACKAGE=${CLASS%.*}

    # 调用创建源码的函数
    createJava $CLASSNAME $PACKAGE $CHOOSE
else
    # 不需要建包
    CLASSNAME=$CLASS

    # 调用创建源码的函数
    createJava $CLASSNAME $CHOOSE
fi
