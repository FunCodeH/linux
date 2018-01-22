#! /bin/bash

echo "#################################算数运算符#########################"
echo "####################################################################"
a=10
b=20

val=`expr $a + $b`
echo "a + b: $val"

val=`expr $a - $b`
echo "a - b: $val"

val=`expr $a \* $b`
echo "a * b: $val"

val=`expr $b / $a`
echo "a / b: $val"

val=`expr $a \* $b`
echo "a * b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $a % $b`
echo "a % b: $val"

if [ $a == $b ]
then
   echo "a 等于 b"
fi

if [ $a != $b ]
then
   echo "a 不等于 b"
fi

echo "##################################关系运算符#############################"
echo "#########################################################################"
if [ $a -eq $b ]
then
   echo "a等于b"
else
   echo "a不等于b"
fi

if [ $a -ne $b ]
then
   echo "a不等于b"
else
   echo "a等于b"
fi

if [ $a -gt $b ]
then 
   echo "a大于b"
else
   echo "a小于等于b"
fi 

if [ $a -lt $b ]
then
   echo "a小于b"
else
   echo "a大于等于b"
fi

if [ $a -ge $b ]
then
   echo "a大于等于b"
else
   echo "a小于b"
fi 

if [ $a -le $b ]
then
   echo "a小于等于b"
else
   echo "a大于b"
fi

echo "##################################布尔运算符#############################"
echo "#########################################################################"
if [ $a != $b ]
then
   echo "a不等于b"
else
   echo "a等于b"
fi

if [ $a -gt 20 -o $b -gt 10 ]
then
   echo "-o 或运算符测试成功"
else
   echo "-o 或运算符测试失败"
fi

if [ $a -gt 5 -a $b -gt 10 ]
then
   echo "-a 与运算符测试成功"
else
   echo "-a 与运算符测试失败"
fi

echo "##################################逻辑运算符#############################"
echo "#########################################################################"echo "逻辑运算符|| && 与其他语言一致，不做演示"

echo "##################################字符串操作运算符#######################"
echo "#########################################################################"

str1="tom"
str2="bob"
if [ $str1 != $str2 ]
then 
   echo "字符串判断!= 测试成功"
else
   echo "字符串判断!= 测试失败"
fi

if [ $str1 = $str2 ]
then 
   echo "字符串判断= 测试失败"
else
   echo "字符串判断= 测试成功"
fi

if [ -z $str1 ]
then
   echo "字符串长度是否为0 -z 测试失败"
else
   echo "字符串长度是否为0 -z 测试成功"
fi

if [ -n $str1 ]
then
   echo "字符串长度是否为0 -n 测试成功"
else
   echo "字符串长度是否为0 -n 测试失败"
fi

if [ $str1 ]
then
   echo "字符串是否为空测试成功"
else
   echo "字符串是否为空测试失败"
fi


