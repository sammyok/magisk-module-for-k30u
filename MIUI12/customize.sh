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
/system/app/Joyose
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
/system/product/app/aiasst_service
/system/product/app/talkback
/system/product/priv-app/EmergencyInfo
/system/priv-app/VoiceTrigger
/system/priv-app/VoiceUnlock
/system/priv-app/VoiceCommand
"

ui_print "

Done.
"
