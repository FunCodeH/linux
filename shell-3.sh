# !/bin/bash
echo "############################流程控制之if#################################"

a=30
b=30

if [ $a -eq $b ]
then
   echo "a等于b"
elif [ $a -gt $b ]
then
   echo "a大于b"
else
   echo "a小于b"
fi

if test $a -eq $b     ####第二种写法，用test代替[]括号
then 
   echo "a等于b"
else
   echo "a不等于b"
fi

echo "############################流程控制之for################################"

for var in 1 2 3 4 5 
do
   echo $var
done

echo "############################流程控制之while##############################"

int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done

c=5
d=1
while(( $c>=$d ))
do
   echo $c
   let "c--"
done

echo "############################流程控制之while##############################"
echo '输入 1 或2:'
echo '输入为:'
read aNum
case $aNum in
    1)  echo 'input 1'
    ;;
    2)  echo 'input 2'
    ;;
    *)  echo 'error'
    ;;
esac
