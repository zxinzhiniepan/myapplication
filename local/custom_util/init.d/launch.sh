#!/bin/bash
CUSTOM_SETING_HOME=$MY_APPLICATION_HOME/local/custom_util

udiskie &
# 电源管理
xfce4-power-manager &
# 壁纸须先安装feh，并在此指定路径
#exec --no-startup-id feh --bg-scale "/home/zhanghua/MultiMedia/picture/wallpaper/aimiliya02.jpg" &
#/home/zhanghua/MultiMedia/picture/wallpaper &
sh $CUSTOM_SETING_HOME/wallpapers/wallpaper.sh &

#xxnet &
# sh /home/zhanghua/programs/XX-Net/start &
volumeicon &
fcitx-autostart &
# shadowsocks
sh $CUSTOM_SETING_HOME/proxy/shadowsocks/ss.sh &

xcompmgr -Ss -n -Cc -fF -I-10 -O-10 -D1 -t-3 -l-4 -r4 &

# 触摸设置
sh $CUSTOM_SETING_HOME/synatics/set_touchpad &
#触摸板打字防误触
syndaemon -t -k -i 1 -d &

# gtk-redshift &

# 锁定大小写键
# sleep 3s;
# changeKey &
# sh /home/zhanghua/.usr/keysym/key.sh &
# /usr/local/lib64/apache-tomcat-9.0.1/bin/startup.sh &
