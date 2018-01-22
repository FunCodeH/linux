#!/bin/bash
####################基本语法############################
########################################################
echo "Hello shell"   #echo用于打印输出

your_name="bob"      #定义变量
readonly your_name   #设置变量为只读

echo your_name       #这样打印出的结果是your_name,不是变量的值
echo "---------------"
echo $your_name      #打印变量值
echo "---------------"

your_name="tiky"  #ready only ,can't change

unset your_name     #重置变量，相当于删除变量，后面不可以在引用
echo ${your_name}

for skill in ada coffe action java;do  #循环
     echo "I am good at ${skill}script"    #在双引号里面调用变量
done

str="hello, I konw you are \"${your_name}\"! "  #转义字符的使用
echo ${str}    
echo ${#str}   #get length of str

var="http://www.baidu.com/linux/linux-shell-variable.html" #演示字符串截取
s1=${var%%t*}
s2=${var%t*}
s3=${var%%.*}
s4=${var#*/}
s5=${var##*/}

echo "s1:\"${s1}\"!"
echo "s2:\"${s2}\"!"
echo "s3:\"${s3}\"!"
echo "s4:\"${s4}\"!"
echo "s5:\"${s5}\"!"

##########参数传递，通过命令行执行脚本传入，例如:./test.sh 1 2 3############
############################################################################
#演示参数的传递，参数在执行脚本时，从命令行传入,注意第0个参数为执行的文件名
echo "参数$0"
echo "参数$1"
echo "参数$2"

echo "参数个数$#"
echo "参数按字符串传入$*"
for i in "$*";do
	echo ${i}
done

echo "参数按字符串输入,但是每个字符带引号$@"
for i in "$@";do
	echo ${i}
done

echo "脚本运行进程ID号$$"

##################################数组操作#################################
###########################################################################
my_array=(tom bob nicy)    #注意数组元素各个之间用空格隔开，不能使用空格，这一点和其他编程语言有区别
echo "第一个元素为: ${my_array[0]}"
echo ${my_array[0]}     #使用下标获取数组元素
echo ${my_array[@]}     #获取所有元素
echo ${#my_array[@]}    #获取数组长度
