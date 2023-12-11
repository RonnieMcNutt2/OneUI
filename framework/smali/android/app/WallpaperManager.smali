.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Landroid/app/SemWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$ColorManagementProxy;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;,
        Landroid/app/WallpaperManager$OnColorsChangedListener;,
        Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;,
        Landroid/app/WallpaperManager$WallpaperSetCompletion;,
        Landroid/app/WallpaperManager$CachedWallpaper;,
        Landroid/app/WallpaperManager$SetWallpaperFlags;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final BNR_ORIGINAL_BACKUP_FILE_PATH:Ljava/lang/String; = "/Android/data/com.android.systemui/files/backupwallpapers/"

.field public static final BNR_ORIGINAL_FILE_NAME_HOME:Ljava/lang/String; = "original_file_home.jpg"

.field public static final BNR_ORIGINAL_FILE_NAME_LOCK:Ljava/lang/String; = "original_file_lock.jpg"

.field public static final BNR_SUB_DISPLAY:Ljava/lang/String; = "sub_display/"

.field public static final BNR_XML_FILE_NAME_HOME:Ljava/lang/String; = "backup_home.xml"

.field public static final BNR_XML_FILE_NAME_LOCK:Ljava/lang/String; = "backup_lock.xml"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_FREEZE:Ljava/lang/String; = "android.wallpaper.freeze"

.field public static final COMMAND_GOING_TO_SLEEP:Ljava/lang/String; = "android.wallpaper.goingtosleep"

.field public static final COMMAND_KEYGUARD_GOING_AWAY:Ljava/lang/String; = "android.wallpaper.keyguardgoingaway"

.field public static final COMMAND_REAPPLY:Ljava/lang/String; = "android.wallpaper.reapply"

.field public static final COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field public static final COMMAND_UNFREEZE:Ljava/lang/String; = "android.wallpaper.unfreeze"

.field public static final COMMAND_WAKING_UP:Ljava/lang/String; = "android.wallpaper.wakingup"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_HIGHLIGHT_FILTER_AMOUNT:I = 0x3c

.field private static final DEFAULT_THEME_VIDEO_RES_ID_SUFFIX:Ljava/lang/String; = ".mp4"

.field private static final DEFAULT_VIDEO_WALLPAPER_RES_ID:Ljava/lang/String; = "video"

.field public static final EXTRA_FROM_FOREGROUND_APP:Ljava/lang/String; = "android.service.wallpaper.extra.FROM_FOREGROUND_APP"

.field public static final EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field public static final EXTRA_NEW_WALLPAPER_ID:Ljava/lang/String; = "android.service.wallpaper.extra.ID"

.field public static final FLAG_DISPLAY_DEX:I = 0x8

.field public static final FLAG_DISPLAY_PHONE:I = 0x4

.field public static final FLAG_DISPLAY_SUB:I = 0x10

.field public static final FLAG_DISPLAY_VIRTUAL:I = 0x20

.field public static final FLAG_LOCK:I = 0x2

.field public static final FLAG_MODE_MASK:I = 0x3c

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SYSTEM:I = 0x1

.field public static final FLAG_TYPE_MASK:I = 0x3

.field private static final IMAGE_WALLPAPER_SERVICE_NAME:Ljava/lang/String; = "com.android.systemui.ImageWallpaper"

.field public static final KWP_TYPE_ANIMATED:I = 0x4

.field public static final KWP_TYPE_DEFAULT:I = 0x0

.field public static final KWP_TYPE_ERROR:I = -0x1

.field public static final KWP_TYPE_MOTION:I = 0x1

.field public static final KWP_TYPE_PRELOAD_MOTION:I = 0x2

.field public static final KWP_TYPE_VIDEO:I = 0x8

.field public static final LID_ABSENT:I = -0x1

.field public static final LID_CLOSED:I = 0x0

.field public static final LID_OPEN:I = 0x1

.field private static final LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field private static final ONEUI_5_1:I = 0x22344

.field private static final PACKAGE_NAME_DRESSROOM:Ljava/lang/String; = "com.samsung.android.app.dressroom"

.field private static final PACKAGE_NAME_FESTIVAL_WALLPAPER:Ljava/lang/String; = "com.samsung.android.festivalwallpaper"

.field private static final PACKAGE_NAME_LOCKSTAR:Ljava/lang/String; = "com.samsung.systemui.lockstar"

.field private static final PACKAGE_NAME_SPRITE:Ljava/lang/String; = "com.samsung.android.wallpaper.live"

.field private static final PACKAGE_NAME_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field private static final PACKAGE_NAME_THEME_CENTER:Ljava/lang/String; = "com.samsung.android.themecenter"

.field private static final PROP_LOCK_WALLPAPER:Ljava/lang/String; = "ro.config.lock_wallpaper"

.field private static final PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final PROP_WALLPAPER_COMPONENT:Ljava/lang/String; = "ro.config.wallpaper_component"

.field static final RETURN_DEFAULT_ON_SECURITY_EXCEPTION:J = 0xe4ad173L

.field public static final SEM_ATTRIBUTE_TILT:Ljava/lang/String; = "tilt"

.field public static final SEM_BACKUP_STATUS_CANCELED:I = 0x2

.field public static final SEM_BACKUP_STATUS_CLEARED:I = 0x4

.field public static final SEM_BACKUP_STATUS_REQUESTED:I = 0x1

.field public static final SEM_BACKUP_STATUS_RESTORED:I = 0x3

.field public static final SEM_FLAG_DEX:I = 0x8

.field public static final SEM_FLAG_LOCK:I = 0x2

.field public static final SEM_FLAG_SUB_DISPLAY:I = 0x10

.field public static final SEM_FLAG_SYSTEM:I = 0x1

.field public static final SEM_SCHEME_MULTIPACK:Ljava/lang/String; = "multipack"

.field public static final SEM_WALLPAPER_TYPE_ANIMATED:I = 0x4

.field public static final SEM_WALLPAPER_TYPE_EXTERNAL_LIVE:I = 0x7

.field public static final SEM_WALLPAPER_TYPE_GIF:I = 0x5

.field public static final SEM_WALLPAPER_TYPE_IMAGE:I = 0x0

.field public static final SEM_WALLPAPER_TYPE_MOTION:I = 0x1

.field public static final SEM_WALLPAPER_TYPE_MULTIPLE:I = 0x3

.field public static final SEM_WALLPAPER_TYPE_NONE:I = -0x1

.field public static final SEM_WALLPAPER_TYPE_VIDEO:I = 0x8

.field public static final SETTINGS_CURRENT_SEC_ACTIVE_THEMEPACKAGE:Ljava/lang/String; = "current_sec_active_themepackage"

.field public static final SETTINGS_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "lockscreen_wallpaper"

.field public static final SETTINGS_LOCKSCREEN_WALLPAPER_SUB:Ljava/lang/String; = "lockscreen_wallpaper_sub"

.field private static final SETTINGS_LOCKSCREEN_WALLPAPER_TRANSPARENCY:Ljava/lang/String; = "lockscreen_wallpaper_transparent"

.field private static final SETTINGS_LOCKSCREEN_WALLPAPER_TRANSPARENCY_SUB:Ljava/lang/String; = "sub_display_lockscreen_wallpaper_transparency"

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY_SUB:Ljava/lang/String; = "sub_display_system_wallpaper_transparency"

.field public static final SETTINGS_TSS_ACTIVATED:Ljava/lang/String; = "tss_activated"

.field public static final SWP_TYPE_CUSTOM:I = 0x0

.field public static final SWP_TYPE_PRELOAD:I = 0x1

.field public static final SWP_TYPE_THEME:I = 0x2

.field private static final SYSUI_DESKTOP_PKG_NAME:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field private static TAG:Ljava/lang/String; = null

.field private static final THEME_VIDEO_RES_ID:Ljava/lang/String; = "video_1.mp4"

.field static final THROW_ON_SECURITY_EXCEPTION:J = 0xe2815daL

.field public static final TRANSPARENT_DISABLE:I = 0x1

.field public static final TRANSPARENT_ENABLE:I = 0x0

.field private static final VALUE_CMF_COLOR:Ljava/lang/String;

.field private static final WALLPAPER_CMF_PATH:Ljava/lang/String; = "/wallpaper/image/"

.field private static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.samsung.android.wallpaper.res"

.field public static final WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static sIsLockscreenLiveWallpaperEnabled:Ljava/lang/Boolean;

.field private static sIsMultiCropEnabled:Ljava/lang/Boolean;

.field private static final sSync:Ljava/lang/Object;

.field private static sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;


# instance fields
.field private final mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

.field private final mContext:Landroid/content/Context;

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F

.field private final mWcgEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;
    .registers 1

    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcheckExactlyOneWallpaperFlagSet(I)V
    .registers 1

    invoke-static {p0}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 165
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 186
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Landroid/app/WallpaperManager;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 196
    nop

    .line 197
    const-string/jumbo v0, "ro.boot.hardware.color"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManager;->VALUE_CMF_COLOR:Ljava/lang/String;

    .line 533
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    .line 539
    const/4 v0, 0x0

    sput-object v0, Landroid/app/WallpaperManager;->sIsLockscreenLiveWallpaperEnabled:Ljava/lang/Boolean;

    .line 540
    sput-object v0, Landroid/app/WallpaperManager;->sIsMultiCropEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 185
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 1450
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1451
    iput-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 1452
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    .line 1453
    return-void
.end method

.method constructor <init>(Landroid/app/IWallpaperManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 185
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 1429
    iput-object p2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1430
    if-eqz p1, :cond_14

    .line 1431
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V

    .line 1434
    :cond_14
    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    if-nez v0, :cond_1f

    .line 1435
    new-instance v0, Landroid/app/SemWallpaperResourcesInfo;

    invoke-direct {v0, p2}, Landroid/app/SemWallpaperResourcesInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 1439
    :cond_1f
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1443
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_3e

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_WCG:Z

    if-eqz v0, :cond_40

    :cond_3e
    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    iput-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    .line 1445
    new-instance v0, Landroid/app/WallpaperManager$ColorManagementProxy;

    invoke-direct {v0, p2}, Landroid/app/WallpaperManager$ColorManagementProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 1446
    return-void
.end method

.method private appendCurrentModeIfNeeded(I)I
    .registers 4
    .param p1, "which"    # I

    .line 4322
    move v0, p1

    .line 4323
    .local v0, "convertedWhich":I
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isSubDisplay()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4324
    or-int/lit8 v0, v0, 0x10

    .line 4327
    :cond_9
    return v0
.end method

.method private static checkExactlyOneWallpaperFlagSet(I)V
    .registers 3
    .param p0, "which"    # I

    .line 4746
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSingleType(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4748
    return-void

    .line 4750
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkWhichInvalidation(I)Z
    .registers 4
    .param p1, "which"    # I

    .line 5763
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 5764
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 5765
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 5766
    return v1

    .line 5769
    :cond_14
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 5770
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 5771
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 5772
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2e

    .line 5776
    :cond_2d
    return v1

    .line 5773
    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    return v0
.end method

.method private copyDrawableToWallpaperFile(Landroid/graphics/drawable/BitmapDrawable;Ljava/io/FileOutputStream;)V
    .registers 8
    .param p1, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "fos"    # Ljava/io/FileOutputStream;

    .line 3484
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "copyDrawableToWallpaperFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3486
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 3487
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 3489
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_d
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v3

    .line 3490
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3491
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 3492
    .local v3, "data":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v4

    .line 3493
    invoke-static {v2, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_2b
    .catchall {:try_start_d .. :try_end_27} :catchall_29

    .line 3497
    nop

    .end local v3    # "data":[B
    goto :goto_30

    :catchall_29
    move-exception v3

    goto :goto_38

    .line 3494
    :catch_2b
    move-exception v3

    .line 3495
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_29

    .line 3497
    .end local v3    # "e":Ljava/lang/Exception;
    nop

    :goto_30
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3498
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3499
    nop

    .line 3500
    return-void

    .line 3497
    :goto_38
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3498
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3499
    throw v3
.end method

.method private copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3479
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 3480
    return-void
.end method

.method private generateBitmap(I)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "resid"    # I

    .line 4880
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "generateBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4881
    const/4 v0, 0x0

    .line 4883
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_8
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4884
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4885
    .local v2, "resourceName":Ljava/lang/String;
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resourceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    const/4 v3, -0x1

    .line 4888
    .local v3, "themeResourceId":I
    const/4 v4, 0x0

    .line 4889
    .local v4, "themeResources":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_cc

    .line 4890
    const/4 v5, 0x0

    .line 4891
    .local v5, "themePackage":Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 4892
    .local v6, "colon":I
    if-lez v6, :cond_42

    .line 4893
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 4896
    :cond_42
    const/4 v7, 0x0

    .line 4897
    .local v7, "ident":Ljava/lang/String;
    const/16 v8, 0x2f

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 4898
    .local v8, "slash":I
    if-lez v8, :cond_52

    .line 4899
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 4902
    :cond_52
    const/4 v9, 0x0

    .line 4903
    .local v9, "type":Ljava/lang/String;
    if-lez v6, :cond_63

    if-lez v8, :cond_63

    sub-int v10, v8, v6

    const/4 v11, 0x1

    if-le v10, v11, :cond_63

    .line 4904
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10
    :try_end_62
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_62} :catch_ef

    move-object v9, v10

    .line 4907
    :cond_63
    if-eqz v5, :cond_cc

    if-eqz v7, :cond_cc

    if-eqz v9, :cond_cc

    .line 4909
    :try_start_69
    new-instance v10, Landroid/content/APKContents;

    invoke-static {v5}, Landroid/content/APKContents;->getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object v4, v10

    .line 4910
    const/4 v10, 0x0

    if-eqz v4, :cond_80

    .line 4911
    invoke-virtual {v4, v2, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move v3, v10

    goto :goto_91

    .line 4913
    :cond_80
    iget-object v11, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x4

    invoke-virtual {v11, v5, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v11

    .line 4915
    .local v11, "c":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object v4, v12

    .line 4916
    invoke-virtual {v4, v2, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10
    :try_end_90
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_69 .. :try_end_90} :catch_ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_69 .. :try_end_90} :catch_92
    .catch Ljava/lang/OutOfMemoryError; {:try_start_69 .. :try_end_90} :catch_ef

    move v3, v10

    .line 4922
    .end local v11    # "c":Landroid/content/Context;
    :goto_91
    goto :goto_cc

    .line 4920
    :catch_92
    move-exception v10

    .line 4921
    .local v10, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_93
    sget-object v11, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Resource not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    .line 4918
    .end local v10    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_ac
    move-exception v10

    .line 4919
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v11, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package name "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4922
    nop

    .line 4925
    .end local v5    # "themePackage":Ljava/lang/String;
    .end local v6    # "colon":I
    .end local v7    # "ident":Ljava/lang/String;
    .end local v8    # "slash":I
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_cc
    :goto_cc
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "themeResourceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4927
    if-eqz v4, :cond_ee

    if-lez v3, :cond_ee

    .line 4928
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_ed
    .catch Ljava/lang/OutOfMemoryError; {:try_start_93 .. :try_end_ed} :catch_ef

    move-object v0, v5

    .line 4932
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "themeResourceId":I
    .end local v4    # "themeResources":Landroid/content/res/Resources;
    :cond_ee
    goto :goto_f7

    .line 4930
    :catch_ef
    move-exception v1

    .line 4931
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t decode file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4933
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_f7
    return-object v0
.end method

.method public static getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "additionalCheck"    # Landroid/app/SubUserWallpaperChecker;
    .param p3, "color"    # Ljava/lang/String;

    .line 4531
    invoke-static {p0, p1, p3}, Landroid/app/SemWallpaperResourcesUtils;->getCSCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getCmfWallpaperPath()Ljava/lang/String;
    .registers 2

    .line 4615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wallpaper/image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "default_wallpaper_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/WallpaperManager;->VALUE_CMF_COLOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSystemWallpaperFile()Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 4429
    invoke-static {}, Landroid/app/WallpaperManager;->getDefaultSystemWallpaperPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4430
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4431
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 4433
    const/high16 v3, 0x10000000

    :try_start_21
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_25} :catch_26

    return-object v0

    .line 4434
    :catch_26
    move-exception v3

    .line 4438
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_27
    goto :goto_8

    .line 4439
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDefaultSystemWallpaperPaths()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4611
    const-string/jumbo v0, "ro.config.wallpaper"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/WallpaperManager;->getCmfWallpaperPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 4626
    const/4 v0, 0x0

    .line 4628
    .local v0, "cn":Landroid/content/ComponentName;
    const-string/jumbo v1, "ro.config.wallpaper_component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4629
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 4630
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4633
    :cond_12
    if-nez v0, :cond_25

    .line 4634
    const v2, 0x104040b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4635
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 4636
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4641
    :cond_25
    if-eqz v0, :cond_38

    .line 4643
    :try_start_27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4644
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0xc0000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_34} :catch_36

    .line 4649
    nop

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_38

    .line 4647
    :catch_36
    move-exception v2

    .line 4648
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 4652
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_38
    :goto_38
    return-object v0
.end method

.method public static getDefaultWallpaperFile(Landroid/content/Context;)Ljava/io/File;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 4502
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/WallpaperManager;->getDefaultWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultWallpaperFile(Landroid/content/Context;I)Ljava/io/File;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 4507
    invoke-static {p0, p1}, Landroid/app/SemWallpaperResourcesUtils;->getOMCWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 4508
    .local v0, "wallpaperFile":Ljava/io/File;
    if-nez v0, :cond_b

    .line 4509
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/app/SemWallpaperResourcesUtils;->getCSCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4511
    :cond_b
    return-object v0
.end method

.method public static getDeviceColor(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 4559
    const-string v0, ""

    .line 4561
    .local v0, "deviceColor":Ljava/lang/String;
    :try_start_2
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getDeviceColor()Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-object v0, v1

    .line 4564
    goto :goto_29

    .line 4562
    :catch_10
    move-exception v1

    .line 4563
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_29
    return-object v0
.end method

.method public static getDisplayId(Landroid/content/Context;I)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 4537
    const/4 v0, 0x0

    .line 4539
    .local v0, "displayId":I
    :try_start_1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IWallpaperManager;->getDisplayId(I)I

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    move v0, v1

    .line 4542
    goto :goto_28

    .line 4540
    :catch_f
    move-exception v1

    .line 4541
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_28
    return v0
.end method

.method private getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1721
    if-nez p1, :cond_b

    .line 1722
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "getDrawableFromBitmap : bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const/4 v0, 0x0

    return-object v0

    .line 1726
    :cond_b
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1727
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1728
    return-object v0
.end method

.method private getDrawableFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "is"    # Ljava/io/InputStream;

    .line 1732
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 1733
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrawableFromStream : input stream is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    return-object v0

    .line 1738
    :cond_b
    :try_start_b
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1739
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1740
    .local v2, "bm":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v2, v3

    .line 1741
    if-eqz v2, :cond_33

    .line 1742
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1743
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_2e} :catch_36
    .catchall {:try_start_b .. :try_end_2e} :catchall_34

    .line 1744
    nop

    .line 1749
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1744
    return-object v3

    .line 1749
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_33
    goto :goto_3f

    :catchall_34
    move-exception v0

    goto :goto_44

    .line 1746
    :catch_36
    move-exception v1

    .line 1747
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_37
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t decode stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_34

    .line 1749
    nop

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_3f
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1750
    nop

    .line 1752
    return-object v0

    .line 1749
    :goto_44
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1750
    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1459
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method public static getLastCallingPackage(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 4581
    const-string v0, ""

    .line 4583
    .local v0, "pakcage":Ljava/lang/String;
    :try_start_2
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IWallpaperManager;->getLastCallingPackage(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-object v0, v1

    .line 4586
    goto :goto_29

    .line 4584
    :catch_10
    move-exception v1

    .line 4585
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastCallingPackage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4587
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_29
    return-object v0
.end method

.method public static getLegacyDeviceColor(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 4570
    const-string v0, ""

    .line 4572
    .local v0, "legacyDeviceColor":Ljava/lang/String;
    :try_start_2
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getLegacyDeviceColor()Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-object v0, v1

    .line 4575
    goto :goto_29

    .line 4573
    :catch_10
    move-exception v1

    .line 4574
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLegacyDeviceColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4576
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_29
    return-object v0
.end method

.method private static getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .registers 10
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .line 1965
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1967
    .local v0, "cropRect":Landroid/graphics/RectF;
    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_25

    .line 1968
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1969
    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1970
    int-to-float v1, p2

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 1971
    .local v1, "cropWidth":F
    int-to-float v2, p0

    sub-float/2addr v2, v1

    mul-float/2addr v2, p4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1972
    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 1973
    .end local v1    # "cropWidth":F
    goto :goto_39

    .line 1974
    :cond_25
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1975
    int-to-float v1, p0

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1976
    int-to-float v1, p3

    int-to-float v2, p0

    int-to-float v3, p2

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 1977
    .local v1, "cropHeight":F
    int-to-float v2, p1

    sub-float/2addr v2, v1

    mul-float/2addr v2, p5

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1978
    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 1980
    .end local v1    # "cropHeight":F
    :goto_39
    return-object v0
.end method

.method public static getOMCVideoWallpaperFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "videoName"    # Ljava/lang/String;

    .line 4516
    invoke-static {p0}, Landroid/app/SemWallpaperResourcesUtils;->getOMCVideoWallpaperFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOMCWallpaperFile(Landroid/content/Context;I)Ljava/io/File;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .line 4521
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/SemWallpaperResourcesUtils;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "color"    # Ljava/lang/String;

    .line 4526
    invoke-static {p0, p1, p2}, Landroid/app/SemWallpaperResourcesUtils;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getPreconditionWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .registers 8
    .param p1, "which"    # I

    .line 2562
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v0, :cond_35

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_35

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-nez v0, :cond_35

    .line 2563
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2564
    :cond_18
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreconditionWallpaperColors: Unsupported which. which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    return-object v0

    .line 2574
    :cond_35
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_99

    .line 2576
    :try_start_39
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->isDesktopStandAloneMode()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_49} :catch_93

    if-nez v0, :cond_4d

    .line 2577
    or-int/lit8 p1, p1, 0x8

    .line 2581
    :cond_4d
    nop

    .line 2582
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const-string v2, "emergency_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2583
    .local v0, "em":I
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2584
    .local v1, "upsm":I
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const-string/jumbo v5, "minimal_battery_use"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2586
    .local v2, "mbu":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_8e

    if-eq v1, v3, :cond_8e

    if-ne v2, v3, :cond_99

    .line 2587
    :cond_8e
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v3

    return-object v3

    .line 2579
    .end local v0    # "em":I
    .end local v1    # "upsm":I
    .end local v2    # "mbu":I
    :catch_93
    move-exception v0

    .line 2580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2591
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_99
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSettingsName(I)Ljava/lang/String;
    .registers 5
    .param p1, "which"    # I

    .line 6465
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    .line 6466
    .local v0, "mode":I
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v1

    .line 6468
    .local v1, "type":I
    const/4 v2, 0x2

    sparse-switch v0, :sswitch_data_2a

    .line 6489
    const-string v2, ""

    return-object v2

    .line 6476
    :sswitch_f
    if-ne v1, v2, :cond_15

    .line 6477
    const-string/jumbo v2, "sub_display_lockscreen_wallpaper_transparency"

    return-object v2

    .line 6479
    :cond_15
    const-string/jumbo v2, "sub_display_system_wallpaper_transparency"

    return-object v2

    .line 6482
    :sswitch_19
    if-ne v1, v2, :cond_1e

    .line 6483
    const-string v2, "dex_lockscreen_wallpaper_transparency"

    return-object v2

    .line 6485
    :cond_1e
    const-string v2, "dex_system_wallpaper_transparency"

    return-object v2

    .line 6470
    :sswitch_21
    if-ne v1, v2, :cond_27

    .line 6471
    const-string/jumbo v2, "lockscreen_wallpaper_transparent"

    return-object v2

    .line 6473
    :cond_27
    const-string v2, "android.wallpaper.settings_systemui_transparency"

    return-object v2

    :sswitch_data_2a
    .sparse-switch
        0x4 -> :sswitch_21
        0x8 -> :sswitch_19
        0x10 -> :sswitch_f
    .end sparse-switch
.end method

.method private getThemeWallpaperBackground(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "pkgname"    # Ljava/lang/String;

    .line 5515
    const/4 v0, 0x0

    .line 5516
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 5517
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 5518
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 5520
    .local v3, "assetManager":Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    :try_start_5
    new-instance v5, Landroid/content/APKContents;

    invoke-static {p1}, Landroid/content/APKContents;->getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    .line 5521
    .local v5, "apkContents":Landroid/content/APKContents;
    invoke-virtual {v5}, Landroid/content/APKContents;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    move-object v3, v6

    .line 5522
    if-nez v3, :cond_24

    .line 5523
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    move-object v3, v6

    .line 5525
    :cond_24
    if-eqz v3, :cond_30

    .line 5526
    const-string/jumbo v6, "preview/thumbnail_wallpaper.jpg"

    move-object v1, v6

    .line 5527
    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    move-object v2, v6

    goto :goto_49

    .line 5529
    :cond_30
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "getAnimatedWallpaperBackground() : Wallpaper pkg, AssetManager is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_37} :catch_41
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    .line 5530
    return-object v4

    .line 5534
    .end local v5    # "apkContents":Landroid/content/APKContents;
    :catch_38
    move-exception v5

    .line 5535
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "getThemeWallpaperBackground Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 5532
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_41
    move-exception v5

    .line 5533
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "getThemeWallpaperBackground IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5536
    .end local v5    # "e":Ljava/io/IOException;
    :goto_49
    nop

    .line 5538
    :goto_4a
    if-nez v2, :cond_8b

    .line 5541
    const-string v5, ".wallpaper"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 5543
    .local v5, "themePkgName":Ljava/lang/String;
    :try_start_54
    new-instance v6, Landroid/content/APKContents;

    invoke-static {v5}, Landroid/content/APKContents;->getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/APKContents;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    move-object v3, v6

    .line 5544
    if-nez v3, :cond_73

    .line 5545
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    move-object v3, v6

    .line 5547
    :cond_73
    if-eqz v3, :cond_7f

    .line 5548
    const-string/jumbo v4, "preview/theme_lockscreen.jpg"

    move-object v1, v4

    .line 5549
    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 5556
    goto :goto_8b

    .line 5551
    :cond_7f
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "getAnimatedWallpaperBackground() : Theme pkg, AssetManager is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_86} :catch_87

    .line 5552
    return-object v4

    .line 5554
    :catch_87
    move-exception v4

    .line 5555
    .local v4, "e1":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 5559
    .end local v4    # "e1":Ljava/lang/Exception;
    .end local v5    # "themePkgName":Ljava/lang/String;
    :cond_8b
    :goto_8b
    if-eqz v2, :cond_91

    .line 5560
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5562
    :cond_91
    return-object v0
.end method

.method private getVideoFDFromPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 5566
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoFDFromPackage() pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , fileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5568
    const/4 v0, 0x0

    .line 5570
    .local v0, "otherContext":Landroid/content/Context;
    const/4 v1, 0x0

    :try_start_24
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_2a} :catch_2c

    move-object v0, v2

    .line 5573
    goto :goto_30

    .line 5571
    :catch_2c
    move-exception v2

    .line 5572
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 5576
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_30
    const/4 v2, 0x0

    if-nez v0, :cond_52

    .line 5577
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "getVideoFDFromPackage() otherContext is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5578
    new-instance v3, Landroid/content/APKContents;

    invoke-static {p1}, Landroid/content/APKContents;->getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    .line 5579
    .local v3, "apkContents":Landroid/content/APKContents;
    invoke-virtual {v3}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 5580
    .local v4, "otherResources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/APKContents;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 5581
    .local v5, "otherAssetManager":Landroid/content/res/AssetManager;
    if-eqz v4, :cond_51

    if-nez v5, :cond_50

    goto :goto_51

    .line 5584
    .end local v3    # "apkContents":Landroid/content/APKContents;
    :cond_50
    goto :goto_5a

    .line 5582
    .restart local v3    # "apkContents":Landroid/content/APKContents;
    :cond_51
    :goto_51
    return-object v2

    .line 5585
    .end local v3    # "apkContents":Landroid/content/APKContents;
    .end local v4    # "otherResources":Landroid/content/res/Resources;
    .end local v5    # "otherAssetManager":Landroid/content/res/AssetManager;
    :cond_52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 5586
    .restart local v4    # "otherResources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 5589
    .restart local v5    # "otherAssetManager":Landroid/content/res/AssetManager;
    :goto_5a
    const-string v3, "com.samsung.android.wallpaper.res"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 5590
    move-object v3, p2

    .line 5591
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 5592
    return-object v2

    .line 5595
    :cond_6a
    const/16 v6, 0x2e

    :try_start_6c
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 5596
    const-string/jumbo v1, "raw"

    invoke-virtual {v4, v3, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 5597
    .local v1, "resId":I
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_80} :catch_81

    .line 5598
    .local v2, "afd":Landroid/content/res/AssetFileDescriptor;
    return-object v2

    .line 5599
    .end local v1    # "resId":I
    .end local v2    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_81
    move-exception v1

    .line 5600
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5602
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_9c

    .line 5603
    :cond_86
    const-string/jumbo v1, "video_1.mp4"

    .line 5604
    .local v1, "name":Ljava/lang/String;
    if-nez v5, :cond_93

    .line 5605
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "getVideoFDFromPackage() assetManager is null"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5606
    return-object v2

    .line 5610
    :cond_93
    :try_start_93
    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_97} :catch_98

    return-object v2

    .line 5611
    :catch_98
    move-exception v3

    .line 5612
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 5616
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_9c
    return-object v2
.end method

.method private getVideoWallpaperFrame(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 5465
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "getVideoWallpaperFrame, creating MediaMetadataRetriever"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5467
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 5468
    .local v0, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    const/4 v7, 0x0

    .line 5469
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const-wide/16 v8, 0x0

    .line 5471
    .local v8, "timeUs":J
    :try_start_f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 5472
    invoke-virtual {v0, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_2b

    .line 5473
    :cond_19
    if-eqz p1, :cond_9e

    .line 5474
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 5480
    :goto_2b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 5481
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 5482
    .local v1, "frameCountStr":Ljava/lang/String;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 5483
    .local v2, "durationStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 5484
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5485
    .local v3, "frameCount":I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5486
    .local v4, "duration":I
    sget-object v5, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v5, p3}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultVideoFrameInfo(Ljava/lang/String;)I

    move-result v5

    .line 5487
    .local v5, "frameIndex":I
    if-lez v3, :cond_66

    if-lez v5, :cond_66

    if-lt v3, v5, :cond_66

    .line 5488
    mul-int/lit16 v6, v4, 0x3e8

    int-to-float v6, v6

    int-to-float v10, v5

    int-to-float v11, v3

    div-float/2addr v10, v11

    mul-float/2addr v6, v10

    float-to-int v6, v6

    int-to-long v8, v6

    .line 5491
    .end local v3    # "frameCount":I
    .end local v4    # "duration":I
    .end local v5    # "frameIndex":I
    :cond_66
    new-instance v3, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 5492
    .local v3, "param":Landroid/media/MediaMetadataRetriever$BitmapParams;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 5493
    const/4 v4, 0x2

    invoke-virtual {v0, v8, v9, v4, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 5494
    .end local v2    # "durationStr":Ljava/lang/String;
    .end local v3    # "param":Landroid/media/MediaMetadataRetriever$BitmapParams;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v7, v1

    goto :goto_7d

    .line 5495
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_78
    invoke-virtual {v0, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v1

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    move-object v7, v1

    .line 5497
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_7d
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoWallpaperFrame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_95} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_95} :catch_b2
    .catchall {:try_start_f .. :try_end_95} :catchall_b0

    .line 5505
    :try_start_95
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_99

    .line 5508
    :goto_98
    goto :goto_c9

    .line 5506
    :catch_99
    move-exception v1

    .line 5507
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5509
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_c9

    .line 5476
    :cond_9e
    :try_start_9e
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "getVideoWallpaperFrame() file is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_a5} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a5} :catch_b2
    .catchall {:try_start_9e .. :try_end_a5} :catchall_b0

    .line 5477
    nop

    .line 5505
    :try_start_a6
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_aa

    .line 5508
    goto :goto_ae

    .line 5506
    :catch_aa
    move-exception v1

    .line 5507
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5477
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_ae
    const/4 v1, 0x0

    return-object v1

    .line 5504
    :catchall_b0
    move-exception v1

    goto :goto_d1

    .line 5501
    :catch_b2
    move-exception v1

    .line 5502
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_b3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b0

    .line 5505
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_b6
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_99

    goto :goto_98

    .line 5498
    :catch_ba
    move-exception v1

    .line 5499
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_bb
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 5500
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_c4
    .catchall {:try_start_bb .. :try_end_c4} :catchall_b0

    move-object v7, v2

    .line 5505
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :try_start_c5
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_99

    goto :goto_98

    .line 5510
    :goto_c9
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "getVideoWallpaperFrame, done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5511
    return-object v7

    .line 5505
    :goto_d1
    :try_start_d1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_d5

    .line 5508
    goto :goto_d9

    .line 5506
    :catch_d5
    move-exception v2

    .line 5507
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 5509
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_d9
    throw v1
.end method

.method private static getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 4593
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 4594
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4595
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4597
    :try_start_11
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17

    return-object v1

    .line 4598
    :catch_17
    move-exception v1

    .line 4603
    .end local v0    # "file":Ljava/io/File;
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method static initGlobals(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V
    .registers 4
    .param p0, "service"    # Landroid/app/IWallpaperManager;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1420
    sget-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1421
    :try_start_3
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v1, :cond_e

    .line 1422
    new-instance v1, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V

    sput-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 1424
    :cond_e
    monitor-exit v0

    .line 1425
    return-void

    .line 1424
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private isApplied(ILjava/lang/String;)Z
    .registers 11
    .param p1, "which"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 6191
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 6192
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    if-eqz v0, :cond_30

    .line 6193
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6194
    .local v2, "uriString":Ljava/lang/String;
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isApplied: uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6195
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 6196
    return v1

    .line 6200
    .end local v2    # "uriString":Ljava/lang/String;
    :cond_30
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_af

    .line 6201
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v2

    .line 6202
    .local v2, "videoPkg":Ljava/lang/String;
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isApplied: videoPkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6203
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5d

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 6204
    return v1

    .line 6206
    :cond_5d
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v3

    .line 6207
    .local v3, "motionPkg":Ljava/lang/String;
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isApplied: motionPkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6208
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_86

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 6209
    return v1

    .line 6211
    :cond_86
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v4

    .line 6212
    .local v4, "animatedPkg":Ljava/lang/String;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isApplied: animatedPkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6213
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_af

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 6214
    return v1

    .line 6217
    .end local v2    # "videoPkg":Ljava/lang/String;
    .end local v3    # "motionPkg":Ljava/lang/String;
    .end local v4    # "animatedPkg":Ljava/lang/String;
    :cond_af
    const/4 v1, 0x0

    return v1
.end method

.method public static isDefaultOperatorWallpaper(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 6223
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/SemWallpaperResourcesUtils;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "color"    # Ljava/lang/String;

    .line 6228
    invoke-static {p0, p1, p2}, Landroid/app/SemWallpaperResourcesUtils;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isKeyguardWallpaperShowing(I)Z
    .registers 7
    .param p1, "which"    # I

    .line 4311
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v1

    .line 4312
    .local v1, "isSubDisplay":Z
    if-eqz v1, :cond_b

    const-string/jumbo v2, "lockscreen_wallpaper_sub"

    goto :goto_e

    :cond_b
    const-string/jumbo v2, "lockscreen_wallpaper"

    .line 4313
    .local v2, "settingName":Ljava/lang/String;
    :goto_e
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v3, v2, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_23

    if-ne v3, v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0

    .line 4314
    .end local v1    # "isSubDisplay":Z
    .end local v2    # "settingName":Ljava/lang/String;
    :catch_23
    move-exception v1

    .line 4315
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isKeyguardWallpaperShowing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private static isLockscreenLiveWallpaperEnabledHelper()Z
    .registers 2

    .line 1480
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v0, :cond_12

    .line 1481
    const-string/jumbo v0, "persist.wm.debug.lockscreen_live_wallpaper"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManager;->sIsLockscreenLiveWallpaperEnabled:Ljava/lang/Boolean;

    .line 1484
    :cond_12
    sget-object v0, Landroid/app/WallpaperManager;->sIsLockscreenLiveWallpaperEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_2d

    .line 1486
    :try_start_16
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    .line 1487
    invoke-interface {v0}, Landroid/app/IWallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManager;->sIsLockscreenLiveWallpaperEnabled:Ljava/lang/Boolean;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_26} :catch_27

    .line 1490
    goto :goto_2d

    .line 1488
    :catch_27
    move-exception v0

    .line 1489
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1492
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    sget-object v0, Landroid/app/WallpaperManager;->sIsLockscreenLiveWallpaperEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isMultiCropEnabled()Z
    .registers 2

    .line 1501
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v0, :cond_12

    .line 1502
    const-string/jumbo v0, "persist.wm.debug.wallpaper_multi_crop"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManager;->sIsMultiCropEnabled:Ljava/lang/Boolean;

    .line 1505
    :cond_12
    sget-object v0, Landroid/app/WallpaperManager;->sIsMultiCropEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_2b

    .line 1507
    :try_start_16
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->isMultiCropEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManager;->sIsMultiCropEnabled:Ljava/lang/Boolean;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_26} :catch_27

    .line 1510
    goto :goto_2b

    .line 1508
    :catch_27
    move-exception v0

    .line 1509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1512
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    sget-object v0, Landroid/app/WallpaperManager;->sIsMultiCropEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isNeedToClearBackupData()Z
    .registers 8

    .line 5729
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isSnapshotTestMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5730
    const/4 v0, 0x0

    return v0

    .line 5733
    :cond_8
    const/4 v0, 0x1

    .line 5735
    .local v0, "needClear":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5736
    .local v1, "passList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5737
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5739
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5740
    .local v3, "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isNeedToClearBackupData(), pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5742
    const-string v4, "com.samsung.android.themecenter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 5743
    const-string v4, "com.samsung.systemui.lockstar"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 5744
    const-string v4, "com.samsung.android.festivalwallpaper"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    goto :goto_7e

    .line 5749
    :cond_64
    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v5, 0x22344

    if-lt v4, v5, :cond_7d

    .line 5750
    const-string v4, "com.samsung.android.app.dressroom"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 5751
    const-string v4, "com.android.systemui"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 5752
    :cond_7b
    const/4 v0, 0x0

    .line 5753
    goto :goto_80

    .line 5756
    .end local v3    # "callingPkg":Ljava/lang/String;
    :cond_7d
    goto :goto_26

    .line 5745
    .restart local v3    # "callingPkg":Ljava/lang/String;
    :cond_7e
    :goto_7e
    const/4 v0, 0x0

    .line 5746
    nop

    .line 5758
    .end local v3    # "callingPkg":Ljava/lang/String;
    :cond_80
    :goto_80
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needClear = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5759
    return v0
.end method

.method private isRequestForDex(I)Z
    .registers 3
    .param p1, "which"    # I

    .line 2949
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2950
    const/4 v0, 0x1

    return v0

    .line 2953
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isVirtualWallpaperDisplay(Landroid/content/Context;I)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 4548
    const/4 v0, 0x0

    .line 4550
    .local v0, "isVirtualDisplay":Z
    :try_start_1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IWallpaperManager;->isVirtualWallpaperDisplay(I)Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    move v0, v1

    .line 4553
    goto :goto_29

    .line 4551
    :catch_f
    move-exception v1

    .line 4552
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVirtualDisplay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_29
    return v0
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 4385
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4391
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabledHelper()Z

    move-result v0

    if-nez v0, :cond_14

    .line 4397
    const/4 v0, 0x0

    return-object v0

    .line 4399
    :cond_14
    const-string/jumbo v0, "ro.config.wallpaper"

    .line 4400
    .local v0, "whichProp":Ljava/lang/String;
    const v1, 0x10802a6

    .line 4402
    .local v1, "defaultResId":I
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4403
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/app/WallpaperManager;->getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 4404
    .local v3, "wallpaperInputStream":Ljava/io/InputStream;
    if-eqz v3, :cond_25

    .line 4405
    return-object v3

    .line 4407
    :cond_25
    invoke-static {}, Landroid/app/WallpaperManager;->getCmfWallpaperPath()Ljava/lang/String;

    move-result-object v4

    .line 4408
    .local v4, "cmfPath":Ljava/lang/String;
    invoke-static {v4}, Landroid/app/WallpaperManager;->getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 4409
    .local v5, "cmfWallpaperInputStream":Ljava/io/InputStream;
    if-eqz v5, :cond_30

    .line 4410
    return-object v5

    .line 4413
    :cond_30
    :try_start_30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_38} :catch_39

    return-object v6

    .line 4414
    :catch_39
    move-exception v6

    .line 4419
    .end local v0    # "whichProp":Ljava/lang/String;
    .end local v1    # "defaultResId":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "wallpaperInputStream":Ljava/io/InputStream;
    .end local v4    # "cmfPath":Ljava/lang/String;
    .end local v5    # "cmfWallpaperInputStream":Ljava/io/InputStream;
    :cond_3a
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;IZ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;IZ)Ljava/io/InputStream;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "changeSettings"    # Z

    .line 4445
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;IZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;IZLjava/lang/String;)Ljava/io/InputStream;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "changeSettings"    # Z
    .param p3, "color"    # Ljava/lang/String;

    .line 4450
    const/4 v0, 0x0

    .line 4453
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v1, 0x1

    .line 4454
    .local v1, "supportOperatorWallpaper":Z
    :goto_f
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openDefaultWallpaper() which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , color = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4455
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f

    if-eqz v1, :cond_4f

    .line 4456
    invoke-static {p0, p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v2

    .line 4457
    .local v2, "defaultWallpaper":Ljava/io/File;
    if-eqz v2, :cond_4f

    .line 4459
    :try_start_40
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_45} :catch_47

    move-object v0, v3

    .line 4462
    goto :goto_4f

    .line 4460
    :catch_47
    move-exception v3

    .line 4461
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "getDefaultWallpaperFile error:"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4467
    .end local v2    # "defaultWallpaper":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4f
    :goto_4f
    if-nez v0, :cond_62

    .line 4468
    sget-object v2, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    if-nez v2, :cond_5c

    .line 4469
    new-instance v2, Landroid/app/SemWallpaperResourcesInfo;

    invoke-direct {v2, p0}, Landroid/app/SemWallpaperResourcesInfo;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 4471
    :cond_5c
    sget-object v2, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v2, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultImageWallpaper(I)Ljava/io/InputStream;

    move-result-object v0

    .line 4474
    :cond_62
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openDefaultWallpaper: by ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4476
    return-object v0
.end method

.method private saveWallpaperThumbnailFile(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "targetFileFd"    # Landroid/os/ParcelFileDescriptor;

    .line 5358
    const/16 v0, 0x5a

    invoke-direct {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->saveWallpaperThumbnailFile(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;I)V

    .line 5359
    return-void
.end method

.method private saveWallpaperThumbnailFile(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;I)V
    .registers 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "targetFileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "quality"    # I

    .line 5362
    if-eqz p1, :cond_52

    if-nez p2, :cond_5

    goto :goto_52

    .line 5367
    :cond_5
    const/4 v0, 0x0

    .line 5369
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v1

    .line 5370
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5371
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_17
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    .line 5377
    goto :goto_2c

    :catchall_15
    move-exception v1

    goto :goto_4e

    .line 5374
    :catch_17
    move-exception v1

    .line 5375
    .local v1, "e":Ljava/lang/Exception;
    :try_start_18
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "saveWallpaperThumbnailFile() Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5377
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2c

    .line 5372
    :catch_22
    move-exception v1

    .line 5373
    .local v1, "ie":Ljava/io/IOException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "saveWallpaperThumbnailFile() IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_15

    .line 5377
    nop

    .end local v1    # "ie":Ljava/io/IOException;
    :goto_2c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5378
    nop

    .line 5380
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveWallpaperThumbnailFile() saved complete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5381
    return-void

    .line 5377
    :goto_4e
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5378
    throw v1

    .line 5363
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :cond_52
    :goto_52
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveWallpaperThumbnailFile() bitmap or fd is null, b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", quality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5364
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZIIILandroid/os/Bundle;)I
    .registers 27
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "userId"    # I
    .param p6, "type"    # I
    .param p7, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3355
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    move/from16 v14, p4

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBitmap calling package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", allowBackup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v13, p3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v12, p5

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v11, p6

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasExtras = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz p7, :cond_5a

    move v4, v8

    goto :goto_5b

    :cond_5a
    move v4, v9

    :goto_5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    if-eqz v2, :cond_93

    .line 3362
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBitmap bitmap width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3363
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3362
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    :cond_93
    if-eqz v15, :cond_ae

    .line 3366
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBitmap crop hint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    :cond_ae
    invoke-direct {v1, v15}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 3370
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1a7

    .line 3376
    invoke-virtual {v1, v14}, Landroid/app/WallpaperManager;->isLiveWallpaper(I)Z

    move-result v16

    .line 3377
    .local v16, "isLiveWallpaper":Z
    invoke-direct {v1, v14}, Landroid/app/WallpaperManager;->isKeyguardWallpaperShowing(I)Z

    move-result v17

    .line 3380
    .local v17, "isKeyguardWallpaperShowing":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 3381
    .local v7, "result":Landroid/os/Bundle;
    new-instance v10, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v10, v1}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 3388
    .local v10, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_cc
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 3389
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_d9
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_d9} :catch_19f

    const/4 v0, 0x0

    .line 3388
    move-object/from16 v6, p2

    move-object/from16 v18, v7

    .end local v7    # "result":Landroid/os/Bundle;
    .local v18, "result":Landroid/os/Bundle;
    move/from16 v7, p3

    move-object/from16 v8, v18

    move/from16 v9, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move v13, v0

    move v15, v14

    move-object/from16 v14, p7

    :try_start_ec
    invoke-interface/range {v3 .. v14}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_f0} :catch_19b

    move-object v3, v0

    .line 3392
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_111

    .line 3393
    const/4 v4, 0x0

    .line 3395
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_f4
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 3396
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v2, v0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3397
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 3398
    invoke-virtual {v10}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_107
    .catchall {:try_start_f4 .. :try_end_107} :catchall_10b

    .line 3400
    :try_start_107
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3401
    goto :goto_111

    .line 3400
    :catchall_10b
    move-exception v0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3401
    nop

    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v16    # "isLiveWallpaper":Z
    .end local v17    # "isKeyguardWallpaperShowing":Z
    .end local v18    # "result":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "fullImage":Landroid/graphics/Bitmap;
    .end local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    .end local p5    # "userId":I
    .end local p6    # "type":I
    .end local p7    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_107 .. :try_end_111} :catch_130

    .line 3405
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local v16    # "isLiveWallpaper":Z
    .restart local v17    # "isKeyguardWallpaperShowing":Z
    .restart local v18    # "result":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "fullImage":Landroid/graphics/Bitmap;
    .restart local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .restart local p3    # "allowBackup":Z
    .restart local p4    # "which":I
    .restart local p5    # "userId":I
    .restart local p6    # "type":I
    .restart local p7    # "extras":Landroid/os/Bundle;
    :cond_111
    :goto_111
    :try_start_111
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v0
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_111 .. :try_end_115} :catch_19b

    if-eqz v0, :cond_135

    .line 3406
    :try_start_117
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    move-result v0

    if-nez v0, :cond_12e

    .line 3407
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v15, v4}, Landroid/app/IWallpaperManager;->copyFileToWallpaperFile(ILjava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_172

    .line 3406
    :cond_12e
    const/4 v5, 0x1

    goto :goto_172

    .line 3439
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_130
    move-exception v0

    move-object/from16 v3, v18

    goto/16 :goto_1a2

    .line 3410
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_135
    if-eqz v16, :cond_171

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-nez v0, :cond_171

    .line 3411
    if-nez v17, :cond_167

    .line 3412
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 3413
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setBitmap: call clear() to change the lock wallpaper to default. Since the system wallpaper has been changed and live wallpaper has been broken"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    const/4 v0, 0x2

    .line 3417
    .local v0, "flag":I
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_15a

    .line 3418
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_15a

    .line 3419
    or-int/lit8 v0, v0, 0x10

    .line 3423
    :cond_15a
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v0, v5}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaperWithMode(II)V

    .line 3424
    .end local v0    # "flag":I
    goto :goto_172

    .line 3412
    :cond_165
    const/4 v5, 0x1

    goto :goto_172

    .line 3426
    :cond_167
    const/4 v5, 0x1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setBitmap: The type of lockscreen wallpaper is not live wallpaper already. Just keep going."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_170} :catch_130

    goto :goto_172

    .line 3410
    :cond_171
    const/4 v5, 0x1

    .line 3431
    :goto_172
    :try_start_172
    invoke-direct {v1, v15}, Landroid/app/WallpaperManager;->isRequestForDex(I)Z

    move-result v0
    :try_end_176
    .catch Landroid/os/RemoteException; {:try_start_172 .. :try_end_176} :catch_19b

    if-nez v0, :cond_187

    :try_start_178
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_187

    .line 3432
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V
    :try_end_187
    .catch Landroid/os/RemoteException; {:try_start_178 .. :try_end_187} :catch_130

    .line 3435
    :cond_187
    :try_start_187
    invoke-direct/range {p0 .. p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v0
    :try_end_18b
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_18b} :catch_19b

    if-eqz v0, :cond_190

    .line 3436
    :try_start_18d
    invoke-virtual {v1, v15}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_18d .. :try_end_190} :catch_130

    .line 3441
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_190
    nop

    .line 3442
    const-string v0, "android.service.wallpaper.extra.ID"

    move-object/from16 v3, v18

    const/4 v4, 0x0

    .end local v18    # "result":Landroid/os/Bundle;
    .local v3, "result":Landroid/os/Bundle;
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 3439
    .end local v3    # "result":Landroid/os/Bundle;
    .restart local v18    # "result":Landroid/os/Bundle;
    :catch_19b
    move-exception v0

    move-object/from16 v3, v18

    .end local v18    # "result":Landroid/os/Bundle;
    .restart local v3    # "result":Landroid/os/Bundle;
    goto :goto_1a2

    .end local v3    # "result":Landroid/os/Bundle;
    .restart local v7    # "result":Landroid/os/Bundle;
    :catch_19f
    move-exception v0

    move-object v3, v7

    move v15, v14

    .line 3440
    .end local v7    # "result":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "result":Landroid/os/Bundle;
    :goto_1a2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 3371
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "result":Landroid/os/Bundle;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v16    # "isLiveWallpaper":Z
    .end local v17    # "isKeyguardWallpaperShowing":Z
    :cond_1a7
    move v15, v14

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setPreloadedResource(Landroid/content/Context;IIZLandroid/os/Bundle;)I
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I
    .param p3, "which"    # I
    .param p4, "allowBackup"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2999
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/WallpaperManager;->setResource(Landroid/content/Context;IIIZZLandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private setPreloadedStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .registers 13
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3570
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZIIZLandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private setResource(Landroid/content/Context;IIIZZLandroid/os/Bundle;)I
    .registers 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I
    .param p3, "which"    # I
    .param p4, "type"    # I
    .param p5, "allowBackup"    # Z
    .param p6, "isPreloaded"    # Z
    .param p7, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3004
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v15, p3

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setResource: which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resid = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callingPkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasExtras = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v14, 0x0

    const/4 v13, 0x1

    if-eqz p7, :cond_40

    move v4, v13

    goto :goto_41

    :cond_40
    move v4, v14

    :goto_41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1d6

    .line 3011
    invoke-virtual {v1, v15}, Landroid/app/WallpaperManager;->isLiveWallpaper(I)Z

    move-result v16

    .line 3012
    .local v16, "isLiveWallpaper":Z
    invoke-direct {v1, v15}, Landroid/app/WallpaperManager;->isKeyguardWallpaperShowing(I)Z

    move-result v17

    .line 3014
    .local v17, "isKeyguardWallpaperShowing":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v12, v0

    .line 3015
    .local v12, "result":Landroid/os/Bundle;
    new-instance v10, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v10, v1}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 3018
    .local v10, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    const/4 v3, 0x0

    .line 3021
    .local v3, "isDesktopMode":Z
    :try_start_68
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, v15}, Landroid/app/IWallpaperManager;->isDesktopModeEnabled(I)Z

    move-result v0
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_72} :catch_1cf

    move/from16 v18, v0

    .line 3024
    .end local v3    # "isDesktopMode":Z
    .local v18, "isDesktopMode":Z
    nop

    .line 3032
    :try_start_75
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3036
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v3, "com.samsung.android.themecenter"

    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_85} :catch_1c8

    if-eqz v3, :cond_a7

    .line 3038
    :try_start_87
    iget-object v3, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_wallpaper_theme_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3039
    .local v3, "currentWallpaperPackage":Ljava/lang/String;
    new-instance v4, Landroid/content/APKContents;

    invoke-static {v3}, Landroid/content/APKContents;->getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    move-result-object v4
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_a0} :catch_a3

    move-object v0, v4

    move-object v11, v0

    goto :goto_a8

    .line 3125
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v3    # "currentWallpaperPackage":Ljava/lang/String;
    :catch_a3
    move-exception v0

    move-object v4, v12

    goto/16 :goto_1ca

    .line 3036
    .restart local v0    # "resources":Landroid/content/res/Resources;
    :cond_a7
    move-object v11, v0

    .line 3050
    .end local v0    # "resources":Landroid/content/res/Resources;
    .local v11, "resources":Landroid/content/res/Resources;
    :goto_a8
    :try_start_a8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3051
    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3052
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 3053
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_cf} :catch_1c8

    .line 3050
    move/from16 v7, p5

    move-object v8, v12

    move/from16 v9, p3

    move-object/from16 v19, v11

    .end local v11    # "resources":Landroid/content/res/Resources;
    .local v19, "resources":Landroid/content/res/Resources;
    move v11, v0

    move-object/from16 v20, v12

    .end local v12    # "result":Landroid/os/Bundle;
    .local v20, "result":Landroid/os/Bundle;
    move/from16 v12, p4

    move/from16 v13, p6

    move-object/from16 v14, p7

    :try_start_df
    invoke-interface/range {v3 .. v14}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_e3} :catch_1c4

    move-object v3, v0

    .line 3055
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_125

    .line 3056
    const/4 v4, 0x0

    .line 3057
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 3059
    .local v5, "ok":Z
    :try_start_e8
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_ed
    .catch Ljava/lang/ClassCastException; {:try_start_e8 .. :try_end_ed} :catch_115
    .catchall {:try_start_e8 .. :try_end_ed} :catchall_111

    move-object v4, v0

    .line 3065
    move-object/from16 v6, v19

    .end local v19    # "resources":Landroid/content/res/Resources;
    .local v6, "resources":Landroid/content/res/Resources;
    :try_start_f0
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3066
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_fe

    if-nez p6, :cond_fe

    .line 3067
    invoke-direct {v1, v0, v4}, Landroid/app/WallpaperManager;->copyDrawableToWallpaperFile(Landroid/graphics/drawable/BitmapDrawable;Ljava/io/FileOutputStream;)V

    goto :goto_105

    .line 3069
    :cond_fe
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v1, v7, v4}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 3074
    :goto_105
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 3075
    invoke-virtual {v10}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_10b
    .catch Ljava/lang/ClassCastException; {:try_start_f0 .. :try_end_10b} :catch_10f
    .catchall {:try_start_f0 .. :try_end_10b} :catchall_11f

    .line 3083
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_10b
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_10e} :catch_159

    goto :goto_11e

    .line 3077
    :catch_10f
    move-exception v0

    goto :goto_118

    .line 3083
    .end local v6    # "resources":Landroid/content/res/Resources;
    .restart local v19    # "resources":Landroid/content/res/Resources;
    :catchall_111
    move-exception v0

    move-object/from16 v6, v19

    .end local v19    # "resources":Landroid/content/res/Resources;
    .restart local v6    # "resources":Landroid/content/res/Resources;
    goto :goto_120

    .line 3077
    .end local v6    # "resources":Landroid/content/res/Resources;
    .restart local v19    # "resources":Landroid/content/res/Resources;
    :catch_115
    move-exception v0

    move-object/from16 v6, v19

    .line 3078
    .end local v19    # "resources":Landroid/content/res/Resources;
    .local v0, "e":Ljava/lang/ClassCastException;
    .restart local v6    # "resources":Landroid/content/res/Resources;
    :goto_118
    :try_start_118
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_11f

    .line 3083
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :try_start_11b
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3084
    :goto_11e
    goto :goto_127

    .line 3083
    :catchall_11f
    move-exception v0

    :goto_120
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3084
    nop

    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v16    # "isLiveWallpaper":Z
    .end local v17    # "isKeyguardWallpaperShowing":Z
    .end local v18    # "isDesktopMode":Z
    .end local v20    # "result":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resid":I
    .end local p3    # "which":I
    .end local p4    # "type":I
    .end local p5    # "allowBackup":Z
    .end local p6    # "isPreloaded":Z
    .end local p7    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_125
    .catch Landroid/os/RemoteException; {:try_start_11b .. :try_end_125} :catch_159

    .line 3055
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "ok":Z
    .end local v6    # "resources":Landroid/content/res/Resources;
    .restart local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local v16    # "isLiveWallpaper":Z
    .restart local v17    # "isKeyguardWallpaperShowing":Z
    .restart local v18    # "isDesktopMode":Z
    .restart local v19    # "resources":Landroid/content/res/Resources;
    .restart local v20    # "result":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "resid":I
    .restart local p3    # "which":I
    .restart local p4    # "type":I
    .restart local p5    # "allowBackup":Z
    .restart local p6    # "isPreloaded":Z
    .restart local p7    # "extras":Landroid/os/Bundle;
    :cond_125
    move-object/from16 v6, v19

    .line 3088
    .end local v19    # "resources":Landroid/content/res/Resources;
    .restart local v6    # "resources":Landroid/content/res/Resources;
    :goto_127
    :try_start_127
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v0
    :try_end_12b
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_12b} :catch_1c4

    if-eqz v0, :cond_15e

    .line 3089
    :try_start_12d
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    move-result v0

    if-nez v0, :cond_157

    .line 3090
    if-eqz p6, :cond_146

    .line 3091
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v15, v4}, Landroid/app/IWallpaperManager;->copyPreloadedFileToWallpaperFile(ILjava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_19b

    .line 3093
    :cond_146
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v15, v4}, Landroid/app/IWallpaperManager;->copyFileToWallpaperFile(ILjava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_19b

    .line 3089
    :cond_157
    const/4 v5, 0x1

    goto :goto_19b

    .line 3125
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "resources":Landroid/content/res/Resources;
    :catch_159
    move-exception v0

    move-object/from16 v4, v20

    goto/16 :goto_1ca

    .line 3097
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "resources":Landroid/content/res/Resources;
    :cond_15e
    if-eqz v16, :cond_19a

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-nez v0, :cond_19a

    .line 3098
    if-nez v17, :cond_190

    .line 3099
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 3100
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setResource: call clear() to change the lock wallpaper to default. Since the system wallpaper has been changed and live wallpaper has been broken"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    const/4 v0, 0x2

    .line 3104
    .local v0, "flag":I
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_183

    .line 3105
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_183

    .line 3106
    or-int/lit8 v0, v0, 0x10

    .line 3110
    :cond_183
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v0, v5}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaperWithMode(II)V

    .line 3111
    .end local v0    # "flag":I
    goto :goto_19b

    .line 3099
    :cond_18e
    const/4 v5, 0x1

    goto :goto_19b

    .line 3113
    :cond_190
    const/4 v5, 0x1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setResource: The type of lockscreen wallpaper is not live wallpaper already. Just keep going."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_199
    .catch Landroid/os/RemoteException; {:try_start_12d .. :try_end_199} :catch_159

    goto :goto_19b

    .line 3097
    :cond_19a
    const/4 v5, 0x1

    .line 3118
    :goto_19b
    :try_start_19b
    invoke-direct {v1, v15}, Landroid/app/WallpaperManager;->isRequestForDex(I)Z

    move-result v0
    :try_end_19f
    .catch Landroid/os/RemoteException; {:try_start_19b .. :try_end_19f} :catch_1c4

    if-nez v0, :cond_1b0

    :try_start_1a1
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 3119
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V
    :try_end_1b0
    .catch Landroid/os/RemoteException; {:try_start_1a1 .. :try_end_1b0} :catch_159

    .line 3121
    :cond_1b0
    :try_start_1b0
    invoke-direct/range {p0 .. p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v0
    :try_end_1b4
    .catch Landroid/os/RemoteException; {:try_start_1b0 .. :try_end_1b4} :catch_1c4

    if-eqz v0, :cond_1b9

    .line 3122
    :try_start_1b6
    invoke-virtual {v1, v15}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_1b9
    .catch Landroid/os/RemoteException; {:try_start_1b6 .. :try_end_1b9} :catch_159

    .line 3127
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "resources":Landroid/content/res/Resources;
    :cond_1b9
    nop

    .line 3128
    const-string v0, "android.service.wallpaper.extra.ID"

    move-object/from16 v4, v20

    const/4 v3, 0x0

    .end local v20    # "result":Landroid/os/Bundle;
    .local v4, "result":Landroid/os/Bundle;
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 3125
    .end local v4    # "result":Landroid/os/Bundle;
    .restart local v20    # "result":Landroid/os/Bundle;
    :catch_1c4
    move-exception v0

    move-object/from16 v4, v20

    .end local v20    # "result":Landroid/os/Bundle;
    .restart local v4    # "result":Landroid/os/Bundle;
    goto :goto_1ca

    .end local v4    # "result":Landroid/os/Bundle;
    .restart local v12    # "result":Landroid/os/Bundle;
    :catch_1c8
    move-exception v0

    move-object v4, v12

    .line 3126
    .end local v12    # "result":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "result":Landroid/os/Bundle;
    :goto_1ca
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 3022
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "result":Landroid/os/Bundle;
    .end local v18    # "isDesktopMode":Z
    .local v3, "isDesktopMode":Z
    .restart local v12    # "result":Landroid/os/Bundle;
    :catch_1cf
    move-exception v0

    move-object v4, v12

    .line 3023
    .end local v12    # "result":Landroid/os/Bundle;
    .restart local v0    # "e":Landroid/os/RemoteException;
    .restart local v4    # "result":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 3007
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "isDesktopMode":Z
    .end local v4    # "result":Landroid/os/Bundle;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v16    # "isLiveWallpaper":Z
    .end local v17    # "isKeyguardWallpaperShowing":Z
    :cond_1d6
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZII)I
    .registers 14
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3576
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZIIZLandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public static startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "sessionTime"    # Ljava/lang/String;
    .param p6, "saveKey"    # Ljava/lang/String;

    .line 4800
    const-string v1, ""

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Landroid/app/WallpaperManager;->startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4801
    return-void
.end method

.method public static startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "sessionTime"    # Ljava/lang/String;
    .param p7, "saveKey"    # Ljava/lang/String;

    .line 4807
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    .line 4808
    .local v0, "backupManager":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBackupWallpaper action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v9, p1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v10, p2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v12, p4

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " securityLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v13, p5

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sessionTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v14, p6

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4814
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4815
    return-void
.end method

.method public static startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 4793
    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Landroid/app/WallpaperManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4794
    return-void
.end method

.method public static startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "pathValue"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "sessionKey"    # Ljava/lang/String;
    .param p6, "restoreScreen"    # Ljava/lang/String;

    .line 4829
    const-string v1, ""

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Landroid/app/WallpaperManager;->startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4830
    return-void
.end method

.method public static startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "pathValue"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "sessionKey"    # Ljava/lang/String;
    .param p7, "restoreScreen"    # Ljava/lang/String;

    .line 4836
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    .line 4837
    .local v0, "restoreManager":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRestoreWallpaper action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v9, p1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v10, p2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v12, p4

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " securityLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v13, p5

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " restoreScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v14, p7

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4843
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4844
    return-void
.end method

.method public static startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pathValue"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 4822
    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Landroid/app/WallpaperManager;->startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4823
    return-void
.end method

.method private final validateRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 3446
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 3447
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrop rectangle must be valid and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3449
    :cond_12
    :goto_12
    return-void
.end method


# virtual methods
.method public addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;I)V
    .registers 13
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2522
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 2523
    .local v1, "region":Landroid/graphics/RectF;
    sget-object v2, Landroid/app/WallpaperManager;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2527
    .end local v1    # "region":Landroid/graphics/RectF;
    goto :goto_4

    .line 2524
    .restart local v1    # "region":Landroid/graphics/RectF;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regions must be within bounds "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2528
    .end local v1    # "region":Landroid/graphics/RectF;
    :cond_32
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2529
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v8

    .line 2528
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/WallpaperManager$Globals;->addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 2530
    return-void
.end method

.method public addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2442
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V

    .line 2443
    return-void
.end method

.method public addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V
    .registers 6
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I

    .line 2456
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/WallpaperManager$Globals;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;II)V

    .line 2457
    return-void
.end method

.method public addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 6237
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;I)V

    .line 6238
    return-void
.end method

.method public addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;I)V
    .registers 6
    .param p1, "listener"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I

    .line 6244
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/WallpaperManager$Globals;->addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;II)V

    .line 6245
    return-void
.end method

.method public canBackup()Z
    .registers 5

    .line 6399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6401
    .local v0, "whichSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6402
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6403
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_2f

    .line 6404
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6405
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v1, :cond_2f

    .line 6406
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6410
    :cond_2f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6411
    .local v2, "which":I
    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->canBackup(I)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 6412
    const/4 v1, 0x1

    return v1

    .line 6414
    .end local v2    # "which":I
    :cond_4b
    goto :goto_33

    .line 6416
    :cond_4c
    const/4 v1, 0x0

    return v1
.end method

.method public canBackup(I)Z
    .registers 13
    .param p1, "which"    # I

    .line 6426
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    .line 6427
    .local v0, "wallpaperType":I
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6428
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->getSettingsName(I)Ljava/lang/String;

    move-result-object v2

    .line 6427
    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 6430
    .local v1, "settingsType":I
    const/4 v2, 0x0

    if-nez v1, :cond_19

    move v4, v3

    goto :goto_1a

    :cond_19
    move v4, v2

    .line 6431
    .local v4, "isCustomWallpaper":Z
    :goto_1a
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->isWallpaperBackupAllowed(I)Z

    move-result v5

    .line 6432
    .local v5, "isBackupAllowed":Z
    const/4 v6, 0x3

    if-ne v1, v6, :cond_23

    move v7, v3

    goto :goto_24

    :cond_23
    move v7, v2

    .line 6433
    .local v7, "isDownloadedThemeWallpaper":Z
    :goto_24
    if-eqz v4, :cond_2a

    if-eqz v5, :cond_2a

    move v8, v3

    goto :goto_2b

    :cond_2a
    move v8, v2

    .line 6435
    .local v8, "canBackup":Z
    :goto_2b
    if-nez v4, :cond_2f

    if-eqz v7, :cond_32

    :cond_2f
    if-eqz v5, :cond_32

    goto :goto_33

    :cond_32
    move v3, v2

    :goto_33
    move v2, v3

    .line 6440
    .end local v8    # "canBackup":Z
    .local v2, "canBackup":Z
    if-ne v0, v6, :cond_52

    if-nez v2, :cond_52

    .line 6441
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 6442
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_52

    .line 6443
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6444
    .local v6, "stringUri":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_52

    .line 6445
    const-string/jumbo v8, "multipack://com.samsung.custompack"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 6446
    const/4 v2, 0x1

    .line 6452
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "stringUri":Ljava/lang/String;
    :cond_52
    const-string v3, "canBackup: which = "

    if-eqz v2, :cond_83

    .line 6453
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 6454
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->isExternalLiveWallpaper(I)Z

    move-result v6

    .line 6455
    .local v6, "isLiveWallpaper":Z
    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isLiveWallpaper = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6456
    xor-int/lit8 v8, v6, 0x1

    move v2, v8

    .line 6460
    .end local v6    # "isLiveWallpaper":Z
    :cond_83
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " canBackup = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6461
    return v2
.end method

.method public clear()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4256
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x10

    goto :goto_11

    :cond_10
    const/4 v0, 0x4

    .line 4259
    .local v0, "mode":I
    :goto_11
    or-int/lit8 v1, v0, 0x1

    .line 4260
    .local v1, "systemFlag":I
    or-int/lit8 v2, v0, 0x2

    .line 4262
    .local v2, "lockFlag":I
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;IZ)Ljava/io/InputStream;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v4, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    .line 4263
    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->clear(I)V

    .line 4265
    return-void
.end method

.method public clear(I)V
    .registers 5
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4287
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear, which = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4289
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 4290
    const-string v0, "Must specify a valid wallpaper category to set"

    .line 4291
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    return-void

    .line 4295
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3a
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    .line 4296
    .local v0, "type":I
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    .line 4298
    .local v1, "mode":I
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 4299
    or-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->clear(I)V

    .line 4300
    or-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->clear(I)V

    .line 4301
    return-void

    .line 4304
    :cond_53
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 4306
    return-void
.end method

.method public clearAll()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4853
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "clearAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4854
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->clear()V

    .line 4855
    return-void
.end method

.method public clearBackupWallpaperGivenKey(I)V
    .registers 5
    .param p1, "key"    # I

    .line 5909
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearBackupWallpaperGivenKey: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5911
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 5916
    :try_start_20
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->removeSnapshotByKey(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_2b

    .line 5919
    nop

    .line 5921
    return-void

    .line 5917
    :catch_2b
    move-exception v0

    .line 5918
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5912
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_31
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5913
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public clearWallpaper()V
    .registers 3

    .line 3908
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "clearWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->appendCurrentModeIfNeeded(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 3910
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->appendCurrentModeIfNeeded(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 3912
    return-void
.end method

.method public clearWallpaper(II)V
    .registers 6
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3925
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearWallpaper() called with: which = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], userId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 3933
    :try_start_30
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3f} :catch_41

    .line 3936
    nop

    .line 3937
    return-void

    .line 3934
    :catch_41
    move-exception v0

    .line 3935
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3929
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_47
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 4233
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_12

    .line 4237
    nop

    .line 4238
    return-void

    .line 4235
    :catch_12
    move-exception v0

    .line 4236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public forceRebindWallpaper(I)V
    .registers 4
    .param p1, "which"    # I

    .line 3233
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->forceRebindWallpaper(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 3236
    goto :goto_14

    .line 3234
    :catch_10
    move-exception v0

    .line 3235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3237
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public forgetLoadedWallpaper()V
    .registers 2

    .line 2755
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 2756
    return-void
.end method

.method public getAnimatedPkgName(I)Ljava/lang/String;
    .registers 4
    .param p1, "which"    # I

    .line 5715
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5720
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 5721
    :catch_13
    move-exception v0

    .line 5722
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5716
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5717
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAppliedScreen(Ljava/lang/String;Z)I
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "forSubDisplay"    # Z

    .line 6182
    if-eqz p2, :cond_5

    const/16 v0, 0x10

    goto :goto_6

    :cond_5
    const/4 v0, 0x4

    .line 6183
    .local v0, "which":I
    :goto_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    .line 6184
    :cond_e
    if-eqz p2, :cond_13

    const/16 v1, 0x11

    goto :goto_14

    :cond_13
    const/4 v1, 0x1

    :goto_14
    invoke-direct {p0, v1, p1}, Landroid/app/WallpaperManager;->isApplied(ILjava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6185
    const/4 v1, 0x2

    if-eqz p2, :cond_1f

    const/16 v3, 0x12

    goto :goto_20

    :cond_1f
    move v3, v1

    :goto_20
    invoke-direct {p0, v3, p1}, Landroid/app/WallpaperManager;->isApplied(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    move v2, v1

    :cond_27
    or-int/2addr v0, v2

    .line 6186
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppliedScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6187
    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 2199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Z)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "hardware"    # Z

    .line 2214
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(ZI)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "hardware"    # Z
    .param p2, "which"    # I

    .line 2237
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(ZIZ)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "hardware"    # Z
    .param p2, "which"    # I
    .param p3, "useCache"    # Z

    .line 2223
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapAsUser(IZ)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z

    .line 2250
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapAsUser(IZI)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z
    .param p3, "which"    # I

    .line 2305
    invoke-static {p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 2307
    .local v5, "returnDefault":Z
    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;
    .registers 14
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z
    .param p3, "which"    # I
    .param p4, "useCache"    # Z

    .line 2259
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v8

    .line 2260
    .local v8, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    move v3, p3

    move v4, p1

    move v5, p2

    move-object v6, v8

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapAsUser(IZIZZ)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z
    .param p3, "which"    # I
    .param p4, "returnDefault"    # Z
    .param p5, "useCache"    # Z

    .line 2327
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v8

    .line 2328
    .local v8, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    move v2, p4

    move v3, p3

    move v4, p1

    move v5, p2

    move-object v6, v8

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapForDex()Landroid/graphics/Bitmap;
    .registers 2

    .line 2270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getBitmapForDex(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapForDex(Z)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "hardware"    # Z

    .line 2279
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/WallpaperManager;->getBitmapForDexAsUser(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapForDexAsUser(IZ)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z

    .line 2288
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v7

    .line 2289
    .local v7, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/16 v3, 0x9

    move v4, p1

    move v5, p2

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 1761
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "which"    # I

    .line 1773
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .registers 13
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .line 1792
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;
    .registers 26
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F
    .param p6, "which"    # I

    .line 1814
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-eqz v3, :cond_23a

    .line 1820
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_28

    .line 1821
    invoke-static/range {p6 .. p6}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperManager;->isSubDisplay()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1822
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "getBuiltInDrawable, add flag"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    or-int/lit8 v3, p6, 0x10

    .end local p6    # "which":I
    .local v3, "which":I
    goto :goto_2a

    .line 1827
    .end local v3    # "which":I
    .restart local p6    # "which":I
    :cond_28
    move/from16 v3, p6

    .end local p6    # "which":I
    .restart local v3    # "which":I
    :goto_2a
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBuiltInDrawable: which = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-static {v3}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 1832
    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1833
    .local v4, "resources":Landroid/content/res/Resources;
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v6, p4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1834
    .end local p4    # "horizontalAlignment":F
    .local v6, "horizontalAlignment":F
    move/from16 v7, p5

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1836
    .end local p5    # "verticalAlignment":F
    .local v5, "verticalAlignment":F
    iget-object v7, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v7

    .line 1837
    .local v7, "wpStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    if-nez v7, :cond_8a

    .line 1843
    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "default wallpaper stream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    return-object v15

    .line 1848
    :cond_8a
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1849
    .local v9, "is":Ljava/io/InputStream;
    if-lez v0, :cond_229

    if-gtz v2, :cond_9c

    move/from16 v18, v3

    move/from16 p5, v5

    move/from16 p6, v6

    move-object v1, v15

    goto/16 :goto_230

    .line 1857
    :cond_9c
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1858
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1859
    invoke-static {v9, v15, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1860
    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v11, :cond_21a

    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v11, :cond_21a

    .line 1861
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1862
    .local v13, "inWidth":I
    iget v12, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1871
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v12, "inHeight":I
    new-instance v10, Ljava/io/BufferedInputStream;

    iget-object v11, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v11, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v10

    .line 1875
    .end local v9    # "is":Ljava/io/InputStream;
    .local v11, "is":Ljava/io/InputStream;
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1876
    .end local p1    # "outWidth":I
    .local v10, "outWidth":I
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1877
    .end local p2    # "outHeight":I
    .local v2, "outHeight":I
    if-eqz p3, :cond_e0

    .line 1878
    move v9, v13

    move/from16 p1, v10

    .end local v10    # "outWidth":I
    .restart local p1    # "outWidth":I
    move v10, v12

    move-object v8, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .local v8, "is":Ljava/io/InputStream;
    move/from16 v11, p1

    move/from16 v16, v12

    .end local v12    # "inHeight":I
    .local v16, "inHeight":I
    move v12, v2

    move/from16 v17, v13

    .end local v13    # "inWidth":I
    .local v17, "inWidth":I
    move v13, v6

    move v15, v14

    move v14, v5

    invoke-static/range {v9 .. v14}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    move-result-object v0

    move/from16 v9, p1

    move-object v13, v0

    .local v0, "cropRectF":Landroid/graphics/RectF;
    goto :goto_fb

    .line 1881
    .end local v0    # "cropRectF":Landroid/graphics/RectF;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v16    # "inHeight":I
    .end local v17    # "inWidth":I
    .end local p1    # "outWidth":I
    .restart local v10    # "outWidth":I
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "inHeight":I
    .restart local v13    # "inWidth":I
    :cond_e0
    move/from16 p1, v10

    move-object v8, v11

    move/from16 v16, v12

    move/from16 v17, v13

    move v15, v14

    .end local v10    # "outWidth":I
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "inHeight":I
    .end local v13    # "inWidth":I
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v16    # "inHeight":I
    .restart local v17    # "inWidth":I
    .restart local p1    # "outWidth":I
    move/from16 v9, p1

    .end local p1    # "outWidth":I
    .local v9, "outWidth":I
    sub-int v13, v17, v9

    int-to-float v0, v13

    mul-float/2addr v0, v6

    .line 1882
    .local v0, "left":F
    int-to-float v10, v9

    add-float/2addr v10, v0

    .line 1883
    .local v10, "right":F
    sub-int v12, v16, v2

    int-to-float v11, v12

    mul-float/2addr v11, v5

    .line 1884
    .local v11, "top":F
    int-to-float v12, v2

    add-float/2addr v12, v11

    .line 1885
    .local v12, "bottom":F
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v0, v11, v10, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1887
    .end local v0    # "left":F
    .end local v10    # "right":F
    .end local v11    # "top":F
    .end local v12    # "bottom":F
    .local v13, "cropRectF":Landroid/graphics/RectF;
    :goto_fb
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    .line 1888
    .local v10, "roundedTrueCrop":Landroid/graphics/Rect;
    invoke-virtual {v13, v10}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 1890
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_209

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_11a

    move/from16 p2, v2

    move/from16 v18, v3

    move/from16 p5, v5

    move/from16 p6, v6

    goto/16 :goto_211

    .line 1896
    :cond_11a
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v9

    .line 1897
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/2addr v11, v2

    .line 1896
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1900
    .local v11, "scaleDownSampleSize":I
    const/4 v12, 0x0

    .line 1902
    .local v12, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_129
    invoke-static {v8, v15}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12d} :catch_12f

    move-object v12, v0

    .line 1905
    goto :goto_139

    .line 1903
    :catch_12f
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 1904
    .local v0, "e":Ljava/io/IOException;
    sget-object v14, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v15, "cannot open region decoder for default wallpaper"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    .end local v0    # "e":Ljava/io/IOException;
    :goto_139
    const/4 v0, 0x0

    .line 1908
    .local v0, "crop":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_14d

    .line 1910
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1911
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v15, 0x1

    if-le v11, v15, :cond_146

    .line 1912
    iput v11, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1914
    :cond_146
    invoke-virtual {v12, v10, v14}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1915
    invoke-virtual {v12}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 1918
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_14d
    if-nez v0, :cond_18b

    .line 1921
    new-instance v14, Ljava/io/BufferedInputStream;

    iget-object v15, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v15, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v14

    .line 1922
    const/4 v14, 0x0

    .line 1923
    .local v14, "fullSize":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1924
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    if-le v11, v1, :cond_166

    .line 1925
    iput v11, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1927
    :cond_166
    const/4 v1, 0x0

    invoke-static {v8, v1, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1928
    if-eqz v14, :cond_184

    .line 1929
    iget v1, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 p2, v0

    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .local p2, "crop":Landroid/graphics/Bitmap;
    iget v0, v10, Landroid/graphics/Rect;->top:I

    .line 1930
    move/from16 v18, v3

    .end local v3    # "which":I
    .local v18, "which":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1931
    move/from16 p5, v5

    .end local v5    # "verticalAlignment":F
    .restart local p5    # "verticalAlignment":F
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1929
    invoke-static {v14, v1, v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local p2    # "crop":Landroid/graphics/Bitmap;
    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    goto :goto_191

    .line 1928
    .end local v18    # "which":I
    .end local p5    # "verticalAlignment":F
    .restart local v3    # "which":I
    .restart local v5    # "verticalAlignment":F
    :cond_184
    move-object/from16 p2, v0

    move/from16 v18, v3

    move/from16 p5, v5

    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .end local v3    # "which":I
    .end local v5    # "verticalAlignment":F
    .restart local v18    # "which":I
    .restart local p2    # "crop":Landroid/graphics/Bitmap;
    .restart local p5    # "verticalAlignment":F
    goto :goto_191

    .line 1918
    .end local v14    # "fullSize":Landroid/graphics/Bitmap;
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "which":I
    .end local p2    # "crop":Landroid/graphics/Bitmap;
    .end local p5    # "verticalAlignment":F
    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    .restart local v3    # "which":I
    .restart local v5    # "verticalAlignment":F
    :cond_18b
    move-object/from16 p2, v0

    move/from16 v18, v3

    move/from16 p5, v5

    .line 1935
    .end local v3    # "which":I
    .end local v5    # "verticalAlignment":F
    .restart local v18    # "which":I
    .restart local p5    # "verticalAlignment":F
    :goto_191
    if-nez v0, :cond_19c

    .line 1936
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot decode default wallpaper"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    const/4 v1, 0x0

    return-object v1

    .line 1941
    :cond_19c
    if-lez v9, :cond_1ff

    if-lez v2, :cond_1ff

    .line 1942
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v9, :cond_1b2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, v2, :cond_1ad

    goto :goto_1b2

    :cond_1ad
    move/from16 p2, v2

    move/from16 p6, v6

    goto :goto_203

    .line 1943
    :cond_1b2
    :goto_1b2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1944
    .local v1, "m":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-direct {v3, v15, v15, v5, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1945
    .local v3, "cropRect":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v14, v9

    move/from16 p6, v6

    .end local v6    # "horizontalAlignment":F
    .local p6, "horizontalAlignment":F
    int-to-float v6, v2

    invoke-direct {v5, v15, v15, v14, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1946
    .local v5, "returnRect":Landroid/graphics/RectF;
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v3, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1947
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    .line 1948
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-int v14, v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1947
    invoke-static {v6, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1949
    .local v6, "tmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_1fc

    .line 1950
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1951
    .local v14, "c":Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1952
    .local v15, "p":Landroid/graphics/Paint;
    move/from16 p2, v2

    const/4 v2, 0x1

    .end local v2    # "outHeight":I
    .local p2, "outHeight":I
    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1953
    invoke-virtual {v14, v0, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1954
    move-object v0, v6

    goto :goto_203

    .line 1949
    .end local v14    # "c":Landroid/graphics/Canvas;
    .end local v15    # "p":Landroid/graphics/Paint;
    .end local p2    # "outHeight":I
    .restart local v2    # "outHeight":I
    :cond_1fc
    move/from16 p2, v2

    .end local v2    # "outHeight":I
    .restart local p2    # "outHeight":I
    goto :goto_203

    .line 1941
    .end local v1    # "m":Landroid/graphics/Matrix;
    .end local v3    # "cropRect":Landroid/graphics/RectF;
    .end local v5    # "returnRect":Landroid/graphics/RectF;
    .end local p2    # "outHeight":I
    .end local p6    # "horizontalAlignment":F
    .restart local v2    # "outHeight":I
    .local v6, "horizontalAlignment":F
    :cond_1ff
    move/from16 p2, v2

    move/from16 p6, v6

    .line 1958
    .end local v2    # "outHeight":I
    .end local v6    # "horizontalAlignment":F
    .restart local p2    # "outHeight":I
    .restart local p6    # "horizontalAlignment":F
    :goto_203
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 1890
    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .end local v11    # "scaleDownSampleSize":I
    .end local v12    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v18    # "which":I
    .end local p2    # "outHeight":I
    .end local p5    # "verticalAlignment":F
    .end local p6    # "horizontalAlignment":F
    .restart local v2    # "outHeight":I
    .local v3, "which":I
    .local v5, "verticalAlignment":F
    .restart local v6    # "horizontalAlignment":F
    :cond_209
    move/from16 p2, v2

    move/from16 v18, v3

    move/from16 p5, v5

    move/from16 p6, v6

    .line 1891
    .end local v2    # "outHeight":I
    .end local v3    # "which":I
    .end local v5    # "verticalAlignment":F
    .end local v6    # "horizontalAlignment":F
    .restart local v18    # "which":I
    .restart local p2    # "outHeight":I
    .restart local p5    # "verticalAlignment":F
    .restart local p6    # "horizontalAlignment":F
    :goto_211
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "crop has bad values for full size image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    const/4 v1, 0x0

    return-object v1

    .line 1860
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v13    # "cropRectF":Landroid/graphics/RectF;
    .end local v16    # "inHeight":I
    .end local v17    # "inWidth":I
    .end local v18    # "which":I
    .end local p5    # "verticalAlignment":F
    .end local p6    # "horizontalAlignment":F
    .restart local v3    # "which":I
    .restart local v5    # "verticalAlignment":F
    .restart local v6    # "horizontalAlignment":F
    .local v9, "is":Ljava/io/InputStream;
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p1    # "outWidth":I
    :cond_21a
    move/from16 v18, v3

    move/from16 p5, v5

    move/from16 p6, v6

    move-object v1, v15

    .line 1864
    .end local v3    # "which":I
    .end local v5    # "verticalAlignment":F
    .end local v6    # "horizontalAlignment":F
    .restart local v18    # "which":I
    .restart local p5    # "verticalAlignment":F
    .restart local p6    # "horizontalAlignment":F
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "default wallpaper dimensions are 0"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    return-object v1

    .line 1849
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "which":I
    .end local p5    # "verticalAlignment":F
    .end local p6    # "horizontalAlignment":F
    .restart local v3    # "which":I
    .restart local v5    # "verticalAlignment":F
    .restart local v6    # "horizontalAlignment":F
    :cond_229
    move/from16 v18, v3

    move/from16 p5, v5

    move/from16 p6, v6

    move-object v1, v15

    .line 1850
    .end local v3    # "which":I
    .end local v5    # "verticalAlignment":F
    .end local v6    # "horizontalAlignment":F
    .restart local v18    # "which":I
    .restart local p5    # "verticalAlignment":F
    .restart local p6    # "horizontalAlignment":F
    :goto_230
    invoke-static {v9, v1, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1851
    .local v1, "fullSize":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3

    .line 1815
    .end local v1    # "fullSize":Landroid/graphics/Bitmap;
    .end local v4    # "resources":Landroid/content/res/Resources;
    .end local v7    # "wpStream":Ljava/io/InputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v18    # "which":I
    .restart local p4    # "horizontalAlignment":F
    .local p6, "which":I
    :cond_23a
    move/from16 v6, p4

    move/from16 v7, p5

    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;
    .registers 2

    .line 4740
    iget-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    return-object v0
.end method

.method public getColorPalettes(Landroid/graphics/Bitmap;)Ljava/util/List;
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 6312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getColorPalettes(Landroid/graphics/Bitmap;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getColorPalettes(Landroid/graphics/Bitmap;Z)Ljava/util/List;
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fromGoogle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Z)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 6323
    invoke-virtual {p0, p1, p2}, Landroid/app/WallpaperManager;->getSeedColors(Landroid/graphics/Bitmap;Z)[I

    move-result-object v0

    .line 6324
    .local v0, "seeds":[I
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 6325
    invoke-virtual {p0, v0, p2}, Landroid/app/WallpaperManager;->getColorPalettes([IZ)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 6328
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getColorPalettes([I)Ljava/util/List;
    .registers 3
    .param p1, "seeds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 6266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getColorPalettes([IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getColorPalettes([IZ)Ljava/util/List;
    .registers 11
    .param p1, "seeds"    # [I
    .param p2, "fromGoogle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IZ)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 6277
    if-eqz p1, :cond_5d

    array-length v0, p1

    if-gtz v0, :cond_6

    goto :goto_5d

    .line 6281
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6282
    .local v0, "listPalettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    if-eqz p2, :cond_32

    .line 6283
    invoke-static {p1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->converAccent1ToSeedColors([I)[I

    move-result-object v1

    .line 6284
    .local v1, "convertedSeeds":[I
    if-eqz v1, :cond_31

    array-length v2, v1

    if-lez v2, :cond_31

    .line 6285
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_31

    aget v5, v1, v4

    .line 6286
    .local v5, "seed":I
    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;

    invoke-direct {v6, v5, v3}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;-><init>(IZ)V

    .line 6287
    .local v6, "colorScheme":Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;
    new-instance v7, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {v7, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;)V

    invoke-virtual {v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6285
    .end local v5    # "seed":I
    .end local v6    # "colorScheme":Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 6290
    .end local v1    # "convertedSeeds":[I
    :cond_31
    goto :goto_5c

    .line 6291
    :cond_32
    new-instance v1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;

    invoke-direct {v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;-><init>()V

    .line 6292
    .local v1, "paletteCreator":Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
    invoke-virtual {v1, p1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->setColors([I)V

    .line 6293
    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->generateColorPalette()V

    .line 6294
    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->getColorPalettes()Ljava/util/List;

    move-result-object v2

    .line 6295
    .local v2, "palettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    if-eqz v2, :cond_5c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5c

    .line 6296
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5c

    .line 6297
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6296
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 6302
    .end local v1    # "paletteCreator":Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
    .end local v2    # "palettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    .end local v3    # "i":I
    :cond_5c
    :goto_5c
    return-object v0

    .line 6278
    .end local v0    # "listPalettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    :cond_5d
    :goto_5d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 10
    .param p1, "imageUri"    # Landroid/net/Uri;

    .line 2902
    if-eqz p1, :cond_6e

    .line 2906
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2911
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2912
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2914
    .local v1, "cropAndSetWallpaperIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2917
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2918
    .local v2, "homeIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2920
    .local v3, "resolvedHome":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    if-eqz v3, :cond_47

    .line 2921
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2923
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 2925
    .local v5, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_47

    .line 2926
    return-object v1

    .line 2931
    .end local v5    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_47
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const v6, 0x1040396

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2933
    .local v5, "cropperPackage":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2934
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 2936
    .local v4, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5e

    .line 2937
    return-object v1

    .line 2941
    :cond_5e
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2907
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "cropAndSetWallpaperIntent":Landroid/content/Intent;
    .end local v2    # "homeIntent":Landroid/content/Intent;
    .end local v3    # "resolvedHome":Landroid/content/pm/ResolveInfo;
    .end local v4    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "cropperPackage":Ljava/lang/String;
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI must be of the content scheme type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2903
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultMultipackStyle(I)Ljava/lang/String;
    .registers 3
    .param p1, "which"    # I

    .line 4491
    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultMultipackStyle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultWallpaperType(I)I
    .registers 4
    .param p1, "which"    # I

    .line 4486
    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getDeviceColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDesiredMinimumHeight()I
    .registers 3

    .line 3772
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getDesiredMinimumHeight"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 3773
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 3778
    :try_start_f
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getHeightHint(I)I

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1f} :catch_20

    return v0

    .line 3779
    :catch_20
    move-exception v0

    .line 3780
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3774
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getDesiredMinimumWidth()I
    .registers 3

    .line 3742
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getDesiredMinimumWidth"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 3743
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 3748
    :try_start_f
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getWidthHint(I)I

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1f} :catch_20

    return v0

    .line 3749
    :catch_20
    move-exception v0

    .line 3750
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3744
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1560
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "which"    # I

    .line 1596
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1599
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1601
    .local v1, "returnDefault":Z
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1602
    .local v2, "bm":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_24

    .line 1603
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1604
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1605
    return-object v3

    .line 1607
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_24
    const/4 v3, 0x0

    return-object v3
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 2063
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getFastDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFastDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "which"    # I

    .line 2091
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 2094
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2096
    .local v1, "returnDefault":Z
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2097
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    .line 2098
    new-instance v4, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v4, v2, v3}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable-IA;)V

    return-object v4

    .line 2100
    :cond_1b
    return-object v3
.end method

.method public getHighlightFilterState(I)I
    .registers 4
    .param p1, "which"    # I

    .line 5114
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5119
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getHighlightFilterState(I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 5120
    :catch_13
    move-exception v0

    .line 5121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5115
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5116
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .registers 2

    .line 1466
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getLidState()I
    .registers 4

    .line 6134
    const/4 v0, -0x1

    .line 6135
    .local v0, "state":I
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 6140
    :try_start_9
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getLidState()I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_16

    move v0, v1

    .line 6143
    nop

    .line 6145
    return v0

    .line 6141
    :catch_16
    move-exception v1

    .line 6142
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 6136
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1c
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6137
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLockWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "userId"    # I

    .line 2729
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 2734
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2739
    :try_start_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2740
    .local v0, "outParams":Landroid/os/Bundle;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0, p1, p2}, Landroid/app/IWallpaperManager;->getLockWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return-object v1

    .line 2741
    .end local v0    # "outParams":Landroid/os/Bundle;
    :catch_19
    move-exception v0

    .line 2742
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2735
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getLockWallpaperType()I
    .registers 2

    .line 5057
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    return v0
.end method

.method public getMotionWallpaperPkgName(I)Ljava/lang/String;
    .registers 4
    .param p1, "which"    # I

    .line 5660
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5665
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 5666
    :catch_13
    move-exception v0

    .line 5667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5661
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5662
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getSeedColors(I)[I
    .registers 3
    .param p1, "which"    # I

    .line 6338
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getSeedColors(IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getSeedColors(IZ)[I
    .registers 6
    .param p1, "which"    # I
    .param p2, "fromGoogle"    # Z

    .line 6349
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeedColors: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromGoogle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6351
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    .line 6352
    .local v0, "colors":Landroid/app/SemWallpaperColors;
    const/4 v1, 0x0

    .line 6353
    .local v1, "seeds":[I
    if-eqz v0, :cond_2d

    .line 6354
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors;->getSeedColors()[I

    move-result-object v1

    .line 6357
    :cond_2d
    if-eqz p2, :cond_34

    .line 6358
    invoke-static {v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->converAccent1ToSeedColors([I)[I

    move-result-object v2

    return-object v2

    .line 6360
    :cond_34
    return-object v1
.end method

.method public getSeedColors(Landroid/graphics/Bitmap;)[I
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 6371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getSeedColors(Landroid/graphics/Bitmap;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getSeedColors(Landroid/graphics/Bitmap;Z)[I
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fromGoogle"    # Z

    .line 6382
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeedColors: bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromGoogle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6384
    invoke-static {p1}, Lcom/samsung/android/wallpaper/colortheme/ColorThemeExtractor;->getSeedColors(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    .line 6386
    .local v0, "seeds":[I
    if-eqz p2, :cond_2d

    .line 6387
    invoke-static {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->converAccent1ToSeedColors([I)[I

    move-result-object v1

    return-object v1

    .line 6389
    :cond_2d
    return-object v0
.end method

.method public getSnapshotCount()I
    .registers 2

    .line 6011
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getSnapshotCount(I)I

    move-result v0

    return v0
.end method

.method public getSnapshotCount(I)I
    .registers 4
    .param p1, "which"    # I

    .line 6017
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 6022
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getSnapshotCount(I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 6023
    :catch_13
    move-exception v0

    .line 6024
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6018
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "getSnapshotCount: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6019
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getVideoFileName(I)Ljava/lang/String;
    .registers 4
    .param p1, "which"    # I

    .line 5417
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5422
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getVideoFileName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 5423
    :catch_13
    move-exception v0

    .line 5424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5418
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5419
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getVideoFilePath(I)Ljava/lang/String;
    .registers 4
    .param p1, "which"    # I

    .line 5385
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5390
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 5391
    :catch_13
    move-exception v0

    .line 5392
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5386
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5387
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getVideoPackage()Ljava/lang/String;
    .registers 2

    .line 5399
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoPackage(I)Ljava/lang/String;
    .registers 4
    .param p1, "which"    # I

    .line 5403
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5408
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 5409
    :catch_13
    move-exception v0

    .line 5410
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5404
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getWallpaperColors(I)Landroid/app/WallpaperColors;
    .registers 3
    .param p1, "which"    # I

    .line 2499
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(II)Landroid/app/WallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperColors(II)Landroid/app/WallpaperColors;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2513
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getWallpaperColors"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 2514
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/WallpaperManager$Globals;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperComponentExtras(II)Landroid/os/Bundle;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 5154
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5159
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperComponentExtras(II)Landroid/os/Bundle;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 5160
    :catch_13
    move-exception v0

    .line 5161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5155
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getWallpaperDimAmount()F
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3982
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3987
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getWallpaperDimAmount()F

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 3988
    :catch_13
    move-exception v0

    .line 3989
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3983
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getWallpaperExtras(II)Landroid/os/Bundle;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 5168
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5173
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 5174
    :catch_13
    move-exception v0

    .line 5175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5169
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5170
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "which"    # I

    .line 2431
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2653
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/WallpaperManager;->getWallpaperFile(IIZI)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperFile(III)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "kwpType"    # I

    .line 2660
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/WallpaperManager;->getWallpaperFile(IIZI)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperFile(IIZI)Landroid/os/ParcelFileDescriptor;
    .registers 15
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "getCropped"    # Z
    .param p4, "kwpType"    # I

    .line 2692
    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 2694
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 2699
    :try_start_b
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2700
    .local v6, "outParams":Landroid/os/Bundle;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2701
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2700
    move v5, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v1 .. v9}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZI)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2b} :catch_61
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_2b} :catch_2c

    return-object v0

    .line 2709
    .end local v6    # "outParams":Landroid/os/Bundle;
    :catch_2c
    move-exception v0

    .line 2710
    .local v0, "e":Ljava/lang/SecurityException;
    const-wide/32 v1, 0xe4ad173

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2711
    const-wide/32 v1, 0xe2815da

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 2712
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "No permission to access wallpaper, returning default wallpaper file to avoid crashing legacy app."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    invoke-static {}, Landroid/app/WallpaperManager;->getDefaultSystemWallpaperFile()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 2716
    :cond_4b
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1b

    if-ge v1, v2, :cond_60

    .line 2717
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    const/4 v1, 0x0

    return-object v1

    .line 2721
    :cond_60
    throw v0

    .line 2707
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_61
    move-exception v0

    .line 2708
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2695
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_67
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "which"    # I
    .param p2, "getCropped"    # Z

    .line 2680
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/app/WallpaperManager;->getWallpaperFile(IIZI)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperId(I)I
    .registers 3
    .param p1, "which"    # I

    .line 2867
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    move-result v0

    return v0
.end method

.method public getWallpaperIdForUser(II)I
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2877
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2881
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperIdForUser(II)I

    move-result v0

    return v0

    .line 2878
    :cond_13
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "which":I
    .end local p2    # "userId":I
    throw v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_25

    .line 2883
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "which":I
    .restart local p2    # "userId":I
    :catch_25
    move-exception v0

    .line 2884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 2

    .line 2770
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getWallpaperInfoForUser(I)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 3
    .param p1, "which"    # I

    .line 2802
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperInfo(II)Landroid/app/WallpaperInfo;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2817
    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 2819
    :try_start_3
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2823
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0

    .line 2820
    :cond_16
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "which":I
    .end local p2    # "userId":I
    throw v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_28} :catch_28

    .line 2825
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "which":I
    .restart local p2    # "userId":I
    :catch_28
    move-exception v0

    .line 2826
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWallpaperInfoFile()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 2840
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2845
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getWallpaperInfoFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return-object v0

    .line 2846
    :catch_19
    move-exception v0

    .line 2847
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2841
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getWallpaperInfoForUser(I)Landroid/app/WallpaperInfo;
    .registers 3
    .param p1, "userId"    # I

    .line 2781
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperOrientation(II)I
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 5186
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5191
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperOrientation(II)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 5192
    :catch_13
    move-exception v0

    .line 5193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5188
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hasResourceWallpaper(I)Z
    .registers 5
    .param p1, "resid"    # I

    .line 3711
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 3716
    :try_start_8
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3717
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3718
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v2
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_30} :catch_31

    return v2

    .line 3719
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "name":Ljava/lang/String;
    :catch_31
    move-exception v0

    .line 3720
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3712
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hasVideoWallpaper()Z
    .registers 4

    .line 5449
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 5453
    const/4 v0, 0x0

    .line 5455
    .local v0, "hasVideoWallpaper":Z
    :try_start_9
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->hasVideoWallpaper()Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_16

    move v0, v1

    .line 5458
    nop

    .line 5459
    return v0

    .line 5456
    :catch_16
    move-exception v1

    .line 5457
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5450
    .end local v0    # "hasVideoWallpaper":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1c
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5451
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isDefaultWallpaperState(I)Z
    .registers 4
    .param p1, "which"    # I

    .line 5200
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5205
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->isDefaultWallpaperState(I)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 5206
    :catch_13
    move-exception v0

    .line 5207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5201
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5202
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isExternalLiveWallpaper()Z
    .registers 5

    .line 6078
    const-string v0, ""

    .line 6079
    .local v0, "settingsName":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v1, :cond_19

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v1, :cond_b

    goto :goto_19

    .line 6082
    :cond_b
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isSubDisplay()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 6083
    const-string/jumbo v0, "lockscreen_wallpaper_sub"

    goto :goto_1c

    .line 6085
    :cond_15
    const-string/jumbo v0, "lockscreen_wallpaper"

    goto :goto_1c

    .line 6080
    :cond_19
    :goto_19
    const-string/jumbo v0, "lockscreen_wallpaper"

    .line 6088
    :goto_1c
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    return v3
.end method

.method public isExternalLiveWallpaper(I)Z
    .registers 5
    .param p1, "which"    # I

    .line 6093
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    .line 6094
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isExternalLiveWallpaper()Z

    move-result v0

    return v0

    .line 6096
    :cond_9
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 6097
    .local v0, "wi":Landroid/app/WallpaperInfo;
    if-eqz v0, :cond_27

    .line 6098
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 6100
    .local v1, "serviceName":Ljava/lang/String;
    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 6101
    const/4 v2, 0x1

    return v2

    .line 6104
    .end local v1    # "serviceName":Ljava/lang/String;
    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method public isLiveWallpaper(I)Z
    .registers 6
    .param p1, "which"    # I

    .line 6065
    move v0, p1

    .line 6066
    .local v0, "whichToCheck":I
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 6067
    :cond_e
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    or-int/lit8 v0, v1, 0x1

    .line 6069
    :cond_14
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 6070
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v2, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    nop

    .line 6069
    :goto_2b
    return v2
.end method

.method public isLockscreenLiveWallpaperEnabled()Z
    .registers 2

    .line 1476
    invoke-static {}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabledHelper()Z

    move-result v0

    return v0
.end method

.method public isPreloadedLiveWallpaper(I)Z
    .registers 6
    .param p1, "which"    # I

    .line 6110
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 6111
    .local v0, "wi":Landroid/app/WallpaperInfo;
    if-eqz v0, :cond_1d

    .line 6112
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 6113
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_1d

    .line 6114
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6115
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "com.samsung.android.wallpaper.live"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 6118
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method public isSetWallpaperAllowed()Z
    .registers 3

    .line 4209
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 4214
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 4215
    :catch_19
    move-exception v0

    .line 4216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4210
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isSnapshotTestMode()Z
    .registers 3

    .line 5956
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5957
    const/4 v0, 0x0

    return v0

    .line 5960
    :cond_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 5965
    :try_start_10
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->isSnapshotTestMode()Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1b

    return v0

    .line 5966
    :catch_1b
    move-exception v0

    .line 5967
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5961
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isSnapshotTestMode: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5962
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isSubDisplay()Z
    .registers 3

    .line 6169
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 6170
    return v1

    .line 6173
    :cond_6
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    if-nez v0, :cond_e

    .line 6174
    const/4 v0, 0x1

    return v0

    .line 6177
    :cond_e
    return v1
.end method

.method public isSupportCMFFeature()Z
    .registers 2

    .line 4481
    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v0}, Landroid/app/SemWallpaperResourcesInfo;->isSupportCMF()Z

    move-result v0

    return v0
.end method

.method public isSupportDefaultMultipleWallpaper()Z
    .registers 3

    .line 4496
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultMultipack(I)Z

    move-result v0

    goto :goto_16

    .line 4497
    :cond_f
    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultMultipack(I)Z

    move-result v0

    .line 4496
    :goto_16
    return v0
.end method

.method public isSystemAndLockPaired(I)Z
    .registers 4
    .param p1, "mode"    # I

    .line 5089
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5094
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->isSystemAndLockPaired(I)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 5095
    :catch_13
    move-exception v0

    .line 5096
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5090
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5091
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isThemeWallpaper(Landroid/content/Context;I)Z
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 4332
    const/4 v0, 0x0

    .line 4333
    .local v0, "settingsName":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const-string/jumbo v2, "isThemeWallpaper: which = "

    if-eqz v1, :cond_2f

    .line 4334
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    if-nez v1, :cond_2f

    .line 4335
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". \'which\' does not have mode. getCurrentImplicitMode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4336
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getCurrentImplicitMode(Landroid/content/Context;)I

    move-result v1

    or-int/2addr p2, v1

    .line 4340
    :cond_2f
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 4341
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 4342
    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    goto :goto_4f

    .line 4344
    :cond_3f
    const-string/jumbo v0, "sub_display_system_wallpaper_transparency"

    goto :goto_4f

    .line 4347
    :cond_43
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 4348
    const-string/jumbo v0, "lockscreen_wallpaper_transparent"

    goto :goto_4f

    .line 4350
    :cond_4d
    const-string v0, "android.wallpaper.settings_systemui_transparency"

    .line 4354
    :goto_4f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v1, v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 4355
    .local v1, "type":I
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", name = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_8b

    .line 4358
    return v3

    .line 4362
    :cond_8b
    if-ne v1, v3, :cond_b3

    .line 4363
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->getLastCallingPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 4364
    .local v2, "lastCallingPckage":Ljava/lang/String;
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isThemeWallpaper: lastCallingPackage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4365
    const-string v4, "com.samsung.android.themecenter"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 4366
    return v3

    .line 4370
    .end local v2    # "lastCallingPckage":Ljava/lang/String;
    :cond_b3
    const/4 v2, 0x0

    return v2
.end method

.method public isValidSnapshot(I)Z
    .registers 4
    .param p1, "key"    # I

    .line 6051
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 6056
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->isValidSnapshot(I)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 6057
    :catch_13
    move-exception v0

    .line 6058
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6052
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isValidSnapshot: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6053
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isVideoWallpaper()Z
    .registers 5

    .line 5431
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 5435
    const/4 v0, 0x0

    .line 5437
    .local v0, "isVideoWallpaper":Z
    :try_start_9
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->isVideoWallpaper()Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_2f

    move v0, v1

    .line 5440
    nop

    .line 5442
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVideoWallpaper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5443
    return v0

    .line 5438
    :catch_2f
    move-exception v1

    .line 5439
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5432
    .end local v0    # "isVideoWallpaper":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_35
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5433
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isWallpaperBackupAllowed(I)Z
    .registers 6
    .param p1, "which"    # I

    .line 4720
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 4725
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->isWallpaperBackupAllowed(II)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 4726
    :catch_19
    move-exception v0

    .line 4727
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception querying wallpaper backup eligibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 4721
    :cond_38
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isWallpaperBackupEligible(I)Z
    .registers 6
    .param p1, "which"    # I

    .line 4702
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 4707
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->isWallpaperBackupEligible(II)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 4708
    :catch_19
    move-exception v0

    .line 4709
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception querying wallpaper backup eligibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4711
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 4703
    :cond_38
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4704
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isWallpaperDataExists(I)Z
    .registers 4
    .param p1, "which"    # I

    .line 6499
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 6504
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/IWallpaperManager;->isWallpaperDataExists(II)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 6505
    :catch_19
    move-exception v0

    .line 6506
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6500
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isWallpaperDataExist: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6501
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isWallpaperSupported()Z
    .registers 3

    .line 4189
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 4194
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 4195
    :catch_19
    move-exception v0

    .line 4196
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4190
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public lockScreenWallpaperExists()Z
    .registers 3

    .line 3999
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 4004
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->lockScreenWallpaperExists()Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 4005
    :catch_13
    move-exception v0

    .line 4006
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4000
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public notifyCompletePurchase()V
    .registers 1

    .line 6123
    return-void
.end method

.method public notifyPid(IILjava/lang/String;Z)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "enable"    # Z

    .line 6154
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 6159
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IWallpaperManager;->notifyPid(IILjava/lang/String;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    .line 6162
    nop

    .line 6165
    return-void

    .line 6160
    :catch_13
    move-exception v0

    .line 6161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6155
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6156
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public peekBitmapDimensions()Landroid/graphics/Rect;
    .registers 2

    .line 2343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->peekBitmapDimensions(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public peekBitmapDimensions(I)Landroid/graphics/Rect;
    .registers 4
    .param p1, "which"    # I

    .line 2372
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2374
    .local v0, "returnDefault":Z
    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->peekBitmapDimensions(IZ)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public peekBitmapDimensions(IZ)Landroid/graphics/Rect;
    .registers 6
    .param p1, "which"    # I
    .param p2, "returnDefault"    # Z

    .line 2389
    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 2390
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2391
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 2390
    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperDimensions(Landroid/content/Context;ZII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 2010
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->peekDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public peekDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "which"    # I

    .line 2033
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 2121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->peekFastDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public peekFastDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "which"    # I

    .line 2142
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getFastDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;)V
    .registers 6
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;

    .line 2536
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2537
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 2536
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/app/WallpaperManager$Globals;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;III)V

    .line 2538
    return-void
.end method

.method public removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;

    .line 2464
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V

    .line 2465
    return-void
.end method

.method public removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V
    .registers 5
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I

    .line 2475
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/WallpaperManager$Globals;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;II)V

    .line 2476
    return-void
.end method

.method public removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/OnSemColorsChangedListener;

    .line 6249
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;I)V

    .line 6250
    return-void
.end method

.method public removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;I)V
    .registers 5
    .param p1, "callback"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "userId"    # I

    .line 6255
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/WallpaperManager$Globals;->removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;II)V

    .line 6256
    return-void
.end method

.method public restoreLockWallpaper()V
    .registers 1

    .line 6129
    return-void
.end method

.method public semClearBackupWallpapers()V
    .registers 2

    .line 5847
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V

    .line 5848
    return-void
.end method

.method public semClearBackupWallpapers(I)V
    .registers 5
    .param p1, "which"    # I

    .line 5859
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semClearBackupWallpapers: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5861
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x22344

    if-lt v0, v1, :cond_31

    .line 5862
    if-lez p1, :cond_29

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_3c

    .line 5863
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'which\' SHOULD be a combination of FLAG_SYSTEM and FLAG_LOCK."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5866
    :cond_31
    if-gtz p1, :cond_3c

    .line 5867
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semClearBackupWallpapers: Invalid which."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5868
    return-void

    .line 5872
    :cond_3c
    :goto_3c
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 5877
    :try_start_44
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->removeSnapshotByWhich(I)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4d} :catch_4f

    .line 5880
    nop

    .line 5882
    return-void

    .line 5878
    :catch_4f
    move-exception v0

    .line 5879
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5873
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_55
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5874
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public semClearBackupWallpapers(Ljava/lang/String;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    .line 5891
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 5895
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 5900
    :try_start_e
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->removeSnapshotBySource(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_19

    .line 5903
    nop

    .line 5905
    return-void

    .line 5901
    :catch_19
    move-exception v0

    .line 5902
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5896
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semClearBackupWallpapers: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5897
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5892
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'source\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semGetDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 15
    .param p1, "which"    # I

    .line 1619
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2e

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1620
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1621
    const/16 p1, 0x9

    goto :goto_2e

    .line 1622
    :cond_18
    if-nez p1, :cond_2d

    .line 1624
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;IZ)Ljava/io/InputStream;

    move-result-object v0

    .line 1625
    .local v0, "is":Ljava/io/InputStream;
    if-nez v0, :cond_28

    .line 1626
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;IZ)Ljava/io/InputStream;

    move-result-object v0

    .line 1628
    :cond_28
    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->getDrawableFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1630
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_2d
    const/4 p1, 0x1

    .line 1634
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    .line 1637
    .local v0, "isDesktopMode":Z
    :try_start_2f
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/app/IWallpaperManager;->isDesktopModeEnabled(I)Z

    move-result v4
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_39} :catch_16e

    move v0, v4

    .line 1640
    nop

    .line 1643
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_56

    .line 1644
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v4

    if-nez v4, :cond_56

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v4

    if-nez v4, :cond_56

    .line 1645
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isSubDisplay()Z

    move-result v4

    if-eqz v4, :cond_54

    const/16 v4, 0x10

    goto :goto_55

    :cond_54
    const/4 v4, 0x4

    :goto_55
    or-int/2addr p1, v4

    .line 1649
    :cond_56
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->isKeyguardWallpaperShowing(I)Z

    move-result v4

    .line 1650
    .local v4, "isKeyguardWallpaperShowing":Z
    sget-object v5, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v5, v1}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultVideo(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    if-nez v0, :cond_6c

    .line 1651
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isVideoWallpaper()Z

    move-result v1

    if-eqz v1, :cond_6c

    move v1, v2

    goto :goto_6d

    :cond_6c
    move v1, v3

    .line 1652
    .local v1, "isDefaultVideoWallpaper":Z
    :goto_6d
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v5

    .line 1654
    .local v5, "isLock":Z
    const/4 v6, 0x0

    if-eqz v4, :cond_9d

    if-eqz v1, :cond_9d

    if-eqz v5, :cond_9d

    .line 1656
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getVideoFileName(I)Ljava/lang/String;

    move-result-object v2

    .line 1657
    .local v2, "fileName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1659
    .local v7, "assetFd":Landroid/content/res/AssetFileDescriptor;
    :try_start_7d
    const-string v8, "com.samsung.android.wallpaper.res"

    invoke-direct {p0, v8, v2}, Landroid/app/WallpaperManager;->getVideoFDFromPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_83} :catch_85

    move-object v7, v8

    .line 1662
    goto :goto_89

    .line 1660
    :catch_85
    move-exception v8

    .line 1661
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1663
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_89
    invoke-direct {p0, v7, v6, v2}, Landroid/app/WallpaperManager;->getVideoWallpaperFrame(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1665
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_9b

    .line 1666
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v3, v6, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3

    .line 1665
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v7    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9b
    goto/16 :goto_10d

    .line 1668
    :cond_9d
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->isLiveWallpaper(I)Z

    move-result v7

    if-eqz v7, :cond_10d

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v7

    if-nez v7, :cond_10d

    .line 1669
    if-eqz v4, :cond_b3

    if-eqz v4, :cond_10e

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v7

    if-eqz v7, :cond_10e

    .line 1670
    :cond_b3
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v7

    if-eqz v7, :cond_c7

    .line 1671
    sget-object v7, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "semGetDrawable: Converting FLAG_LOCK to FLAG_SYSTEM. Since lockscreen wallpaper does not exist."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v7

    or-int/lit8 p1, v7, 0x1

    .line 1675
    :cond_c7
    const/4 v2, 0x0

    .line 1677
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_c8
    sget-object v7, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v7}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v7

    iget-object v8, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    const/high16 v9, 0x10000000

    const/4 v10, 0x7

    invoke-interface {v7, v10, v8, p1, v9}, Landroid/app/IWallpaperManager;->getWallpaperThumbnailFileDescriptor(IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    move-object v2, v7

    .line 1678
    if-nez v2, :cond_fd

    .line 1679
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 1680
    .local v3, "info":Landroid/app/WallpaperInfo;
    if-eqz v3, :cond_f8

    .line 1681
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_f4
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_f4} :catch_103
    .catchall {:try_start_c8 .. :try_end_f4} :catchall_101

    .line 1689
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1681
    return-object v6

    .line 1683
    :cond_f8
    nop

    .line 1689
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1683
    return-object v6

    .line 1689
    .end local v3    # "info":Landroid/app/WallpaperInfo;
    :cond_fd
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1690
    goto :goto_10e

    .line 1689
    :catchall_101
    move-exception v3

    goto :goto_109

    .line 1686
    :catch_103
    move-exception v3

    .line 1687
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_104
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    .end local v0    # "isDesktopMode":Z
    .end local v1    # "isDefaultVideoWallpaper":Z
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "isKeyguardWallpaperShowing":Z
    .end local v5    # "isLock":Z
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "which":I
    throw v6
    :try_end_109
    .catchall {:try_start_104 .. :try_end_109} :catchall_101

    .line 1689
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "isDesktopMode":Z
    .restart local v1    # "isDefaultVideoWallpaper":Z
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "isKeyguardWallpaperShowing":Z
    .restart local v5    # "isLock":Z
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "which":I
    :goto_109
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1690
    throw v3

    .line 1668
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_10d
    :goto_10d
    nop

    .line 1694
    :cond_10e
    :goto_10e
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v2

    .line 1695
    .local v2, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v7, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v8, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v10

    const/4 v11, 0x0

    move v9, p1

    move-object v12, v2

    invoke-static/range {v7 .. v12}, Landroid/app/WallpaperManager$Globals;->-$$Nest$mgetCurrentWallpaperLocked(Landroid/app/WallpaperManager$Globals;Landroid/content/Context;IIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1696
    .local v7, "wallpaperBmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_15c

    if-eqz v5, :cond_15c

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->isSystemAndLockPaired(I)Z

    move-result v8

    if-eqz v8, :cond_15c

    .line 1697
    const/4 v8, 0x0

    .line 1699
    .local v8, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_12c
    iget-object v9, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getUserId()I

    move-result v9

    invoke-virtual {p0, v9, p1}, Landroid/app/WallpaperManager;->getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    move-object v8, v9

    .line 1700
    if-eqz v8, :cond_147

    .line 1701
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1702
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-static {v10, v6, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_146
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12c .. :try_end_146} :catch_14e
    .catchall {:try_start_12c .. :try_end_146} :catchall_14c

    move-object v7, v6

    .line 1707
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_147
    nop

    :goto_148
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1708
    goto :goto_15c

    .line 1707
    :catchall_14c
    move-exception v3

    goto :goto_158

    .line 1704
    :catch_14e
    move-exception v6

    .line 1705
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    :try_start_14f
    sget-object v9, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v10, "Can\'t decode file descriptor"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_156
    .catchall {:try_start_14f .. :try_end_156} :catchall_14c

    .line 1707
    nop

    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_148

    :goto_158
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1708
    throw v3

    .line 1711
    .end local v8    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_15c
    :goto_15c
    invoke-direct {p0, v7}, Landroid/app/WallpaperManager;->getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1712
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_163

    .line 1713
    return-object v6

    .line 1716
    :cond_163
    iget-object v8, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;IZ)Ljava/io/InputStream;

    move-result-object v3

    .line 1717
    .local v3, "is":Ljava/io/InputStream;
    invoke-direct {p0, v3}, Landroid/app/WallpaperManager;->getDrawableFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    return-object v8

    .line 1638
    .end local v1    # "isDefaultVideoWallpaper":Z
    .end local v2    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isKeyguardWallpaperShowing":Z
    .end local v5    # "isLock":Z
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v7    # "wallpaperBmp":Landroid/graphics/Bitmap;
    :catch_16e
    move-exception v1

    .line 1639
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .registers 4
    .param p1, "which"    # I

    .line 2553
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->getPreconditionWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    .line 2554
    .local v0, "colors":Landroid/app/SemWallpaperColors;
    if-eqz v0, :cond_7

    .line 2555
    return-object v0

    .line 2558
    :cond_7
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager$Globals;->semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    return-object v1
.end method

.method public semGetSmartCropRect(I)Landroid/graphics/Rect;
    .registers 3
    .param p1, "which"    # I

    .line 2630
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager$Globals;->semGetSmartCropRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public semGetUri(I)Landroid/net/Uri;
    .registers 4
    .param p1, "which"    # I

    .line 3144
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->semGetUri(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3145
    .local v0, "strUri":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 3146
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return-object v1

    .line 3150
    .end local v0    # "strUri":Ljava/lang/String;
    :cond_17
    goto :goto_1c

    .line 3148
    :catch_18
    move-exception v0

    .line 3149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .registers 4
    .param p1, "which"    # I

    .line 2543
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->getPreconditionWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    .line 2544
    .local v0, "colors":Landroid/app/SemWallpaperColors;
    if-eqz v0, :cond_7

    .line 2545
    return-object v0

    .line 2548
    :cond_7
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager$Globals;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    return-object v1
.end method

.method public semGetWallpaperCropHint(I)Landroid/graphics/Rect;
    .registers 4
    .param p1, "which"    # I

    .line 5214
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5219
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 5220
    :catch_13
    move-exception v0

    .line 5221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5215
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5216
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public semGetWallpaperType(I)I
    .registers 4
    .param p1, "which"    # I

    .line 5069
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 5073
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x22344

    if-lt v0, v1, :cond_20

    .line 5074
    if-lez p1, :cond_18

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_20

    .line 5075
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'which\' SHOULD be a combination of FLAG_SYSTEM and FLAG_LOCK."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5080
    :cond_20
    :goto_20
    :try_start_20
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2a} :catch_2b

    return v0

    .line 5081
    :catch_2b
    move-exception v0

    .line 5082
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5070
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_31
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5071
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public semMakeBackupWallpaper()I
    .registers 2

    .line 5788
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semMakeBackupWallpaper(I)I

    move-result v0

    return v0
.end method

.method public semMakeBackupWallpaper(I)I
    .registers 3
    .param p1, "which"    # I

    .line 5802
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->semMakeBackupWallpaper(II)I

    move-result v0

    return v0
.end method

.method public semMakeBackupWallpaper(II)I
    .registers 6
    .param p1, "which"    # I
    .param p2, "key"    # I

    .line 5814
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semMakeBackupWallpaper: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5816
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x22344

    if-lt v0, v1, :cond_3b

    .line 5817
    if-lez p1, :cond_33

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_3b

    .line 5818
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'which\' SHOULD be a combination of FLAG_SYSTEM and FLAG_LOCK."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5822
    :cond_3b
    :goto_3b
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->checkWhichInvalidation(I)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 5823
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semMakeBackupWallpaper: Invalid which. which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5824
    const/4 v0, -0x1

    return v0

    .line 5827
    :cond_5c
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 5832
    :try_start_64
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->makeSnapshot(II)I

    move-result v0
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_6e} :catch_6f

    return v0

    .line 5833
    :catch_6f
    move-exception v0

    .line 5834
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5828
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_75
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semMakeBackupWallpaper: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5829
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public semRequestWallpaperColorsAnalysis(I)V
    .registers 4
    .param p1, "which"    # I

    .line 2610
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2615
    :try_start_8
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2616
    .local v0, "callingPackage":Ljava/lang/String;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/app/IWallpaperManager;->semRequestWallpaperColorsAnalysis(ILjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_19

    .line 2619
    .end local v0    # "callingPackage":Ljava/lang/String;
    nop

    .line 2621
    return-void

    .line 2617
    :catch_19
    move-exception v0

    .line 2618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2611
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public semRestoreBackupWallpaper(I)Z
    .registers 5
    .param p1, "key"    # I

    .line 5935
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semRestoreBackupWallpaper: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5937
    if-gtz p1, :cond_24

    .line 5938
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "invalid key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5939
    const/4 v0, 0x0

    return v0

    .line 5942
    :cond_24
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 5947
    :try_start_2c
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->restoreSnapshot(ILjava/lang/String;)Z

    move-result v0
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3c} :catch_3d

    return v0

    .line 5948
    :catch_3d
    move-exception v0

    .line 5949
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5943
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_43
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5944
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "which"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2596
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2601
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManager;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    .line 2604
    nop

    .line 2606
    return-void

    .line 2602
    :catch_13
    move-exception v0

    .line 2603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2597
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V
    .registers 6
    .param p1, "colors"    # Landroid/app/SemWallpaperColors;
    .param p2, "which"    # I

    .line 3158
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetDLSWallpaperColors "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    :try_start_23
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2c} :catch_2d

    .line 3164
    goto :goto_31

    .line 3162
    :catch_2d
    move-exception v0

    .line 3163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3165
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method

.method public semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "which"    # I
    .param p2, "original"    # Landroid/graphics/Rect;
    .param p3, "smartCrop"    # Landroid/graphics/Rect;

    .line 2625
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/WallpaperManager$Globals;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2626
    return-void
.end method

.method public semSetUri(Landroid/net/Uri;ZI)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allowBackup"    # Z
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 3171
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->semSetUri(Landroid/net/Uri;ZII)V

    .line 3172
    return-void
.end method

.method public semSetUri(Landroid/net/Uri;ZII)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allowBackup"    # Z
    .param p3, "which"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 3178
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager;->semSetUri(Landroid/net/Uri;ZIILandroid/os/Bundle;)V

    .line 3179
    return-void
.end method

.method public semSetUri(Landroid/net/Uri;ZIILandroid/os/Bundle;)V
    .registers 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allowBackup"    # Z
    .param p3, "which"    # I
    .param p4, "type"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 3185
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v6, p3

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetUri: uri ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowBackup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, p2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",hasExtras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p5, :cond_39

    move v4, v2

    goto :goto_3a

    :cond_39
    const/4 v4, 0x0

    :goto_3a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    if-nez v8, :cond_48

    return-void

    .line 3188
    :cond_48
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 3189
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 3190
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    .line 3191
    .local v15, "resName":Ljava/lang/String;
    const-string/jumbo v14, "multipack"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x3

    if-eqz v0, :cond_60

    move v0, v13

    goto :goto_62

    :cond_60
    move/from16 v0, p4

    :goto_62
    move v12, v0

    .line 3193
    .end local p4    # "type":I
    .local v12, "type":I
    :try_start_63
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v7, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v11, v7, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    move-result v16
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_79} :catch_a0

    move/from16 v11, p2

    move/from16 p4, v12

    .end local v12    # "type":I
    .restart local p4    # "type":I
    move/from16 v12, p3

    move v3, v13

    move/from16 v13, p4

    move-object/from16 v17, v14

    move-object v14, v0

    move-object/from16 v18, v15

    .end local v15    # "resName":Ljava/lang/String;
    .local v18, "resName":Ljava/lang/String;
    move/from16 v15, v16

    move-object/from16 v16, p5

    :try_start_8b
    invoke-interface/range {v9 .. v16}, Landroid/app/IWallpaperManager;->semSetUri(Ljava/lang/String;ZIILjava/lang/String;ILandroid/os/Bundle;)V

    .line 3194
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 3195
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_9d} :catch_9e

    .line 3199
    :cond_9d
    goto :goto_ab

    .line 3197
    :catch_9e
    move-exception v0

    goto :goto_a8

    .end local v18    # "resName":Ljava/lang/String;
    .end local p4    # "type":I
    .restart local v12    # "type":I
    .restart local v15    # "resName":Ljava/lang/String;
    :catch_a0
    move-exception v0

    move/from16 p4, v12

    move v3, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    .line 3198
    .end local v12    # "type":I
    .end local v15    # "resName":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "resName":Ljava/lang/String;
    .restart local p4    # "type":I
    :goto_a8
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3201
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_ab
    const/4 v0, 0x5

    move/from16 v9, p4

    .end local p4    # "type":I
    .local v9, "type":I
    if-eq v9, v3, :cond_b2

    if-ne v9, v0, :cond_bb

    .line 3202
    :cond_b2
    invoke-direct/range {p0 .. p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 3203
    invoke-virtual {v7, v6}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V

    .line 3207
    :cond_bb
    move-object/from16 v2, v17

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_135

    if-eq v9, v0, :cond_135

    if-eqz v1, :cond_135

    .line 3208
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_130

    move-object/from16 v10, v18

    .end local v18    # "resName":Ljava/lang/String;
    .local v10, "resName":Ljava/lang/String;
    if-eqz v10, :cond_12d

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_db

    move-object v12, v1

    move-object v13, v4

    goto/16 :goto_139

    .line 3211
    :cond_db
    :try_start_db
    iget-object v0, v7, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 3212
    .local v0, "pkgContext":Landroid/content/Context;
    if-nez v0, :cond_e5

    return-void

    .line 3214
    :cond_e5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v2, v10, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_ef
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_db .. :try_end_ef} :catch_11e
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_ef} :catch_117

    move v11, v2

    .line 3215
    .local v11, "resId":I
    if-gtz v11, :cond_102

    .line 3216
    :try_start_f2
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "Resource id not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f2 .. :try_end_f9} :catch_fe
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f9} :catch_fa

    .line 3217
    return-void

    .line 3222
    .end local v0    # "pkgContext":Landroid/content/Context;
    .end local v11    # "resId":I
    :catch_fa
    move-exception v0

    move-object v12, v1

    move-object v13, v4

    goto :goto_11a

    .line 3220
    :catch_fe
    move-exception v0

    move-object v12, v1

    move-object v13, v4

    goto :goto_121

    .line 3219
    .restart local v0    # "pkgContext":Landroid/content/Context;
    .restart local v11    # "resId":I
    :cond_102
    move-object v12, v1

    .end local v1    # "pkgName":Ljava/lang/String;
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object v2, v0

    move v3, v11

    move-object v13, v4

    .end local v4    # "scheme":Ljava/lang/String;
    .local v13, "scheme":Ljava/lang/String;
    move/from16 v4, p3

    move/from16 v5, p2

    move-object/from16 v6, p5

    :try_start_10e
    invoke-direct/range {v1 .. v6}, Landroid/app/WallpaperManager;->setPreloadedResource(Landroid/content/Context;IIZLandroid/os/Bundle;)I
    :try_end_111
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10e .. :try_end_111} :catch_115
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_113

    .line 3224
    nop

    .end local v0    # "pkgContext":Landroid/content/Context;
    .end local v11    # "resId":I
    goto :goto_125

    .line 3222
    :catch_113
    move-exception v0

    goto :goto_11a

    .line 3220
    :catch_115
    move-exception v0

    goto :goto_121

    .line 3222
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "scheme":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    :catch_117
    move-exception v0

    move-object v12, v1

    move-object v13, v4

    .line 3223
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v13    # "scheme":Ljava/lang/String;
    :goto_11a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_125

    .line 3220
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "scheme":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    :catch_11e
    move-exception v0

    move-object v12, v1

    move-object v13, v4

    .line 3221
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v13    # "scheme":Ljava/lang/String;
    :goto_121
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 3224
    .end local v0    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 3226
    :goto_125
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "Set wallpaper based on END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    return-void

    .line 3208
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "scheme":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    :cond_12d
    move-object v12, v1

    move-object v13, v4

    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v13    # "scheme":Ljava/lang/String;
    goto :goto_139

    .end local v10    # "resName":Ljava/lang/String;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "scheme":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v18    # "resName":Ljava/lang/String;
    :cond_130
    move-object v12, v1

    move-object v13, v4

    move-object/from16 v10, v18

    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v18    # "resName":Ljava/lang/String;
    .restart local v10    # "resName":Ljava/lang/String;
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v13    # "scheme":Ljava/lang/String;
    goto :goto_139

    .line 3207
    .end local v10    # "resName":Ljava/lang/String;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "scheme":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v18    # "resName":Ljava/lang/String;
    :cond_135
    move-object v12, v1

    move-object v13, v4

    move-object/from16 v10, v18

    .line 3208
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v18    # "resName":Ljava/lang/String;
    .restart local v10    # "resName":Ljava/lang/String;
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v13    # "scheme":Ljava/lang/String;
    :goto_139
    return-void
.end method

.method public semSetWallpaperThumbnail(ILandroid/graphics/Bitmap;)Z
    .registers 4
    .param p1, "which"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 5354
    const/4 v0, 0x0

    return v0
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 15
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 4151
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 4156
    nop

    .line 4157
    return-void

    .line 4154
    :catch_10
    move-exception v0

    .line 4155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAnimatedLockscreenWallpaper(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5676
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimatedLockscreenWallpaper: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5677
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setAnimatedLockscreenWallpaper(Ljava/lang/String;I)V

    .line 5678
    return-void
.end method

.method public setAnimatedLockscreenWallpaper(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5682
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimatedLockscreenWallpaper: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5683
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->setAnimatedLockscreenWallpaper(Ljava/lang/String;IZ)V

    .line 5684
    return-void
.end method

.method public setAnimatedLockscreenWallpaper(Ljava/lang/String;IZ)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5688
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimatedLockscreenWallpaper: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", allowBackup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5690
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 5695
    :try_start_35
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5697
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->getThemeWallpaperBackground(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5698
    .local v1, "animatedBackground":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/high16 v4, 0x3c000000    # 0.0078125f

    const/4 v5, 0x4

    invoke-interface {v2, v5, v3, p2, v4}, Landroid/app/IWallpaperManager;->getWallpaperThumbnailFileDescriptor(IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 5699
    .local v2, "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v1, v2}, Landroid/app/WallpaperManager;->saveWallpaperThumbnailFile(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;)V

    .line 5701
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    invoke-interface {v3, p1, v0, p2, p3}, Landroid/app/IWallpaperManager;->setAnimatedWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 5703
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V

    .line 5704
    invoke-direct {p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 5705
    invoke-virtual {p0, p2}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_71} :catch_73

    .line 5709
    .end local v0    # "callingPackage":Ljava/lang/String;
    .end local v1    # "animatedBackground":Landroid/graphics/Bitmap;
    .end local v2    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    :cond_71
    nop

    .line 5711
    return-void

    .line 5707
    :catch_73
    move-exception v0

    .line 5708
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5691
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_79
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5692
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I
    .registers 5
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3294
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    move-result v0

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    .registers 14
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3321
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 3325
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3321
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZIIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    .registers 14
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3340
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZIIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZILandroid/os/Bundle;)I
    .registers 15
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3349
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZIIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3260
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I

    .line 3261
    return-void
.end method

.method public setCoverWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/app/IWallpaperManagerCallback;

    .line 4682
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 4688
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->setCoverWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 4689
    :catch_13
    move-exception v0

    .line 4690
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4683
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4684
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setDisplayOffset(Landroid/os/IBinder;II)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3888
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 3893
    nop

    .line 3894
    return-void

    .line 3891
    :catch_9
    move-exception v0

    .line 3892
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 3861
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "setDisplayPadding"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 3863
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 3867
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 3868
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 3867
    invoke-interface {v0, p1, v1, v2}, Landroid/app/IWallpaperManager;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V

    .line 3872
    nop

    .line 3873
    return-void

    .line 3864
    :cond_27
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "padding":Landroid/graphics/Rect;
    throw v0
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_39} :catch_39

    .line 3870
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    :catch_39
    move-exception v0

    .line 3871
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/app/IWallpaperManagerCallback;

    .line 4662
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 4668
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 4669
    :catch_13
    move-exception v0

    .line 4670
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4663
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setMotionWallpaper(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5622
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMotionWallpaper: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5623
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setMotionWallpaper(Ljava/lang/String;I)V

    .line 5624
    return-void
.end method

.method public setMotionWallpaper(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "which"    # I

    .line 5628
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMotionWallpaper: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5629
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setMotionWallpaper(Ljava/lang/String;IZ)V

    .line 5630
    return-void
.end method

.method public setMotionWallpaper(Ljava/lang/String;IZ)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "allowBackup"    # Z

    .line 5634
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMotionWallpaper: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", allowBackup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5635
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 5640
    :try_start_35
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5642
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->getThemeWallpaperBackground(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5643
    .local v1, "motionBackground":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/high16 v4, 0x3c000000    # 0.0078125f

    const/4 v5, 0x1

    invoke-interface {v2, v5, v3, p2, v4}, Landroid/app/IWallpaperManager;->getWallpaperThumbnailFileDescriptor(IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 5644
    .local v2, "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v1, v2}, Landroid/app/WallpaperManager;->saveWallpaperThumbnailFile(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;)V

    .line 5646
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    invoke-interface {v3, p1, v0, p2, p3}, Landroid/app/IWallpaperManager;->setMotionWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 5648
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V

    .line 5649
    invoke-direct {p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 5650
    invoke-virtual {p0, p2}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_70} :catch_72

    .line 5654
    .end local v0    # "callingPackage":Ljava/lang/String;
    .end local v1    # "motionBackground":Landroid/graphics/Bitmap;
    .end local v2    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    :cond_70
    nop

    .line 5656
    return-void

    .line 5652
    :catch_72
    move-exception v0

    .line 5653
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5636
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_78
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setOpenThemeWallpaper(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "needBackup"    # Z

    .line 6125
    return-void
.end method

.method public setOpenThemeWallpaper(Z)V
    .registers 2
    .param p1, "needBackup"    # Z

    .line 6127
    return-void
.end method

.method public setResource(II)I
    .registers 11
    .param p1, "resid"    # I
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2994
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/app/WallpaperManager;->setResource(Landroid/content/Context;IIIZZLandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public setResource(I)V
    .registers 3
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2973
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setResource(II)I

    .line 2974
    return-void
.end method

.method public setResourceAll(I)V
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4861
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setResourceAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4865
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->generateBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4866
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_27

    .line 4867
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4869
    :try_start_11
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.wallpaper.settings_systemui_transparency"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_1d} :catch_1e

    goto :goto_26

    .line 4871
    :catch_1e
    move-exception v1

    .line 4872
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t put value of SETTINGS_SYSTEMUI_TRANSPARENCY"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4873
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_26
    goto :goto_2f

    .line 4875
    :cond_27
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "theme bitmap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    :goto_2f
    return-void
.end method

.method public setSnapshotSource(ILjava/lang/String;)Z
    .registers 5
    .param p1, "key"    # I
    .param p2, "source"    # Ljava/lang/String;

    .line 6032
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 6036
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 6041
    :try_start_e
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->setSnapshotSource(ILjava/lang/String;)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19

    return v0

    .line 6042
    :catch_19
    move-exception v0

    .line 6043
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6037
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSnapshotSource: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6038
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 6033
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'source\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSnapshotTestMode(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 5974
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5975
    return-void

    .line 5979
    :cond_7
    const/4 v0, 0x0

    .line 5981
    .local v0, "isAllowedToSetTestMode":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5982
    .local v1, "passList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5983
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5985
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5986
    .local v3, "callingPkg":Ljava/lang/String;
    const-string v4, "com.samsung.android.app.dressroom"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 5987
    const/4 v0, 0x1

    .line 5988
    goto :goto_3c

    .line 5990
    .end local v3    # "callingPkg":Ljava/lang/String;
    :cond_3b
    goto :goto_25

    .line 5992
    :cond_3c
    :goto_3c
    if-nez v0, :cond_3f

    .line 5993
    return-void

    .line 5996
    :cond_3f
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 6001
    :try_start_47
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IWallpaperManager;->setSnapshotTestMode(Z)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_50} :catch_52

    .line 6004
    nop

    .line 6006
    return-void

    .line 6002
    :catch_52
    move-exception v2

    .line 6003
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 5997
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_58
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSnapshotTestMode: WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5998
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I
    .registers 5
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3535
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    move-result v0

    return v0
.end method

.method public setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .registers 11
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3564
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZII)I

    move-result v0

    return v0
.end method

.method public setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZIIZLandroid/os/Bundle;)I
    .registers 27
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "type"    # I
    .param p6, "isPreloaded"    # Z
    .param p7, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3584
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    move/from16 v14, p4

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStream calling package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", allowBackup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v13, p3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v12, p5

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasExtra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v11, 0x0

    const/4 v9, 0x1

    if-eqz p7, :cond_4e

    move v4, v9

    goto :goto_4f

    :cond_4e
    move v4, v11

    :goto_4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    if-eqz v2, :cond_75

    .line 3590
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStream bitmap data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    :cond_75
    if-eqz v15, :cond_90

    .line 3593
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStream crop hint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    :cond_90
    invoke-direct {v1, v15}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 3597
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_28d

    .line 3603
    invoke-virtual {v1, v14}, Landroid/app/WallpaperManager;->isLiveWallpaper(I)Z

    move-result v16

    .line 3604
    .local v16, "isLiveWallpaper":Z
    invoke-direct {v1, v14}, Landroid/app/WallpaperManager;->isKeyguardWallpaperShowing(I)Z

    move-result v17

    .line 3606
    .local v17, "isKeyguardWallpaperShowing":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 3607
    .local v8, "result":Landroid/os/Bundle;
    new-instance v10, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v10, v1}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 3615
    .local v10, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_ae
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "begin setWallpaper()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 3618
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 3619
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_c8} :catch_282

    .line 3617
    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v18, v8

    .end local v8    # "result":Landroid/os/Bundle;
    .local v18, "result":Landroid/os/Bundle;
    move/from16 v9, p4

    move v11, v0

    move/from16 v12, p5

    move/from16 v13, p6

    move v15, v14

    move-object/from16 v14, p7

    :try_start_d8
    invoke-interface/range {v3 .. v14}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v3, v0

    .line 3621
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "finish setWallpaper()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_e4} :catch_27e

    .line 3623
    if-eqz v3, :cond_105

    .line 3624
    const/4 v4, 0x0

    .line 3626
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_e7
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 3627
    invoke-direct {v1, v2, v4}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 3628
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 3629
    invoke-virtual {v10}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_f6
    .catchall {:try_start_e7 .. :try_end_f6} :catchall_fa

    .line 3631
    :try_start_f6
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3632
    goto :goto_105

    .line 3631
    :catchall_fa
    move-exception v0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3632
    nop

    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v16    # "isLiveWallpaper":Z
    .end local v17    # "isKeyguardWallpaperShowing":Z
    .end local v18    # "result":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "bitmapData":Ljava/io/InputStream;
    .end local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    .end local p5    # "type":I
    .end local p6    # "isPreloaded":Z
    .end local p7    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_100} :catch_100

    .line 3694
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local v16    # "isLiveWallpaper":Z
    .restart local v17    # "isKeyguardWallpaperShowing":Z
    .restart local v18    # "result":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "bitmapData":Ljava/io/InputStream;
    .restart local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .restart local p3    # "allowBackup":Z
    .restart local p4    # "which":I
    .restart local p5    # "type":I
    .restart local p6    # "isPreloaded":Z
    .restart local p7    # "extras":Landroid/os/Bundle;
    :catch_100
    move-exception v0

    move-object/from16 v3, v18

    goto/16 :goto_285

    .line 3636
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_105
    :goto_105
    :try_start_105
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3637
    .local v0, "userId":I
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setStream: userId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v4
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_105 .. :try_end_126} :catch_27e

    if-eqz v4, :cond_154

    .line 3639
    :try_start_128
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    move-result v4

    if-nez v4, :cond_152

    .line 3640
    if-eqz p6, :cond_141

    .line 3641
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    iget-object v5, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v15, v5}, Landroid/app/IWallpaperManager;->copyPreloadedFileToWallpaperFile(ILjava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_191

    .line 3643
    :cond_141
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    iget-object v5, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v15, v5}, Landroid/app/IWallpaperManager;->copyFileToWallpaperFile(ILjava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_191

    .line 3639
    :cond_152
    const/4 v6, 0x1

    goto :goto_191

    .line 3647
    :cond_154
    if-eqz v16, :cond_190

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v4

    if-nez v4, :cond_190

    .line 3648
    if-nez v17, :cond_186

    .line 3649
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v4

    if-eqz v4, :cond_184

    .line 3650
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setStream: call clear() to change the lock wallpaper to default. Since the system wallpaper has been changed and live wallpaper has been broken"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    const/4 v4, 0x2

    .line 3654
    .local v4, "flag":I
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_179

    .line 3655
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_179

    .line 3656
    or-int/lit8 v4, v4, 0x10

    .line 3660
    :cond_179
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v4, v6}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaperWithMode(II)V

    .line 3661
    .end local v4    # "flag":I
    goto :goto_191

    .line 3649
    :cond_184
    const/4 v6, 0x1

    goto :goto_191

    .line 3663
    :cond_186
    const/4 v6, 0x1

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setStream: The type of lockscreen wallpaper is not live wallpaper already. Just keep going."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18f
    .catch Landroid/os/RemoteException; {:try_start_128 .. :try_end_18f} :catch_100

    goto :goto_191

    .line 3647
    :cond_190
    const/4 v6, 0x1

    .line 3669
    :goto_191
    :try_start_191
    const-string v4, "com.sec.android.app.desktoplauncher"

    iget-object v5, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_19d
    .catch Landroid/os/RemoteException; {:try_start_191 .. :try_end_19d} :catch_27e

    if-eqz v4, :cond_255

    .line 3670
    :try_start_19f
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v4
    :try_end_1a3
    .catch Landroid/os/RemoteException; {:try_start_19f .. :try_end_1a3} :catch_100

    const-string/jumbo v5, "setStream() result : Invalid file path. which="

    if-eqz v4, :cond_1fb

    .line 3671
    :try_start_1a8
    new-instance v4, Ljava/io/File;

    iget-object v7, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-static {v7}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "wallpaper_desktop_orig"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3672
    .local v4, "systemFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1e4

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_1e4

    .line 3673
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStream() result : wallpaper_desktop_orig file length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_254

    .line 3675
    :cond_1e4
    sget-object v7, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_254

    .line 3677
    .end local v4    # "systemFile":Ljava/io/File;
    :cond_1fb
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v4

    if-eqz v4, :cond_254

    .line 3678
    new-instance v4, Ljava/io/File;

    iget-object v7, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-static {v7}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "wallpaper_lock_images/wallpaper_desktop_lock_orig"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3679
    .local v4, "lockFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_23d

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_23d

    .line 3680
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStream() result : wallpaper_desktop_lock_orig file length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_255

    .line 3682
    :cond_23d
    sget-object v7, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_253
    .catch Landroid/os/RemoteException; {:try_start_1a8 .. :try_end_253} :catch_100

    goto :goto_255

    .line 3677
    .end local v4    # "lockFile":Ljava/io/File;
    :cond_254
    :goto_254
    nop

    .line 3687
    :cond_255
    :goto_255
    :try_start_255
    invoke-direct {v1, v15}, Landroid/app/WallpaperManager;->isRequestForDex(I)Z

    move-result v4
    :try_end_259
    .catch Landroid/os/RemoteException; {:try_start_255 .. :try_end_259} :catch_27e

    if-nez v4, :cond_26a

    :try_start_25b
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v4

    if-eqz v4, :cond_26a

    .line 3688
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V
    :try_end_26a
    .catch Landroid/os/RemoteException; {:try_start_25b .. :try_end_26a} :catch_100

    .line 3690
    :cond_26a
    :try_start_26a
    invoke-direct/range {p0 .. p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v4
    :try_end_26e
    .catch Landroid/os/RemoteException; {:try_start_26a .. :try_end_26e} :catch_27e

    if-eqz v4, :cond_273

    .line 3691
    :try_start_270
    invoke-virtual {v1, v15}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_273
    .catch Landroid/os/RemoteException; {:try_start_270 .. :try_end_273} :catch_100

    .line 3700
    .end local v0    # "userId":I
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_273
    nop

    .line 3702
    const-string v0, "android.service.wallpaper.extra.ID"

    move-object/from16 v3, v18

    const/4 v4, 0x0

    .end local v18    # "result":Landroid/os/Bundle;
    .local v3, "result":Landroid/os/Bundle;
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 3694
    .end local v3    # "result":Landroid/os/Bundle;
    .restart local v18    # "result":Landroid/os/Bundle;
    :catch_27e
    move-exception v0

    move-object/from16 v3, v18

    .end local v18    # "result":Landroid/os/Bundle;
    .restart local v3    # "result":Landroid/os/Bundle;
    goto :goto_285

    .end local v3    # "result":Landroid/os/Bundle;
    .restart local v8    # "result":Landroid/os/Bundle;
    :catch_282
    move-exception v0

    move-object v3, v8

    move v15, v14

    .line 3696
    .end local v8    # "result":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "result":Landroid/os/Bundle;
    :goto_285
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3699
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 3598
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "result":Landroid/os/Bundle;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v16    # "isLiveWallpaper":Z
    .end local v17    # "isKeyguardWallpaperShowing":Z
    :cond_28d
    move v15, v14

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setStream(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3474
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I

    .line 3475
    return-void
.end method

.method public setVideoLockscreenWallpaper(Ljava/lang/String;)V
    .registers 3
    .param p1, "videoFilePath"    # Ljava/lang/String;

    .line 5229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;)V

    .line 5230
    return-void
.end method

.method public setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;

    .line 5234
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5235
    return-void
.end method

.method public setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "which"    # I

    .line 5240
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 5241
    return-void
.end method

.method public setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 13
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "which"    # I

    .line 5252
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 5253
    return-void
.end method

.method public setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 16
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "which"    # I
    .param p6, "updateSetting"    # Z

    .line 5258
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/app/WallpaperManager;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLandroid/os/Bundle;)V

    .line 5259
    return-void
.end method

.method public setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 15
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "allowBackup"    # Z

    .line 5246
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/app/WallpaperManager;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLandroid/os/Bundle;)V

    .line 5247
    return-void
.end method

.method public setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)V
    .registers 16
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "which"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 5273
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/app/WallpaperManager;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLandroid/os/Bundle;)V

    .line 5274
    return-void
.end method

.method public setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLandroid/os/Bundle;)V
    .registers 28
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "which"    # I
    .param p6, "updateSetting"    # Z
    .param p7, "allowBackup"    # Z
    .param p8, "extras"    # Landroid/os/Bundle;

    .line 5279
    move-object/from16 v1, p0

    move/from16 v11, p5

    move-object/from16 v12, p8

    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_15a

    .line 5284
    :try_start_e
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_145

    const/16 v2, 0x8

    const/high16 v3, 0x3c000000    # 0.0078125f

    move/from16 v13, p4

    :try_start_1a
    invoke-interface {v0, v2, v13, v11, v3}, Landroid/app/IWallpaperManager;->getWallpaperThumbnailFileDescriptor(IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1e} :catch_139

    move-object v14, v0

    .line 5285
    .local v14, "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 5287
    .local v2, "isThumbnailCopied":Z
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_9c

    .line 5288
    if-eqz v12, :cond_9c

    .line 5289
    :try_start_26
    const-string/jumbo v0, "thumbnailUri"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 5290
    .local v3, "thumbnailUri":Ljava/lang/String;
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVideoWallpaper: thumbnailUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5292
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 5293
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 5294
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_57} :catch_93

    if-eqz v0, :cond_9c

    .line 5295
    const/4 v5, 0x0

    .line 5296
    .local v5, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 5299
    .local v6, "fout":Ljava/io/FileOutputStream;
    :try_start_5b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 5300
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v6, v0

    .line 5302
    invoke-static {v5, v6}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v7
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6f} :catch_80
    .catchall {:try_start_5b .. :try_end_6f} :catchall_7e

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_76

    .line 5303
    const/4 v2, 0x1

    .line 5308
    :cond_76
    :try_start_76
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5309
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7c} :catch_93

    .line 5310
    move v0, v2

    goto :goto_9d

    .line 5308
    :catchall_7e
    move-exception v0

    goto :goto_8b

    .line 5305
    :catch_80
    move-exception v0

    .line 5306
    .local v0, "e":Ljava/lang/Exception;
    :try_start_81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_7e

    .line 5308
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_84
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5309
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5310
    goto :goto_9c

    .line 5308
    :goto_8b
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5309
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5310
    nop

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "videoFilePath":Ljava/lang/String;
    .end local p2    # "themePackage":Ljava/lang/String;
    .end local p3    # "fileName":Ljava/lang/String;
    .end local p4    # "userId":I
    .end local p5    # "which":I
    .end local p6    # "updateSetting":Z
    .end local p7    # "allowBackup":Z
    .end local p8    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_93} :catch_93

    .line 5345
    .end local v2    # "isThumbnailCopied":Z
    .end local v3    # "thumbnailUri":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "videoFilePath":Ljava/lang/String;
    .restart local p2    # "themePackage":Ljava/lang/String;
    .restart local p3    # "fileName":Ljava/lang/String;
    .restart local p4    # "userId":I
    .restart local p5    # "which":I
    .restart local p6    # "updateSetting":Z
    .restart local p7    # "allowBackup":Z
    .restart local p8    # "extras":Landroid/os/Bundle;
    :catch_93
    move-exception v0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    goto/16 :goto_152

    .line 5316
    .restart local v2    # "isThumbnailCopied":Z
    .restart local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    :cond_9c
    :goto_9c
    move v0, v2

    .end local v2    # "isThumbnailCopied":Z
    .local v0, "isThumbnailCopied":Z
    :goto_9d
    const/4 v2, 0x0

    .line 5317
    .local v2, "assetFd":Landroid/content/res/AssetFileDescriptor;
    :try_start_9e
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a2} :catch_139

    const-string v4, ""

    if-eqz v3, :cond_bb

    .line 5318
    move-object v3, v4

    .line 5319
    .end local p1    # "videoFilePath":Ljava/lang/String;
    .local v3, "videoFilePath":Ljava/lang/String;
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    :try_start_ab
    invoke-direct {v1, v5, v6}, Landroid/app/WallpaperManager;->getVideoFDFromPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_af} :catch_b3

    move-object v2, v7

    move-object v10, v2

    move-object v15, v3

    goto :goto_c2

    .line 5345
    .end local v0    # "isThumbnailCopied":Z
    .end local v2    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .end local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    :catch_b3
    move-exception v0

    move-object v15, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto/16 :goto_152

    .line 5317
    .end local v3    # "videoFilePath":Ljava/lang/String;
    .restart local v0    # "isThumbnailCopied":Z
    .restart local v2    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .restart local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "videoFilePath":Ljava/lang/String;
    :cond_bb
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v15, p1

    move-object v10, v2

    .line 5321
    .end local v2    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .end local p1    # "videoFilePath":Ljava/lang/String;
    .local v10, "assetFd":Landroid/content/res/AssetFileDescriptor;
    .local v15, "videoFilePath":Ljava/lang/String;
    :goto_c2
    :try_start_c2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_c6} :catch_133

    if-eqz v2, :cond_cc

    .line 5322
    move-object v2, v4

    move-object/from16 v16, v2

    .end local p2    # "themePackage":Ljava/lang/String;
    .local v2, "themePackage":Ljava/lang/String;
    goto :goto_ce

    .line 5321
    .end local v2    # "themePackage":Ljava/lang/String;
    .restart local p2    # "themePackage":Ljava/lang/String;
    :cond_cc
    move-object/from16 v16, v5

    .line 5324
    .end local p2    # "themePackage":Ljava/lang/String;
    .local v16, "themePackage":Ljava/lang/String;
    :goto_ce
    :try_start_ce
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_d2} :catch_12f

    if-eqz v2, :cond_d7

    .line 5325
    move-object v2, v4

    move-object v9, v2

    .end local p3    # "fileName":Ljava/lang/String;
    .local v2, "fileName":Ljava/lang/String;
    goto :goto_d8

    .line 5324
    .end local v2    # "fileName":Ljava/lang/String;
    .restart local p3    # "fileName":Ljava/lang/String;
    :cond_d7
    move-object v9, v6

    .line 5328
    .end local p3    # "fileName":Ljava/lang/String;
    .local v9, "fileName":Ljava/lang/String;
    :goto_d8
    if-nez v0, :cond_e9

    .line 5329
    :try_start_da
    invoke-direct {v1, v10, v15, v9}, Landroid/app/WallpaperManager;->getVideoWallpaperFrame(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5330
    .local v2, "frame":Landroid/graphics/Bitmap;
    const/16 v3, 0x64

    invoke-direct {v1, v2, v14, v3}, Landroid/app/WallpaperManager;->saveWallpaperThumbnailFile(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_da .. :try_end_e3} :catch_e4

    goto :goto_e9

    .line 5345
    .end local v0    # "isThumbnailCopied":Z
    .end local v2    # "frame":Landroid/graphics/Bitmap;
    .end local v10    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .end local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    :catch_e4
    move-exception v0

    move-object/from16 v17, v9

    goto/16 :goto_152

    .line 5333
    .restart local v0    # "isThumbnailCopied":Z
    .restart local v10    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .restart local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    :cond_e9
    :goto_e9
    :try_start_e9
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5334
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5336
    iget-object v2, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 5337
    .local v6, "callingPackage":Ljava/lang/String;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2
    :try_end_fb
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_fb} :catch_12b

    move-object v3, v15

    move-object/from16 v4, v16

    move-object v5, v9

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v17, v9

    .end local v9    # "fileName":Ljava/lang/String;
    .local v17, "fileName":Ljava/lang/String;
    move/from16 v9, p7

    move-object/from16 v18, v10

    .end local v10    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .local v18, "assetFd":Landroid/content/res/AssetFileDescriptor;
    move-object/from16 v10, p8

    :try_start_10b
    invoke-interface/range {v2 .. v10}, Landroid/app/IWallpaperManager;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/os/Bundle;)V

    .line 5339
    if-eqz p6, :cond_11e

    .line 5340
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaperWithMode(II)V

    .line 5342
    :cond_11e
    invoke-direct/range {p0 .. p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v2

    if-eqz v2, :cond_127

    .line 5343
    invoke-virtual {v1, v11}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_127
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_127} :catch_129

    .line 5348
    .end local v0    # "isThumbnailCopied":Z
    .end local v6    # "callingPackage":Ljava/lang/String;
    .end local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    :cond_127
    nop

    .line 5350
    return-void

    .line 5345
    :catch_129
    move-exception v0

    goto :goto_152

    .end local v17    # "fileName":Ljava/lang/String;
    .restart local v9    # "fileName":Ljava/lang/String;
    :catch_12b
    move-exception v0

    move-object/from16 v17, v9

    .end local v9    # "fileName":Ljava/lang/String;
    .restart local v17    # "fileName":Ljava/lang/String;
    goto :goto_152

    .end local v17    # "fileName":Ljava/lang/String;
    .restart local p3    # "fileName":Ljava/lang/String;
    :catch_12f
    move-exception v0

    move-object/from16 v17, v6

    goto :goto_152

    .end local v16    # "themePackage":Ljava/lang/String;
    .restart local p2    # "themePackage":Ljava/lang/String;
    :catch_133
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_152

    .end local v15    # "videoFilePath":Ljava/lang/String;
    .restart local p1    # "videoFilePath":Ljava/lang/String;
    :catch_139
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v15, p1

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_152

    :catch_145
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v13, p4

    move-object/from16 v15, p1

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 5346
    .end local p1    # "videoFilePath":Ljava/lang/String;
    .end local p2    # "themePackage":Ljava/lang/String;
    .end local p3    # "fileName":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v15    # "videoFilePath":Ljava/lang/String;
    .restart local v16    # "themePackage":Ljava/lang/String;
    .restart local v17    # "fileName":Ljava/lang/String;
    :goto_152
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5347
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5280
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v15    # "videoFilePath":Ljava/lang/String;
    .end local v16    # "themePackage":Ljava/lang/String;
    .end local v17    # "fileName":Ljava/lang/String;
    .restart local p1    # "videoFilePath":Ljava/lang/String;
    .restart local p2    # "themePackage":Ljava/lang/String;
    .restart local p3    # "fileName":Ljava/lang/String;
    :cond_15a
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v13, p4

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVideoWallpaper: WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5281
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3950
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4026
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/WallpaperManager;->setWallpaperComponentWithFlags(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public setWallpaperComponentWithExtras(ILandroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 13
    .param p1, "which"    # I
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 5130
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 5135
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 5136
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWallpaperComponentWithExtras : lock type is not supported. which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5137
    const/4 v0, 0x0

    return v0

    .line 5141
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->resetMultipleWallpaperSettingIfNeeded()V

    .line 5142
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move v4, p1

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 5143
    invoke-direct {p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 5144
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_43} :catch_45

    .line 5146
    :cond_43
    const/4 v0, 0x1

    return v0

    .line 5147
    :catch_45
    move-exception v0

    .line 5148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5131
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4b
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setWallpaperComponentWithFlags(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4046
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->setWallpaperComponentWithFlags(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public setWallpaperComponentWithFlags(Landroid/content/ComponentName;II)Z
    .registers 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 4066
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 4071
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 4078
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_33

    .line 4079
    const-string v0, "com.samsung.android.aremoji"

    .line 4080
    .local v0, "COVER_AR_PACKAGE":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 4081
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    if-nez v1, :cond_33

    .line 4082
    or-int/lit8 p2, p2, 0x10

    .line 4086
    .end local v0    # "COVER_AR_PACKAGE":Ljava/lang/String;
    :cond_33
    invoke-direct {p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4087
    invoke-virtual {p0, p2}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_3c} :catch_3e

    .line 4091
    :cond_3c
    const/4 v0, 0x1

    return v0

    .line 4092
    :catch_3e
    move-exception v0

    .line 4093
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4067
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_44
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperManagerService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setWallpaperDimAmount(F)V
    .registers 4
    .param p1, "dimAmount"    # F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3962
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3967
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->setWallpaperDimAmount(F)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_17

    .line 3970
    nop

    .line 3971
    return-void

    .line 3968
    :catch_17
    move-exception v0

    .line 3969
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3963
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setWallpaperOffsetSteps(FF)V
    .registers 3
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .line 4130
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 4131
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 4132
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .registers 10
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .line 4113
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 4118
    nop

    .line 4119
    return-void

    .line 4116
    :catch_10
    move-exception v0

    .line 4117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWallpaperUri(Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "allowBackup"    # Z
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3135
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3136
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/WallpaperManager;->semSetUri(Landroid/net/Uri;ZI)V

    .line 3137
    return-void
.end method

.method public setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "zoom"    # F

    .line 4170
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_25

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_25

    .line 4173
    if-eqz p1, :cond_1c

    .line 4177
    :try_start_d
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowSession;->setWallpaperZoomOut(Landroid/os/IBinder;F)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16

    .line 4180
    nop

    .line 4181
    return-void

    .line 4178
    :catch_16
    move-exception v0

    .line 4179
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4174
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "windowToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4171
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zoom must be between 0 and 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldEnableWideColorGamut()Z
    .registers 2

    .line 1530
    iget-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    return v0
.end method

.method public suggestDesiredDimensions(II)V
    .registers 9
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    .line 3804
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "suggestDesiredDimensions"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 3816
    :try_start_8
    const-string/jumbo v0, "sys.max_texture_size"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    .line 3819
    .local v0, "maximumTextureSize":I
    goto :goto_16

    .line 3842
    .end local v0    # "maximumTextureSize":I
    :catch_11
    move-exception v0

    goto :goto_61

    .line 3817
    :catch_13
    move-exception v0

    .line 3818
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move v0, v1

    .line 3821
    .local v0, "maximumTextureSize":I
    :goto_16
    if-lez v0, :cond_30

    .line 3822
    if-gt p1, v0, :cond_1c

    if-le p2, v0, :cond_30

    .line 3824
    :cond_1c
    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 3825
    .local v1, "aspect":F
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-le p1, p2, :cond_2a

    .line 3826
    move p1, v0

    .line 3827
    int-to-float v4, p1

    mul-float/2addr v4, v1

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int p2, v4

    goto :goto_30

    .line 3829
    :cond_2a
    move p2, v0

    .line 3830
    int-to-float v4, p2

    div-float/2addr v4, v1

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int p1, v4

    .line 3835
    .end local v1    # "aspect":F
    :cond_30
    :goto_30
    :try_start_30
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 3839
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 3840
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    .line 3839
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/app/IWallpaperManager;->setDimensionHints(IILjava/lang/String;I)V

    .line 3844
    .end local v0    # "maximumTextureSize":I
    nop

    .line 3845
    return-void

    .line 3836
    .restart local v0    # "maximumTextureSize":I
    :cond_4f
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "minimumWidth":I
    .end local p2    # "minimumHeight":I
    throw v1
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_61} :catch_11

    .line 3843
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "minimumWidth":I
    .restart local p2    # "minimumHeight":I
    :goto_61
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public wallpaperSupportsWcg(I)Z
    .registers 7
    .param p1, "which"    # I

    .line 2161
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->shouldEnableWideColorGamut()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2162
    return v1

    .line 2164
    :cond_8
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 2165
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2166
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 2167
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    if-eq v3, v4, :cond_34

    .line 2168
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager$ColorManagementProxy;->isSupportedColorSpace(Landroid/graphics/ColorSpace;)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    nop

    .line 2166
    :goto_35
    return v1
.end method

.method public wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 2180
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->shouldEnableWideColorGamut()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2181
    return v1

    .line 2183
    :cond_8
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 2184
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 2185
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    sget-object v3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    if-eq v2, v3, :cond_2c

    .line 2186
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager$ColorManagementProxy;->isSupportedColorSpace(Landroid/graphics/ColorSpace;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    nop

    .line 2184
    :goto_2d
    return v1
.end method
