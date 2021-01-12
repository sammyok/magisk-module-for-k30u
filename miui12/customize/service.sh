#!/system/bin/sh
sleep 5

am kill mdnsd
killall -9 mdnsd

am kill mdnsd.rc
killall -9 mdnsd.rc

#freeze
pm disable com.miui.analytics
