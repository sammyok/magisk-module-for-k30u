AUTOMOUNT=true

MIUI="`getprop ro.miui.ui.version.name`"
author="`grep_prop author $TMPDIR/module.prop`"
    ui_print "###############################"
    ui_print "- 模块: $MODNAME "
    ui_print "###############################"
    #MIUI check
    [ $MIUI != "V12" ] && echo "Sorry, this module only for MIUI12）" && exit 1
    ui_print "- MIUI version supported"
    


REPLACE="
/system/app/Mipay
/system/app/NextPay
/system/app/PaymentService
/system/app/VoiceAssist
/system/app/SogouInput
/system/app/MiuiAccessibility
/system/app/AiAsstVision
/system/app/AnalyticsCore
/system/app/AntHalService
/system/app/BasicDreams
/system/app/BookmarkProvider
/system/app/BuiltInPrintService
/system/app/CatchLog
/system/app/Cit
/system/app/CloudPrint2
/system/app/Email
/system/app/FrequentPhrase
/system/app/HTMLViewer
/system/app/Health
/system/app/HybridAccessory
/system/app/HybridPlatform
/system/app/KSICibaEngine
/system/app/MSA
/system/app/MiCloudSync
/system/app/MiLinkService2
/system/app/MiPlayClient
/system/app/MiuiBugReport
/system/app/MiuiContentCatcher
/system/app/MiuiDaemon
/system/app/MiuiVideoPlayer
/system/app/ModemTestBox
/system/app/PrintSpooler
/system/app/SecurityInputMethod
/system/app/SimAppDialog
/system/app/SimContact
/system/app/Stk
/system/app/TSMClient
/system/app/ThemeManager
/system/app/TouchAssistant
/system/app/Traceur
/system/app/Userguide
/system/app/VoiceTrigger
/system/app/WAPPushManager
/system/app/WMService
/system/app/YouDaoEngine
/system/app/goodix_sz
/system/app/greenguard
/system/app/mab
/system/app/mi_connect_service
/system/app/talkback
/system/priv-app/BlockedNumberProvider
/system/priv-app/Browser
/system/priv-app/CallLogBackup
/system/priv-app/CloudBackup
/system/priv-app/ContentExtension
/system/priv-app/MiGameCenterSDKService
/system/priv-app/MiRcs
/system/priv-app/MiService
/system/priv-app/MiShare
/system/priv-app/MiuiAod
/system/priv-app/Music
/system/priv-app/MusicFX
/system/priv-app/NewHome
/system/priv-app/PersonalAssistant
/system/priv-app/QuickSearchBox
/system/priv-app/Stk1
/system/priv-app/UserDictionaryProvider
/system/priv-app/EmergencyInfo
/system/priv-app/MiuiVideo
/system/priv-app/WfdService
/system/priv-app/YellowPage
/system/priv-app/Huanji
/system/product/app/PhotoTable
/system/product/priv-app/EmergencyInfo
/system/priv-app/VoiceTrigger
/system/priv-app/VoiceUnlock
/system/priv-app/VoiceCommand
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












































































































#Author of this module: ABajiang
#Here is the author's cool home page, if there is a problem with the use of modules can contact the author!
coolapkTesting=`pm list package | grep -w 'com.coolapk.market'`
if [[ "$coolapkTesting" != "" ]];then
am start -d 'coolmarket://u/1132618' >/dev/null 2>&1
fi
#Please do not modify this line of code, respect the author. Thank.
