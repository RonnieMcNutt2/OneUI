.class public final Landroid/content/om/SamsungThemeConstants;
.super Ljava/lang/Object;
.source "SamsungThemeConstants.java"


# static fields
.field public static final ACTION_THEME_APPLY:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"

.field public static final CATEGORY_ZIPPED_LOCALE_OVERLAY:Ljava/lang/String; = "zipped-overlay"

.field public static final CURRENT_SEC_ACTIVE_THEME_PACKAGE:Ljava/lang/String; = "current_sec_active_themepackage"

.field public static final DATA_APP_DIR:Ljava/lang/String; = "/data/app"

.field public static final DATA_OVERLAY_DIR:Ljava/lang/String; = "/data/overlays"

.field public static final DEBUG_THEMES:Z = true

.field public static final FILIPINO_LOCALE_CODE:Ljava/lang/String; = "fil"

.field public static final IS_SAMSUNG_APK_OPTIMIZATION_ENABLED:Z = true

.field public static final IS_SAMSUNG_THEMES_ENABLED:Z = true

.field public static final LEGACY_CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.android.calendar"

.field public static final LEGACY_CONTACT_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final LEGACY_INCALLUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.incallui"

.field public static final LEGACY_MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final METADATA_ZIPPED_LOCALE_OVERLAY:Ljava/lang/String; = "com.samsung.android.zippedOverlay"

.field public static final PACKAGE_NAME_FOR_SKIP_THEME_APPICON:Ljava/lang/String; = "android.content.cts"

.field public static final PATH_LOCAL_TEMP:Ljava/lang/String; = "/data/local/tmp"

.field public static final PATH_OVERLAY:Ljava/lang/String; = "/data/overlays"

.field public static final PATH_OVERLAY_CURRENT_LOCALE_APKS:Ljava/lang/String; = "/data/overlays/current_locale_apks/files"

.field public static final PATH_OVERLAY_CURRENT_STYLE:Ljava/lang/String; = "/data/overlays/currentstyle"

.field public static final PATH_OVERLAY_REAPPLY:Ljava/lang/String; = "/data/overlays/currentstyle/reapply"

.field public static final PATH_THEMEPARK_ICON:Ljava/lang/String; = "/data/overlays/themepark/icons/"

.field public static final PATH_THEMEPARK_OVERLAY:Ljava/lang/String; = "/data/overlays/themepark/"

.field public static final PATH_THEMEPARK_STATE_CHECK:Ljava/lang/String; = "/data/overlays/themepark/state_applied.txt"

.field public static final PATH_THEME_PREFERENCES:Ljava/lang/String; = "/data/overlays/preferences/samsung.andorid.themes.component_preference.xml"

.field public static final PERMISSION_OVERLAY_COMPONENT:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

.field public static final PERMISSION_OVERLAY_LANGUAGE:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_LANGUAGE"

.field public static final PERMISSION_OVERLAY_THEME:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

.field public static final PERMISSION_SAMSUNG_OVERLAY:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_"

.field public static final PREFIX_THEMEPARK:Ljava/lang/String; = "com.samsung.themedesigner"

.field public static final PREFIX_THEMEPARK_CATEGORY:Ljava/lang/String; = "com.samsung.android.themedesigner"

.field public static final PREFIX_THEMEPARK_OVERLAY:Ljava/lang/String; = "com.samsung.themedesigner.OV"

.field public static final TAGALOG_LOCALE_CODE:Ljava/lang/String; = "tl"

.field public static final THEMECENTER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.themecenter"

.field public static final THEMESTORE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.themestore"

.field public static final THEME_OVERLAY_DIR:Ljava/lang/String; = "/data/overlays/style"

.field public static final changeableApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static ignoreAppIconThemeHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static ignoreAppIconThemeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static immortalApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static nonAdaptiveIconPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static overlayTargetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static protectedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 63

    .line 71
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.sec.android.app.desktoplauncher"

    const-string v2, "com.sec.android.app.eventnotification"

    const-string v3, "com.samsung.tmowfc.wfcpref"

    const-string v4, "com.sec.android.app.launcher"

    const-string v5, "com.sec.android.app.FlashBarService"

    const-string v6, "com.android.nfc"

    const-string v7, "com.samsung.felicalock"

    const-string v8, "com.android.apps.tag"

    const-string v9, "com.samsung.app.newtrim"

    const-string v10, "com.adnroid.dreams.phototable"

    const-string v11, "com.policydm"

    const-string v12, "com.samsung.android.securitylogagent"

    const-string v13, "com.sec.android.app.SecSetupWizard"

    const-string v14, "com.samsung.safetyinformation"

    const-string v15, "com.sec.app.samsungprinterservice"

    const-string v16, "com.samsung.spg"

    const-string v17, "com.sec.android.app.capabilitymanager"

    const-string v18, "com.sec.android.app.wallpaperchooser"

    const-string v19, "com.bst.airmessage"

    const-string v20, "com.sec.android.app.simsettingmgr"

    const-string v21, "com.sec.android.app.simcardmanagement"

    const-string v22, "com.sec.android.widgetapp.dualsimwidget"

    const-string v23, "com.sec.android.app.irsettings"

    const-string v24, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v25, "com.google.android.marvin.talkback"

    const-string v26, "com.samsung.android.SettingsReceiver"

    const-string v27, "com.sec.android.app.popupuireceiver"

    const-string v28, "com.sec.android.wallpapercropper2"

    const-string v29, "com.samsung.android.MtpApplication"

    const-string v30, "com.sec.android.app.soundalive"

    const-string v31, "com.samsung.android.app.galaxylabs"

    const-string v32, "com.sec.android.mimage.photoretouching"

    const-string v33, "com.sec.android.mimage.gear360editor"

    const-string v34, "com.android.providers.media"

    const-string v35, "com.samsung.android.slinkcloud"

    const-string v36, "com.sec.android.emergencylauncher"

    const-string v37, "com.samsung.hongbaoassistant"

    const-string v38, "com.sec.android.app.firewall"

    const-string v39, "com.bst.spamcall"

    const-string v40, "com.sec.app.screenrecorder"

    const-string v41, "com.samsung.android.bixbytouch"

    const-string v42, "com.samsung.android.mateagent"

    const-string v43, "com.samsung.android.dynamiclock"

    const-string v44, "com.android.bluetooth"

    const-string v45, "com.samsung.android.app.telephonyui.netsettings"

    const-string v46, "com.samsung.theme"

    const-string v47, "com.sec.winset"

    const-string v48, "com.sec.sesl.tester"

    const-string v49, "com.samsung.advancedcalling"

    const-string v50, "com.android.certinstaller"

    const-string v51, "com.android.keychain"

    const-string v52, "com.sec.android.app.quicktool"

    const-string v53, "com.sec.unifiedwfc"

    const-string v54, "com.samsung.advancedcalling"

    const-string v55, "com.samsung.knox.securefolder"

    const-string v56, "com.samsung.android.app.smartcapture"

    const-string v57, "com.samsung.android.app.clipboardedge"

    const-string v58, "com.android.certinstaller"

    const-string v59, "com.android.keychain"

    const-string v60, "com.samsung.android.fmm"

    const-string v61, "com.sec.android.widgetapp.easymodecontactswidget"

    const-string v62, "com.samsung.android.vdc"

    filled-new-array/range {v1 .. v62}, [Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/om/SamsungThemeConstants;->changeableApps:Ljava/util/HashSet;

    .line 152
    new-instance v0, Landroid/content/om/SamsungThemeConstants$1;

    invoke-direct {v0}, Landroid/content/om/SamsungThemeConstants$1;-><init>()V

    sput-object v0, Landroid/content/om/SamsungThemeConstants;->overlayTargetMap:Ljava/util/HashMap;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android"

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.nfc"

    const-string v4, "com.samsung.android.universalswitch"

    const-string v5, "com.android.providers.media"

    const-string v6, "com.android.incallui"

    const-string v7, "com.android.phone"

    const-string v8, "com.samsung.android.app.aodservice"

    const-string v9, "com.sec.android.app.launcher"

    const-string v10, "com.sec.android.app.safetyassurance"

    const-string v11, "com.samsung.android.incallui"

    const-string v12, "com.samsung.android.scloud"

    const-string v13, "com.android.bluetooth"

    const-string v14, "com.samsung.android.mateagent"

    const-string v15, "com.samsung.android.dynamiclock"

    const-string v16, "com.samsung.android.messaging"

    const-string v17, "com.android.frameworks.gofservicetests"

    const-string v18, "com.samsung.android.localeoverlaymanager"

    const-string v19, "com.samsung.android.app.dressroom"

    const-string v20, "com.samsung.android.fast"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/om/SamsungThemeConstants;->immortalApps:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.themecenter"

    const-string v2, "com.samsung.android.localeoverlaymanager"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/om/SamsungThemeConstants;->protectedApps:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.nttdocomo.android.dhome"

    const-string v2, "com.nttdocomo.android.homezozo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/om/SamsungThemeConstants;->ignoreAppIconThemeHosts:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.liquidanimation.DarkSideRC.appicon"

    const-string v2, "D.OlympicGamesTokyo2020Theme.appicon"

    const-string v3, "SamsungElectronics.Tokyo2020.appicon"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/om/SamsungThemeConstants;->ignoreAppIconThemeList:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.knox.securefolder"

    const-string v2, "com.samsung.android.appseparation"

    const-string v3, "com.sec.android.app.camera"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/om/SamsungThemeConstants;->nonAdaptiveIconPkgList:Ljava/util/ArrayList;

    .line 222
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static localeDirsChanged([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10
    .param p0, "overlayDir"    # [Ljava/lang/String;
    .param p1, "resDir"    # [Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array v1, v0, [Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object v1, p0

    :goto_7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 286
    .local v1, "set1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_10

    new-array v2, v0, [Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object v2, p1

    :goto_11
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 287
    .local v2, "set2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 288
    .local v3, "union":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 289
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 290
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 291
    .local v4, "intersection":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 292
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 293
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 294
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 295
    .local v6, "s":Ljava/lang/String;
    const-string v7, "/data/overlays/current_locale_apks/files"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 296
    const/4 v0, 0x1

    return v0

    .line 298
    .end local v6    # "s":Ljava/lang/String;
    :cond_48
    goto :goto_32

    .line 299
    :cond_49
    return v0
.end method
