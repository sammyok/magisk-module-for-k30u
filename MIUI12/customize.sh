AUTOMOUNT=true

MIUI="`getprop ro.miui.ui.version.name`"
author="`grep_prop author $TMPDIR/module.prop`"
    ui_print "###############################"
    ui_print "- Module Name: $MODNAME "
    ui_print "###############################"
    #MIUI check
    [ $MIUI != "V12" ] && echo "Sorry, this module is for MIUI12 only）" && exit 1
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
/system/app/BasicDreams
/system/app/BuiltInPrintService
/system/app/CatchLog
/system/app/Cit
/system/app/HTMLViewer
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
/system/app/PrintSpooler
/system/app/SecurityInputMethod
/system/app/SimAppDialog
/system/app/TSMClient
/system/app/ThemeManager
/system/app/TouchAssistant
/system/app/Traceur
/system/app/WAPPushManager
/system/app/WMService
/system/app/YouDaoEngine
/system/app/greenguard
/system/app/mab
/system/app/mi_connect_service
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
/system/priv-app/PersonalAssistant
/system/priv-app/QuickSearchBox
/system/priv-app/Stk1
/system/priv-app/UserDictionaryProvider
/system/priv-app/MiuiVideo
/system/priv-app/YellowPage
/system/product/app/PhotoTable
/system/product/app/aiasst_service
/system/product/app/talkback
/system/product/priv-app/EmergencyInfo
/system/priv-app/VoiceTrigger
/system/priv-app/VoiceUnlock
/system/priv-app/VoiceCommand
/system/app/CertInstaller
/system/app/LiveWallpapersPicker
/system/app/UpnpService
/system/app/WallpaperBackup
/system/app/MiuiFrequentPhrase
/system/app/MiuiAudioMonitor
/system/app/ThemeModule
/system/priv-app/MtkVoiceWakeupInteraction
/system/priv-app/Tag
/system/priv-app/SharedStorageBackup
/system/priv-app/StatementService
/system/product/priv-app/WallpaperCropper
"

ui_print "

Done.
"
