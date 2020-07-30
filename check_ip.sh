#老板交给我的任务，写一个检测ip是在线的脚本，干
#这个脚本修改完了要提交到master上
for i in {150..230}
do
        ping -c 4 -i 0.2 -W 1 192.168.1.$i &> /dev/null
        if [ $? -eq 0 ];then
                echo "192.168.1.$i is up!"
        else
                echo "192.168.1.$i is down!"
        fi
done

