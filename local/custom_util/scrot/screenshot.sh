#!/bin/bash
# scrot -d .5 -q 100 'scrot-%Y%m%d-%H%M%S_$wx$h.jpg' -e 'mv $f /home/zhanghua/Mnt/Datas/MultiMedia/picture/scrot/'
if [ $1 == "-f" ]; then
    # 截图全屏
    scrot -d .5 -q 100 'scrot-%Y%m%d-%H%M%S_$wx$h.jpg' -e 'mv $f /home/zhanghua/Mnt/Datas/MultiMedia/picture/scrot/'
else
    # 截图选择部分
    scrot -d .5 -s -q 100 'scrot-%Y%m%d-%H%M%S_$wx$h.jpg' -e 'mv $f /home/zhanghua/Mnt/Datas/MultiMedia/picture/scrot/'
fi
