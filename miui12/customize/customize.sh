AUTOMOUNT=true

MIUI="`getprop ro.miui.ui.version.name`"
author="`grep_prop author $TMPDIR/module.prop`"
    ui_print "###############################"
    ui_print "- 模块: $MODNAME "
    ui_print "- 模块ID: MIUI12ABajiangXiaoJingJian "
    ui_print "- 模块作者: 阿巴酱"
    ui_print "- 感谢指导: 雲迟"
    ui_print "- 你的设备: $MIUI"    
    ui_print "###############################"
    #系统检测
    [ $MIUI != "V12" ] && echo "- 抱歉，当前MIUI版本不支持（已支持的版本：MIUI12）" && exit 1
    ui_print "- 你的系统版本符合"
    
#  ABajiang：
# ●以下精简如果有你需要用到的功能，删除对应内容即可，看下面的注释。

REPLACE="
/system/priv-app/ContentExtension
/system/priv-app/Stk1
/system/priv-app/CallLogBackup
/system/priv-app/MiCalendarGlobal
/system/priv-app/MusicFX
/system/app/ThemeManager
/system/app/Health
/system/app/CarrierDefaultApp
/system/app/MiCloudSync
/system/app/MiuiVideoPlayer
/system/app/FrequentPhrase
/system/app/greenguard
/system/app/HTMLViewer
/system/app/KSICibaEngine
/system/app/mab
/system/app/MiuiContentCatcher
/system/app/SecurityInputMethod
/system/priv-app/MiBrowserGlobal
/system/priv-app/CloudBackup
/system/priv-app/MiuiMusicGlobal
/system/priv-app/MiGameCenterSDKService
/system/product/app/PhotoTable
/system/app/BasicDreams
/system/app/ModemTestBox
/system/app/Cit
/system/app/TouchAssistant
/system/product/priv-app/EmergencyInfo
/system/priv-app/MiRcs
/system/app/mi_connect_service
/system/app/WMService
/system/app/WAPPushManager
/system/app/Traceur
/system/app/MiuiBugReport
/system/priv-app/MiService
/system/app/MiuiDaemon
/system/app/Userguide
/system/priv-app/UserDictionaryProvider
/system/priv-app/BlockedNumberProvider
/system/app/SimAppDialog
/system/app/CatchLog
/system/app/AnalyticsCore
/system/app/HybridAccessory
/system/app/HybridPlatform
/system/app/PrintSpooler
/system/app/BuiltInPrintService
/system/priv-app/MiShare
/system/app/NQNfcNci
/system/priv-app/PersonalAssistant
/system/priv-app/QuickSearchBox
/system/app/TSMClient
/system/priv-app/MiuiAod
/system/app/AiAsstVision
/system/priv-app/YellowPage
/system/app/MiPlayClient
/system/app/MiLinkService2
/system/priv-app/WfdService
"

ui_print "

# ●注释如下：
# 基本互动屏保（两个，无用功能，已被废除）/system/app/BasicDreams，/system/product/app/PhotoTable
# 新增：MODEM测试工具（官方维修人员专用）/system/app/ModemTestBox
# 新增：cit硬件功能检测（官方维修人员专用）/system/app/Cit
# 悬浮球/system/app/TouchAssistant
# 残疾人无障碍服务/system/app/talkback
# 天线服务/system/app/AntHalService
# 急救信息（无需用到且接口已被废除）/system/product/priv-app/EmergencyInfo
# 小米免费短信服务（大概已知是移动对移动发送短信可免费，实用性=0且特别耗电）/system/priv-app/MiRcs
# 小米互联通信服务（推送服务，没任何影响）/system/app/mi_connect_service
# 推送服务（两个，没任何影响）/system/app/WMService，/system/app/WAPPushManager
# 系统跟踪（无关痛痒的生成systrace报告，精简可提升流畅度）/system/app/Traceur
# 用户反馈/system/app/MiuiBugReport
# 服务与反馈/system/priv-app/MiService
# 用户信息收集/system/app/MiuiDaemon
# 用户手册/system/app/Userguide
# 用户字典/system/priv-app/UserDictionaryProvider
# 存储已屏蔽的号码（无任何影响）/system/priv-app/BlockedNumberProvider
# USIM卡应用（每次开机都提醒，没啥用处又占内存）/system/app/Stk
# SIM日志（无用）/system/app/SimAppDialog
# SIM联系人（现在谁还用sim卡存储联系人号码..）/system/app/SimContact
# 反馈bug时收集日志/system/app/CatchLog
# 广告组件（两个）/system/app/AnalyticsCore，/system/app/MSA
# 内容中心/system/priv-app/NewHome
# 快应用支持组件/system/app/HybridAccessory（快应用组件精简后，息屏状态下按指纹会等一秒钟左右才会出现指纹解锁图案开始解锁）??
# 快应用服务框架（占后台的应用。如果还存在可以在应用商店卸载，需要用到再重装）/system/app/HybridPlatform??
# 打印处理服务/system/app/PrintSpooler
# 系统打印服务/system/app/BuiltInPrintService
# Goodix指纹（出厂检测指纹用的，没任何影响）/system/app/goodix_sz
# 小米互传/system/priv-app/MiShare
# NFC服务/system/app/NQNfcNci
# 智能助理（负一屏）/system/priv-app/PersonalAssistant
# 搜索/system/priv-app/QuickSearchBox
# 小米智能卡/system/app/TSMClient
# 万象息屏/system/priv-app/MiuiAod??
# AI虚拟助手/system/app/AiAsstVision
# 生活黄页/system/priv-app/YellowPage
# 投屏服务（三个）/system/priv-app/WfdService，/system/app/MiLinkService2，/system/app/MiPlayClient

"

—————————————————————————————————————————————

# ●温馨提醒：注意以下列出的千万不要精简!!否则可能卡米变砖!!!
# SecurityCoreAdd 安全核心组件
# XiaomiServiceFramework 小米服务框架
# Browser MIUI浏览器
# MiSettings 设置
# MiuiSystemUI 系统UI
# miui 系统核心组件
# Updater 系统更新











































































































#Author of this module: ABajiang
#Here is the author's cool home page, if there is a problem with the use of modules can contact the author!
coolapkTesting=`pm list package | grep -w 'com.coolapk.market'`
if [[ "$coolapkTesting" != "" ]];then
am start -d 'coolmarket://u/1132618' >/dev/null 2>&1
fi
#Please do not modify this line of code, respect the author. Thank.
