.class public Lcom/samsung/android/knox/SemPersonaManager;
.super Ljava/lang/Object;
.source "SemPersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;,
        Lcom/samsung/android/knox/SemPersonaManager$AppType;
    }
.end annotation


# static fields
.field public static final ACCESS_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final ACCESS_TYPE_SDCARD:Ljava/lang/String; = "sdcard"

.field public static final ACTION_CHANGE_CREDENTIAL_SCREEN:Ljava/lang/String; = "com.samsung.android.knox.CHANGE_CREDENTIAL_SCREEN"

.field public static final ACTION_CONFIRM_PROFILE_CREDENTIAL_WITH_USER:Ljava/lang/String; = "com.samsung.android.knox.COMFIRM_CREDENTIAL"

.field public static final ACTION_LOCKDOWN_SCREEN:Ljava/lang/String; = "com.samsung.android.knox.LOCKDOWN_SCREEN"

.field private static final ACTION_SWITCH_PROFILE:Ljava/lang/String; = "com.samsung.android.knox.ACTION_SWITCH_PROFILE"

.field private static final ADAPT_SOUND_PACKAGE_NAME:Ljava/lang/String; = "com.sec.hearingadjust"

.field public static final APPSEPARATION_PACKAGE:Ljava/lang/String; = "com.samsung.android.appseparation"

.field public static final APP_SEPARATION_APP_LIST:Ljava/lang/String; = "APP_SEPARATION_APP_LIST"

.field public static final APP_SEPARATION_COEXISTENCE_LIST:Ljava/lang/String; = "APP_SEPARATION_COEXISTANCE_LIST"

.field public static final APP_SEPARATION_OUTSIDE:Ljava/lang/String; = "APP_SEPARATION_OUTSIDE"

.field public static final ATTR_HAS_PREMIUM_CONTAINER_LICENSE_ACTIVATED:I = 0x40000000

.field public static final BLOCKED_SHARING_COMP_COMMON:Ljava/lang/String; = "blockedcompcommon"

.field public static final BLOCKED_SHARING_COMP_FOR_OWNER:Ljava/lang/String; = "blockedcompknox"

.field public static final BLOCKED_SHARING_COMP_FOR_SECUREFOLDER:Ljava/lang/String; = "blockedcompsecurefolder"

.field public static final BOOKMARKS:Ljava/lang/String; = "Bookmarks"

.field public static final CALLER_DISPLAY_NAME:Ljava/lang/String; = "caller_display_name"

.field public static final CALLER_PHONE_NUMBER:Ljava/lang/String; = "caller_phone_number"

.field public static final CALLER_PHOTO:Ljava/lang/String; = "caller_photo"

.field public static final CALL_LOG:Ljava/lang/String; = "CallLog"

.field public static final CLIPBOARD:Ljava/lang/String; = "Clipboard"

.field public static final CONTACT_OWNER_ID:Ljava/lang/String; = "contact_owner_id"

.field public static final CONTAINER_COM_TYPE:I = 0x3

.field public static final CONTAINER_CORE_ADMIN_RECEIVER:Ljava/lang/String; = "com.samsung.android.knox.containercore.KnoxAdminCommandReceiver"

.field public static final CONTAINER_CORE_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containercore"

.field public static final CONTAINER_DEFAULT_TYPE:I = 0x1

.field public static final CONTAINER_DESKTOP_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containerdesktop"

.field public static final CONTAINER_LWC_TYPE:I = 0x2

.field public static final CONTAINER_TYPE_CONTAINER_ONLY:I = 0x6

.field public static final CONTAINER_TYPE_LEGACY:I = 0x5

.field public static final CONTAINER_TYPE_MY_KNOX:I = 0x1

.field public static final CONTAINER_TYPE_NONE:I = 0x0

.field public static final CONTAINER_TYPE_PREMIUM:I = 0x4

.field public static final CONTAINER_TYPE_PRIME:I = 0x3

.field public static final CONTAINER_TYPE_SECURE_FOLDER:I = 0x2

.field public static final CUSTOM_BADGE_ICON:Ljava/lang/String; = "custom-badge-icon"

.field public static final CUSTOM_CONTAINER_ICON:Ljava/lang/String; = "custom-container-icon"

.field public static final CUSTOM_NAME_ICON:Ljava/lang/String; = "custom-name-icon"

.field public static final CUSTOM_PERSONAL_MODEL_LABEL:Ljava/lang/String; = "custom-name-personal-mode"

.field private static final DEBUG:Z

.field public static final DEFAULT_APPS:Ljava/lang/String; = "DefaultApps"

.field public static final DEFAULT_SDP_ACTIVATION_TIME:I = 0x1388

.field public static final ENABLE_EULA:Ljava/lang/String; = "enable_eula"

.field public static final ERROR_CREATE_PERSONA_ADMIN_ACTIVATION_FAILED:I = -0x3f1

.field public static final ERROR_CREATE_PERSONA_ADMIN_INSTALLATION_FAILED:I = -0x3f0

.field public static final ERROR_CREATE_PERSONA_EC_MAX_PERSONA_LIMIT_REACHED:I = -0x3f7

.field public static final ERROR_CREATE_PERSONA_EMERGENCY_MODE_FAILED:I = -0x407

.field public static final ERROR_CREATE_PERSONA_FILESYSTEM_ERROR:I = -0x3f3

.field public static final ERROR_CREATE_PERSONA_GENERATE_CMK_FAILED:I = -0x40a

.field public static final ERROR_CREATE_PERSONA_HANDLER_INSTALLATION_FAILED:I = -0x3ee

.field public static final ERROR_CREATE_PERSONA_INTERNAL_ERROR:I = -0x3f6

.field public static final ERROR_CREATE_PERSONA_MAX_PERSONA_LIMIT_REACHED:I = -0x3f4

.field public static final ERROR_CREATE_PERSONA_NO_HANDLER_APK:I = -0x3ea

.field public static final ERROR_CREATE_PERSONA_NO_NAME:I = -0x3e9

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_ADMIN_APK:I = -0x3ec

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_TYPE:I = -0x3ed

.field public static final ERROR_CREATE_PERSONA_NO_SETUPWIZARD_APK:I = -0x3eb

.field public static final ERROR_CREATE_PERSONA_RUNTIME_PERMISSION_GRANT:I = -0x40b

.field public static final ERROR_CREATE_PERSONA_SECURE_FOLDER_MAX_PERSONA_LIMIT_REACHED:I = -0x3f5

.field public static final ERROR_CREATE_PERSONA_SETUPWIZARD_INSTALLATION_FAILED:I = -0x3ef

.field public static final ERROR_CREATE_PERSONA_SUB_USER_FAILED:I = -0x403

.field public static final ERROR_CREATE_PERSONA_SYSTEM_APP_INSTALLATION_FAILED:I = -0x3f2

.field public static final ERROR_CREATE_PERSONA_TIMA_PWD_KEY_FAILED:I = -0x409

.field public static final ERROR_CREATE_PERSONA_USER_INFO_INVALID:I = -0x408

.field public static final ERROR_INVAILD_CONTAINER_ID:I = -0x515

.field public static final ERROR_NO_PERSONA_SERVICE:I = -0x514

.field public static final ERROR_PERSONA_APP_INSTALLATION_FAILED:I = -0x7d1

.field public static final ERROR_REMOVE_NOT_PERSONA_OWNER:I = -0x4b3

.field public static final ERROR_REMOVE_PERSONA_FAILED:I = -0x4b1

.field public static final ERROR_REMOVE_PERSONA_NOT_EXIST:I = -0x4b2

.field public static final ERROR_SWITCH_EQUALS_CURRENT_USER:I = -0x451

.field public static final ERROR_SWITCH_INVALID_PERSONA_ID:I = -0x44c

.field public static final ERROR_SWITCH_OUTSIDE_PERSONA_GROUP:I = -0x452

.field public static final ERROR_SWITCH_PERSONA_FILESYSTEM:I = -0x44f

.field public static final ERROR_SWITCH_PERSONA_HANDLER_NOT_RESPONDING:I = -0x450

.field public static final ERROR_SWITCH_PERSONA_LOCKED:I = -0x44e

.field public static final ERROR_SWITCH_PERSONA_NOT_INITIALIZED:I = -0x44d

.field private static final EXTRA_UNLAUNCHABLE_REASON:Ljava/lang/String; = "unlaunchable_reason"

.field private static final FLAG_BASE:I = 0x1

.field public static final FLAG_DUAL_DAR:I = 0x6000000

.field public static final FLAG_DUAL_DAR_CUSTOM_CRYPTO:I = 0x4000000

.field public static final FLAG_DUAL_DAR_SAMSUNG_CRYPTO:I = 0x2000000

.field public static final FLAG_EC_ENABLED:I = 0x10000

.field public static final FLAG_SECURE_FOLDER_CONTAINER:I = 0x2000

.field public static final FOLDERCONTAINER_PKG_NAME:Ljava/lang/String; = "com.sec.knox.foldercontainer"

.field public static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final HOME_SCREEN_WALLPAPER:Ljava/lang/String; = "custom-home-screen-wallpaper"

.field public static final ICON_CLASS_FOR_INTENT_FORWARD_TO_PARENT:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToParent"

.field public static final ICON_CLASS_FOR_INTENT_FORWARD_TO_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile"

.field public static final ICON_CLASS_FOR_SECUREFOLDER_FORWARD_TO_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile4"

.field public static final ICON_CLASS_SECUREFOLDER_FILE_STORE:Ljava/lang/String; = "switcher.B2CStoreFilesActivity"

.field public static final IMMEDIATELY_LOCK_TIMEOUT:I = -0x2

.field public static final INTENT_ACCESS_EXT_SDCARD:Ljava/lang/String; = "com.sec.knox.container.access.extsdcard"

.field public static final INTENT_ACTION_CHANGE_PASSWORD:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CHANGE_PASSWORD"

.field public static final INTENT_ACTION_CONFIRM_DEVICE_CREDENTIAL_WITH_USER:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

.field public static final INTENT_ACTION_CONTAINER_REMOVAL_STARTED:Ljava/lang/String; = "com.sec.knox.container.action.containerremovalstarted"

.field public static final INTENT_ACTION_CREATE_SECURE_FOLDER:Ljava/lang/String; = "com.sec.knox.action.CREATE_SECURE_FOLDER"

.field public static final INTENT_ACTION_KNOX_LICENSE_ACATIVATE_DIALOG_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_LICENSE_ACATIVATE_DIALOG_INTERNAL"

.field public static final INTENT_ACTION_LAUNCH_INFO:Ljava/lang/String; = "com.sec.knox.container.action.launchinfo"

.field public static final INTENT_ACTION_NFC_POLICY:Ljava/lang/String; = "com.samsung.android.knox.nfc.policy"

.field public static final INTENT_ACTION_NOTIFY_APPSEPARATION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFY_APPSEPARATION_INTERNAL"

.field public static final INTENT_ACTION_OBSERVER:Ljava/lang/String; = "com.sec.knox.container.action.observer"

.field public static final INTENT_ACTION_SDP_TIMEOUT:Ljava/lang/String; = "com.sec.knox.container.INTENT_KNOX_SDP_ACTIVATED"

.field public static final INTENT_CATEGORY_OBSERVER_CONTAINERID:Ljava/lang/String; = "com.sec.knox.container.category.observer.containerid"

.field public static final INTENT_CATEGORY_OBSERVER_ONATTRIBUTECHANGE:Ljava/lang/String; = "com.sec.knox.container.category.observer.onattributechange"

.field public static final INTENT_CATEGORY_OBSERVER_ONKEYGUARDSTATECHANGED:Ljava/lang/String; = "com.sec.knox.container.category.observer.onkeyguardstatechanged"

.field public static final INTENT_CATEGORY_OBSERVER_ONPERSONASWITCH:Ljava/lang/String; = "com.sec.knox.container.category.observer.onpersonaswitch"

.field public static final INTENT_CATEGORY_OBSERVER_ONSESSIONEXPIRED:Ljava/lang/String; = "com.sec.knox.container.category.observer.onsessionexpired"

.field public static final INTENT_CATEGORY_OBSERVER_ONSTATECHANGE:Ljava/lang/String; = "com.sec.knox.container.category.observer.onstatechange"

.field public static final INTENT_CONTAINER_NEED_RESTART:Ljava/lang/String; = "com.sec.knox.container.need.restart"

.field public static final INTENT_EXTRA_CONTAINER_ID:Ljava/lang/String; = "containerId"

.field public static final INTENT_EXTRA_OBSERVER_ATTRIBUTE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.attribute"

.field public static final INTENT_EXTRA_OBSERVER_ATTRIBUTE_STATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.attribute.state"

.field public static final INTENT_EXTRA_OBSERVER_KEYGUARDSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.keyguardstate"

.field public static final INTENT_EXTRA_OBSERVER_NEWSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.newstate"

.field public static final INTENT_EXTRA_OBSERVER_PREVIOUSSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.previousstate"

.field public static final INTENT_EXTRA_UPDATED_VALUE:Ljava/lang/String; = "com.sec.knox.container.extra.updated.value"

.field public static final INTENT_PERMISSION_LAUNCH_INFO:Ljava/lang/String; = "com.samsung.container.LAUNCH_INFO"

.field public static final INTENT_PERMISSION_OBSERVER:Ljava/lang/String; = "com.samsung.container.OBSERVER"

.field public static final INTENT_PERMISSION_RECEIVE_KNOX_APPS_UPDATE:Ljava/lang/String; = "com.sec.knox.container.permission.RECEIVE_KNOX_APPS_UPDATE"

.field public static final KA_AS_SCHEMA_VERSION:I = 0x1

.field public static final KA_SCHEMA_VERSION:I = 0x5

.field public static final KNOX_SETTINGS_SYNC_PREFIX:Ljava/lang/String; = "knox_container_sync_"

.field public static final LOCK_SCREEN_WALLPAPER:Ljava/lang/String; = "custom-lock-screen-wallpaper"

.field public static final MANAGED_PROVISIONING_PACKAGE:Ljava/lang/String; = "com.android.managedprovisioning"

.field public static final MAX_PERSONA_ALLOWED:I = 0x2

.field public static final MAX_PERSONA_ALLOWED_SECURE_FOLDER:I = 0x1

.field public static final MAX_PERSONA_ID:I = 0xc8

.field public static final MAX_SECURE_FOLDER_ID:I = 0xa0

.field public static final MINIMUM_SCREEN_OFF_TIMEOUT:I = 0x1388

.field public static final MIN_PERSONA_ID:I = 0x64

.field public static final MIN_SECURE_FOLDER_ID:I = 0x96

.field public static final MOVE_FILE_TO_CONTAINER:Ljava/lang/String; = "move-file-to-container"

.field public static final MOVE_FILE_TO_OWNER:Ljava/lang/String; = "move-file-to-owner"

.field public static final MOVE_TO_APP_TYPE_GALLERY:I = 0x1

.field public static final MOVE_TO_APP_TYPE_MUSIC:I = 0x3

.field public static final MOVE_TO_APP_TYPE_MYFILES:I = 0x4

.field public static final MOVE_TO_APP_TYPE_VIDEO:I = 0x2

.field public static final MOVE_TO_CONTAINER_TYPE_ENTERPRISE_CONTAINER:I = 0x3e8

.field public static final MOVE_TO_CONTAINER_TYPE_KNOX:I = 0x3e9

.field public static final MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I = 0x3ea

.field public static final MOVE_TO_PERSONAL_TYPE_KNOX:I = 0x3ec

.field public static final MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I = 0x3eb

.field public static final NOTIFICATIONS:Ljava/lang/String; = "Notifications"

.field public static final PERMISSION_KEYGUARD_ACCESS:Ljava/lang/String; = "com.sec.knox.container.keyguard.ACCESS"

.field public static final PERMISSION_PERIPHERAL_POLICY_UPDATE:Ljava/lang/String; = "com.sec.knox.container.peripheral.POLICY_UPDATE"

.field public static final PERSONA_CACHE_RESET_ON_REBOOT:Ljava/lang/String; = "knoxid.reset_on_reboot"

.field public static final PERSONA_ID:Ljava/lang/String; = "persona_id"

.field public static final PERSONA_POLICY_SERVICE:Ljava/lang/String; = "persona_policy"

.field public static final PERSONA_TIMA_ECRPTFS_INDEX1:I = 0x64

.field public static final PERSONA_TIMA_ECRPTFS_INDEX2:I = 0x66

.field public static final PERSONA_TIMA_PASSWORDHINT_INDEX:I = 0x68

.field public static final PERSONA_TIMA_PASSWORD_INDEX1:I = 0x65

.field public static final PERSONA_TIMA_PASSWORD_INDEX2:I = 0x67

.field public static final PERSONA_VALIDATOR_HANDLER:Ljava/lang/String; = "persona_validator"

.field public static final PROPERTY_DEVICE_OWNER_EXISTS:Ljava/lang/String; = "persist.sys.knox.device_owner"

.field public static final PROPERTY_KNOX_CONTAINER_INFO:Ljava/lang/String; = "persist.sys.knox.userinfo"

.field public static final PROPERTY_SECURE_FOLDER_AVAILABLE:Ljava/lang/String; = "persist.sys.knox.secure_folder_state_available"

.field public static final REMOVE_OP_SUCCESS:I = 0x0

.field public static final SANITIZE_DATA_LOCKSCREEN:Ljava/lang/String; = "knox-sanitize-data-lockscreen"

.field public static final SECUREFOLDER_ICON_CLASS_SWITCH_TO_HOME:Ljava/lang/String; = "com.samsung.knox.securefolder.switcher.SwitchToPersonalIcon"

.field public static final SECUREFOLDER_PACKAGE:Ljava/lang/String; = "com.samsung.knox.securefolder"

.field public static SECURE_FOLDER_NAME:Ljava/lang/String; = null

.field private static final SEC_PRODUCT_FEATURE_KNOX_CONFIG_CONTAINER_VERSION:Ljava/lang/String; = "29"

.field public static final SEC_PRODUCT_FEATURE_KNOX_SUPPORT_CONTAINER:Z = true

.field private static final SEC_PRODUCT_FEATURE_KNOX_SUPPORT_DUAL_DAR:Z = true

.field public static final SEC_PRODUCT_FEATURE_KNOX_SUPPORT_MDM:Z = true

.field private static final SETTINGS_INTENT_FORWARD_BLOCKLIST_FOR_SF:[Ljava/lang/String;

.field public static final SETUP_WIZARD_PKG_NAME:Ljava/lang/String; = "com.sec.knox.setup"

.field public static final SHORTCUTS:Ljava/lang/String; = "Shortcuts"

.field static final SHORTCUT_FILTER:[Ljava/lang/String;

.field public static final SMS:Ljava/lang/String; = "Sms"

.field private static TAG:Ljava/lang/String; = null

.field public static final TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field public static final TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field public static final TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field public static final TIMA_COMPROMISED_TYPE4:I = 0x1000f

.field public static final TIMA_VALIDATION_SUCCESS:I = 0x0

.field private static final UNLAUNCHABLE_REASON_PWD_EXPIRED:I = 0x1

.field public static final WHEN_PHONE_RESTART_LOCK_TIMEOUT:I = -0x1

.field public static final WHEN_SCREEN_TURNS_OFF_LOCK_TIMEOUT:I

.field private static _instance:Lcom/samsung/android/knox/ISemPersonaManager;

.field public static final approvedPackages:[Ljava/lang/String;

.field public static final excludedPackages:[Ljava/lang/String;

.field private static mKeyguardManager:Landroid/app/KeyguardManager;

.field private static mMoveToInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final mdmPackages:[Ljava/lang/String;

.field private static personaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private static final pmInstanceLock:Ljava/lang/Object;

.field private static rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private static skipPackagesListForNotification:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/samsung/android/knox/ISemPersonaManager;


# direct methods
.method static constructor <clinit>()V
    .registers 118

    .line 107
    const-string v0, "SemPersonaManager"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    .line 392
    const-string/jumbo v0, "secure-folder"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SECURE_FOLDER_NAME:Ljava/lang/String;

    .line 579
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mMoveToInfo:Ljava/util/ArrayList;

    .line 580
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 581
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 586
    const-string v1, "com.sec.hearingadjust"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .line 592
    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    const-string v2, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    const-string v3, "android.settings.USAGE_ACCESS_SETTINGS"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->SETTINGS_INTENT_FORWARD_BLOCKLIST_FOR_SF:[Ljava/lang/String;

    .line 1521
    nop

    .line 1522
    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings"

    const-string v5, "com.sec.knox.knoxsetupwizardclient"

    const-string v6, "com.sec.chaton"

    const-string v7, "com.sec.pcw"

    const-string v8, "com.samsung.android.knox.containercore"

    const-string v9, "com.sec.watchon.phone"

    const-string v10, "com.sec.android.automotive.drivelink"

    const-string v11, "com.samsung.android.app.lifetimes"

    const-string v12, "com.sec.android.app.shealth"

    const-string v13, "com.sec.android.app.voicenote"

    const-string v14, "com.sec.android.app.kidshome"

    const-string v15, "com.sec.knox.app.container"

    const-string v16, "com.sec.knox.containeragent"

    const-string v17, "com.sec.android.app.samsungapps"

    const-string/jumbo v18, "tv.peel.smartremote"

    const-string v19, "com.skt.prod.phonebook"

    const-string v20, "com.sec.enterprise.knox.express"

    const-string v21, "com.google.android.apps.walletnfcrel"

    const-string v22, "com.samsung.android.voc"

    const-string v23, "com.skt.tservice"

    const-string v24, "com.sktelecom.minit"

    const-string v25, "com.skt.prod.dialer"

    const-string v26, "com.skt.skaf.A000VODBOX"

    const-string v27, "com.skt.skaf.OA00050017"

    const-string v28, "com.skt.skaf.A000Z00040"

    const-string v29, "com.skt.skaf.OA00026910"

    const-string v30, "com.skt.skaf.l001mtm091"

    const-string v31, "com.skt.prod.phonebook"

    const-string v32, "com.skt.smartbill"

    const-string v33, "com.skt.tbagplus"

    const-string v34, "com.sktelecom.tguard"

    const-string v35, "com.skt.tdatacoupon"

    const-string v36, "com.skb.btvmobile"

    const-string v37, "com.iloen.melon"

    const-string v38, "com.nate.android.portalmini"

    const-string v39, "com.tms"

    const-string v40, "com.skmc.okcashbag.home_google"

    const-string v41, "com.elevenst"

    const-string v42, "com.elevenst.deals"

    const-string v43, "com.moent.vas"

    const-string v44, "com.skmnc.gifticon"

    const-string v45, "com.skt.tmaphot"

    const-string v46, "com.skplanet.mbuzzer"

    const-string v47, "com.skt.tgift"

    const-string v48, "com.sktelecom.tsmartpay"

    const-string v49, "com.cyworld.camera"

    const-string v50, "com.kt.android.showtouch"

    const-string v51, "com.kt.wificm"

    const-string v52, "com.ktshow.cs"

    const-string v53, "com.kt.olleh.storefront"

    const-string v54, "com.kth.kshop"

    const-string v55, "com.show.greenbill"

    const-string v56, "com.estsoft.alyac"

    const-string v57, "com.kt.accessory"

    const-string/jumbo v58, "kt.navi"

    const-string v59, "com.olleh.android.oc2"

    const-string v60, "com.kt.ollehfamilybox"

    const-string v61, "com.kt.otv"

    const-string v62, "com.olleh.webtoon"

    const-string v63, "com.kt.shodoc"

    const-string v64, "com.ktmusic.geniemusic"

    const-string v65, "com.ktcs.whowho"

    const-string v66, "com.kt.apptong"

    const-string v67, "com.mtelo.ktAPP"

    const-string v68, "com.kt.bellringolleh"

    const-string v69, "com.kt.mpay"

    const-string v70, "com.kt.aljjapackplus"

    const-string v71, "com.lguplus.appstore"

    const-string v72, "com.uplus.onphone"

    const-string v73, "com.lguplus.mobile.cs"

    const-string/jumbo v74, "lg.uplusbox"

    const-string v75, "com.lgu.app.appbundle"

    const-string/jumbo v76, "lgt.call"

    const-string v77, "com.mnet.app"

    const-string v78, "com.lguplus.usimsvcm"

    const-string v79, "com.lguplus.navi"

    const-string v80, "com.lguplus.paynow"

    const-string v81, "com.uplus.movielte"

    const-string v82, "com.estsoft.alyac"

    const-string v83, "com.lguplus.ltealive"

    const-string v84, "com.uplus.ipagent"

    const-string v85, "com.lguplus.homeiot"

    const-string v86, "com.uplus.baseballhdtv"

    const-string v87, "com.lgu"

    const-string v88, "com.lgt.tmoney"

    const-string v89, "com.lguplus.smartotp"

    const-string/jumbo v90, "net.daum.android.map"

    const-string v91, "com.sds.mms.ui"

    const-string v92, "com.navitime.local.naviwalk"

    const-string/jumbo v93, "jp.id_credit_sp.android"

    const-string/jumbo v94, "jp.id_credit_sp.android.devappli"

    const-string v95, "com.nttdocomo.android.dpoint"

    const-string v96, "com.nttdocomo.android.voicetranslation"

    const-string v97, "com.nttdocomo.android.moneyrecord"

    const-string v98, "com.kddi.android.videopass"

    const-string v99, "com.nttdocomo.android.photocollection"

    const-string v100, "com.android.systemui"

    const-string v101, "com.sec.sprint.wfcstub"

    const-string v102, "com.sec.sprint.wfc"

    const-string v103, "com.oculus.horizon"

    const-string v104, "com.samsung.android.app.watchmanager"

    const-string v105, "com.samsung.android.spay"

    const-string v106, "com.sec.android.easyMover"

    const-string v107, "com.samsung.android.wms"

    const-string v108, "com.samsung.android.gear360manager"

    const-string v109, "com.samsung.android.samsunggear360manager"

    const-string v110, "com.samsung.android.video360"

    const-string v111, "com.samsung.android.app.vrsetupwizard"

    const-string v112, "com.oculus.horizon"

    const-string v113, "com.samsung.android.game.gamehome"

    const-string v114, "com.samsung.android.globalroaming"

    const-string v115, "com.samsung.android.visionintelligence"

    const-string v116, "com.samsung.android.oneconnect"

    const-string v117, "com.samsung.android.knox.analytics.uploader"

    filled-new-array/range {v3 .. v117}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackages:[Ljava/lang/String;

    .line 1641
    const-string v2, "com.android.chrome"

    const-string v3, "com.google.android.apps"

    const-string v4, "com.google.android.apps.plus"

    const-string v5, "com.google.android.apps.docs"

    const-string v6, "com.google.android.gm"

    const-string v7, "com.google.android.googlequicksearchbox"

    const-string v8, "com.google.android.talk"

    const-string v9, "com.google.android.apps.maps"

    const-string v10, "com.google.android.apps.books"

    const-string v11, "com.google.android.play.games"

    const-string v12, "com.google.android.music"

    const-string v13, "com.google.android.videos"

    const-string v14, "com.google.android.apps.magazines"

    const-string v15, "com.google.android.youtube"

    const-string v16, "com.samsung.android.app.memo"

    const-string v17, "com.sec.keystringscreen"

    const-string v18, "com.infraware.polarisoffice5"

    const-string v19, "com.microsoft.office.excel"

    const-string v20, "com.microsoft.office.powerpoint"

    const-string v21, "com.microsoft.office.word"

    const-string v22, "com.hancom.androidpc.viewer.launcher"

    const-string v23, "com.hancom.office.editor"

    const-string v24, "com.whatsapp"

    const-string v25, "com.tencent.mm"

    const-string v26, "com.facebook.katana"

    const-string v27, "com.facebook.orca"

    const-string v28, "com.instagram.android"

    const-string v29, "com.skype.raider"

    const-string v30, "com.microsoft.office.onenote"

    const-string v31, "com.microsoft.skydrive"

    const-string v32, "com.samsung.android.contacts"

    const-string v33, "com.sec.android.app.myfiles"

    const-string v34, "com.sec.android.gallery3d"

    const-string v35, "com.samsung.android.app.notes"

    const-string v36, "com.samsung.android.calendar"

    const-string v37, "com.samsung.android.email.provider"

    const-string v38, "com.sec.android.app.camera"

    const-string v39, "com.sec.android.app.sbrowser"

    filled-new-array/range {v2 .. v39}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->approvedPackages:[Ljava/lang/String;

    .line 1683
    const-string v2, "com.samsung.mdmtest1"

    const-string v3, "com.samsung.mdmtest2"

    const-string v4, "com.samsung.edmtest"

    const-string v5, "com.samsung.edmtest1"

    const-string v6, "com.samsung.edmtest2"

    const-string v7, "com.samsung.containertool"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->mdmPackages:[Ljava/lang/String;

    .line 1927
    const-string v1, "android"

    const-string v2, "com.samsung.knox.securefolder"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->skipPackagesListForNotification:Ljava/util/List;

    .line 2109
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    .line 2110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->pmInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/knox/ISemPersonaManager;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    .line 630
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    .line 631
    return-void
.end method

.method public static appliedPasswordPolicy(I)Z
    .registers 5
    .param p0, "userId"    # I

    .line 3401
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3402
    return v1

    .line 3404
    :cond_8
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3406
    :try_start_e
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->appliedPasswordPolicy(I)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    .line 3407
    :catch_17
    move-exception v0

    .line 3408
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "appliedPasswordPolicy failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3411
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1f
    return v1
.end method

.method private static checkContainerType(I)Z
    .registers 10
    .param p0, "flag"    # I

    .line 1004
    const-string v0, ":"

    .line 1005
    .local v0, "USER_DELIMITER":Ljava/lang/String;
    const-string v1, ","

    .line 1006
    .local v1, "INFO_DELIMITER":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3a

    .line 1009
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, "arr":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    array-length v5, v3

    if-ge v4, v5, :cond_3a

    .line 1011
    aget-object v5, v3, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1012
    .local v5, "info":[Ljava/lang/String;
    if-eqz v5, :cond_37

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_37

    .line 1013
    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1014
    .local v7, "flags":I
    and-int v8, p0, v7

    if-lez v8, :cond_37

    return v6

    .line 1010
    .end local v5    # "info":[Ljava/lang/String;
    .end local v7    # "flags":I
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1018
    .end local v3    # "arr":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_3a
    const/4 v3, 0x0

    return v3
.end method

.method private static checkContainerType(II)Z
    .registers 13
    .param p0, "containerId"    # I
    .param p1, "flag"    # I

    .line 984
    const-string v0, ":"

    .line 985
    .local v0, "USER_DELIMITER":Ljava/lang/String;
    const-string v1, ","

    .line 986
    .local v1, "INFO_DELIMITER":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 988
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_43

    .line 989
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 990
    .local v4, "arr":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    array-length v6, v4

    if-ge v5, v6, :cond_43

    .line 991
    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 992
    .local v6, "info":[Ljava/lang/String;
    if-eqz v6, :cond_40

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_40

    .line 993
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 994
    .local v7, "id":I
    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 995
    .local v9, "flags":I
    if-ne v7, p0, :cond_40

    and-int v10, p1, v9

    if-lez v10, :cond_40

    .line 996
    return v8

    .line 990
    .end local v6    # "info":[Ljava/lang/String;
    .end local v7    # "id":I
    .end local v9    # "flags":I
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1000
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_43
    return v3
.end method

.method public static clearAttributes(II)Z
    .registers 5
    .param p0, "userId"    # I
    .param p1, "attr"    # I

    .line 2461
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2463
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->clearAttributes(II)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 2464
    :catch_f
    move-exception v0

    .line 2465
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "clearAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2469
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static createChangeCredentialIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;
    .registers 5
    .param p0, "userid"    # I
    .param p1, "target"    # Landroid/content/IntentSender;

    .line 2657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.CHANGE_CREDENTIAL_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2658
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "unlaunchable_reason"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2659
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2660
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2661
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxCorePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2663
    return-object v0
.end method

.method public static createLockdownIntent(I)Landroid/content/Intent;
    .registers 3
    .param p0, "userid"    # I

    .line 2675
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.LOCKDOWN_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2676
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2677
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2678
    const-string v1, "com.samsung.android.knox.containercore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2680
    return-object v0
.end method

.method public static drawKnoxAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 3379
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/knox/SemPersonaManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/knox/SemPersonaManager$1;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/appwidget/AppWidgetHostView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3397
    return-void
.end method

.method public static exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1488
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "ERROR | exchangeData is deprecated  // move to knox for contact"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const/4 v0, 0x0

    .line 1491
    .local v0, "ret":Landroid/os/Bundle;
    if-eqz p1, :cond_25

    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RequestProxy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1492
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 1493
    const-string/jumbo v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1496
    :cond_25
    return-object v0
.end method

.method public static getAdminComponentName(I)Landroid/content/ComponentName;
    .registers 4
    .param p0, "containerId"    # I

    .line 2989
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2991
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 2992
    :catch_f
    move-exception v0

    .line 2993
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getAdminComponentName failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2997
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppSeparationConfig()Landroid/os/Bundle;
    .registers 4

    .line 3024
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 3026
    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_13

    .line 3027
    .local v0, "config":Landroid/os/Bundle;
    if-nez v0, :cond_12

    .line 3028
    return-object v1

    .line 3030
    :cond_12
    return-object v0

    .line 3031
    .end local v0    # "config":Landroid/os/Bundle;
    :catch_13
    move-exception v0

    .line 3032
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getAppSeparationConfig failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3035
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1b
    return-object v1
.end method

.method public static getAttributes(I)I
    .registers 4
    .param p0, "userId"    # I

    .line 2438
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2440
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getAttributes(I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 2441
    :catch_f
    move-exception v0

    .line 2442
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2446
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method private getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 3541
    .local p1, "blockedComp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3542
    .local v0, "compArrary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3543
    .local v2, "policy":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3544
    .local v3, "comp":[Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3545
    .end local v2    # "policy":Ljava/lang/String;
    .end local v3    # "comp":[Ljava/lang/String;
    goto :goto_9

    .line 3546
    :cond_2a
    return-object v0
.end method

.method private getContainerInfo()Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1843
    const-string v0, ":"

    .line 1844
    .local v0, "USER_DELIMITER":Ljava/lang/String;
    const-string v1, ","

    .line 1845
    .local v1, "INFO_DELIMITER":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1846
    .local v2, "existUser":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string/jumbo v3, "persist.sys.knox.userinfo"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1849
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getContainerInfo: value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "API test"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    if-eqz v3, :cond_65

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_65

    .line 1851
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1852
    .local v4, "arr":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_38
    array-length v6, v4

    if-ge v5, v6, :cond_65

    .line 1853
    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1854
    .local v6, "info":[Ljava/lang/String;
    if-eqz v6, :cond_62

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_62

    .line 1855
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1856
    .local v7, "userId":I
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1857
    .local v8, "flag":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    .end local v6    # "info":[Ljava/lang/String;
    .end local v7    # "userId":I
    .end local v8    # "flag":I
    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 1861
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_65
    return-object v2
.end method

.method public static getContainerName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2955
    const-string v0, "END getContainerName packageName"

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START getContainerName packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", className = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    .line 2958
    .local v1, "service":Lcom/samsung/android/knox/ISemPersonaManager;
    const/4 v2, 0x0

    if-nez v1, :cond_36

    .line 2959
    return-object v2

    .line 2963
    :cond_36
    :try_start_36
    const-string v3, "android"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const-string v3, "com.android.internal.app.ForwardIntentToManagedProfile4"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 2964
    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getSecureFolderName()Ljava/lang/String;

    move-result-object v2
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_4a} :catch_5c
    .catchall {:try_start_36 .. :try_end_4a} :catchall_5a

    .line 2972
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    return-object v2

    .line 2967
    :cond_50
    :try_start_50
    invoke-interface {v1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_54} :catch_5c
    .catchall {:try_start_50 .. :try_end_54} :catchall_5a

    .line 2972
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    return-object v2

    .line 2972
    :catchall_5a
    move-exception v2

    goto :goto_6c

    .line 2969
    :catch_5c
    move-exception v3

    .line 2970
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_5d
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to call Persona service"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_5a

    .line 2972
    nop

    .end local v3    # "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    nop

    .line 2975
    return-object v2

    .line 2972
    :goto_6c
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    throw v2
.end method

.method public static getCustomBadgeForCustomContainer(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/util/Pair;
    .registers 8
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "density"    # I
    .param p2, "locContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 2043
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x1

    .line 2045
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2043
    if-eqz v0, :cond_22

    .line 2044
    const-string v0, "com.samsung.knox.securefolder"

    .line 2045
    .local v0, "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080583

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 2047
    .end local v0    # "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    :cond_22
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2048
    new-instance v0, Landroid/util/Pair;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080876

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2050
    :cond_3d
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2051
    new-instance v0, Landroid/util/Pair;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080c2e

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2054
    :cond_58
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getCustomResource(ILjava/lang/String;)[B
    .registers 6
    .param p0, "userId"    # I
    .param p1, "resourceType"    # Ljava/lang/String;

    .line 2731
    const-string/jumbo v0, "getCustomResource failed"

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    .line 2734
    :try_start_a
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2735
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_20

    .line 2739
    :cond_1b
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->readECFile(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1f} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1f} :catch_21

    return-object v0

    .line 2736
    :cond_20
    :goto_20
    return-object v2

    .line 2742
    .end local v1    # "filePath":Ljava/lang/String;
    :catch_21
    move-exception v1

    .line 2743
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 2740
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_28
    move-exception v1

    .line 2741
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2744
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 2747
    :cond_2f
    :goto_2f
    return-object v2
.end method

.method public static getCustomReverseBadgeForCustomContainer(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "density"    # I
    .param p2, "locContext"    # Landroid/content/Context;

    .line 2017
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2018
    .local v0, "userId":I
    if-gtz p1, :cond_10

    .line 2019
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget p1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2022
    :cond_10
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2023
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080584

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 2024
    :cond_22
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2025
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080574

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 2026
    :cond_34
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2027
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080875

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 2029
    :cond_46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080c2f

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getDrawableCustomBadge(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p0, "locContext"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 2794
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2796
    :try_start_6
    const-string v0, "custom-badge-icon"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    .line 2797
    .local v0, "badge":[B
    if-eqz v0, :cond_1f

    .line 2798
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2799
    .local v1, "mRes":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 2800
    .local v2, "badgeIcon":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_20

    return-object v3

    .line 2804
    .end local v0    # "badge":[B
    .end local v1    # "mRes":Landroid/content/res/Resources;
    .end local v2    # "badgeIcon":Landroid/graphics/drawable/Drawable;
    :cond_1f
    goto :goto_29

    .line 2802
    :catch_20
    move-exception v0

    .line 2803
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getDrawableCustomBadge failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2806
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_29
    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "mFloatingConfig"    # Ljava/lang/String;
    .param p1, "mDefaultPkgName"    # Ljava/lang/String;

    .line 1510
    move-object v0, p1

    .line 1513
    .local v0, "mPkgName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 1516
    goto :goto_14

    .line 1514
    :catch_b
    move-exception v1

    .line 1515
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getFloatingPackageName failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1517
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_14
    return-object v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 1298
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_11

    .line 1299
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1301
    :cond_11
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public static getKnoxAdminReceiver()Landroid/content/ComponentName;
    .registers 3

    .line 2564
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.knox.containercore"

    const-string v2, "com.samsung.android.knox.containercore.KnoxAdminCommandReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .registers 5

    .line 1029
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .line 1032
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 1034
    .local v1, "mKnoxInfo":Landroid/os/Bundle;
    if-eqz v1, :cond_192

    .line 1035
    const-string v2, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_171

    .line 1036
    const-string v2, "29"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_23

    .line 1037
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1038
    :cond_23
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e

    .line 1039
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1040
    :cond_2e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_39

    .line 1041
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1042
    :cond_39
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_44

    .line 1043
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1044
    :cond_44
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4f

    .line 1045
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1046
    :cond_4f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5a

    .line 1047
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1048
    :cond_5a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_65

    .line 1049
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1050
    :cond_65
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_70

    .line 1051
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1052
    :cond_70
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7c

    .line 1053
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1054
    :cond_7c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_88

    .line 1055
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_2:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1056
    :cond_88
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_94

    .line 1057
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1058
    :cond_94
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_a0

    .line 1059
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1060
    :cond_a0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_ac

    .line 1061
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1062
    :cond_ac
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_b8

    .line 1063
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1064
    :cond_b8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_c4

    .line 1065
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1066
    :cond_c4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_d0

    .line 1067
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1068
    :cond_d0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_dc

    .line 1069
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1070
    :cond_dc
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_e8

    .line 1071
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1072
    :cond_e8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_f4

    .line 1073
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1074
    :cond_f4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_100

    .line 1075
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_2_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1076
    :cond_100
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_10c

    .line 1077
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1078
    :cond_10c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_118

    .line 1079
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1080
    :cond_118
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_124

    .line 1081
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_192

    .line 1082
    :cond_124
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_12f

    .line 1083
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_192

    .line 1084
    :cond_12f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_13a

    .line 1085
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_192

    .line 1086
    :cond_13a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_145

    .line 1087
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_192

    .line 1088
    :cond_145
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_150

    .line 1089
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_192

    .line 1090
    :cond_150
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_15b

    .line 1091
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_192

    .line 1092
    :cond_15b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x1c

    if-ne v3, v4, :cond_166

    .line 1093
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_192

    .line 1094
    :cond_166
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_192

    .line 1095
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_10_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_192

    .line 1097
    :cond_171
    const-string v2, "1.0"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_188

    .line 1098
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo returns 1.0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_192

    .line 1101
    :cond_188
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .line 1105
    :cond_192
    :goto_192
    return-object v0
.end method

.method public static getKnoxCorePackageName()Ljava/lang/String;
    .registers 1

    .line 2554
    const-string v0, "com.samsung.android.knox.containercore"

    return-object v0
.end method

.method public static getKnoxForesightService()Lcom/samsung/android/knox/IBasicCommand;
    .registers 3

    .line 3735
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3737
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxForesightService()Lcom/samsung/android/knox/IBasicCommand;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 3738
    :catch_f
    move-exception v0

    .line 3739
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3743
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getKnoxIcon(I)[B
    .registers 7
    .param p0, "userId"    # I

    .line 2856
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2858
    :cond_8
    const/4 v0, 0x0

    .line 2860
    .local v0, "ui":Landroid/content/pm/UserInfo;
    :try_start_9
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 2861
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2862
    .local v4, "i":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_25} :catch_2a

    if-ne v5, p0, :cond_28

    .line 2863
    move-object v0, v4

    .line 2865
    .end local v4    # "i":Landroid/content/pm/UserInfo;
    :cond_28
    goto :goto_17

    .line 2868
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_29
    goto :goto_32

    .line 2866
    :catch_2a
    move-exception v2

    .line 2867
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Could not getUserInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2869
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_32
    if-nez v0, :cond_35

    .line 2870
    return-object v1

    .line 2871
    :cond_35
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 2872
    return-object v1

    .line 2873
    :cond_3c
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 2874
    const-string v2, "com.samsung.knox.securefolder"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1

    .line 2876
    :cond_49
    invoke-static {v1, v1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1
.end method

.method public static getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2886
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 2888
    :try_start_7
    const-string v0, "com.samsung.knox.securefolder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    const-string/jumbo v0, "switcher.B2CStoreFilesActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2889
    return-object v1

    .line 2891
    :cond_1b
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_23} :catch_24

    return-object v0

    .line 2892
    :catch_24
    move-exception v0

    .line 2893
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getKnoxIcon failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2897
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2d
    return-object v1
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .registers 1

    .line 901
    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 1476
    invoke-static {p0}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .line 1468
    invoke-static {p0, p1}, Lcom/samsung/android/knox/KnoxInfoImpl;->getCachedKnoxInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationBadge(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/util/Pair;
    .registers 12
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "density"    # I
    .param p2, "locContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 2066
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "custom-badge-icon"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    .line 2067
    .local v0, "badge":[B
    const/4 v1, 0x0

    .line 2068
    .local v1, "rawDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 2069
    .local v2, "resourceId":I
    const/4 v3, 0x0

    .line 2075
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2069
    const/4 v5, 0x1

    .line 2070
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2069
    if-eqz v0, :cond_2c

    .line 2070
    new-instance v4, Landroid/util/Pair;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    array-length v8, v0

    invoke-static {v0, v3, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 2072
    :cond_2c
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 2073
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v6, 0x0

    if-nez v3, :cond_56

    .line 2074
    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getNotificationBadge/getUserInfo is null, user id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 2078
    :cond_56
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 2079
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1080ad0

    invoke-virtual {v4, v7, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2081
    const v2, 0x10600cf

    .line 2082
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2083
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 2084
    :cond_7f
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 2085
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1080659

    invoke-virtual {v4, v7, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2087
    const v2, 0x10600d0

    .line 2088
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2089
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 2091
    :cond_a8
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method public static getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .line 3192
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3194
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 3195
    :catch_f
    move-exception v0

    .line 3196
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getPersonaCacheValue failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3199
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPersonaName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "personaId"    # I

    .line 1897
    const-string v0, "com.sec.android.app.desktoplauncher"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1898
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_31

    .line 1902
    :cond_19
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1903
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda0;-><init>(I)V

    const-string v3, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    .line 1905
    .local v1, "profile_name":Ljava/lang/String;
    return-object v1

    .line 1899
    .end local v0    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    .end local v1    # "profile_name":Ljava/lang/String;
    :cond_31
    :goto_31
    invoke-static {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getWorkName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;
    .registers 2

    .line 2114
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v0, :cond_1d

    .line 2115
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->pmInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2116
    :try_start_7
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v1, :cond_18

    .line 2117
    const-string/jumbo v1, "persona"

    .line 2118
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2117
    invoke-static {v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    .line 2120
    :cond_18
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1

    .line 2122
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v0
.end method

.method public static getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2100
    if-eqz p0, :cond_12

    .line 2101
    const-string/jumbo v0, "persona"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 2102
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_12

    .line 2103
    return-object v0

    .line 2106
    .end local v0    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1501
    const-class v0, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v0

    .line 1502
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v1, :cond_12

    .line 1503
    const-string/jumbo v1, "rcp"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemRemoteContentManager;

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 1505
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 1506
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0

    .line 1505
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static getRestriction(Ljava/lang/String;I)Z
    .registers 5
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 3700
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRestriction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    const/4 v0, 0x1

    return v0
.end method

.method public static getSecureFolderId(Landroid/content/Context;)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 920
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    .line 921
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v0, :cond_10

    .line 922
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get SemPersonaManagerService in getSecureFolderId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/16 v1, -0x514

    return v1

    .line 926
    :cond_10
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    .line 927
    .local v1, "personaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 928
    .local v3, "tempPersonaId":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 929
    .local v5, "personaId":Ljava/lang/Integer;
    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "personaId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/high16 v7, 0x20000

    invoke-static {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 931
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_56

    .line 932
    move-object v3, v5

    .line 933
    :cond_56
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v6, v7, :cond_61

    .line 934
    move-object v3, v5

    .line 935
    :cond_61
    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SecureFolder personaId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    .end local v5    # "personaId":Ljava/lang/Integer;
    :cond_79
    goto :goto_1e

    .line 938
    :cond_7a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_83

    const/16 v2, -0x515

    goto :goto_87

    :cond_83
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_87
    return v2
.end method

.method public static getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p0, "userId"    # I

    .line 2327
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2329
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 2330
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2331
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_24} :catch_29

    if-ne v4, p0, :cond_27

    .line 2332
    return-object v3

    .line 2334
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_27
    goto :goto_16

    .line 2337
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_28
    goto :goto_31

    .line 2335
    :catch_29
    move-exception v0

    .line 2336
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not getUserInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2339
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_31
    return-object v1
.end method

.method private static getWorkName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 2692
    :try_start_0
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2693
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    const-string v2, "Core.RESOLVER_WORK_TAB"

    new-instance v3, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 2695
    .local v1, "profile_name":Ljava/lang/String;
    return-object v1

    .line 2696
    .end local v0    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    .end local v1    # "profile_name":Ljava/lang/String;
    :catch_18
    move-exception v0

    .line 2697
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2700
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getWorkProfileName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 2684
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2685
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    const-string v3, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    .line 2687
    .local v1, "profile_name":Ljava/lang/String;
    return-object v1
.end method

.method public static hideMultiWindows(I)V
    .registers 4
    .param p0, "containerId"    # I

    .line 3210
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3212
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->hideMultiWindows(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 3215
    goto :goto_17

    .line 3213
    :catch_e
    move-exception v0

    .line 3214
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideMultiWindows failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3217
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public static hideScrim()V
    .registers 2

    .line 3295
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "KNOX_UNBUNDLING::deprecated api = hideScrim()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    return-void
.end method

.method public static isAppSeparationUserId(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 3050
    if-nez p0, :cond_4

    .line 3051
    const/4 v0, 0x0

    return v0

    .line 3053
    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method public static isAppSeparationUserId(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 3040
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3041
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3042
    .local v1, "uInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3043
    const/4 v2, 0x1

    return v2

    .line 3045
    :cond_17
    const/4 v2, 0x0

    return v2
.end method

.method private static isContainerCorePackageUID(I)Z
    .registers 4
    .param p0, "uid"    # I

    .line 2618
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2620
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isContainerCorePackageUID(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 2621
    :catch_f
    move-exception v0

    .line 2622
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isContainerCorePackageUID error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2625
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static isContainerService(Landroid/content/ComponentName;)Z
    .registers 2
    .param p0, "name"    # Landroid/content/ComponentName;

    .line 2576
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isContainerService(Landroid/content/Context;I)Z
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .line 2587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2588
    .local v0, "uid":I
    const/16 v1, 0x1482

    .line 2590
    .local v1, "KNOXCORE_UID":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x1482

    if-ne v2, v3, :cond_10

    .line 2591
    const/4 v2, 0x1

    return v2

    .line 2595
    :cond_10
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 2597
    :try_start_16
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isContainerService(I)Z

    move-result v2
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_1f

    return v2

    .line 2598
    :catch_1f
    move-exception v2

    .line 2599
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isContainerService error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2603
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_28
    const/4 v2, 0x0

    return v2
.end method

.method public static isContainerServicebyUID(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 2614
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isContainerCorePackageUID(I)Z

    move-result v0

    return v0
.end method

.method public static isDarDualEncrypted(I)Z
    .registers 5
    .param p0, "userId"    # I

    .line 1177
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1178
    return v1

    .line 1181
    :cond_8
    invoke-static {p0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 1182
    return v2

    .line 1185
    :cond_10
    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object v0

    .line 1186
    .local v0, "currentState":Lcom/samsung/android/knox/dar/ddar/fsm/State;
    sget-object v3, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    if-eq v0, v3, :cond_1c

    sget-object v3, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    if-ne v0, v3, :cond_1d

    :cond_1c
    move v1, v2

    :cond_1d
    return v1
.end method

.method public static isDarDualEncryptionEnabled(I)Z
    .registers 5
    .param p0, "userId"    # I

    .line 1166
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1167
    .local v0, "ui":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1168
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v3, 0x6000000

    and-int/2addr v2, v3

    if-lez v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 1170
    :cond_10
    return v1
.end method

.method public static isDeviceOrProfileOwnerEnabled()Z
    .registers 3

    .line 1356
    const-string/jumbo v0, "persist.sys.knox.device_owner"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1357
    .local v0, "isDoEnabled":Z
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(I)Z

    move-result v2

    if-nez v2, :cond_12

    if-eqz v0, :cond_13

    :cond_12
    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public static isDoEnabled(I)Z
    .registers 3
    .param p0, "userId"    # I

    .line 950
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 951
    return v0

    .line 953
    :cond_4
    const-string/jumbo v1, "persist.sys.knox.device_owner"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDualAppId(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 3706
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    return v0
.end method

.method public static isDualDARCustomCrypto(I)Z
    .registers 5
    .param p0, "userId"    # I

    .line 1208
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1209
    .local v0, "ui":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1210
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 1212
    :cond_10
    return v1
.end method

.method public static isDualDARNativeCrypto(I)Z
    .registers 5
    .param p0, "userId"    # I

    .line 1197
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1198
    .local v0, "ui":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1199
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 1201
    :cond_10
    return v1
.end method

.method public static isExternalStorageEnabled(I)Z
    .registers 4
    .param p0, "containerId"    # I

    .line 3135
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3137
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isExternalStorageEnabled(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 3138
    :catch_f
    move-exception v0

    .line 3139
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isExternalStorageEnabled failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3143
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1460
    const/4 v0, 0x0

    return v0
.end method

.method public static isKnoxIcon(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 2714
    const-string v0, "com.samsung.knox.securefolder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    const-string/jumbo v0, "switcher.B2CStoreFilesActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2715
    return v1

    .line 2717
    :cond_15
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    .line 2718
    if-eqz p1, :cond_2f

    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2719
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    .line 2718
    :goto_30
    return v1

    .line 2721
    :cond_31
    return v2
.end method

.method public static isKnoxId(I)Z
    .registers 3
    .param p0, "userId"    # I

    .line 972
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 973
    return v0

    .line 976
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 977
    return v0

    .line 980
    :cond_b
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method public static isKnoxProfileActivePasswordSufficientForParent(I)Z
    .registers 4
    .param p0, "userId"    # I

    .line 3351
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3353
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isKnoxProfileActivePasswordSufficientForParent(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 3354
    :catch_f
    move-exception v0

    .line 3355
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isKnoxProfileActivePasswordSufficientForParent failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3358
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isKnoxVersionSupported(I)Z
    .registers 3
    .param p0, "version"    # I

    .line 1389
    if-lez p0, :cond_10

    .line 1390
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 1391
    .local v0, "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->getVersionNumber()I

    move-result v1

    if-lt v1, p0, :cond_10

    .line 1392
    const/4 v1, 0x1

    return v1

    .line 1395
    .end local v0    # "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z
    .registers 3
    .param p0, "version"    # Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .line 1403
    if-eqz p0, :cond_10

    .line 1404
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 1405
    .local v0, "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_10

    .line 1406
    const/4 v1, 0x1

    return v1

    .line 1409
    .end local v0    # "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static isKnoxWindowExist(III)Z
    .registers 6
    .param p0, "containerId"    # I
    .param p1, "visibleFlag"    # I
    .param p2, "stackId"    # I

    .line 3155
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3157
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->isKnoxWindowExist(III)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 3158
    :catch_f
    move-exception v0

    .line 3159
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isKnoxWindowExist failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3163
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static isMoveFilesToContainerAllowed(I)Z
    .registers 4
    .param p0, "userId"    # I

    .line 3474
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3476
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 3477
    :catch_f
    move-exception v0

    .line 3478
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3481
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static isMoveFilesToOwnerAllowed(I)Z
    .registers 4
    .param p0, "userId"    # I

    .line 3486
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3488
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 3489
    :catch_f
    move-exception v0

    .line 3490
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3493
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static isNotificationSanitizePolicyForSF(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1933
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1934
    :cond_8
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->skipPackagesListForNotification:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1935
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dont sanitize notification for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    return v1

    .line 1939
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "notifications_master_activation"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1940
    .local v0, "masterSettingsVal":I
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "masterSettingsVal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_4d} :catch_51

    .line 1941
    if-nez v0, :cond_50

    const/4 v1, 0x1

    :cond_50
    return v1

    .line 1942
    .end local v0    # "masterSettingsVal":I
    :catch_51
    move-exception v0

    .line 1943
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1945
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public static isPasswordSufficientAfterKnoxProfileUnification(I)Z
    .registers 4
    .param p0, "profileUser"    # I

    .line 3363
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3365
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isPasswordSufficientAfterKnoxProfileUnification(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 3366
    :catch_f
    move-exception v0

    .line 3367
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isPasswordSufficientAfterKnoxProfileUnification failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3370
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isPkgAllowedToListenKnoxNoti(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 2260
    const-string v0, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    const/4 v1, 0x0

    .line 2262
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v1, v3

    .line 2263
    const/4 v3, 0x1

    if-eqz v1, :cond_38

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v3

    if-nez v4, :cond_38

    .line 2265
    move-object v4, v0

    .line 2266
    .local v4, "enforcedPermission":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2c

    .line 2267
    sget-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v0, :cond_4b

    .line 2268
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "com.samsung.permission.READ_KNOX_NOTIFICATION not granted"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 2271
    :cond_2c
    sget-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v0, :cond_37

    .line 2272
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "com.samsung.permission.READ_KNOX_NOTIFICATION granted"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_37
    return v3

    .line 2276
    .end local v4    # "enforcedPermission":Ljava/lang/String;
    :cond_38
    if-eqz v1, :cond_4b

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4b

    .line 2277
    sget-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v0, :cond_4a

    .line 2278
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Application under /system partition"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4a} :catch_4e

    .line 2279
    :cond_4a
    return v3

    .line 2276
    :cond_4b
    :goto_4b
    nop

    .line 2283
    nop

    .line 2284
    return v2

    .line 2281
    :catch_4e
    move-exception v0

    .line 2282
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method

.method public static isPremiumContainer(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 967
    const/4 v0, 0x0

    return v0
.end method

.method public static isSamsungWorkspace(I)Z
    .registers 3
    .param p0, "userId"    # I

    .line 2350
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2351
    return v0

    .line 2353
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2354
    const/4 v0, 0x1

    return v0

    .line 2356
    :cond_c
    return v0
.end method

.method public static isSecureFolderId()Z
    .registers 2

    .line 1975
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1976
    .local v0, "userId":I
    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v1

    return v1
.end method

.method public static isSecureFolderId(I)Z
    .registers 2
    .param p0, "id"    # I

    .line 1985
    const/high16 v0, 0x20000

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method private isSecureFolderMetaDataEnabled()Z
    .registers 5

    .line 2160
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.knox.securefolder"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2161
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_12

    return v0

    .line 2162
    :cond_12
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2163
    .local v2, "b":Landroid/os/Bundle;
    if-eqz v2, :cond_1f

    const-string v3, "com.samsung.knox.securefolder.enable"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_20

    if-eqz v3, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0

    .line 2164
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "b":Landroid/os/Bundle;
    :catch_20
    move-exception v1

    .line 2165
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "please add proper log here"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2167
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static final isSepLiteDevice(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1115
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1430
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1433
    .local v0, "versionInfo":Landroid/os/Bundle;
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    .line 1434
    return v3

    .line 1437
    :cond_e
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "2.0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1439
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1440
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1441
    return v3

    .line 1442
    :cond_2a
    const-string/jumbo v1, "move-file-to-container"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1443
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v1

    return v1

    .line 1444
    :cond_38
    const-string/jumbo v1, "move-file-to-owner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1445
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v1

    return v1

    .line 1450
    :cond_46
    const/4 v1, 0x1

    return v1
.end method

.method public static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1995
    const/4 v0, 0x0

    .line 1997
    .local v0, "isSystem":Z
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1998
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_23

    .line 1999
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_14

    .line 2000
    const/4 v0, 0x1

    goto :goto_23

    .line 2001
    :cond_14
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1c

    .line 2002
    const/4 v0, 0x1

    goto :goto_23

    .line 2003
    :cond_1c
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1e} :catch_24

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_23

    .line 2004
    const/4 v0, 0x1

    .line 2009
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_23
    :goto_23
    goto :goto_28

    .line 2007
    :catch_24
    move-exception v1

    .line 2008
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2010
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_28
    return v0
.end method

.method static synthetic lambda$getPersonaName$0(I)Ljava/lang/String;
    .registers 2
    .param p0, "personaId"    # I

    .line 1903
    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getWorkName$2(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 2693
    const v0, 0x1040f9a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getWorkProfileName$1(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 2685
    const v0, 0x1040f9f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logDpmsKA(Landroid/os/Bundle;)V
    .registers 4
    .param p0, "b"    # Landroid/os/Bundle;

    .line 3498
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3500
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->logDpmsKA(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 3503
    goto :goto_17

    .line 3501
    :catch_e
    move-exception v0

    .line 3502
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "logDpmsKA"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3505
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public static processProfileNameChange(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "c"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .line 1146
    const-string v0, "caller_id_to_show_"

    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1147
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processProfileNameChange is called for userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1150
    .local v1, "isCallerToShow":I
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processProfileNameChange isCallerToShow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1152
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processProfileNameChange update is done..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    nop

    .end local v1    # "isCallerToShow":I
    goto :goto_9b

    .line 1154
    :cond_82
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processProfileNameChange ignoring for userId- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9b} :catch_9c

    .line 1158
    :goto_9b
    goto :goto_a0

    .line 1156
    :catch_9c
    move-exception v0

    .line 1157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1159
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a0
    return-void
.end method

.method private static readECFile(Ljava/lang/String;)[B
    .registers 11
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2809
    const/4 v0, 0x0

    .line 2810
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 2811
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 2813
    .local v2, "bytes":[B
    if-eqz p0, :cond_63

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    goto :goto_63

    .line 2818
    :cond_c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 2819
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 2821
    nop

    .line 2823
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 2824
    .local v3, "length":J
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_5b

    .line 2829
    long-to-int v5, v3

    new-array v2, v5, [B

    .line 2831
    const/4 v5, 0x0

    .line 2832
    .local v5, "offset":I
    const/4 v6, 0x0

    .line 2833
    .local v6, "numRead":I
    :goto_29
    array-length v7, v2

    if-ge v5, v7, :cond_37

    array-length v7, v2

    sub-int/2addr v7, v5

    .line 2834
    invoke-virtual {v1, v2, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    move v6, v7

    if-ltz v7, :cond_37

    .line 2835
    add-int/2addr v5, v6

    goto :goto_29

    .line 2838
    :cond_37
    array-length v7, v2

    if-lt v5, v7, :cond_3e

    .line 2843
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 2845
    .end local v3    # "length":J
    .end local v5    # "offset":I
    .end local v6    # "numRead":I
    return-object v2

    .line 2839
    .restart local v3    # "length":J
    .restart local v5    # "offset":I
    .restart local v6    # "numRead":I
    :cond_3e
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The file was not completely read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2825
    .end local v5    # "offset":I
    .end local v6    # "numRead":I
    :cond_5b
    new-instance v5, Ljava/io/IOException;

    const-string v6, "The file is too big"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2814
    .end local v3    # "length":J
    :cond_63
    :goto_63
    return-object v2
.end method

.method public static refreshLockTimer(I)V
    .registers 4
    .param p0, "userId"    # I

    .line 3119
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3121
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->refreshLockTimer(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 3124
    goto :goto_17

    .line 3122
    :catch_e
    move-exception v0

    .line 3123
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "refreshLockTimer failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3126
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public static removePartialContainer()V
    .registers 0

    .line 3020
    return-void
.end method

.method public static sendContainerEvent(Landroid/content/Context;II)V
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "userHandle"    # I
    .param p2, "containerEvent"    # I

    .line 2484
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 2485
    return-void
.end method

.method public static sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V
    .registers 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "userHandle"    # I
    .param p2, "containerEvent"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .line 2489
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2490
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x9

    if-ne p2, v1, :cond_11

    .line 2491
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_16

    .line 2493
    :cond_11
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2495
    :goto_16
    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2496
    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2499
    if-eqz p3, :cond_25

    .line 2500
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2502
    :cond_25
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2503
    return-void
.end method

.method public static setAttributes(II)Z
    .registers 5
    .param p0, "userId"    # I
    .param p1, "attr"    # I

    .line 2413
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2415
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v0, p1, :cond_12

    .line 2416
    :try_start_a
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAttributes DualDAR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    :cond_12
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setAttributes(II)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1b

    return v0

    .line 2419
    :catch_1b
    move-exception v0

    .line 2420
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2424
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public static setCustomName(ILjava/lang/String;)Z
    .registers 6
    .param p0, "userId"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 2757
    const/4 v0, 0x0

    .line 2758
    .local v0, "ret":Z
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 2760
    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setProfileName(ILjava/lang/String;)Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_11

    move v0, v1

    .line 2763
    goto :goto_1a

    .line 2761
    :catch_11
    move-exception v1

    .line 2762
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCustomName failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2765
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1a
    :goto_1a
    return v0
.end method

.method public static setFocusedLauncherId(I)V
    .registers 4
    .param p0, "userId"    # I

    .line 2373
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2375
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->setFocusedLauncherId(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 2378
    goto :goto_17

    .line 2376
    :catch_e
    move-exception v0

    .line 2377
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFocusedLauncherId failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2380
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public static setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "installed"    # Z
    .param p2, "userId"    # I

    .line 1129
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1131
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 1132
    :catch_f
    move-exception v0

    .line 1133
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPackageSettingInstalled failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static setPersonalModeName(ILjava/lang/String;)Z
    .registers 6
    .param p0, "userId"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 2775
    const/4 v0, 0x0

    .line 2776
    .local v0, "ret":Z
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 2779
    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setPersonalModeName(ILjava/lang/String;)Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_11

    move v0, v1

    .line 2782
    goto :goto_1a

    .line 2780
    :catch_11
    move-exception v1

    .line 2781
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getPersonalModeName failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2784
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1a
    :goto_1a
    return v0
.end method

.method public static shouldBlockUsbInterface(ILandroid/hardware/usb/UsbInterface;)Z
    .registers 8
    .param p0, "userId"    # I
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;

    .line 3225
    if-eqz p1, :cond_9f

    :try_start_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9f

    .line 3226
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Knox:: claimInterface : request for user -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and interface reuqest -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    const/16 v0, 0xdc

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 3228
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_96

    .line 3229
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    const/4 v1, 0x0

    .line 3230
    .local v1, "allowed":Z
    if-eqz v0, :cond_8b

    .line 3232
    :try_start_3f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3233
    .local v2, "callingUid":I
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Knox:: claimInterface : calling isPackageAllowedToAccessExternalSdcard for user- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and callingUid-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    invoke-interface {v0, p0, v2}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v3

    move v1, v3

    .line 3235
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Knox:: claimInterface : calling isPackageAllowedToAccessExternalSdcard allowed-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_82} :catch_83
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_82} :catch_96

    .line 3238
    .end local v2    # "callingUid":I
    goto :goto_8b

    .line 3236
    :catch_83
    move-exception v2

    .line 3237
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_84
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "doBind(): isPackageAllowedToAccessExternalSdcard on EDMProxy failed! "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3240
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_8b
    :goto_8b
    if-nez v1, :cond_9f

    .line 3241
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Knox:: claimInterface : blocking claim interface request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_94} :catch_96

    .line 3242
    const/4 v2, 0x1

    return v2

    .line 3246
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v1    # "allowed":Z
    :catch_96
    move-exception v0

    .line 3247
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "claimInterface exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 3248
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9f
    nop

    .line 3249
    :goto_a0
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldForwardSettingIntentForSecureFolder(Ljava/lang/String;)Z
    .registers 7
    .param p0, "action"    # Ljava/lang/String;

    .line 909
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SETTINGS_INTENT_FORWARD_BLOCKLIST_FOR_SF:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 910
    .local v4, "blockedAction":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    return v2

    .line 909
    .end local v4    # "blockedAction":Ljava/lang/String;
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 912
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public static updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 3174
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3176
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 3177
    :catch_f
    move-exception v0

    .line 3178
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updatePersonaCache failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3181
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_18
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public CMFALock(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3632
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMFALock userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_28

    .line 3635
    :try_start_1c
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->CMFALock(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 3638
    goto :goto_28

    .line 3636
    :catch_20
    move-exception v0

    .line 3637
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call CMFALock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3640
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    return-void
.end method

.method public CMFAUnLock(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3644
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMFAUnLock userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_28

    .line 3647
    :try_start_1c
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->CMFAUnLock(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 3650
    goto :goto_28

    .line 3648
    :catch_20
    move-exception v0

    .line 3649
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call CMFAUnLock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3652
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    return-void
.end method

.method public addAppPackageNameToAllowList(ILjava/util/List;)V
    .registers 6
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3004
    .local p2, "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3006
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->addAppPackageNameToAllowList(ILjava/util/List;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 3009
    goto :goto_16

    .line 3007
    :catch_e
    move-exception v0

    .line 3008
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "addAppPackageNameToAllowList failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3011
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 19
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "serviceIntent"    # Landroid/content/Intent;
    .param p3, "conn"    # Landroid/content/ServiceConnection;
    .param p4, "flags"    # I
    .param p5, "targetUser"    # Landroid/os/UserHandle;

    .line 3266
    move-object v1, p0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 3268
    :try_start_7
    iget-object v0, v1, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    .line 3269
    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_3e

    move/from16 v11, p4

    int-to-long v3, v11

    .line 3268
    move-object/from16 v12, p3

    :try_start_12
    invoke-virtual {v0, v12, v2, v3, v4}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object v8

    .line 3270
    .local v8, "sd":Landroid/app/IServiceConnection;
    iget-object v0, v1, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_3b

    move-object v2, p2

    :try_start_19
    invoke-virtual {p2, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 3271
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v3

    iget-object v0, v1, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    .line 3272
    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v5

    iget-object v0, v1, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 3273
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 3271
    move-object v4, p1

    move-object v7, p2

    move/from16 v9, p4

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/knox/ISemPersonaManager;->bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v0
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_38} :catch_39

    return v0

    .line 3274
    .end local v8    # "sd":Landroid/app/IServiceConnection;
    :catch_39
    move-exception v0

    goto :goto_44

    :catch_3b
    move-exception v0

    move-object v2, p2

    goto :goto_44

    :catch_3e
    move-exception v0

    move-object v2, p2

    move-object/from16 v12, p3

    move/from16 v11, p4

    .line 3275
    .local v0, "re":Landroid/os/RemoteException;
    :goto_44
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 3279
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_49
    move-object v2, p2

    move-object/from16 v12, p3

    move/from16 v11, p4

    const/4 v0, 0x0

    return v0
.end method

.method public broadcastIntentThroughPersona(Landroid/content/Intent;I)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 2310
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_11

    .line 2312
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->broadcastIntentThroughPersona(Landroid/content/Intent;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 2313
    :catch_9
    move-exception v0

    .line 2314
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not broadcastIntentThroughPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2317
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public createConfirmProfileCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .registers 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    .line 2637
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2638
    const/4 v0, 0x0

    return-object v0

    .line 2640
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 2641
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_17

    .line 2642
    const-string v1, "com.samsung.android.knox.intent.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2644
    :cond_17
    return-object v0
.end method

.method public exists(I)Z
    .registers 3
    .param p1, "containerId"    # I

    .line 1345
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method public getAllKnoxNamesAndIds(Z)Ljava/util/HashMap;
    .registers 9
    .param p1, "onlyActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2242
    .local v0, "nameandids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 2243
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    .line 2245
    .local v2, "personaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_3e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3e

    .line 2246
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2247
    .local v4, "personaId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    .end local v4    # "personaId":I
    goto :goto_20

    .line 2251
    :cond_3e
    return-object v0
.end method

.method public getContainerName(ILandroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 2910
    const/4 v0, 0x0

    .line 2913
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 2914
    const-string v1, "Secure Folder"

    .line 2915
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.knox.securefolder"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v0, v2

    .line 2916
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 2918
    return-object v1

    .line 2919
    .end local v1    # "name":Ljava/lang/String;
    :cond_23
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2920
    const-string v1, "Dual Messenger"

    .line 2921
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.da.daagent"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v0, v2

    .line 2922
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_45

    move-object v1, v2

    .line 2924
    return-object v1

    .line 2928
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "name":Ljava/lang/String;
    :cond_44
    goto :goto_49

    .line 2926
    :catch_45
    move-exception v0

    .line 2927
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2930
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_49
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSepLiteDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2931
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2932
    .local v0, "mUm":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2933
    .local v1, "uInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_65

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v2

    .line 2935
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v1    # "uInfo":Landroid/content/pm/UserInfo;
    :cond_65
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_76

    .line 2937
    :try_start_69
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6d} :catch_6e

    return-object v0

    .line 2938
    :catch_6e
    move-exception v0

    .line 2939
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2942
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainerTypeForUserId(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 3337
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3338
    .local v0, "uInfo":Landroid/content/pm/UserInfo;
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3339
    const/4 v1, 0x2

    return v1

    .line 3340
    :cond_c
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3341
    const/4 v1, 0x3

    return v1

    .line 3342
    :cond_1c
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3343
    const/4 v1, 0x4

    return v1

    .line 3345
    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method public getCurrentContainerType()I
    .registers 4

    .line 3323
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3324
    .local v0, "userId":I
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3325
    .local v1, "uInfo":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3326
    const/4 v2, 0x2

    return v2

    .line 3327
    :cond_14
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 3328
    const/4 v2, 0x3

    return v2

    .line 3329
    :cond_24
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3330
    const/4 v2, 0x4

    return v2

    .line 3332
    :cond_2c
    const/4 v2, 0x0

    return v2
.end method

.method public getDualDARProfile()Landroid/os/Bundle;
    .registers 4

    .line 1234
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getDualDARProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_19

    .line 1237
    :try_start_c
    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getDualDARProfile()Landroid/os/Bundle;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return-object v0

    .line 1238
    :catch_11
    move-exception v0

    .line 1239
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1242
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExcludeComponentList(ZZ)Ljava/util/ArrayList;
    .registers 8
    .param p1, "isForSecureFolder"    # Z
    .param p2, "fromKnox"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 3523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3525
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz p1, :cond_4f

    .line 3526
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v1

    .line 3527
    .local v1, "sfId":I
    const-string v2, "blockedcompcommon"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 3528
    .local v2, "blockedCompCommon":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_22

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_22

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3529
    :cond_22
    if-eqz p2, :cond_3a

    .line 3530
    const-string v3, "blockedcompsecurefolder"

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 3531
    .local v3, "blockedCompSecurefolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_39

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_39

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3532
    .end local v3    # "blockedCompSecurefolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_39
    goto :goto_4f

    .line 3533
    :cond_3a
    const-string v3, "blockedcompknox"

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 3534
    .local v3, "blockedCompOwner":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_4f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4f

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3537
    .end local v1    # "sfId":I
    .end local v2    # "blockedCompCommon":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "blockedCompOwner":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4f
    :goto_4f
    return-object v0
.end method

.method public getFocusedKnoxId()I
    .registers 2

    .line 1871
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    return v0
.end method

.method public getFocusedLauncherId()I
    .registers 4

    .line 2390
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2392
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getFocusedLauncherId()I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 2393
    :catch_f
    move-exception v0

    .line 2394
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFocusedLauncherId failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2398
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method public getFocusedUser()I
    .registers 4

    .line 1879
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_12

    .line 1881
    :try_start_4
    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getFocusedUser()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 1882
    :catch_9
    move-exception v0

    .line 1883
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFocusedUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1886
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public getKioskId()I
    .registers 2

    .line 874
    const/4 v0, -0x1

    return v0
.end method

.method public getKnoxId(IZ)I
    .registers 8
    .param p1, "containerType"    # I
    .param p2, "onlyActive"    # Z

    .line 849
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v0

    .line 851
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_38

    .line 853
    :cond_e
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getKnoxIds not null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    packed-switch p1, :pswitch_data_3a

    goto :goto_37

    .line 856
    :pswitch_1a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 857
    .local v3, "id":I
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 858
    return v3

    .line 859
    .end local v3    # "id":I
    :cond_35
    goto :goto_1e

    .line 860
    :cond_36
    nop

    .line 864
    :goto_37
    return v1

    .line 851
    :cond_38
    :goto_38
    return v1

    nop

    :pswitch_data_3a
    .packed-switch 0x2
        :pswitch_1a
    .end packed-switch
.end method

.method public getKnoxIds(Z)Ljava/util/List;
    .registers 7
    .param p1, "onlyActiveList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    .local v0, "personaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_40

    .line 1318
    const/4 v2, 0x0

    :try_start_a
    invoke-interface {v1, v2, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 1319
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1322
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1323
    goto :goto_12

    .line 1326
    :cond_25
    if-eqz p1, :cond_2d

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1327
    :cond_2d
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_36} :catch_38

    .line 1329
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_36
    goto :goto_12

    .line 1332
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_37
    goto :goto_40

    .line 1330
    :catch_38
    move-exception v1

    .line 1331
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not getKnoxIds"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1334
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_40
    :goto_40
    return-object v0
.end method

.method public getKnoxNameChangedAsUser(I)Ljava/lang/String;
    .registers 6
    .param p1, "personaId"    # I

    .line 1956
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "We will never get null from ui.name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1958
    .local v0, "ui":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 1959
    return-object v1

    .line 1961
    :cond_f
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1962
    .local v2, "name":Ljava/lang/String;
    const-string v3, "KNOX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "KNOX II"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    .line 1965
    :cond_22
    return-object v2

    .line 1963
    :cond_23
    :goto_23
    return-object v1
.end method

.method public getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2178
    .local v0, "returnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_2a

    .line 2181
    const/16 v1, 0xe6

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2182
    return-object v0

    .line 2184
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_29

    .line 2186
    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 2187
    .local v1, "appUserId":I
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getMoveToKnoxMenuList(I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_21

    return-object v2

    .line 2188
    .end local v1    # "appUserId":I
    :catch_21
    move-exception v1

    .line 2189
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call Persona service:getMoveToKnoxMenuList"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2192
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_29
    return-object v0

    .line 2179
    :cond_2a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "appContext cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPersonaUserHasBeenShutdownBefore(I)Z
    .registers 5
    .param p1, "personaId"    # I

    .line 1828
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_11

    .line 1830
    :try_start_4
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaUserHasBeenShutdownBefore(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 1831
    :catch_9
    move-exception v0

    .line 1832
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getUserStateForKnox"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1835
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .line 3568
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .line 3599
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .registers 6

    .line 1367
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getRCPInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 1369
    .local v0, "rcpm":Lcom/samsung/android/knox/SemRemoteContentManager;
    const/4 v1, 0x0

    .line 1370
    .local v1, "rcpInterface":Landroid/content/IRCPInterface;
    if-eqz v0, :cond_34

    .line 1372
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v1

    .line 1373
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in getRCPInterface rcpInterface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    return-object v1

    .line 1376
    :cond_34
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Received getRCPInterface as null from bridge manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3510
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_11

    .line 3512
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 3513
    :catch_9
    move-exception v0

    .line 3514
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3517
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeparatedAppsList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3072
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3073
    .local v0, "separationApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 3075
    :try_start_b
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getSeparatedAppsList()Ljava/util/List;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_15

    move-object v0, v1

    .line 3079
    goto :goto_1d

    .line 3077
    :catch_15
    move-exception v1

    .line 3078
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception has occured in getSeparatedAppsList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-object v0
.end method

.method public getUpdatedListWithAppSeparation(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3086
    .local p1, "originalList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3087
    .local v0, "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 3089
    :try_start_b
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getUpdatedListWithAppSeparation(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_15

    move-object v0, v1

    .line 3093
    goto :goto_1d

    .line 3091
    :catch_15
    move-exception v1

    .line 3092
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception has occurred in getUpdatedListWithAppSeparationList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-object v0
.end method

.method public hasLicensePermission(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 3723
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_11

    .line 3725
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->hasLicensePermission(ILjava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 3726
    :catch_9
    move-exception v0

    .line 3727
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call hasLicensePermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3730
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isAppSeparationPresent()Z
    .registers 5

    .line 3100
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 3102
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->isAppSeparationPresent()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    .line 3103
    .local v0, "result":Z
    return v0

    .line 3105
    .end local v0    # "result":Z
    :catch_f
    move-exception v0

    .line 3106
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception has occured in isAppSeparationPresent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public isFOTAUpgrade()Z
    .registers 4

    .line 1283
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_11

    .line 1285
    :try_start_4
    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->isFOTAUpgrade()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 1286
    :catch_9
    move-exception v0

    .line 1287
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get FOTAUpgrade"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isFotaUpgradeVersionChanged()Z
    .registers 4

    .line 2131
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_11

    .line 2133
    :try_start_4
    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->isFotaUpgradeVersionChanged()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 2134
    :catch_9
    move-exception v0

    .line 2135
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get isFotaUpgradeVersionChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2138
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isInSeparatedAppsOnly(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 3058
    const/4 v0, 0x0

    .line 3059
    .local v0, "isInSeparatedAppsOnly":Z
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 3061
    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isInSeparatedAppsOnly(Ljava/lang/String;)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11

    move v0, v1

    .line 3065
    goto :goto_2e

    .line 3063
    :catch_11
    move-exception v1

    .line 3064
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception has occurred in isInSeparatedAppsOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    return v0
.end method

.method public isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 12
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "containerId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 1732
    const/4 v0, 0x0

    .line 1734
    .local v0, "isApprovedPackages":Z
    const/4 v1, 0x0

    if-eqz p3, :cond_110

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_110

    const-string/jumbo v2, "null"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_110

    .line 1738
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1739
    return v1

    .line 1743
    :cond_1e
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackages:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_22
    if-ge v4, v3, :cond_30

    aget-object v5, v2, v4

    .line 1744
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1745
    return v1

    .line 1743
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 1749
    :cond_30
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mdmPackages:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_34
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    .line 1750
    .restart local v5    # "pkg":Ljava/lang/String;
    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 1751
    return v1

    .line 1749
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 1756
    :cond_42
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->approvedPackages:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_46
    if-ge v4, v3, :cond_54

    aget-object v5, v2, v4

    .line 1757
    .restart local v5    # "pkg":Ljava/lang/String;
    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 1758
    const/4 v0, 0x1

    .line 1756
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 1763
    :cond_54
    :try_start_54
    const-string v2, "DisallowPackage"

    .line 1764
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 1765
    .local v3, "disallowPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1766
    .restart local v5    # "pkg":Ljava/lang/String;
    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 1767
    return v1

    .line 1769
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_71
    goto :goto_5e

    .line 1771
    :cond_72
    if-nez v0, :cond_93

    .line 1772
    const-string v4, "AllowPackage"

    move-object v2, v4

    .line 1773
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1774
    .local v4, "allowPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1775
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v6, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_8f} :catch_94

    if-eqz v7, :cond_92

    .line 1776
    const/4 v0, 0x1

    .line 1778
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_92
    goto :goto_7f

    .line 1782
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "disallowPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "allowPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_93
    goto :goto_98

    .line 1780
    :catch_94
    move-exception v2

    .line 1781
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1785
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_98
    if-nez v0, :cond_fe

    .line 1786
    const/4 v2, 0x0

    .line 1788
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_9b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v2, v3

    .line 1789
    if-nez v2, :cond_a9

    .line 1790
    return v1

    .line 1791
    :cond_a9
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1792
    .local v3, "b":Landroid/os/Bundle;
    const/4 v5, 0x1

    if-eqz v3, :cond_b8

    const-string v6, "com.samsung.android.multiuser.install_only_owner"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b8

    move v6, v5

    goto :goto_b9

    :cond_b8
    move v6, v1

    .line 1793
    .local v6, "isOnlyForOwner":Z
    :goto_b9
    if-eqz v3, :cond_d7

    if-eqz v6, :cond_d7

    .line 1794
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isOnlyForOwner() true - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9b .. :try_end_d6} :catch_fc

    .line 1795
    return v1

    .line 1799
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v6    # "isOnlyForOwner":Z
    :cond_d7
    nop

    .line 1801
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_e2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_fe

    .line 1803
    :cond_e2
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "has System flag() true - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    return v1

    .line 1797
    :catch_fc
    move-exception v3

    .line 1798
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1

    .line 1809
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_fe
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_10f

    .line 1811
    :try_start_102
    invoke-interface {v2, p3, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->isPossibleAddAppsToContainer(Ljava/lang/String;I)Z

    move-result v1
    :try_end_106
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_106} :catch_107

    return v1

    .line 1812
    :catch_107
    move-exception v2

    .line 1813
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Could not get isPossibleAddAppsToContainer , inside SemPersonaManager with exception:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1816
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_10f
    return v1

    .line 1735
    :cond_110
    :goto_110
    return v1
.end method

.method public isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;I)Z
    .registers 7
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "containerUserId"    # I
    .param p3, "appPackageName"    # Ljava/lang/String;
    .param p4, "appUserId"    # I

    .line 1706
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1707
    return v0

    .line 1709
    :cond_4
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1710
    return v0

    .line 1717
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/SemPersonaManager;->isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKioskModeEnabled(I)Z
    .registers 3
    .param p1, "containerId"    # I

    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public isKnoxActivated()Z
    .registers 3

    .line 2148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public isKnoxKeyguardShown()Z
    .registers 2

    .line 886
    const/4 v0, 0x0

    return v0
.end method

.method public isKnoxReachedToMax()Z
    .registers 7

    .line 2204
    const/4 v0, 0x0

    .line 2205
    .local v0, "isReached":Z
    const/4 v1, 0x0

    .line 2206
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v3, 0x0

    if-nez v2, :cond_8

    .line 2207
    return v3

    .line 2210
    :cond_8
    const/4 v4, 0x1

    :try_start_9
    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_33

    move-object v1, v2

    .line 2214
    nop

    .line 2216
    if-eqz v1, :cond_32

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_19

    goto :goto_32

    .line 2220
    :cond_19
    const/4 v2, 0x0

    .line 2221
    .local v2, "knoxSize":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2222
    .local v5, "ui":Landroid/content/pm/UserInfo;
    nop

    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    .line 2223
    goto :goto_1e

    .line 2225
    :cond_2e
    if-lt v2, v4, :cond_31

    .line 2226
    const/4 v0, 0x1

    .line 2228
    :cond_31
    return v0

    .line 2217
    .end local v2    # "knoxSize":I
    :cond_32
    :goto_32
    return v3

    .line 2211
    :catch_33
    move-exception v2

    .line 2212
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getProfiles failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2213
    return v3
.end method

.method public isProfileNameCustomized(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1916
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1918
    :try_start_5
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfileName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_d

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1

    .line 1919
    :catch_d
    move-exception v0

    .line 1920
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call Persona service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1923
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_15
    return v1
.end method

.method public isShareClipboardDataToContainerAllowed(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 3462
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_11

    .line 3464
    :try_start_4
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isShareClipboardDataToContainerAllowed(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 3465
    :catch_9
    move-exception v0

    .line 3466
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3469
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isShareClipboardDataToOwnerAllowed(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 3450
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_11

    .line 3452
    :try_start_4
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 3453
    :catch_9
    move-exception v0

    .line 3454
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3457
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isUserManaged()Z
    .registers 2

    .line 2153
    nop

    .line 2154
    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderMetaDataEnabled()Z

    move-result v0

    .line 2153
    return v0
.end method

.method public launchPersonaHome(I)Z
    .registers 5
    .param p1, "personaId"    # I

    .line 1266
    const/4 v0, 0x1

    .line 1267
    .local v0, "result":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    .line 1268
    const/4 v0, 0x0

    .line 1269
    const/4 p1, 0x0

    .line 1271
    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1272
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1273
    const-string/jumbo v2, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {v2, v1}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1274
    return v0
.end method

.method public lockPersona(I)V
    .registers 4
    .param p1, "personaId"    # I

    .line 1821
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1822
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1823
    const-string/jumbo v1, "knox.container.proxy.COMMAND_LOCK_PROFILE"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1824
    return-void
.end method

.method public postPwdChangeNotificationForDeviceOwner(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3689
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3691
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->postPwdChangeNotificationForDeviceOwner(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 3694
    goto :goto_16

    .line 3692
    :catch_e
    move-exception v0

    .line 3693
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3696
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .registers 5
    .param p1, "mSystemPersonaObserver"    # Landroid/content/pm/ISystemPersonaObserver;

    .line 1254
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_11

    .line 1256
    :try_start_4
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 1257
    :catch_9
    move-exception v0

    .line 1258
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not registerSystemPersonaObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1261
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public sendKnoxForesightBroadcast(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3711
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_11

    .line 3713
    :try_start_4
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->sendKnoxForesightBroadcast(Landroid/content/Intent;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 3714
    :catch_9
    move-exception v0

    .line 3715
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call sendKnoxForesightBroadcast"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3718
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public sendRequestKeyStatus(I)V
    .registers 5
    .param p1, "containerId"    # I

    .line 3300
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3302
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->sendRequestKeyStatus(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 3305
    goto :goto_17

    .line 3303
    :catch_e
    move-exception v0

    .line 3304
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendRequestKeyStatus failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3307
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public setAppSeparationDefaultPolicy(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1414
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_10

    .line 1416
    :try_start_4
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setAppSeparationDefaultPolicy(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1419
    goto :goto_10

    .line 1417
    :catch_8
    move-exception v0

    .line 1418
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not call setAppSeparationDefaultPolicy , inside SemPersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1421
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public setDualDARProfile(Landroid/os/Bundle;)I
    .registers 5
    .param p1, "config"    # Landroid/os/Bundle;

    .line 1219
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualDARProfile() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_2b

    .line 1222
    :try_start_1d
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setDualDARProfile(Landroid/os/Bundle;)I

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_22

    return v0

    .line 1223
    :catch_22
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setDualDARProfile Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1227
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    const/4 v0, -0x1

    return v0
.end method

.method public setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 3606
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_9

    .line 3607
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 3609
    :cond_9
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in PersonaPolicyManager, setRCPDataPolicy() is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 3613
    goto :goto_1a

    .line 3611
    :catch_12
    move-exception v0

    .line 3612
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get setRCPDataPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3614
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 3620
    .local p2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_11

    .line 3622
    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 3623
    :catch_9
    move-exception v0

    .line 3624
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3627
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public startActivityThroughPersona(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2294
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_11

    .line 2296
    :try_start_4
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->startActivityThroughPersona(Landroid/content/Intent;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 2297
    :catch_9
    move-exception v0

    .line 2298
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not startActivityThroughPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2301
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public startCountrySelectionActivity(Z)V
    .registers 5
    .param p1, "isUnified"    # Z

    .line 3667
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_10

    .line 3669
    :try_start_4
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->startCountrySelectionActivity(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 3672
    goto :goto_10

    .line 3670
    :catch_8
    move-exception v0

    .line 3671
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call startCountrySelectionActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3674
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public startTermsActivity()V
    .registers 4

    .line 3678
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_10

    .line 3680
    :try_start_4
    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->startTermsActivity()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 3683
    goto :goto_10

    .line 3681
    :catch_8
    move-exception v0

    .line 3682
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call startTermsActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3685
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public updateProfileActivityTimeFromKnox(IJ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "eventTime"    # J

    .line 3656
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_10

    .line 3658
    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->updateProfileActivityTimeFromKnox(IJ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 3661
    goto :goto_10

    .line 3659
    :catch_8
    move-exception v0

    .line 3660
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3663
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method
