# !/bin/bash

testFunc(){
    echo "第一个参数为 $1 !"
    echo "第十二个参数为 $12 !"
    echo "第十一参数为 $11 !"    #注意获取大于10的参数时需要用${}
    echo "参数个数： $# 个!"
    echo "输出所有的参数 $* !"
    return $(($1+${11}))
}
testFunc 1 2 3 4 5 6 7 8 9 10 19 12 13 14
echo "函数返回的结果是：$?"   #通过#？获取函数返回结果
