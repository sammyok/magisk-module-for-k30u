#!/system/bin/sh
sleep 5

am kill mdnsd
killall -9 mdnsd

am kill mdnsd.rc
killall -9 mdnsd.rc

#冻结（感谢风雪大佬）
pm disable com.miui.analytics