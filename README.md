# sh-demo

直接执行命令

date
who

创建变量，如果是字符串的话，有空格的一定要用双引号，否则会被解析成命令

NDK=10
text="i love you"

命令的执行结果作为变量的值，例如以当前时间作为文件名

text1=`date`
text2=$(who)

输出

echo $NDK
echo $text
echo $text1
echo $text2

字符串拼接，同理：有空格需要用双引号

echo "$text very much"

如果需要输出$的话，需要使用转义字符

echo "\$"



运行两种方式

1  ./bash.sh

2  sh bash.sh

如果sh command not found 或者 sh cannot open file

程序中的/r/n 换行符限制

![img](http://p4n1d4izv.bkt.clouddn.com/images/sh1.png)

![img](http://p4n1d4izv.bkt.clouddn.com/images/sh2.png)

命令退出的状态

命令执行退出的状态：

1. 0 成功
2. 127 没有找到命令
3. 1 未知错误
4. 126 命令不可执行

查看与退出状态指定：

查看上一次命令的执行状态echo $?在shell脚本中，自己指定退出的状态exit 状态码

![img](http://p4n1d4izv.bkt.clouddn.com/images/sh3.png)

grep命令是查找命令，例如查找test文本在test.txt中所在的行数：grep -n test test.txt

可以结合test命令，如果条件成立，test命令以状态为0退出，if条件成立。

test命令简单形式，用中括号，注意空格要加上

[ $a -gt $b ][ ]要加上空格,程序才能运行

比较大小：

```
#!/bin/bash

a=10b=5

test命令简单形式

if [ a -gt b ]

then    

	echo "a  greater than  b"

else    

	echo "a  smaller  than  b"

fi
```

test数值比较：

1. -gt 大于
2. -eq 等于
3. -le 小于
4. -ne 不等于

判空：

\#!/bin/bash

str1=""if [ str1 = "" ]                                                           

then    

​	echo "有内容"else    echo "没内容"fi

test字符串比较：

1. str1 == str2
2. str1 != str2
3. str1 < str2
4. -n str1 长度是否非0
5. -z str1 长度是否为0

检查目录是否存在：

```
#!/bin/bash

mydir=/usr/jason

-d检查目录是否存在

if [ -d $mydir ]

then    

	echo "$mydir exist"    

	cd $mydir    

	ls

else    echo "mydir not exist"

fi
```

test文件比较：

1. -d 检查是否存在，并且是一个目录
2. -e 检查file是否存在
3. -f 检查是否存在，并且是一个文件
4. -r 检查是否存在，并且可读，余此类推：-w、-x
5. file1 -nt file2 file1比file2新
6. file1 -ot file2 file1比file2旧

case语句

基本格式是：

case命令case 变量 inpattern1) 命令;;pattern2) 命令;;*) 默认命令;;esac

例子：

```
#!/bin/bash

testuser=rose

case $testuser in

rose)    echo "hi,$testuser";;

ricky)    echo "hello, ricky";;

*)    echo "defaults";;

esac
```

![img](http://p4n1d4izv.bkt.clouddn.com/images/sh4.png)

While循环

基本格式：

while test command（或者[]）do    命令done

例子：

```
#!/bin/bash

a=10

while [ $a -gt 0 ]

do    

	echo "num:$a"    

	赋值不用使用$符号    

	a=[ a - 1 ]done
```

