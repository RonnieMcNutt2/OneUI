.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$UpdateHandler;,
        Landroid/app/ResourcesManager$ApkKey;,
        Landroid/app/ResourcesManager$ApkAssetsSupplier;,
        Landroid/app/ResourcesManager$ActivityResources;,
        Landroid/app/ResourcesManager$ActivityResource;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplicationOwnedApks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedApkAssets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ResourcesManager$ApkKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ApkAssets;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPendingAppInfoUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mResConfiguration:Landroid/content/res/Configuration;

.field private mResDisplayId:I

.field private final mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Landroid/app/ResourcesManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindKeyForResourceImplLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindOrCreateResourcesImplForKeyLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadApkAssets(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mredirectResourcesToNewImplLocked(Landroid/app/ResourcesManager;Landroid/util/ArrayMap;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    .line 122
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    .line 190
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    .line 267
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 274
    new-instance v0, Landroid/app/ResourcesManager$UpdateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ResourcesManager$UpdateHandler;-><init>(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$UpdateHandler-IA;)V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    .line 280
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    .line 284
    return-void
.end method

.method private addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "splitDirs"    # [Ljava/lang/String;

    .line 481
    iget-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 482
    if-eqz p2, :cond_10

    .line 483
    iget-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 485
    :cond_10
    return-void
.end method

.method private adjustConfigForDexDisplayIfNeeded(Landroid/content/res/Configuration;ILandroid/view/DisplayAdjustments;)V
    .registers 8
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I
    .param p3, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 1997
    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    .line 1998
    return-void

    .line 2001
    :cond_4
    invoke-direct {p0, p2, p3}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v1

    .line 2002
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_2f

    .line 2003
    iget v2, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    .line 2004
    iput v3, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 2007
    :cond_11
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/2addr v2, v0

    if-nez v2, :cond_1d

    .line 2008
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x10

    or-int/2addr v2, v0

    iput v2, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2012
    :cond_1d
    invoke-static {}, Landroid/app/ActivityThread;->getProcessDisplayId()I

    move-result v2

    if-eq v2, v0, :cond_2f

    .line 2013
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    sget v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->DEX_FONT_SCALE:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2f

    .line 2014
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->DEX_FONT_SCALE:F

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2018
    :cond_2f
    return-void
.end method

.method private applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesImpl;)V
    .registers 9
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "tmpConfig"    # Landroid/content/res/Configuration;
    .param p4, "key"    # Landroid/content/res/ResourcesKey;
    .param p5, "resourcesImpl"    # Landroid/content/res/ResourcesImpl;

    .line 1695
    invoke-virtual {p3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1696
    invoke-virtual {p4}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1697
    iget-object v0, p4, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1703
    :cond_e
    invoke-virtual {p5}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    .line 1704
    .local v0, "daj":Landroid/view/DisplayAdjustments;
    if-eqz p2, :cond_1d

    .line 1705
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, v0}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    move-object v0, v1

    .line 1706
    invoke-virtual {v0, p2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1708
    :cond_1d
    invoke-virtual {v0, p3}, Landroid/view/DisplayAdjustments;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 1709
    invoke-direct {p0, p4}, Landroid/app/ResourcesManager;->generateDisplayId(Landroid/content/res/ResourcesKey;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1713
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, p4, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    invoke-direct {p0, p3, v2, v0}, Landroid/app/ResourcesManager;->adjustConfigForDexDisplayIfNeeded(Landroid/content/res/Configuration;ILandroid/view/DisplayAdjustments;)V

    .line 1717
    invoke-virtual {p5, p3, v1, p2}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1718
    return-void
.end method

.method private static applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 3
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 391
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;I)V

    .line 392
    return-void
.end method

.method private static applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;I)V
    .registers 9
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 397
    const/4 v0, 0x1

    iput v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 398
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 399
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 400
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v3, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 401
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v1

    .line 402
    .local v1, "sl":I
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x2

    if-le v2, v3, :cond_37

    .line 403
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 404
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, v0, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_43

    .line 407
    :cond_37
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 408
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v1, v0, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 412
    :goto_43
    if-eq p2, v4, :cond_50

    .line 427
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_9d

    .line 414
    :cond_50
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 415
    .local v0, "info":Landroid/view/DisplayInfo;
    const/4 v2, 0x0

    if-eqz v0, :cond_7e

    .line 416
    iget v3, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 417
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/app/WindowConfiguration;->setMaxBounds(IIII)V

    .line 418
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v4, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v5, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 419
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    goto :goto_91

    .line 421
    :cond_7e
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 422
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v4, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/app/WindowConfiguration;->setMaxBounds(IIII)V

    .line 424
    :goto_91
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 425
    .end local v0    # "info":Landroid/view/DisplayInfo;
    nop

    .line 429
    :goto_9d
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 430
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 431
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 432
    return-void
.end method

.method private applyNewResourceDirsLocked([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 25
    .param p1, "oldSourceDirs"    # [Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1792
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-wide/16 v3, 0x2000

    :try_start_6
    const-string v0, "ResourcesManager#applyNewResourceDirsLocked"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1795
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    .line 1797
    .local v0, "baseCodePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    move v14, v5

    .line 1798
    .local v14, "myUid":I
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v14, :cond_1b

    .line 1799
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    goto :goto_1d

    .line 1800
    :cond_1b
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    :goto_1d
    move-object v15, v5

    .line 1803
    .local v15, "newSplitDirs":[Ljava/lang/String;
    invoke-static {v15}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v13, v5

    .line 1804
    .local v13, "copiedSplitDirs":[Ljava/lang/String;
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1807
    .local v8, "copiedResourceDirs":[Ljava/lang/String;
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v14, :cond_34

    .line 1808
    invoke-direct {v1, v0, v13}, Landroid/app/ResourcesManager;->addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1811
    :cond_34
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move-object v12, v5

    .line 1812
    .local v12, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v5, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v11, v5

    .line 1813
    .local v11, "implCount":I
    const/4 v5, 0x0

    move v10, v5

    .local v10, "i":I
    :goto_43
    if-ge v10, v11, :cond_fd

    .line 1814
    iget-object v5, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesKey;

    move-object v9, v5

    .line 1815
    .local v9, "key":Landroid/content/res/ResourcesKey;
    iget-object v5, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v5

    .line 1816
    .local v16, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v16, :cond_61

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesImpl;

    goto :goto_62

    :cond_61
    const/4 v5, 0x0

    :goto_62
    move-object v7, v5

    .line 1818
    .local v7, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v7, :cond_70

    .line 1819
    move-object/from16 v20, v0

    move v3, v10

    move v4, v11

    move-object v2, v12

    move-object/from16 v17, v13

    move/from16 v18, v14

    goto/16 :goto_ed

    .line 1822
    :cond_70
    iget-object v5, v9, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-nez v5, :cond_97

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_97

    const-string v5, "android"

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_97

    .line 1823
    const-string v5, "ResourcesManager"

    const-string/jumbo v6, "skip fill in resDir with other app resource path"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    move-object/from16 v20, v0

    move v3, v10

    move v4, v11

    move-object v2, v12

    move-object/from16 v17, v13

    move/from16 v18, v14

    goto/16 :goto_ed

    .line 1827
    :cond_97
    iget-object v5, v9, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_99
    .catchall {:try_start_6 .. :try_end_99} :catchall_110

    if-eqz v5, :cond_c0

    :try_start_9b
    iget-object v5, v9, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 1828
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b8

    iget-object v5, v9, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_bb

    .line 1829
    move-object/from16 v6, p1

    :try_start_a7
    invoke-static {v6, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    goto :goto_c2

    :cond_ae
    move-object/from16 v20, v0

    move v3, v10

    move v4, v11

    move-object v2, v12

    move-object/from16 v17, v13

    move/from16 v18, v14

    goto :goto_ed

    .line 1828
    :cond_b8
    move-object/from16 v6, p1

    goto :goto_c2

    .line 1845
    .end local v0    # "baseCodePath":Ljava/lang/String;
    .end local v7    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .end local v10    # "i":I
    .end local v11    # "implCount":I
    .end local v12    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v13    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v14    # "myUid":I
    .end local v15    # "newSplitDirs":[Ljava/lang/String;
    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :catchall_bb
    move-exception v0

    move-object/from16 v6, p1

    goto/16 :goto_111

    .line 1827
    .restart local v0    # "baseCodePath":Ljava/lang/String;
    .restart local v7    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .restart local v9    # "key":Landroid/content/res/ResourcesKey;
    .restart local v10    # "i":I
    .restart local v11    # "implCount":I
    .restart local v12    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .restart local v13    # "copiedSplitDirs":[Ljava/lang/String;
    .restart local v14    # "myUid":I
    .restart local v15    # "newSplitDirs":[Ljava/lang/String;
    .restart local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_c0
    move-object/from16 v6, p1

    .line 1830
    :goto_c2
    new-instance v5, Landroid/content/res/ResourcesKey;

    iget-object v3, v9, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v4, v9, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v2, v9, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v12

    .end local v12    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .local v17, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v12, v9, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move/from16 v18, v14

    .end local v14    # "myUid":I
    .local v18, "myUid":I
    iget-object v14, v9, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    move-object/from16 v19, v5

    move-object v6, v0

    move-object/from16 v20, v0

    move-object v0, v7

    .end local v7    # "impl":Landroid/content/res/ResourcesImpl;
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    .local v20, "baseCodePath":Ljava/lang/String;
    move-object v7, v13

    move-object/from16 v21, v9

    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .local v21, "key":Landroid/content/res/ResourcesKey;
    move-object v9, v3

    move v3, v10

    .end local v10    # "i":I
    .local v3, "i":I
    move v10, v4

    move v4, v11

    .end local v11    # "implCount":I
    .local v4, "implCount":I
    move-object v11, v2

    move-object/from16 v2, v17

    .end local v17    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .local v2, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    move-object/from16 v17, v13

    .end local v13    # "copiedSplitDirs":[Ljava/lang/String;
    .local v17, "copiedSplitDirs":[Ljava/lang/String;
    move-object v13, v14

    invoke-direct/range {v5 .. v13}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    move-object/from16 v5, v19

    invoke-virtual {v2, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v21    # "key":Landroid/content/res/ResourcesKey;
    :goto_ed
    add-int/lit8 v10, v3, 0x1

    move-object v12, v2

    move v11, v4

    move-object/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v0, v20

    const-wide/16 v3, 0x2000

    move-object/from16 v2, p2

    .end local v3    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_43

    .end local v2    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v4    # "implCount":I
    .end local v17    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v18    # "myUid":I
    .end local v20    # "baseCodePath":Ljava/lang/String;
    .local v0, "baseCodePath":Ljava/lang/String;
    .restart local v11    # "implCount":I
    .restart local v12    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .restart local v13    # "copiedSplitDirs":[Ljava/lang/String;
    .restart local v14    # "myUid":I
    :cond_fd
    move-object/from16 v20, v0

    move v3, v10

    move v4, v11

    move-object v2, v12

    move-object/from16 v17, v13

    move/from16 v18, v14

    .line 1843
    .end local v0    # "baseCodePath":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "implCount":I
    .end local v12    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v13    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v14    # "myUid":I
    .restart local v2    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .restart local v4    # "implCount":I
    .restart local v17    # "copiedSplitDirs":[Ljava/lang/String;
    .restart local v18    # "myUid":I
    .restart local v20    # "baseCodePath":Ljava/lang/String;
    invoke-direct {v1, v2}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    :try_end_109
    .catchall {:try_start_a7 .. :try_end_109} :catchall_110

    .line 1845
    .end local v2    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v4    # "implCount":I
    .end local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .end local v15    # "newSplitDirs":[Ljava/lang/String;
    .end local v17    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v18    # "myUid":I
    .end local v20    # "baseCodePath":Ljava/lang/String;
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1846
    nop

    .line 1847
    return-void

    .line 1845
    :catchall_110
    move-exception v0

    :goto_111
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1846
    throw v0
.end method

.method private cleanKeyAndRedirectResourcesImplLocked(Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .registers 20
    .param p1, "oldKey"    # Landroid/content/res/ResourcesKey;
    .param p2, "oldImpl"    # Landroid/content/res/ResourcesImpl;
    .param p3, "newImpl"    # Landroid/content/res/ResourcesImpl;

    .line 799
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v1, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v3, :cond_16

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1b

    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v3, "keyOverlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1b
    iget-object v4, v1, Landroid/content/res/ResourcesKey;->mInvalidOverlayPaths:Ljava/util/List;

    if-eqz v4, :cond_35

    .line 801
    iget-object v4, v1, Landroid/content/res/ResourcesKey;->mInvalidOverlayPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 802
    .local v5, "path":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 803
    .end local v5    # "path":Ljava/lang/String;
    goto :goto_25

    .line 806
    :cond_35
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3d

    const/4 v9, 0x0

    goto :goto_47

    :cond_3d
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v9, v4

    .line 807
    .local v9, "updatedResDirs":[Ljava/lang/String;
    :goto_47
    new-instance v4, Landroid/content/res/ResourcesKey;

    iget-object v7, v1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v10, v1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v11, v1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v12, v1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v13, v1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v14, v1, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    iget v15, v1, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    move-object v6, v4

    invoke-direct/range {v6 .. v15}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;I)V

    .line 825
    .local v4, "newKey":Landroid/content/res/ResourcesKey;
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 826
    .local v6, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    move-object/from16 v7, p2

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    iget-object v8, v0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 830
    .local v8, "resourcesCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6e
    if-ge v10, v8, :cond_96

    .line 831
    iget-object v11, v0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/WeakReference;

    .line 832
    .local v11, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v11, :cond_81

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Resources;

    goto :goto_82

    :cond_81
    const/4 v12, 0x0

    .line 833
    .local v12, "r":Landroid/content/res/Resources;
    :goto_82
    if-eqz v12, :cond_93

    .line 834
    invoke-virtual {v12}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/ResourcesKey;

    .line 835
    .local v13, "key":Landroid/content/res/ResourcesKey;
    if-eqz v13, :cond_93

    .line 836
    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 830
    .end local v11    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v13    # "key":Landroid/content/res/ResourcesKey;
    :cond_93
    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    .line 842
    .end local v10    # "i":I
    :cond_96
    iget-object v10, v0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_de

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ResourcesManager$ActivityResources;

    .line 843
    .local v11, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v12, v11, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 844
    .local v12, "resCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_b3
    if-ge v13, v12, :cond_dd

    .line 845
    iget-object v14, v11, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 846
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ResourcesManager$ActivityResource;

    .line 847
    .local v14, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    if-eqz v14, :cond_c8

    .line 848
    iget-object v15, v14, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/res/Resources;

    goto :goto_c9

    :cond_c8
    const/4 v15, 0x0

    .line 849
    .local v15, "r":Landroid/content/res/Resources;
    :goto_c9
    if-eqz v15, :cond_da

    .line 850
    invoke-virtual {v15}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesKey;

    .line 851
    .local v5, "key":Landroid/content/res/ResourcesKey;
    if-eqz v5, :cond_da

    .line 852
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 844
    .end local v5    # "key":Landroid/content/res/ResourcesKey;
    .end local v14    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v15    # "r":Landroid/content/res/Resources;
    :cond_da
    add-int/lit8 v13, v13, 0x1

    goto :goto_b3

    .line 856
    .end local v11    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v12    # "resCount":I
    .end local v13    # "i":I
    :cond_dd
    goto :goto_a0

    .line 857
    :cond_de
    iget-object v5, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    return-object v4
.end method

.method private static cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 1167
    .local p0, "references":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<TT;>;>;"
    .local p1, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V

    .line 1168
    return-void
.end method

.method private static cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TC;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TC;",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1175
    .local p0, "referenceContainers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    .local p1, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p2, "unwrappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<TC;Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 1176
    .local v0, "enqueuedRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    if-nez v0, :cond_7

    .line 1177
    return-void

    .line 1180
    :cond_7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1181
    .local v1, "deadReferences":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/ref/Reference<+TT;>;>;"
    :goto_c
    if-eqz v0, :cond_16

    .line 1182
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1181
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_c

    .line 1185
    :cond_16
    new-instance v2, Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v1}, Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;Ljava/util/HashSet;)V

    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 1189
    return-void
.end method

.method private static combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "resourceDirs"    # [Ljava/lang/String;
    .param p1, "overlayPaths"    # [Ljava/lang/String;

    .line 1864
    if-nez p0, :cond_9

    .line 1865
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1866
    :cond_9
    if-nez p1, :cond_12

    .line 1867
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1869
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1870
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_24

    aget-object v4, p1, v3

    .line 1871
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1870
    .end local v4    # "path":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1873
    :cond_24
    array-length v1, p0

    move v3, v2

    :goto_26
    if-ge v3, v1, :cond_36

    aget-object v4, p0, v3

    .line 1874
    .restart local v4    # "path":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 1875
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    .end local v4    # "path":Ljava/lang/String;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 1878
    :cond_36
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static countLiveReferences(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)I"
        }
    .end annotation

    .line 625
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<TT;>;>;"
    const/4 v0, 0x0

    .line 626
    .local v0, "count":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 627
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    .line 628
    .local v3, "value":Ljava/lang/Object;, "TT;"
    :goto_19
    if-eqz v3, :cond_1d

    .line 629
    add-int/lit8 v0, v0, 0x1

    .line 631
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_1d
    goto :goto_5

    .line 632
    :cond_1e
    return v0
.end method

.method private createApkAssetsSupplierNotLocked(Landroid/content/res/ResourcesKey;)Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .registers 15
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 1197
    const-string v0, "ResourcesManager#createApkAssetsSupplierNotLocked"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1205
    :try_start_7
    new-instance v0, Landroid/app/ResourcesManager$ApkAssetsSupplier;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/app/ResourcesManager$ApkAssetsSupplier;-><init>(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$ApkAssetsSupplier-IA;)V

    .line 1206
    .local v0, "supplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    invoke-static {p1}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1207
    .local v3, "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "n":I
    :goto_16
    if-ge v4, v5, :cond_39

    .line 1208
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ResourcesManager$ApkKey;
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_3e

    .line 1210
    .local v6, "apkKey":Landroid/app/ResourcesManager$ApkKey;
    :try_start_1e
    invoke-virtual {v0, v6}, Landroid/app/ResourcesManager$ApkAssetsSupplier;->load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_3e

    .line 1213
    goto :goto_36

    .line 1211
    :catch_22
    move-exception v7

    .line 1212
    .local v7, "e":Ljava/io/IOException;
    :try_start_23
    const-string v8, "ResourcesManager"

    const-string v9, "failed to preload asset path \'%s\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v6, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_3e

    .line 1207
    .end local v6    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1215
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_39
    nop

    .line 1217
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1215
    return-object v0

    .line 1217
    .end local v0    # "supplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .end local v3    # "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    :catchall_3e
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1218
    throw v0
.end method

.method private createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;
    .registers 12
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 585
    new-instance v0, Landroid/content/res/AssetManager$Builder;

    invoke-direct {v0}, Landroid/content/res/AssetManager$Builder;-><init>()V

    .line 587
    .local v0, "builder":Landroid/content/res/AssetManager$Builder;
    invoke-static {p1}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object v1

    .line 588
    .local v1, "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_e
    if-ge v2, v3, :cond_76

    .line 589
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ApkKey;

    .line 591
    .local v4, "apkKey":Landroid/app/ResourcesManager$ApkKey;
    nop

    .line 592
    if-eqz p2, :cond_1e

    :try_start_19
    invoke-virtual {p2, v4}, Landroid/app/ResourcesManager$ApkAssetsSupplier;->load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v5

    goto :goto_22

    :cond_1e
    invoke-direct {p0, v4}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v5

    .line 591
    :goto_22
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_25} :catch_26

    .line 612
    goto :goto_62

    .line 593
    :catch_26
    move-exception v5

    .line 594
    .local v5, "e":Ljava/io/IOException;
    iget-boolean v6, v4, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    const-string v7, "ResourcesManager"

    if-eqz v6, :cond_4f

    .line 595
    iget-object v6, v4, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "failed to add overlay path \'%s\'"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mInvalidOverlayPaths:Ljava/util/List;

    if-nez v6, :cond_47

    .line 599
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p1, Landroid/content/res/ResourcesKey;->mInvalidOverlayPaths:Ljava/util/List;

    .line 601
    :cond_47
    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mInvalidOverlayPaths:Ljava/util/List;

    iget-object v7, v4, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 604
    :cond_4f
    iget-boolean v6, v4, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-eqz v6, :cond_65

    .line 605
    iget-object v6, v4, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "asset path \'%s\' does not exist or contains no resources"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    .end local v4    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 609
    .restart local v4    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .restart local v5    # "e":Ljava/io/IOException;
    :cond_65
    iget-object v6, v4, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "failed to add asset path \'%s\'"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    const/4 v6, 0x0

    return-object v6

    .line 615
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_76
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-eqz v2, :cond_88

    .line 616
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_7e
    if-ge v4, v3, :cond_88

    aget-object v5, v2, v4

    .line 617
    .local v5, "loader":Landroid/content/res/loader/ResourcesLoader;
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager$Builder;->addLoader(Landroid/content/res/loader/ResourcesLoader;)Landroid/content/res/AssetManager$Builder;

    .line 616
    .end local v5    # "loader":Landroid/content/res/loader/ResourcesLoader;
    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    .line 621
    :cond_88
    invoke-virtual {v0}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    move-result-object v2

    return-object v2
.end method

.method private createResources(Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;
    .registers 7
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 1234
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1241
    :try_start_3
    invoke-direct {p0, p1, p3}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 1242
    .local v1, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-nez v1, :cond_c

    .line 1243
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1246
    :cond_c
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p2, v1, v2}, Landroid/app/ResourcesManager;->createResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1247
    .end local v1    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;
    .registers 16
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "key"    # Landroid/content/res/ResourcesKey;
    .param p3, "initialOverrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p5, "classLoader"    # Ljava/lang/ClassLoader;
    .param p6, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 1255
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1262
    :try_start_3
    invoke-direct {p0, p2, p6}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 1263
    .local v1, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-nez v1, :cond_c

    .line 1264
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1267
    :cond_c
    iget-object v8, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Landroid/app/ResourcesManager;->createResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1269
    .end local v1    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private createResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .registers 12
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "initialOverrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p4, "classLoader"    # Ljava/lang/ClassLoader;
    .param p5, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p6, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 941
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 943
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v3, Landroid/app/ResourcesManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/app/ResourcesManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V

    .line 947
    invoke-virtual {p6}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Landroid/content/res/CompatResources;

    invoke-direct {v1, p4}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_21

    .line 948
    :cond_1c
    new-instance v1, Landroid/content/res/Resources;

    invoke-direct {v1, p4}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    :goto_21
    nop

    .line 949
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 950
    iget-object v2, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->setCallbacks(Landroid/content/res/Resources$UpdateCallbacks;)V

    .line 952
    new-instance v2, Landroid/app/ResourcesManager$ActivityResource;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/app/ResourcesManager$ActivityResource;-><init>(Landroid/app/ResourcesManager$ActivityResource-IA;)V

    .line 953
    .local v2, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v3, v2, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    .line 955
    iget-object v3, v2, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 956
    iput-object p3, v2, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    .line 957
    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    return-object v1
.end method

.method private createResourcesImpl(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;
    .registers 8
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 720
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;

    move-result-object v0

    .line 721
    .local v0, "assets":Landroid/content/res/AssetManager;
    if-nez v0, :cond_8

    .line 722
    const/4 v1, 0x0

    return-object v1

    .line 725
    :cond_8
    new-instance v1, Landroid/view/DisplayAdjustments;

    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 726
    .local v1, "daj":Landroid/view/DisplayAdjustments;
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 729
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->generateDisplayId(Landroid/content/res/ResourcesKey;)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 733
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-direct {p0, p1, v2, v1}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)Landroid/content/res/Configuration;

    move-result-object v3

    .line 738
    .local v3, "config":Landroid/content/res/Configuration;
    new-instance v4, Landroid/content/res/ResourcesImpl;

    invoke-direct {v4, v0, v2, v3, v1}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    .line 743
    .local v4, "impl":Landroid/content/res/ResourcesImpl;
    return-object v4
.end method

.method private createResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .registers 8
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 967
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v0, v1}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V

    .line 969
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/content/res/CompatResources;

    invoke-direct {v0, p1}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_18

    .line 970
    :cond_13
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    :goto_18
    nop

    .line 971
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 972
    iget-object v1, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->setCallbacks(Landroid/content/res/Resources$UpdateCallbacks;)V

    .line 973
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    return-object v0
.end method

.method private static extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "key"    # Landroid/content/res/ResourcesKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ResourcesKey;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/app/ResourcesManager$ApkKey;",
            ">;"
        }
    .end annotation

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v0, "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 537
    new-instance v1, Landroid/app/ResourcesManager$ApkKey;

    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_14
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 541
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_1c
    if-ge v4, v3, :cond_2b

    aget-object v5, v1, v4

    .line 542
    .local v5, "splitResDir":Ljava/lang/String;
    new-instance v6, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v6, v5, v2, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .end local v5    # "splitResDir":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 546
    :cond_2b
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v1, :cond_4b

    .line 547
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v4, v1

    move v5, v2

    :goto_34
    if-ge v5, v4, :cond_4b

    aget-object v6, v1, v5

    .line 549
    .local v6, "libDir":Ljava/lang/String;
    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 550
    new-instance v7, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v7, v6, v3, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v6    # "libDir":Ljava/lang/String;
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 555
    :cond_4b
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 556
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    array-length v4, v1

    move v5, v2

    :goto_53
    if-ge v5, v4, :cond_62

    aget-object v6, v1, v5

    .line 557
    .local v6, "idmapPath":Ljava/lang/String;
    new-instance v7, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v7, v6, v2, v3}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v6    # "idmapPath":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 561
    :cond_62
    return-object v0
.end method

.method private findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .registers 6
    .param p1, "resourceImpl"    # Landroid/content/res/ResourcesImpl;

    .line 868
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 869
    .local v0, "refCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_25

    .line 870
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 871
    .local v2, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v2, :cond_22

    invoke-virtual {v2, p1}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 872
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    return-object v3

    .line 869
    .end local v2    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 875
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method private findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 769
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    return-object v0
.end method

.method private findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;
    .registers 8
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 778
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 779
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v0, :cond_2e

    .line 780
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 781
    if-eqz v0, :cond_2e

    .line 783
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 784
    .local v1, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 785
    .local v2, "oldImpl":Landroid/content/res/ResourcesImpl;
    :goto_1e
    if-eqz v2, :cond_24

    .line 788
    invoke-direct {p0, p1, v2, v0}, Landroid/app/ResourcesManager;->cleanKeyAndRedirectResourcesImplLocked(Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object p1

    .line 791
    :cond_24
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    .end local v1    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v2    # "oldImpl":Landroid/content/res/ResourcesImpl;
    :cond_2e
    return-object v0
.end method

.method private findResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .registers 11
    .param p1, "targetActivityToken"    # Landroid/os/IBinder;
    .param p2, "targetKey"    # Landroid/content/res/ResourcesKey;
    .param p3, "targetClassLoader"    # Ljava/lang/ClassLoader;

    .line 916
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 919
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 920
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_b
    const/4 v3, 0x0

    if-ge v2, v1, :cond_3f

    .line 921
    iget-object v4, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ActivityResource;

    .line 922
    .local v4, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    iget-object v5, v4, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    .line 923
    .local v5, "resources":Landroid/content/res/Resources;
    if-nez v5, :cond_21

    goto :goto_29

    .line 924
    :cond_21
    invoke-virtual {v5}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 923
    invoke-direct {p0, v3}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v3

    .line 926
    .local v3, "key":Landroid/content/res/ResourcesKey;
    :goto_29
    if-eqz v3, :cond_3c

    .line 927
    invoke-virtual {v5}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 928
    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 929
    return-object v5

    .line 920
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v4    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v5    # "resources":Landroid/content/res/Resources;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 933
    .end local v2    # "index":I
    :cond_3f
    return-object v3
.end method

.method private findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 6
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 753
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 754
    .local v0, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    goto :goto_13

    :cond_12
    move-object v2, v1

    .line 755
    .local v2, "impl":Landroid/content/res/ResourcesImpl;
    :goto_13
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 756
    return-object v2

    .line 758
    :cond_20
    return-object v1
.end method

.method private generateConfig(Landroid/content/res/ResourcesKey;)Landroid/content/res/Configuration;
    .registers 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 670
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)Landroid/content/res/Configuration;
    .registers 7
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "daj"    # Landroid/view/DisplayAdjustments;

    .line 677
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v0

    .line 679
    .local v0, "hasOverrideConfig":Z
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->shouldApplyDisplayMetricsForDex(Landroid/content/res/ResourcesKey;)Z

    move-result v1

    if-eqz v1, :cond_27

    if-eqz p2, :cond_27

    .line 680
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 681
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, p1, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    invoke-static {p2, v1, v2}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;I)V

    .line 682
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 683
    if-eqz p3, :cond_3c

    .line 684
    iget v2, p1, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    invoke-direct {p0, v1, v2, p3}, Landroid/app/ResourcesManager;->adjustConfigForDexDisplayIfNeeded(Landroid/content/res/Configuration;ILandroid/view/DisplayAdjustments;)V

    goto :goto_3c

    .line 699
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_27
    if-eqz v0, :cond_38

    .line 700
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 701
    .restart local v1    # "config":Landroid/content/res/Configuration;
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_3c

    .line 704
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_38
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 706
    .restart local v1    # "config":Landroid/content/res/Configuration;
    :cond_3c
    :goto_3c
    return-object v1
.end method

.method private generateDisplayId(Landroid/content/res/ResourcesKey;)I
    .registers 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 710
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    goto :goto_11

    .line 712
    :cond_8
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    if-eqz v0, :cond_f

    .line 713
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    goto :goto_11

    .line 715
    :cond_f
    iget v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    .line 710
    :goto_11
    return v0
.end method

.method private getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "daj"    # Landroid/view/DisplayAdjustments;

    .line 2021
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2022
    :try_start_3
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 2023
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_c

    .line 2025
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 2027
    :cond_c
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2028
    .end local v1    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getDisplayMetrics(Landroid/content/res/Configuration;)Landroid/util/DisplayMetrics;
    .registers 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 375
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 376
    .local v0, "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 377
    .local v1, "dm":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_12

    .line 378
    iget v2, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 379
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    :goto_13
    if-eqz v2, :cond_1f

    .line 380
    sget-object v3, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    .line 381
    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 380
    invoke-virtual {v2, v1, v3, p1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    goto :goto_22

    .line 383
    :cond_1f
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 385
    :goto_22
    return-object v1
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .registers 2

    .line 288
    const-class v0, Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 289
    :try_start_3
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v1, :cond_e

    .line 290
    new-instance v1, Landroid/app/ResourcesManager;

    invoke-direct {v1}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 292
    :cond_e
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v0

    return-object v1

    .line 293
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 905
    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    .line 906
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    if-nez v0, :cond_16

    .line 907
    new-instance v1, Landroid/app/ResourcesManager$ActivityResources;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager$ActivityResources-IA;)V

    move-object v0, v1

    .line 908
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    :cond_16
    return-object v0
.end method

.method static synthetic lambda$cleanupReferences$1(Ljava/util/function/Function;Ljava/util/HashSet;Ljava/lang/Object;)Z
    .registers 5
    .param p0, "unwrappingFunction"    # Ljava/util/function/Function;
    .param p1, "deadReferences"    # Ljava/util/HashSet;
    .param p2, "refContainer"    # Ljava/lang/Object;

    .line 1186
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1187
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v0, :cond_11

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method static synthetic lambda$createResourcesForActivityLocked$0(Landroid/app/ResourcesManager$ActivityResource;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "r"    # Landroid/app/ResourcesManager$ActivityResource;

    .line 945
    iget-object v0, p0, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    .registers 8
    .param p1, "key"    # Landroid/app/ResourcesManager$ApkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 497
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 498
    .local v1, "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_5c

    .line 499
    if-eqz v1, :cond_1d

    .line 500
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ApkAssets;

    .line 501
    .local v0, "apkAssets":Landroid/content/res/ApkAssets;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/res/ApkAssets;->isUpToDate()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 502
    return-object v0

    .line 506
    .end local v0    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_1d
    const/4 v0, 0x0

    .line 507
    .local v0, "flags":I
    iget-boolean v2, p1, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-eqz v2, :cond_24

    .line 508
    or-int/lit8 v0, v0, 0x2

    .line 510
    :cond_24
    iget-object v2, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 511
    or-int/lit8 v0, v0, 0x10

    move v2, v0

    goto :goto_33

    .line 510
    :cond_32
    move v2, v0

    .line 513
    .end local v0    # "flags":I
    .local v2, "flags":I
    :goto_33
    iget-boolean v0, p1, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    if-eqz v0, :cond_43

    .line 514
    iget-object v0, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/ResourcesManager;->overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    move-object v3, v0

    .local v0, "apkAssets":Landroid/content/res/ApkAssets;
    goto :goto_4a

    .line 516
    .end local v0    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_43
    iget-object v0, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    move-object v3, v0

    .line 519
    .local v3, "apkAssets":Landroid/content/res/ApkAssets;
    :goto_4a
    iget-object v4, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 520
    :try_start_4d
    iget-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    monitor-exit v4

    .line 523
    return-object v3

    .line 521
    :catchall_59
    move-exception v0

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_59

    throw v0

    .line 498
    .end local v1    # "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    .end local v2    # "flags":I
    .end local v3    # "apkAssets":Landroid/content/res/ApkAssets;
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method private static overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/resource-cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@idmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private rebaseActivityOverrideConfig(Landroid/app/ResourcesManager$ActivityResource;Landroid/content/res/Configuration;I)Landroid/content/res/ResourcesKey;
    .registers 25
    .param p1, "activityResource"    # Landroid/app/ResourcesManager$ActivityResource;
    .param p2, "newOverrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 1517
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 1518
    .local v3, "resources":Landroid/content/res/Resources;
    const/4 v4, 0x0

    if-nez v3, :cond_12

    .line 1519
    return-object v4

    .line 1524
    :cond_12
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v5

    .line 1525
    .local v5, "oldKey":Landroid/content/res/ResourcesKey;
    if-nez v5, :cond_39

    .line 1526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t find ResourcesKey for resources impl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1527
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1526
    const-string v7, "ResourcesManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return-object v4

    .line 1532
    :cond_39
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    .line 1533
    .local v6, "rebasedOverrideConfig":Landroid/content/res/Configuration;
    if-eqz v2, :cond_43

    .line 1534
    invoke-virtual {v6, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1537
    :cond_43
    iget-object v15, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    .line 1538
    .local v15, "overrideDisplayId":Ljava/lang/Integer;
    if-eqz v15, :cond_69

    .line 1539
    new-instance v7, Landroid/view/DisplayAdjustments;

    invoke-direct {v7, v6}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 1540
    .local v7, "displayAdjustments":Landroid/view/DisplayAdjustments;
    invoke-virtual {v7}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v9, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v9}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1541
    iget-object v8, v5, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v7, v8}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1543
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8, v7}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 1546
    .local v8, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v6, v9}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;I)V

    .line 1553
    .end local v7    # "displayAdjustments":Landroid/view/DisplayAdjustments;
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    :cond_69
    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 1554
    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    move/from16 v17, v7

    .line 1555
    .local v17, "hasOverrideConfig":Z
    if-eqz v17, :cond_7c

    .line 1556
    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1559
    :cond_7c
    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    if-eqz v7, :cond_8f

    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1560
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_8f

    .line 1564
    iget-object v7, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 1568
    :cond_8f
    if-eqz v15, :cond_96

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_98

    :cond_96
    move/from16 v4, p3

    .line 1571
    .end local p3    # "displayId":I
    .local v4, "displayId":I
    :goto_98
    const/4 v7, 0x0

    .line 1572
    .local v7, "displayId2":I
    const/4 v8, 0x2

    if-eq v4, v8, :cond_9f

    move/from16 v18, v7

    goto :goto_a2

    .line 1574
    :cond_9f
    move v7, v4

    move/from16 v18, v7

    .line 1582
    .end local v7    # "displayId2":I
    .local v18, "displayId2":I
    :goto_a2
    new-instance v19, Landroid/content/res/ResourcesKey;

    iget-object v8, v5, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v10, v5, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v11, v5, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v14, v5, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v13, v5, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    move-object/from16 v7, v19

    move v12, v4

    move-object/from16 v16, v13

    move-object v13, v6

    move-object/from16 v20, v15

    .end local v15    # "overrideDisplayId":Ljava/lang/Integer;
    .local v20, "overrideDisplayId":Ljava/lang/Integer;
    move-object/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v7 .. v16}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;I)V

    .line 1598
    .local v7, "newKey":Landroid/content/res/ResourcesKey;
    return-object v7
.end method

.method private rebaseKeyForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Z)V
    .registers 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "key"    # Landroid/content/res/ResourcesKey;
    .param p3, "overridesActivityDisplay"    # Z

    .line 1102
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1103
    nop

    .line 1104
    :try_start_4
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v1

    .line 1106
    .local v1, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget v2, p2, Landroid/content/res/ResourcesKey;->mDisplayId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 1107
    iget v2, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    iput v2, p2, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 1111
    :cond_11
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1112
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1113
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v3, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_26

    .line 1115
    .end local v2    # "config":Landroid/content/res/Configuration;
    :cond_24
    iget-object v2, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 1118
    .restart local v2    # "config":Landroid/content/res/Configuration;
    :goto_26
    if-eqz p3, :cond_44

    iget-object v3, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1119
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_44

    .line 1120
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1122
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v2, v3

    .line 1128
    :cond_3e
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 1131
    :cond_44
    iget-object v3, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1132
    .end local v1    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v2    # "config":Landroid/content/res/Configuration;
    monitor-exit v0

    .line 1133
    return-void

    .line 1132
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private rebaseKeyForDisplay(Landroid/content/res/ResourcesKey;I)V
    .registers 7
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "overrideDisplay"    # I

    .line 1142
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1144
    .local v0, "temp":Landroid/content/res/Configuration;
    new-instance v1, Landroid/view/DisplayAdjustments;

    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 1145
    .local v1, "daj":Landroid/view/DisplayAdjustments;
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1147
    invoke-virtual {p0, p2, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1150
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v3, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-static {v2, v0, v3}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;I)V

    .line 1156
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1157
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1159
    :cond_25
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1160
    return-void
.end method

.method private redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesImpl;",
            "Landroid/content/res/ResourcesKey;",
            ">;)V"
        }
    .end annotation

    .line 1885
    .local p1, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1886
    return-void

    .line 1890
    :cond_7
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1891
    .local v0, "resourcesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    const-string v2, "failed to redirect ResourcesImpl"

    const/4 v3, 0x0

    if-ge v1, v0, :cond_44

    .line 1892
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1893
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v4, :cond_23

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 1894
    .local v3, "r":Landroid/content/res/Resources;
    :cond_23
    if-eqz v3, :cond_41

    .line 1895
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesKey;

    .line 1896
    .local v5, "key":Landroid/content/res/ResourcesKey;
    if-eqz v5, :cond_41

    .line 1897
    invoke-direct {p0, v5}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v6

    .line 1898
    .local v6, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v6, :cond_3b

    .line 1901
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_41

    .line 1899
    :cond_3b
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v7, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1891
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v5    # "key":Landroid/content/res/ResourcesKey;
    .end local v6    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1907
    .end local v1    # "i":I
    :cond_44
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ActivityResources;

    .line 1908
    .local v4, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v5, v4, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1909
    .local v5, "resCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_61
    if-ge v6, v5, :cond_98

    .line 1910
    iget-object v7, v4, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 1911
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ResourcesManager$ActivityResource;

    .line 1912
    .local v7, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    if-eqz v7, :cond_76

    .line 1913
    iget-object v8, v7, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/Resources;

    goto :goto_77

    :cond_76
    move-object v8, v3

    .line 1914
    .local v8, "r":Landroid/content/res/Resources;
    :goto_77
    if-eqz v8, :cond_95

    .line 1915
    invoke-virtual {v8}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ResourcesKey;

    .line 1916
    .local v9, "key":Landroid/content/res/ResourcesKey;
    if-eqz v9, :cond_95

    .line 1917
    invoke-direct {p0, v9}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v10

    .line 1918
    .local v10, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v10, :cond_8f

    .line 1922
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_95

    .line 1919
    :cond_8f
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1909
    .end local v7    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .end local v10    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_95
    :goto_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    .line 1926
    .end local v4    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v5    # "resCount":I
    .end local v6    # "i":I
    :cond_98
    goto :goto_4e

    .line 1927
    :cond_99
    return-void
.end method

.method private shouldApplyDisplayMetricsForDex(Landroid/content/res/ResourcesKey;)Z
    .registers 6
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 2035
    invoke-static {}, Landroid/app/ActivityThread;->isInDexDisplay()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_10

    .line 2036
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    if-eq v0, v3, :cond_e

    goto :goto_16

    :cond_e
    move v1, v2

    goto :goto_16

    .line 2037
    :cond_10
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    if-ne v0, v3, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    .line 2035
    :goto_16
    return v1
.end method


# virtual methods
.method public appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "libAsset"    # Ljava/lang/String;

    .line 1728
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->appendLibAssetsForMainAssetPath(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1729
    return-void
.end method

.method public appendLibAssetsForMainAssetPath(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 28
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "libAssets"    # [Ljava/lang/String;

    .line 1738
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1741
    :try_start_7
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1743
    .local v0, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v4, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1744
    .local v4, "implCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    if-ge v5, v4, :cond_93

    .line 1745
    iget-object v6, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ResourcesKey;

    .line 1746
    .local v6, "key":Landroid/content/res/ResourcesKey;
    iget-object v7, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 1747
    .local v7, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v7, :cond_2e

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesImpl;

    goto :goto_2f

    :cond_2e
    const/4 v8, 0x0

    .line 1748
    .local v8, "impl":Landroid/content/res/ResourcesImpl;
    :goto_2f
    if-eqz v8, :cond_88

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v10, p1

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_88

    .line 1749
    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 1750
    .local v9, "newLibAssets":[Ljava/lang/String;
    array-length v11, v2

    const/4 v12, 0x0

    :goto_3f
    if-ge v12, v11, :cond_4f

    aget-object v13, v2, v12

    .line 1751
    .local v13, "libAsset":Ljava/lang/String;
    const-class v14, Ljava/lang/String;

    .line 1752
    invoke-static {v14, v9, v13}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    move-object v9, v14

    .line 1750
    .end local v13    # "libAsset":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3f

    .line 1755
    :cond_4f
    iget-object v11, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v9, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_83

    .line 1759
    new-instance v11, Landroid/content/res/ResourcesKey;

    iget-object v14, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget v13, v6, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v2, v6, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move/from16 v23, v4

    .end local v4    # "implCount":I
    .local v23, "implCount":I
    iget-object v4, v6, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v24, v7

    .end local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .local v24, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    iget-object v7, v6, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    iget v10, v6, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    move/from16 v18, v13

    move-object v13, v11

    move-object/from16 v16, v12

    move-object/from16 v17, v9

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    move/from16 v22, v10

    invoke-direct/range {v13 .. v22}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;I)V

    invoke-virtual {v0, v8, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    .line 1755
    .end local v23    # "implCount":I
    .end local v24    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v4    # "implCount":I
    .restart local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_83
    move/from16 v23, v4

    move-object/from16 v24, v7

    .end local v4    # "implCount":I
    .end local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v23    # "implCount":I
    .restart local v24    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    goto :goto_8c

    .line 1748
    .end local v9    # "newLibAssets":[Ljava/lang/String;
    .end local v23    # "implCount":I
    .end local v24    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v4    # "implCount":I
    .restart local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_88
    move/from16 v23, v4

    move-object/from16 v24, v7

    .line 1744
    .end local v4    # "implCount":I
    .end local v6    # "key":Landroid/content/res/ResourcesKey;
    .end local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v8    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v23    # "implCount":I
    :goto_8c
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p2

    move/from16 v4, v23

    goto :goto_13

    .end local v23    # "implCount":I
    .restart local v4    # "implCount":I
    :cond_93
    move/from16 v23, v4

    .line 1785
    .end local v4    # "implCount":I
    .end local v5    # "i":I
    .restart local v23    # "implCount":I
    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    .line 1786
    .end local v0    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v23    # "implCount":I
    monitor-exit v3

    .line 1787
    return-void

    .line 1786
    :catchall_9a
    move-exception v0

    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_7 .. :try_end_9c} :catchall_9a

    throw v0
.end method

.method public appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "oldSourceDirs"    # [Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1603
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1604
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 1605
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    .line 1610
    :cond_e
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_32

    .line 1611
    iget-object v2, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1612
    iget-object v2, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1610
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 1615
    .end local v1    # "i":I
    :cond_32
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    monitor-exit v0

    .line 1617
    return-void

    .line 1616
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public final applyAllPendingAppInfoUpdates()V
    .registers 7

    .line 1620
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1621
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    if-eqz v1, :cond_27

    .line 1622
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_c
    if-ge v2, v1, :cond_24

    .line 1623
    iget-object v3, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1624
    .local v3, "appInfo":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v4, v5}, Landroid/app/ResourcesManager;->applyNewResourceDirsLocked([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 1622
    .end local v3    # "appInfo":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1626
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_24
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    .line 1628
    :cond_27
    monitor-exit v0

    .line 1629
    return-void

    .line 1628
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .registers 5
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .line 436
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_15

    .line 438
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 439
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 441
    :cond_15
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 442
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .registers 21
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 1633
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v10, v7, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1635
    const-wide/16 v11, 0x2000

    :try_start_b
    const-string v0, "ResourcesManager#applyConfigurationToResources"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1638
    iget-object v0, v7, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v8}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_9d

    const/4 v13, 0x0

    if-nez v0, :cond_21

    if-nez v9, :cond_21

    .line 1643
    nop

    .line 1682
    :try_start_1c
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v10
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_a3

    .line 1643
    return v13

    .line 1646
    :cond_21
    :try_start_21
    iget-object v0, v7, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v8}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 1647
    .local v0, "changes":I
    if-eqz v9, :cond_37

    iget-object v1, v7, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v1, :cond_33

    .line 1648
    invoke-virtual {v1, v9}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1649
    :cond_33
    iput-object v9, v7, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1650
    or-int/lit16 v0, v0, 0xd00

    .line 1658
    :cond_37
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3f

    .line 1659
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 1662
    :cond_3f
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getDisplayMetrics(Landroid/content/res/Configuration;)Landroid/util/DisplayMetrics;

    move-result-object v1

    move-object v14, v1

    .line 1663
    .local v14, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v8, v14, v9}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1665
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 1667
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 1669
    .local v4, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v1, v7, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    move v6, v1

    .local v6, "i":I
    :goto_58
    if-ltz v6, :cond_92

    .line 1670
    iget-object v1, v7, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/res/ResourcesKey;

    .line 1671
    .local v5, "key":Landroid/content/res/ResourcesKey;
    iget-object v1, v7, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v1

    .line 1672
    .local v16, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v16, :cond_76

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ResourcesImpl;

    goto :goto_77

    :cond_76
    const/4 v1, 0x0

    :goto_77
    move-object/from16 v17, v1

    .line 1673
    .local v17, "r":Landroid/content/res/ResourcesImpl;
    if-eqz v17, :cond_88

    .line 1674
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v13, v6

    .end local v6    # "i":I
    .local v13, "i":I
    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesImpl;)V

    goto :goto_8e

    .line 1676
    .end local v13    # "i":I
    .restart local v6    # "i":I
    :cond_88
    move v13, v6

    .end local v6    # "i":I
    .restart local v13    # "i":I
    iget-object v1, v7, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_21 .. :try_end_8e} :catchall_9d

    .line 1669
    .end local v5    # "key":Landroid/content/res/ResourcesKey;
    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v17    # "r":Landroid/content/res/ResourcesImpl;
    :goto_8e
    add-int/lit8 v6, v13, -0x1

    const/4 v13, 0x0

    .end local v13    # "i":I
    .restart local v6    # "i":I
    goto :goto_58

    :cond_92
    move v13, v6

    .line 1680
    .end local v6    # "i":I
    if-eqz v0, :cond_97

    move v13, v15

    goto :goto_98

    :cond_97
    const/4 v13, 0x0

    .line 1682
    :goto_98
    :try_start_98
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v10

    .line 1680
    return v13

    .line 1682
    .end local v0    # "changes":I
    .end local v4    # "tmpConfig":Landroid/content/res/Configuration;
    .end local v14    # "displayMetrics":Landroid/util/DisplayMetrics;
    :catchall_9d
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1683
    nop

    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "config":Landroid/content/res/Configuration;
    .end local p2    # "compat":Landroid/content/res/CompatibilityInfo;
    throw v0

    .line 1684
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    .restart local p2    # "compat":Landroid/content/res/CompatibilityInfo;
    :catchall_a3
    move-exception v0

    monitor-exit v10
    :try_end_a5
    .catchall {:try_start_98 .. :try_end_a5} :catchall_a3

    throw v0
.end method

.method protected createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .registers 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;
    .registers 25
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "displayId"    # I
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1015
    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Landroid/app/ResourcesManager;->createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;I)Landroid/content/res/Resources;
    .registers 36
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "displayId"    # I
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .param p12, "displayId2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;I)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1034
    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p11

    const-wide/16 v11, 0x2000

    :try_start_8
    const-string v0, "ResourcesManager#createBaseActivityResources"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1039
    new-instance v0, Landroid/content/res/ResourcesKey;

    .line 1042
    invoke-static/range {p4 .. p5}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1047
    if-nez v10, :cond_19

    const/4 v1, 0x0

    :goto_16
    move-object/from16 v21, v1

    goto :goto_23

    :cond_19
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/res/loader/ResourcesLoader;

    goto :goto_16

    :goto_23
    move-object v13, v0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v17, p6

    move/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move/from16 v22, p12

    invoke-direct/range {v13 .. v22}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;I)V

    move-object v13, v0

    .line 1061
    .local v13, "key":Landroid/content/res/ResourcesKey;
    if-eqz p10, :cond_3b

    move-object/from16 v0, p10

    goto :goto_3f

    :cond_3b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_80

    :goto_3f
    move-object v14, v0

    .line 1068
    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .local v14, "classLoader":Ljava/lang/ClassLoader;
    :try_start_40
    iget-object v1, v8, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_7c

    .line 1070
    :try_start_43
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    .line 1071
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_73

    .line 1074
    move/from16 v15, p7

    move-object/from16 v7, p8

    :try_start_4b
    invoke-virtual {v8, v9, v7, v15}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 1076
    iget-object v1, v8, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_78

    .line 1077
    :try_start_51
    invoke-direct {v8, v9, v13, v14}, Landroid/app/ResourcesManager;->findResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1079
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_5c

    .line 1080
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_70

    .line 1089
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1080
    return-object v0

    .line 1082
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_5c
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_70

    .line 1085
    :try_start_5d
    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v6, v14

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Landroid/app/ResourcesManager;->createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_78

    .line 1089
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1085
    return-object v0

    .line 1082
    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    .end local v14    # "classLoader":Ljava/lang/ClassLoader;
    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "resDir":Ljava/lang/String;
    .end local p3    # "splitResDirs":[Ljava/lang/String;
    .end local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .end local p5    # "overlayPaths":[Ljava/lang/String;
    .end local p6    # "libDirs":[Ljava/lang/String;
    .end local p7    # "displayId":I
    .end local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    .end local p12    # "displayId2":I
    :try_start_72
    throw v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_78

    .line 1071
    .restart local v14    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "resDir":Ljava/lang/String;
    .restart local p3    # "splitResDirs":[Ljava/lang/String;
    .restart local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .restart local p5    # "overlayPaths":[Ljava/lang/String;
    .restart local p6    # "libDirs":[Ljava/lang/String;
    .restart local p7    # "displayId":I
    .restart local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    .restart local p12    # "displayId2":I
    :catchall_73
    move-exception v0

    move/from16 v15, p7

    :goto_76
    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_7a

    .end local v14    # "classLoader":Ljava/lang/ClassLoader;
    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "resDir":Ljava/lang/String;
    .end local p3    # "splitResDirs":[Ljava/lang/String;
    .end local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .end local p5    # "overlayPaths":[Ljava/lang/String;
    .end local p6    # "libDirs":[Ljava/lang/String;
    .end local p7    # "displayId":I
    .end local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    .end local p12    # "displayId2":I
    :try_start_77
    throw v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 1089
    .end local v13    # "key":Landroid/content/res/ResourcesKey;
    .restart local v14    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "resDir":Ljava/lang/String;
    .restart local p3    # "splitResDirs":[Ljava/lang/String;
    .restart local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .restart local p5    # "overlayPaths":[Ljava/lang/String;
    .restart local p6    # "libDirs":[Ljava/lang/String;
    .restart local p7    # "displayId":I
    .restart local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    .restart local p12    # "displayId2":I
    :catchall_78
    move-exception v0

    goto :goto_85

    .line 1071
    .restart local v13    # "key":Landroid/content/res/ResourcesKey;
    :catchall_7a
    move-exception v0

    goto :goto_76

    .line 1089
    .end local v13    # "key":Landroid/content/res/ResourcesKey;
    :catchall_7c
    move-exception v0

    move/from16 v15, p7

    goto :goto_85

    .end local v14    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p10    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_80
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v14, p10

    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v14    # "classLoader":Ljava/lang/ClassLoader;
    :goto_85
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1090
    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;

    .line 641
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v1

    .line 643
    .local v1, "refs":I
    iget-object v2, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResourcesManager$ActivityResources;

    .line 644
    .local v3, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    invoke-virtual {v3}, Landroid/app/ResourcesManager$ActivityResources;->countLiveReferences()I

    move-result v4

    add-int/2addr v1, v4

    .line 645
    .end local v3    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    goto :goto_13

    .line 646
    :cond_25
    move v2, v1

    .line 647
    .local v2, "references":I
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v3

    move v1, v3

    .line 648
    .local v1, "resImpls":I
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_7d

    .line 650
    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 651
    :try_start_35
    iget-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v0

    .line 652
    .local v0, "liveAssets":I
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_7a

    .line 654
    new-instance v3, Landroid/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 655
    .local v3, "pw":Landroid/util/IndentingPrintWriter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_56

    .line 656
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 655
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 658
    .end local v4    # "i":I
    :cond_56
    const-string v4, "ResourcesManager:"

    invoke-virtual {v3, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 660
    const-string/jumbo v4, "total apks: "

    invoke-virtual {v3, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 662
    const-string/jumbo v4, "resources: "

    invoke-virtual {v3, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 664
    const-string/jumbo v4, "resource impls: "

    invoke-virtual {v3, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 666
    return-void

    .line 652
    .end local v0    # "liveAssets":I
    .end local v3    # "pw":Landroid/util/IndentingPrintWriter;
    :catchall_7a
    move-exception v0

    :try_start_7b
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v0

    .line 648
    .end local v1    # "resImpls":I
    .end local v2    # "references":I
    :catchall_7d
    move-exception v1

    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method public getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 453
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 454
    .local v0, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v0, :cond_8

    .line 456
    const/4 v1, 0x0

    return-object v1

    .line 458
    :cond_8
    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v1

    return-object v1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 338
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 3

    .line 344
    invoke-static {}, Landroid/app/ActivityThread;->isInDexDisplay()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 345
    invoke-static {}, Landroid/app/ActivityThread;->getProcessDisplayId()I

    move-result v0

    sget-object v1, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0

    .line 349
    :cond_11
    iget v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    sget-object v1, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "da"    # Landroid/view/DisplayAdjustments;

    .line 357
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 358
    .local v0, "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 359
    .local v1, "dm":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_10

    .line 360
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 361
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    :goto_11
    if-eqz v2, :cond_17

    .line 362
    invoke-virtual {v2, v1, p2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    goto :goto_1a

    .line 364
    :cond_17
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 366
    :goto_1a
    return-object v1
.end method

.method public getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;
    .registers 26
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1317
    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;ZZ)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;ZZ)Landroid/content/res/Resources;
    .registers 40
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .param p12, "creatingDisplayContext"    # Z
    .param p13, "creatingDeXConfigContext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;ZZ)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1338
    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p7

    move-object/from16 v11, p11

    const-wide/16 v12, 0x2000

    :try_start_a
    const-string v0, "ResourcesManager#getResources"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_e9

    .line 1340
    const/4 v0, 0x0

    .line 1341
    .local v0, "displayId2":I
    move/from16 v14, p12

    move/from16 v15, p13

    :try_start_14
    invoke-virtual {v8, v14, v15, v10}, Landroid/app/ResourcesManager;->shouldApplyDexDisplayId(ZZLjava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1343
    const/4 v0, 0x2

    .line 1353
    :cond_1b
    new-instance v1, Landroid/content/res/ResourcesKey;

    .line 1356
    invoke-static/range {p4 .. p5}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1358
    if-eqz v10, :cond_28

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_29

    :cond_28
    const/4 v2, -0x1

    :goto_29
    move/from16 v21, v2

    .line 1361
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v11, :cond_32

    move-object/from16 v24, v2

    goto :goto_3c

    :cond_32
    new-array v4, v3, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v11, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/res/loader/ResourcesLoader;

    move-object/from16 v24, v4

    :goto_3c
    move-object/from16 v16, v1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v20, p6

    move-object/from16 v22, p8

    move-object/from16 v23, p9

    move/from16 v25, v0

    invoke-direct/range {v16 .. v25}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;I)V

    move-object v7, v1

    .line 1375
    .local v7, "key":Landroid/content/res/ResourcesKey;
    if-eqz p10, :cond_53

    move-object/from16 v1, p10

    goto :goto_57

    :cond_53
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_57
    .catchall {:try_start_14 .. :try_end_57} :catchall_e7

    :goto_57
    move-object v6, v1

    .line 1379
    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    :try_start_58
    invoke-direct {v8, v7}, Landroid/app/ResourcesManager;->createApkAssetsSupplierNotLocked(Landroid/content/res/ResourcesKey;)Landroid/app/ResourcesManager$ApkAssetsSupplier;

    move-result-object v1
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_e4

    move-object v5, v1

    .line 1381
    .local v5, "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    if-eqz v10, :cond_6b

    .line 1382
    :try_start_5f
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v8, v7, v1}, Landroid/app/ResourcesManager;->rebaseKeyForDisplay(Landroid/content/res/ResourcesKey;I)V
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_67

    goto :goto_6b

    .line 1412
    .end local v0    # "displayId2":I
    .end local v5    # "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .end local v7    # "key":Landroid/content/res/ResourcesKey;
    :catchall_67
    move-exception v0

    move-object v1, v6

    goto/16 :goto_f0

    .line 1386
    .restart local v0    # "displayId2":I
    .restart local v5    # "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .restart local v7    # "key":Landroid/content/res/ResourcesKey;
    :cond_6b
    :goto_6b
    if-eqz v9, :cond_9c

    .line 1387
    :try_start_6d
    new-instance v4, Landroid/content/res/Configuration;

    iget-object v1, v7, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v4, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1388
    .local v4, "initialOverrideConfig":Landroid/content/res/Configuration;
    if-eqz v10, :cond_77

    const/4 v3, 0x1

    :cond_77
    invoke-direct {v8, v9, v7, v3}, Landroid/app/ResourcesManager;->rebaseKeyForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Z)V
    :try_end_7a
    .catchall {:try_start_6d .. :try_end_7a} :catchall_96

    .line 1389
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move-object/from16 p10, v5

    .end local v5    # "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .local p10, "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    move-object/from16 v5, p7

    move-object/from16 v16, v6

    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .local v16, "classLoader":Ljava/lang/ClassLoader;
    move-object v12, v7

    .end local v7    # "key":Landroid/content/res/ResourcesKey;
    .local v12, "key":Landroid/content/res/ResourcesKey;
    move-object/from16 v7, p10

    :try_start_88
    invoke-direct/range {v1 .. v7}, Landroid/app/ResourcesManager;->createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_92

    .line 1391
    .end local v4    # "initialOverrideConfig":Landroid/content/res/Configuration;
    .local v1, "resources":Landroid/content/res/Resources;
    move-object/from16 v3, p10

    move-object v4, v1

    move-object/from16 v1, v16

    goto :goto_db

    .line 1412
    .end local v0    # "displayId2":I
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v12    # "key":Landroid/content/res/ResourcesKey;
    .end local p10    # "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    :catchall_92
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_f0

    .end local v16    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v6    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_96
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v1, v16

    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v16    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_f0

    .line 1392
    .end local v16    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v0    # "displayId2":I
    .restart local v5    # "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .restart local v6    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v7    # "key":Landroid/content/res/ResourcesKey;
    :cond_9c
    move-object/from16 p10, v5

    move-object/from16 v16, v6

    move-object v12, v7

    .end local v5    # "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .end local v7    # "key":Landroid/content/res/ResourcesKey;
    .restart local v12    # "key":Landroid/content/res/ResourcesKey;
    .restart local v16    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p10    # "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    move-object/from16 v3, p10

    move-object/from16 v1, v16

    .end local v16    # "classLoader":Ljava/lang/ClassLoader;
    .end local p10    # "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    .local v3, "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    :try_start_a5
    invoke-direct {v8, v12, v1, v3}, Landroid/app/ResourcesManager;->createResources(Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v4

    .line 1394
    .local v4, "resources":Landroid/content/res/Resources;
    if-eqz v4, :cond_db

    .line 1396
    invoke-static {}, Landroid/app/ActivityThread;->getProcessDisplayId()I

    move-result v5

    iget v6, v12, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-eq v5, v6, :cond_db

    iget v5, v12, Landroid/content/res/ResourcesKey;->mDisplayId:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_db

    .line 1398
    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v5

    .line 1399
    .local v5, "daj":Landroid/view/DisplayAdjustments;
    iget v6, v12, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-virtual {v8, v6, v5}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 1400
    .local v6, "dm":Landroid/util/DisplayMetrics;
    invoke-direct {v8, v12, v6, v5}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)Landroid/content/res/Configuration;

    move-result-object v7

    .line 1401
    .local v7, "config":Landroid/content/res/Configuration;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v13

    if-eqz v13, :cond_db

    .line 1405
    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v13

    invoke-virtual {v13, v7, v6, v2}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    :try_end_db
    .catchall {:try_start_a5 .. :try_end_db} :catchall_e2

    .line 1410
    .end local v5    # "daj":Landroid/view/DisplayAdjustments;
    .end local v6    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "config":Landroid/content/res/Configuration;
    :cond_db
    :goto_db
    nop

    .line 1412
    const-wide/16 v5, 0x2000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1410
    return-object v4

    .line 1412
    .end local v0    # "displayId2":I
    .end local v3    # "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .end local v4    # "resources":Landroid/content/res/Resources;
    .end local v12    # "key":Landroid/content/res/ResourcesKey;
    :catchall_e2
    move-exception v0

    goto :goto_f0

    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    :catchall_e4
    move-exception v0

    move-object v1, v6

    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_f0

    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .local p10, "classLoader":Ljava/lang/ClassLoader;
    :catchall_e7
    move-exception v0

    goto :goto_ee

    :catchall_e9
    move-exception v0

    move/from16 v14, p12

    move/from16 v15, p13

    :goto_ee
    move-object/from16 v1, p10

    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    :goto_f0
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1413
    throw v0
.end method

.method public initializeApplicationPaths(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "splitDirs"    # [Ljava/lang/String;

    .line 466
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 468
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    .line 470
    :cond_e
    monitor-exit v0

    .line 471
    return-void

    .line 470
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public invalidatePath(Ljava/lang/String;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v0, "implsToFlush":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ResourcesImpl;>;"
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_8
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_36

    .line 305
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    .line 306
    .local v3, "key":Landroid/content/res/ResourcesKey;
    invoke-virtual {v3, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 307
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesImpl;

    .line 308
    .local v4, "resImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v4, :cond_33

    .line 309
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v4    # "resImpl":Landroid/content/res/ResourcesImpl;
    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 313
    .end local v2    # "i":I
    :cond_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_c5

    .line 314
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 315
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 317
    .end local v1    # "i":I
    :cond_4a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 318
    .local v2, "assetsToClose":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 319
    :try_start_53
    iget-object v1, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_5b
    if-ltz v1, :cond_87

    .line 320
    iget-object v4, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ApkKey;

    .line 321
    .local v4, "key":Landroid/app/ResourcesManager$ApkKey;
    iget-object v5, v4, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 322
    iget-object v5, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 323
    .local v5, "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    if-eqz v5, :cond_7e

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ApkAssets;

    goto :goto_7f

    :cond_7e
    const/4 v6, 0x0

    .line 324
    .local v6, "apkAssets":Landroid/content/res/ApkAssets;
    :goto_7f
    if-eqz v6, :cond_84

    .line 325
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v4    # "key":Landroid/app/ResourcesManager$ApkKey;
    .end local v5    # "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    .end local v6    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_84
    add-int/lit8 v1, v1, -0x1

    goto :goto_5b

    .line 329
    .end local v1    # "i":I
    :cond_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_53 .. :try_end_88} :catchall_c2

    .line 330
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_89
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9b

    .line 331
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ApkAssets;

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->close()V

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 333
    .end local v1    # "i":I
    :cond_9b
    const-string v1, "ResourcesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalidated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " asset managers that referenced "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void

    .line 329
    :catchall_c2
    move-exception v1

    :try_start_c3
    monitor-exit v3
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v1

    .line 313
    .end local v2    # "assetsToClose":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    :catchall_c5
    move-exception v2

    :try_start_c6
    monitor-exit v1
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v2
.end method

.method public isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .registers 8
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 887
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    if-eqz p1, :cond_10

    :try_start_5
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ResourcesManager$ActivityResources;

    goto :goto_11

    .line 900
    :catchall_e
    move-exception v1

    goto :goto_37

    .line 889
    :cond_10
    const/4 v1, 0x0

    .line 890
    .local v1, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :goto_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1b

    .line 891
    if-nez p2, :cond_18

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    monitor-exit v0

    return v2

    .line 895
    :cond_1b
    iget-object v4, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    if-eqz p2, :cond_32

    iget-object v4, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v4, :cond_32

    iget-object v4, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 897
    invoke-virtual {p2, v4}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_32

    goto :goto_34

    :cond_32
    move v2, v3

    goto :goto_35

    :cond_34
    :goto_34
    nop

    :goto_35
    monitor-exit v0

    .line 895
    return v2

    .line 900
    .end local v1    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_e

    throw v1
.end method

.method shouldApplyDexDisplayId(ZZLjava/lang/Integer;)Z
    .registers 8
    .param p1, "creatingDisplayContext"    # Z
    .param p2, "creatingDeXConfigContext"    # Z
    .param p3, "overrideDisplayId"    # Ljava/lang/Integer;

    .line 2042
    invoke-static {}, Landroid/app/ActivityThread;->isInDexDisplay()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2043
    return v1

    .line 2045
    :cond_8
    if-eqz p2, :cond_b

    .line 2046
    return v1

    .line 2048
    :cond_b
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_1a

    .line 2049
    if-eqz p3, :cond_18

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    return v1

    .line 2051
    :cond_1a
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->dexMode:I

    if-ne v3, v0, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    return v1
.end method

.method public updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .registers 20
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 1429
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-wide/16 v4, 0x2000

    :try_start_8
    const-string v0, "ResourcesManager#updateResourcesForActivity"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1431
    const/4 v0, -0x1

    if-eq v3, v0, :cond_86

    .line 1434
    iget-object v6, v1, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_8e

    .line 1435
    nop

    .line 1436
    :try_start_14
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 1438
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget v7, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    if-eq v7, v3, :cond_1e

    const/4 v7, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x0

    .line 1439
    .local v7, "movedToDifferentDisplay":Z
    :goto_1f
    iget-object v8, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v8, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    if-nez v7, :cond_2e

    .line 1442
    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_83

    .line 1506
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1442
    return-void

    .line 1447
    :cond_2e
    :try_start_2e
    new-instance v8, Landroid/content/res/Configuration;

    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v8, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1450
    .local v8, "oldConfig":Landroid/content/res/Configuration;
    if-eqz v2, :cond_3d

    .line 1451
    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v9, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_42

    .line 1453
    :cond_3d
    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->unset()V

    .line 1457
    :goto_42
    iput v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    .line 1462
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 1478
    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1479
    .local v9, "refCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4e
    if-ge v10, v9, :cond_7d

    .line 1480
    iget-object v11, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 1481
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ResourcesManager$ActivityResource;

    .line 1483
    .local v11, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    iget-object v12, v11, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Resources;

    .line 1484
    .local v12, "resources":Landroid/content/res/Resources;
    if-nez v12, :cond_63

    .line 1485
    goto :goto_7a

    .line 1488
    :cond_63
    invoke-direct {v1, v11, v2, v3}, Landroid/app/ResourcesManager;->rebaseActivityOverrideConfig(Landroid/app/ResourcesManager$ActivityResource;Landroid/content/res/Configuration;I)Landroid/content/res/ResourcesKey;

    move-result-object v13

    .line 1490
    .local v13, "newKey":Landroid/content/res/ResourcesKey;
    if-nez v13, :cond_6a

    .line 1491
    goto :goto_7a

    .line 1496
    :cond_6a
    nop

    .line 1497
    invoke-direct {v1, v13}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v14

    .line 1498
    .local v14, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v14, :cond_7a

    invoke-virtual {v12}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v15

    if-eq v14, v15, :cond_7a

    .line 1501
    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 1479
    .end local v11    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "newKey":Landroid/content/res/ResourcesKey;
    .end local v14    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_7a
    :goto_7a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    .line 1504
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v7    # "movedToDifferentDisplay":Z
    .end local v8    # "oldConfig":Landroid/content/res/Configuration;
    .end local v9    # "refCount":I
    .end local v10    # "i":I
    :cond_7d
    monitor-exit v6
    :try_end_7e
    .catchall {:try_start_2e .. :try_end_7e} :catchall_83

    .line 1506
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1507
    nop

    .line 1508
    return-void

    .line 1504
    :catchall_83
    move-exception v0

    :try_start_84
    monitor-exit v6
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p3    # "displayId":I
    :try_start_85
    throw v0

    .line 1432
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p3    # "displayId":I
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "displayId can not be INVALID_DISPLAY"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p3    # "displayId":I
    throw v0
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8e

    .line 1506
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p3    # "displayId":I
    :catchall_8e
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1507
    throw v0
.end method
