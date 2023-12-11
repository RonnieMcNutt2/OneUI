.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$AssetInputStream;,
        Landroid/content/res/AssetManager$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_BUFFER:I = 0x3

.field public static final ACCESS_RANDOM:I = 0x1

.field public static final ACCESS_STREAMING:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field public static final COOKIE_UNKNOWN:I = -0x1

.field private static final DEBUG_REFS:Z = false

.field private static final FRAMEWORK_APK_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final MEDIATEK_APK_PATH:Ljava/lang/String; = "/system/app/mediatek-res/mediatek-res.apk"

.field private static final PROPERTY_MTK_MODEL:Ljava/lang/String; = "ro.vendor.mtk_model"

.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static sCTxtParser:Lcom/samsung/android/util/CustomizedTextParser;

.field private static final sEmptyApkAssets:[Landroid/content/res/ApkAssets;

.field private static final sSync:Ljava/lang/Object;

.field static sSystem:Landroid/content/res/AssetManager;

.field private static sSystemApkAssets:[Landroid/content/res/ApkAssets;

.field private static sSystemApkAssetsSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApkAssets:[Landroid/content/res/ApkAssets;

.field private mLoaders:[Landroid/content/res/loader/ResourcesLoader;

.field private mNumRefs:I

.field private mObject:J

.field private final mOffsets:[J

.field private mOpen:Z

.field private mRefStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field final mSamsungThemeOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mValue:Landroid/util/TypedValue;


# direct methods
.method static bridge synthetic -$$Nest$fgetmObject(Landroid/content/res/AssetManager;)J
    .registers 3

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmApkAssets(Landroid/content/res/AssetManager;[Landroid/content/res/ApkAssets;)V
    .registers 2

    iput-object p1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLoaders(Landroid/content/res/AssetManager;[Landroid/content/res/loader/ResourcesLoader;)V
    .registers 2

    iput-object p1, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdecRefsLocked(Landroid/content/res/AssetManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSamsungThemeOverlays(Landroid/content/res/AssetManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/content/res/AssetManager;->updateSamsungThemeOverlays()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeAssetDestroy(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetDestroy(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeAssetGetLength(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetGetLength(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeAssetGetRemainingLength(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetGetRemainingLength(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeAssetRead(J[BII)I
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeAssetRead(J[BII)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeAssetReadChar(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetReadChar(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeAssetSeek(JJI)J
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeAssetSeek(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/content/res/ApkAssets;

    sput-object v1, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    .line 92
    const/4 v1, 0x0

    sput-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 94
    new-array v0, v0, [Landroid/content/res/ApkAssets;

    sput-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    .line 1466
    sput-object v1, Landroid/content/res/AssetManager;->sCTxtParser:Lcom/samsung/android/util/CustomizedTextParser;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 137
    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    .line 232
    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_1e
    const-string v1, "/system/framework/framework-res.apk"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/res/AssetManager;->createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V

    .line 234
    sget-object v1, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    .line 235
    .local v1, "assets":[Landroid/content/res/ApkAssets;
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_31

    .line 237
    invoke-static {}, Landroid/content/res/AssetManager;->nativeCreate()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 244
    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 245
    return-void

    .line 235
    .end local v1    # "assets":[Landroid/content/res/ApkAssets;
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private constructor <init>(Z)V
    .registers 4
    .param p1, "sentinel"    # Z

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 137
    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    .line 253
    invoke-static {}, Landroid/content/res/AssetManager;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 258
    return-void
.end method

.method synthetic constructor <init>(ZLandroid/content/res/AssetManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;-><init>(Z)V

    return-void
.end method

.method private addAssetPathInternal(Ljava/lang/String;ZZ)I
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "overlay"    # Z
    .param p3, "appAsLib"    # Z

    .line 516
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 517
    monitor-enter p0

    .line 518
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 519
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 522
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_25

    .line 523
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 524
    add-int/lit8 v2, v1, 0x1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_93

    return v2

    .line 522
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 530
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_6a

    .line 533
    :try_start_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/resource-cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 534
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@idmap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "idmapPath":Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v4

    .line 541
    .local v4, "assets":Landroid/content/res/ApkAssets;
    const-string v5, "/data/overlays/currentstyle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    iget-object v5, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    .line 542
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_67

    .line 543
    iget-object v5, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v3    # "idmapPath":Ljava/lang/String;
    :cond_67
    goto :goto_75

    .line 551
    .end local v4    # "assets":Landroid/content/res/ApkAssets;
    :catch_68
    move-exception v2

    goto :goto_91

    .line 548
    :cond_6a
    nop

    .line 549
    if-eqz p3, :cond_6f

    const/4 v3, 0x2

    goto :goto_70

    :cond_6f
    move v3, v1

    .line 548
    :goto_70
    invoke-static {p1, v3}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v1
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_74} :catch_68
    .catchall {:try_start_29 .. :try_end_74} :catchall_93

    move-object v4, v1

    .line 553
    .restart local v4    # "assets":Landroid/content/res/ApkAssets;
    :goto_75
    nop

    .line 555
    :try_start_76
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/res/ApkAssets;

    iput-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 556
    aput-object v4, v1, v0

    .line 557
    iget-wide v5, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v5, v6, v1, v2}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    .line 558
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/content/res/AssetManager;->invalidateCachesLocked(I)V

    .line 559
    add-int/lit8 v1, v0, 0x1

    monitor-exit p0

    return v1

    .line 552
    .end local v4    # "assets":Landroid/content/res/ApkAssets;
    .local v2, "e":Ljava/io/IOException;
    :goto_91
    monitor-exit p0

    return v1

    .line 560
    .end local v0    # "count":I
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_93
    move-exception v0

    monitor-exit p0
    :try_end_95
    .catchall {:try_start_76 .. :try_end_95} :catchall_93

    throw v0
.end method

.method public static createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V
    .registers 10
    .param p0, "reinitialize"    # Z
    .param p1, "frameworkPath"    # Ljava/lang/String;

    .line 268
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_7

    if-nez p0, :cond_7

    .line 269
    return-void

    .line 273
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "apkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getZygoteInstance()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/content/om/OverlayConfig;->createImmutableFrameworkIdmapsInZygote()[Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "systemIdmapPaths":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1f
    if-ge v5, v3, :cond_2e

    aget-object v6, v2, v5

    .line 279
    .local v6, "idmapPath":Ljava/lang/String;
    invoke-static {v6, v1}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    nop

    .end local v6    # "idmapPath":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 281
    :cond_2e
    const-string v3, "1"

    const-string/jumbo v5, "ro.vendor.mtk_model"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 282
    const-string v3, "/system/app/mediatek-res/mediatek-res.apk"

    invoke-static {v3, v1}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_46
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Landroid/content/res/AssetManager;->sSystemApkAssetsSet:Landroid/util/ArraySet;

    .line 285
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/res/ApkAssets;

    sput-object v3, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    .line 286
    sget-object v3, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-nez v3, :cond_66

    .line 287
    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3, v1}, Landroid/content/res/AssetManager;-><init>(Z)V

    sput-object v3, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 289
    :cond_66
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    sget-object v3, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    invoke-virtual {v1, v3, v4}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_6d} :catch_6f

    .line 292
    .end local v0    # "apkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    .end local v2    # "systemIdmapPaths":[Ljava/lang/String;
    nop

    .line 293
    return-void

    .line 290
    :catch_6f
    move-exception v0

    .line 291
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create system AssetManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private decRefsLocked(J)V
    .registers 8
    .param p1, "id"    # J

    .line 1637
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1638
    if-nez v0, :cond_19

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    .line 1639
    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeDestroy(J)V

    .line 1640
    iput-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 1641
    sget-object v0, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    iput-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 1643
    :cond_19
    return-void
.end method

.method private ensureOpenLocked()V
    .registers 3

    .line 599
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_5

    .line 602
    return-void

    .line 600
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager has been closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidLocked()V
    .registers 5

    .line 587
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 590
    return-void

    .line 588
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native getAssetAllocations()Ljava/lang/String;
.end method

.method public static getCustomizedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 1471
    sget-object v0, Landroid/content/res/AssetManager;->sCTxtParser:Lcom/samsung/android/util/CustomizedTextParser;

    if-nez v0, :cond_a

    .line 1472
    invoke-static {}, Lcom/samsung/android/util/CustomizedTextParser;->getInstance()Lcom/samsung/android/util/CustomizedTextParser;

    move-result-object v0

    sput-object v0, Landroid/content/res/AssetManager;->sCTxtParser:Lcom/samsung/android/util/CustomizedTextParser;

    .line 1474
    :cond_a
    sget-object v0, Landroid/content/res/AssetManager;->sCTxtParser:Lcom/samsung/android/util/CustomizedTextParser;

    invoke-virtual {v0, p0}, Lcom/samsung/android/util/CustomizedTextParser;->getCustomizedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getGlobalAssetCount()I
.end method

.method public static native getGlobalAssetManagerCount()I
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .registers 3

    .line 302
    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    const-string v1, "/system/framework/framework-res.apk"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/res/AssetManager;->createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V

    .line 304
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    monitor-exit v0

    return-object v1

    .line 305
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method static getThemeFreeFunction()J
    .registers 2

    .line 1289
    invoke-static {}, Landroid/content/res/AssetManager;->nativeGetThemeFreeFunction()J

    move-result-wide v0

    return-wide v0
.end method

.method private incRefsLocked(J)V
    .registers 4
    .param p1, "id"    # J

    .line 1629
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1630
    return-void
.end method

.method private invalidateCachesLocked(I)V
    .registers 2
    .param p1, "diff"    # I

    .line 432
    return-void
.end method

.method private static native nativeApplyStyle(JJIIJ[IJJ)V
.end method

.method private static native nativeAssetDestroy(J)V
.end method

.method private static native nativeAssetGetLength(J)J
.end method

.method private static native nativeAssetGetRemainingLength(J)J
.end method

.method private static native nativeAssetRead(J[BII)I
.end method

.method private static native nativeAssetReadChar(J)I
.end method

.method private static native nativeAssetSeek(JJI)J
.end method

.method private static native nativeAttributeResolutionStack(JJIII)[I
.end method

.method private static native nativeContainsAllocatedTable(J)Z
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetAssignedPackageIdentifiers(JZZ)Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeGetLastResourceResolution(J)Ljava/lang/String;
.end method

.method private static native nativeGetLocales(JZ)[Ljava/lang/String;
.end method

.method private static native nativeGetOverlayableMap(JLjava/lang/String;)Ljava/util/Map;
.end method

.method private static native nativeGetOverlayablesToString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetParentThemeIdentifier(JI)I
.end method

.method private static native nativeGetResourceArray(JI[I)I
.end method

.method private static native nativeGetResourceArraySize(JI)I
.end method

.method private static native nativeGetResourceBagValue(JIILandroid/util/TypedValue;)I
.end method

.method private static native nativeGetResourceEntryName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetResourceIdentifier(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeGetResourceIntArray(JI)[I
.end method

.method private static native nativeGetResourceName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetResourcePackageName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetResourceStringArray(JI)[Ljava/lang/String;
.end method

.method private static native nativeGetResourceStringArrayInfo(JI)[I
.end method

.method private static native nativeGetResourceTypeName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetResourceValue(JISLandroid/util/TypedValue;Z)I
.end method

.method private static native nativeGetSizeAndUiModeConfigurations(J)[Landroid/content/res/Configuration;
.end method

.method private static native nativeGetSizeConfigurations(J)[Landroid/content/res/Configuration;
.end method

.method private static native nativeGetStyleAttributes(JI)[I
.end method

.method private static native nativeGetThemeFreeFunction()J
.end method

.method private static native nativeList(JLjava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenAsset(JLjava/lang/String;I)J
.end method

.method private static native nativeOpenAssetFd(JLjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenNonAsset(JILjava/lang/String;I)J
.end method

.method private static native nativeOpenNonAssetFd(JILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenXmlAsset(JILjava/lang/String;)J
.end method

.method private static native nativeOpenXmlAssetFd(JILjava/io/FileDescriptor;)J
.end method

.method private static native nativeResolveAttrs(JJII[I[I[I[I)Z
.end method

.method private static native nativeRetrieveAttributes(JJ[I[I[I)Z
.end method

.method private static native nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V
.end method

.method private static native nativeSetConfiguration(JIILjava/lang/String;IIIIIIIIIIIIIIII)V
.end method

.method private static native nativeSetResourceResolutionLoggingEnabled(JZ)V
.end method

.method private static native nativeThemeApplyStyle(JJIZ)V
.end method

.method private static native nativeThemeCopy(JJJJ)V
.end method

.method private static native nativeThemeCreate(J)J
.end method

.method private static native nativeThemeDump(JJILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeThemeGetAttributeValue(JJILandroid/util/TypedValue;Z)I
.end method

.method static native nativeThemeGetChangingConfigurations(J)I
.end method

.method private static native nativeThemeRebase(JJ[I[ZI)V
.end method

.method private updateSamsungThemeOverlays()V
    .registers 7

    .line 371
    monitor-enter p0

    .line 373
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 374
    iget-object v0, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 376
    :cond_e
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_32

    aget-object v3, v0, v2

    .line 377
    .local v3, "apkAsset":Landroid/content/res/ApkAssets;
    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "path":Ljava/lang/String;
    const-string v5, "/data/overlays/currentstyle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    iget-object v5, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    .line 379
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 380
    iget-object v5, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v3    # "apkAsset":Landroid/content/res/ApkAssets;
    .end local v4    # "path":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 384
    :cond_32
    monitor-exit p0

    .line 385
    return-void

    .line 384
    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_34

    throw v0
.end method


# virtual methods
.method public addAssetPath(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public addAssetPathAsSharedLibrary(Ljava/lang/String;)I
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public addOverlayPath(Ljava/lang/String;)I
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method applyStyle(JIILandroid/content/res/XmlBlock$Parser;[IJJ)V
    .registers 27
    .param p1, "themePtr"    # J
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "parser"    # Landroid/content/res/XmlBlock$Parser;
    .param p6, "inAttrs"    # [I
    .param p7, "outValuesAddress"    # J
    .param p9, "outIndicesAddress"    # J

    .line 1221
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    const-string v0, "inAttrs"

    move-object/from16 v14, p6

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1222
    monitor-enter p0

    .line 1225
    :try_start_c
    invoke-direct/range {p0 .. p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1226
    iget-wide v3, v1, Landroid/content/res/AssetManager;->mObject:J

    .line 1227
    if-eqz v2, :cond_16

    iget-wide v5, v2, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    goto :goto_18

    :cond_16
    const-wide/16 v5, 0x0

    :goto_18
    move-wide v9, v5

    .line 1226
    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v11, p6

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-static/range {v3 .. v15}, Landroid/content/res/AssetManager;->nativeApplyStyle(JJIIJ[IJJ)V

    .line 1229
    monitor-exit p0

    .line 1230
    return-void

    .line 1229
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method applyStyleToTheme(JIZ)V
    .registers 11
    .param p1, "themePtr"    # J
    .param p3, "resId"    # I
    .param p4, "force"    # Z

    .line 1293
    monitor-enter p0

    .line 1296
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1297
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/content/res/AssetManager;->nativeThemeApplyStyle(JJIZ)V

    .line 1298
    monitor-exit p0

    .line 1299
    return-void

    .line 1298
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public close()V
    .registers 3

    .line 313
    monitor-enter p0

    .line 314
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_7

    .line 315
    monitor-exit p0

    return-void

    .line 318
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 320
    monitor-exit p0

    .line 321
    return-void

    .line 320
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public containsAllocatedTable()Z
    .registers 3

    .line 929
    monitor-enter p0

    .line 930
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 931
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeContainsAllocatedTable(J)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 932
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method createTheme()J
    .registers 3

    .line 1274
    monitor-enter p0

    .line 1275
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1276
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeThemeCreate(J)J

    move-result-wide v0

    .line 1277
    .local v0, "themePtr":J
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1278
    monitor-exit p0

    return-wide v0

    .line 1279
    .end local v0    # "themePtr":J
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    monitor-enter p0

    .line 1646
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apkAssets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1648
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_36
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v1

    if-ge v0, v1, :cond_6c

    .line 1649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1650
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ApkAssets;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_6e

    .line 1648
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 1652
    .end local v0    # "i":I
    .end local p0    # "this":Landroid/content/res/AssetManager;
    :cond_6c
    monitor-exit p0

    return-void

    .line 1645
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "prefix":Ljava/lang/String;
    :catchall_6e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "theme"    # J
    .param p3, "priority"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;

    .line 825
    monitor-enter p0

    .line 826
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 827
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->nativeThemeDump(JJILjava/lang/String;Ljava/lang/String;)V

    .line 828
    monitor-exit p0

    .line 829
    return-void

    .line 828
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1348
    monitor-enter p0

    .line 1349
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    .line 1350
    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeDestroy(J)V

    .line 1351
    iput-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 1353
    :cond_e
    monitor-exit p0

    .line 1354
    return-void

    .line 1353
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public findCookieForPath(Ljava/lang/String;)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 472
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 473
    monitor-enter p0

    .line 474
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 475
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 476
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_25

    .line 477
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 478
    add-int/lit8 v2, v1, 0x1

    monitor-exit p0

    return v2

    .line 476
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 481
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_25
    monitor-exit p0

    .line 482
    const/4 v0, 0x0

    return v0

    .line 481
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public getApkAssets()[Landroid/content/res/ApkAssets;
    .registers 2

    .line 441
    monitor-enter p0

    .line 442
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_9

    .line 443
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    monitor-exit p0

    return-object v0

    .line 445
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 446
    sget-object v0, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    return-object v0

    .line 445
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getApkPaths()[Ljava/lang/String;
    .registers 5

    .line 452
    monitor-enter p0

    .line 453
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_1d

    .line 454
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 455
    .local v1, "paths":[Ljava/lang/String;
    array-length v0, v0

    .line 456
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_1b

    .line 457
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 459
    .end local v2    # "i":I
    :cond_1b
    monitor-exit p0

    return-object v1

    .line 461
    .end local v0    # "count":I
    .end local v1    # "paths":[Ljava/lang/String;
    :cond_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_22

    .line 462
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 461
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public getAssignedPackageIdentifiers()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1582
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers(ZZ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getAssignedPackageIdentifiers(ZZ)Landroid/util/SparseArray;
    .registers 5
    .param p1, "includeOverlays"    # Z
    .param p2, "includeLoaders"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1590
    monitor-enter p0

    .line 1591
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1592
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeGetAssignedPackageIdentifiers(JZZ)Landroid/util/SparseArray;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1593
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getAttributeResolutionStack(JIII)[I
    .registers 13
    .param p1, "themePtr"    # J
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "xmlStyle"    # I

    .line 1234
    monitor-enter p0

    .line 1235
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p5

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->nativeAttributeResolutionStack(JJIII)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1237
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getLastResourceResolution()Ljava/lang/String;
    .registers 3

    .line 916
    monitor-enter p0

    .line 917
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 918
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetLastResourceResolution(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 919
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getLoaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getLocales()[Ljava/lang/String;
    .registers 4

    .line 1514
    monitor-enter p0

    .line 1515
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1516
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->nativeGetLocales(JZ)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1517
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getNonSystemLocales()[Ljava/lang/String;
    .registers 4

    .line 1531
    monitor-enter p0

    .line 1532
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1533
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->nativeGetLocales(JZ)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1534
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1601
    monitor-enter p0

    .line 1602
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1603
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetOverlayableMap(JLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1604
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getOverlayablesToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1613
    monitor-enter p0

    .line 1614
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1615
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetOverlayablesToString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1616
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getParentThemeIdentifier(I)I
    .registers 4
    .param p1, "resId"    # I

    .line 881
    monitor-enter p0

    .line 882
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 884
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetParentThemeIdentifier(JI)I

    move-result v0

    monitor-exit p0

    return v0

    .line 885
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getPooledStringForCookie(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "cookie"    # I
    .param p2, "id"    # I

    .line 939
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    .line 940
    .local v0, "apkAssets":[Landroid/content/res/ApkAssets;
    if-eqz v0, :cond_12

    array-length v1, v0

    if-gt p1, v1, :cond_12

    .line 941
    add-int/lit8 v1, p1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1, p2}, Landroid/content/res/ApkAssets;->getStringFromPool(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 943
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method getResourceArray(I[I)I
    .registers 5
    .param p1, "resId"    # I
    .param p2, "outData"    # [I

    .line 718
    const-string/jumbo v0, "outData"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 719
    monitor-enter p0

    .line 720
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 721
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeGetResourceArray(JI[I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 722
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method getResourceArraySize(I)I
    .registers 4
    .param p1, "resId"    # I

    .line 689
    monitor-enter p0

    .line 690
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 691
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceArraySize(JI)I

    move-result v0

    monitor-exit p0

    return v0

    .line 692
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceBagText(II)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "resId"    # I
    .param p2, "bagEntryId"    # I

    .line 669
    monitor-enter p0

    .line 670
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 671
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 672
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v1, v2, p1, p2, v0}, Landroid/content/res/AssetManager;->nativeGetResourceBagValue(JIILandroid/util/TypedValue;)I

    move-result v1

    .line 673
    .local v1, "cookie":I
    if-gtz v1, :cond_11

    .line 674
    monitor-exit p0

    const/4 v2, 0x0

    return-object v2

    .line 678
    :cond_11
    iget v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 681
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_26

    .line 682
    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 684
    :cond_26
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 685
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v1    # "cookie":I
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method getResourceEntryName(I)Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I

    .line 857
    monitor-enter p0

    .line 858
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 859
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceEntryName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 860
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 866
    monitor-enter p0

    .line 867
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 869
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeGetResourceIdentifier(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 870
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceIntArray(I)[I
    .registers 4
    .param p1, "resId"    # I

    .line 767
    monitor-enter p0

    .line 768
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 769
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceIntArray(JI)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 770
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceName(I)Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I

    .line 833
    monitor-enter p0

    .line 834
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 835
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 836
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourcePackageName(I)Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I

    .line 841
    monitor-enter p0

    .line 842
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 843
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourcePackageName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 844
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceStringArray(I)[Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I

    .line 733
    monitor-enter p0

    .line 734
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 735
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceStringArray(JI)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 736
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceText(I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "resId"    # I

    .line 650
    monitor-enter p0

    .line 651
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 652
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 653
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 655
    :cond_11
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 656
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method getResourceTextArray(I)[Ljava/lang/CharSequence;
    .registers 12
    .param p1, "resId"    # I

    .line 746
    monitor-enter p0

    .line 747
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 748
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceStringArrayInfo(JI)[I

    move-result-object v0

    .line 749
    .local v0, "rawInfoArray":[I
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 750
    monitor-exit p0

    return-object v1

    .line 753
    :cond_f
    array-length v2, v0

    .line 754
    .local v2, "rawInfoArrayLen":I
    div-int/lit8 v3, v2, 0x2

    .line 755
    .local v3, "infoArrayLen":I
    new-array v4, v3, [Ljava/lang/CharSequence;

    .line 756
    .local v4, "retArray":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_16
    if-ge v5, v2, :cond_2f

    .line 757
    aget v7, v0, v5

    .line 758
    .local v7, "cookie":I
    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    .line 759
    .local v8, "index":I
    if-ltz v8, :cond_27

    if-lez v7, :cond_27

    .line 760
    invoke-virtual {p0, v7, v8}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_28

    :cond_27
    move-object v9, v1

    :goto_28
    aput-object v9, v4, v6

    .line 756
    .end local v7    # "cookie":I
    .end local v8    # "index":I
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 762
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_2f
    monitor-exit p0

    return-object v4

    .line 763
    .end local v0    # "rawInfoArray":[I
    .end local v2    # "rawInfoArrayLen":I
    .end local v3    # "infoArrayLen":I
    .end local v4    # "retArray":[Ljava/lang/CharSequence;
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_31

    throw v0
.end method

.method getResourceTypeName(I)Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I

    .line 849
    monitor-enter p0

    .line 850
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 851
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceTypeName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 852
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceValue(IILandroid/util/TypedValue;Z)Z
    .registers 12
    .param p1, "resId"    # I
    .param p2, "densityDpi"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z

    .line 619
    const-string/jumbo v0, "outValue"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 620
    monitor-enter p0

    .line 621
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 622
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    int-to-short v4, p2

    move v3, p1

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->nativeGetResourceValue(JISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 624
    .local v0, "cookie":I
    const/4 v1, 0x0

    if-gtz v0, :cond_19

    .line 625
    monitor-exit p0

    return v1

    .line 629
    :cond_19
    iget v2, p3, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, p3, Landroid/util/TypedValue;->changingConfigurations:I

    .line 632
    iget v2, p3, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_32

    .line 633
    iget v2, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0, v2}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v2, :cond_32

    .line 634
    monitor-exit p0

    return v1

    .line 637
    :cond_32
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 638
    .end local v0    # "cookie":I
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public getSamsungThemeOverlays()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 574
    monitor-enter p0

    .line 575
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    monitor-exit p0

    return-object v0

    .line 576
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method getSizeAndUiModeConfigurations()[Landroid/content/res/Configuration;
    .registers 3

    .line 1551
    monitor-enter p0

    .line 1552
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1553
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetSizeAndUiModeConfigurations(J)[Landroid/content/res/Configuration;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1554
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getSizeConfigurations()[Landroid/content/res/Configuration;
    .registers 3

    .line 1541
    monitor-enter p0

    .line 1542
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1543
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetSizeConfigurations(J)[Landroid/content/res/Configuration;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1544
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getStyleAttributes(I)[I
    .registers 4
    .param p1, "resId"    # I

    .line 781
    monitor-enter p0

    .line 782
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 783
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetStyleAttributes(JI)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 784
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getThemeValue(JILandroid/util/TypedValue;Z)Z
    .registers 14
    .param p1, "theme"    # J
    .param p3, "resId"    # I
    .param p4, "outValue"    # Landroid/util/TypedValue;
    .param p5, "resolveRefs"    # Z

    .line 802
    const-string/jumbo v0, "outValue"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 803
    monitor-enter p0

    .line 804
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 805
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeThemeGetAttributeValue(JJILandroid/util/TypedValue;Z)I

    move-result v0

    .line 807
    .local v0, "cookie":I
    const/4 v1, 0x0

    if-gtz v0, :cond_19

    .line 808
    monitor-exit p0

    return v1

    .line 812
    :cond_19
    iget v2, p4, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, p4, Landroid/util/TypedValue;->changingConfigurations:I

    .line 815
    iget v2, p4, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_32

    .line 816
    iget v2, p4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0, v2}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v2, :cond_32

    .line 817
    monitor-exit p0

    return v1

    .line 820
    :cond_32
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 821
    .end local v0    # "cookie":I
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public isUpToDate()Z
    .registers 7

    .line 1487
    monitor-enter p0

    .line 1488
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1489
    monitor-exit p0

    return v1

    .line 1492
    :cond_8
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v2, v0

    move v3, v1

    :goto_c
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    .line 1493
    .local v4, "apkAssets":Landroid/content/res/ApkAssets;
    invoke-virtual {v4}, Landroid/content/res/ApkAssets;->isUpToDate()Z

    move-result v5

    if-nez v5, :cond_18

    .line 1494
    monitor-exit p0

    return v1

    .line 1492
    .end local v4    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1498
    :cond_1b
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1499
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1028
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1029
    monitor-enter p0

    .line 1030
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1031
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeList(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1032
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public open(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 960
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 980
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 981
    monitor-enter p0

    .line 982
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 983
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeOpenAsset(JLjava/lang/String;I)J

    move-result-wide v0

    .line 984
    .local v0, "asset":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_25

    .line 987
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$AssetInputStream-IA;)V

    .line 988
    .local v2, "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 989
    monitor-exit p0

    return-object v2

    .line 985
    .end local v2    # "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_25
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "fileName":Ljava/lang/String;
    .end local p2    # "accessMode":I
    throw v2

    .line 990
    .end local v0    # "asset":J
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "fileName":Ljava/lang/String;
    .restart local p2    # "accessMode":I
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 10
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1004
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1005
    monitor-enter p0

    .line 1006
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1007
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-static {v0, v1, p1, v2}, Landroid/content/res/AssetManager;->nativeOpenAssetFd(JLjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1008
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_24

    .line 1011
    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    iget-object v1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v2, 0x1

    aget-wide v5, v1, v2

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v7

    .line 1009
    :cond_24
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "fileName":Ljava/lang/String;
    throw v1

    .line 1012
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1083
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .registers 9
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1097
    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1100
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeOpenNonAsset(JILjava/lang/String;I)J

    move-result-wide v0

    .line 1101
    .local v0, "asset":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_25

    .line 1104
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$AssetInputStream-IA;)V

    .line 1105
    .local v2, "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1106
    monitor-exit p0

    return-object v2

    .line 1102
    .end local v2    # "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_25
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset absolute file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "cookie":I
    .end local p2    # "fileName":Ljava/lang/String;
    .end local p3    # "accessMode":I
    throw v2

    .line 1107
    .end local v0    # "asset":J
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "cookie":I
    .restart local p2    # "fileName":Ljava/lang/String;
    .restart local p3    # "accessMode":I
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1048
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1070
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 11
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1136
    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1137
    monitor-enter p0

    .line 1138
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1139
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 1140
    invoke-static {v0, v1, p1, p2, v2}, Landroid/content/res/AssetManager;->nativeOpenNonAssetFd(JILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1141
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_24

    .line 1144
    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    iget-object v1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v2, 0x1

    aget-wide v5, v1, v2

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v7

    .line 1142
    :cond_24
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset absolute file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "cookie":I
    .end local p2    # "fileName":Ljava/lang/String;
    throw v1

    .line 1145
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "cookie":I
    .restart local p2    # "fileName":Ljava/lang/String;
    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1121
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;
    .registers 8
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1197
    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1198
    monitor-enter p0

    .line 1199
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1201
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeOpenXmlAsset(JILjava/lang/String;)J

    move-result-wide v0

    .line 1202
    .local v0, "xmlBlock":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_24

    .line 1205
    new-instance v2, Landroid/content/res/XmlBlock;

    invoke-direct {v2, p0, v0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V

    .line 1206
    .local v2, "block":Landroid/content/res/XmlBlock;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1207
    monitor-exit p0

    return-object v2

    .line 1203
    .end local v2    # "block":Landroid/content/res/XmlBlock;
    :cond_24
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset XML file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "cookie":I
    .end local p2    # "fileName":Ljava/lang/String;
    throw v2

    .line 1208
    .end local v0    # "xmlBlock":J
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "cookie":I
    .restart local p2    # "fileName":Ljava/lang/String;
    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1185
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    return-object v0
.end method

.method public openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 7
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 1167
    .local v0, "block":Landroid/content/res/XmlBlock;
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_19

    .line 1171
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v1, :cond_11

    .line 1174
    nop

    .line 1175
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    .line 1174
    :cond_10
    return-object v1

    .line 1172
    :cond_11
    :try_start_11
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "block.newParser() returned a null parser"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "block":Landroid/content/res/XmlBlock;
    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "cookie":I
    .end local p2    # "fileName":Ljava/lang/String;
    throw v2
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_19

    .line 1166
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "block":Landroid/content/res/XmlBlock;
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "cookie":I
    .restart local p2    # "fileName":Ljava/lang/String;
    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    :try_start_1c
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v1
.end method

.method public openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1155
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method rebaseTheme(JLandroid/content/res/AssetManager;[I[ZI)Landroid/content/res/AssetManager;
    .registers 15
    .param p1, "themePtr"    # J
    .param p3, "newAssetManager"    # Landroid/content/res/AssetManager;
    .param p4, "styleIds"    # [I
    .param p5, "force"    # [Z
    .param p6, "count"    # I

    .line 1304
    if-eq p0, p3, :cond_19

    .line 1305
    monitor-enter p0

    .line 1306
    :try_start_3
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1307
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 1308
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_16

    .line 1309
    monitor-enter p3

    .line 1310
    :try_start_b
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1311
    invoke-direct {p3, p1, p2}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1312
    monitor-exit p3

    goto :goto_19

    :catchall_13
    move-exception v0

    monitor-exit p3
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v0

    .line 1308
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    .line 1316
    :cond_19
    :goto_19
    :try_start_19
    monitor-enter p3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_2f

    .line 1317
    :try_start_1a
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1318
    iget-wide v1, p3, Landroid/content/res/AssetManager;->mObject:J

    move-wide v3, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeThemeRebase(JJ[I[ZI)V

    .line 1319
    monitor-exit p3
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_2c

    .line 1321
    invoke-static {p3}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 1322
    nop

    .line 1323
    return-object p3

    .line 1319
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "themePtr":J
    .end local p3    # "newAssetManager":Landroid/content/res/AssetManager;
    .end local p4    # "styleIds":[I
    .end local p5    # "force":[Z
    .end local p6    # "count":I
    :try_start_2e
    throw v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 1321
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "themePtr":J
    .restart local p3    # "newAssetManager":Landroid/content/res/AssetManager;
    .restart local p4    # "styleIds":[I
    .restart local p5    # "force":[Z
    .restart local p6    # "count":I
    :catchall_2f
    move-exception v0

    invoke-static {p3}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 1322
    throw v0
.end method

.method releaseTheme(J)V
    .registers 4
    .param p1, "themePtr"    # J

    .line 1283
    monitor-enter p0

    .line 1284
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 1285
    monitor-exit p0

    .line 1286
    return-void

    .line 1285
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method resolveAttrs(JII[I[I[I[I)Z
    .registers 24
    .param p1, "themePtr"    # J
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "inValues"    # [I
    .param p6, "inAttrs"    # [I
    .param p7, "outValues"    # [I
    .param p8, "outIndices"    # [I

    .line 1244
    move-object v1, p0

    const-string v0, "inAttrs"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1245
    const-string/jumbo v0, "outValues"

    move-object/from16 v13, p7

    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1246
    const-string/jumbo v0, "outIndices"

    move-object/from16 v14, p8

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1247
    monitor-enter p0

    .line 1250
    :try_start_19
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1251
    iget-wide v2, v1, Landroid/content/res/AssetManager;->mObject:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v2 .. v11}, Landroid/content/res/AssetManager;->nativeResolveAttrs(JJII[I[I[I[I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1253
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_32

    throw v0
.end method

.method retrieveAttributes(Landroid/content/res/XmlBlock$Parser;[I[I[I)Z
    .registers 13
    .param p1, "parser"    # Landroid/content/res/XmlBlock$Parser;
    .param p2, "inAttrs"    # [I
    .param p3, "outValues"    # [I
    .param p4, "outIndices"    # [I

    .line 1259
    const-string/jumbo v0, "parser"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1260
    const-string v0, "inAttrs"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1261
    const-string/jumbo v0, "outValues"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1262
    const-string/jumbo v0, "outIndices"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1263
    monitor-enter p0

    .line 1266
    :try_start_18
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1267
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-wide v3, p1, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeRetrieveAttributes(JJ[I[I[I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1269
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public setApkAssets([Landroid/content/res/ApkAssets;Z)V
    .registers 9
    .param p1, "apkAssets"    # [Landroid/content/res/ApkAssets;
    .param p2, "invalidateCaches"    # Z

    .line 334
    const-string v0, "apkAssets"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    sget-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Landroid/content/res/ApkAssets;

    .line 339
    .local v1, "newApkAssets":[Landroid/content/res/ApkAssets;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    sget-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 343
    .local v0, "newLength":I
    array-length v2, p1

    :goto_15
    if-ge v3, v2, :cond_29

    aget-object v4, p1, v3

    .line 344
    .local v4, "apkAsset":Landroid/content/res/ApkAssets;
    sget-object v5, Landroid/content/res/AssetManager;->sSystemApkAssetsSet:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 345
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "newLength":I
    .local v5, "newLength":I
    aput-object v4, v1, v0

    move v0, v5

    .line 343
    .end local v4    # "apkAsset":Landroid/content/res/ApkAssets;
    .end local v5    # "newLength":I
    .restart local v0    # "newLength":I
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 350
    :cond_29
    array-length v2, v1

    if-eq v0, v2, :cond_33

    .line 351
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Landroid/content/res/ApkAssets;

    .line 354
    :cond_33
    monitor-enter p0

    .line 355
    :try_start_34
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 356
    iput-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 357
    iget-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v2, v3, v1, p2}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    .line 358
    if-eqz p2, :cond_44

    .line 360
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->invalidateCachesLocked(I)V

    .line 364
    :cond_44
    invoke-direct {p0}, Landroid/content/res/AssetManager;->updateSamsungThemeOverlays()V

    .line 366
    monitor-exit p0

    .line 367
    return-void

    .line 366
    :catchall_49
    move-exception v2

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_49

    throw v2
.end method

.method public setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIIII)V
    .registers 43
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "orientation"    # I
    .param p5, "touchscreen"    # I
    .param p6, "density"    # I
    .param p7, "keyboard"    # I
    .param p8, "keyboardHidden"    # I
    .param p9, "navigation"    # I
    .param p10, "screenWidth"    # I
    .param p11, "screenHeight"    # I
    .param p12, "smallestScreenWidthDp"    # I
    .param p13, "screenWidthDp"    # I
    .param p14, "screenHeightDp"    # I
    .param p15, "screenLayout"    # I
    .param p16, "uiMode"    # I
    .param p17, "colorMode"    # I
    .param p18, "grammaticalGender"    # I
    .param p19, "majorVersion"    # I

    .line 1568
    move-object/from16 v1, p0

    monitor-enter p0

    .line 1569
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1570
    iget-wide v2, v1, Landroid/content/res/AssetManager;->mObject:J

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move/from16 v22, p19

    invoke-static/range {v2 .. v22}, Landroid/content/res/AssetManager;->nativeSetConfiguration(JIILjava/lang/String;IIIIIIIIIIIIIIII)V

    .line 1574
    monitor-exit p0

    .line 1575
    return-void

    .line 1574
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v0
.end method

.method setLoaders(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)V"
        }
    .end annotation

    .line 393
    .local p1, "newLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    const-string/jumbo v0, "newLoaders"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v0, "apkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v3, v2

    if-ge v1, v3, :cond_23

    .line 398
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->isForLoader()Z

    move-result v2

    if-nez v2, :cond_20

    .line 399
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 403
    .end local v1    # "i":I
    :cond_23
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_60

    .line 407
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 408
    .local v1, "loaderStartIndex":I
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 409
    .local v3, "uniqueLoaderApkAssets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/ApkAssets;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_38
    if-ltz v4, :cond_60

    .line 410
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v5}, Landroid/content/res/loader/ResourcesLoader;->getApkAssets()Ljava/util/List;

    move-result-object v5

    .line 411
    .local v5, "currentLoaderApkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "j":I
    :goto_49
    if-ltz v6, :cond_5d

    .line 412
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ApkAssets;

    .line 413
    .local v7, "loaderApkAssets":Landroid/content/res/ApkAssets;
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 414
    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 411
    .end local v7    # "loaderApkAssets":Landroid/content/res/ApkAssets;
    :cond_5a
    add-int/lit8 v6, v6, -0x1

    goto :goto_49

    .line 409
    .end local v5    # "currentLoaderApkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    .end local v6    # "j":I
    :cond_5d
    add-int/lit8 v4, v4, -0x1

    goto :goto_38

    .line 420
    .end local v1    # "loaderStartIndex":I
    .end local v3    # "uniqueLoaderApkAssets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/ApkAssets;>;"
    .end local v4    # "i":I
    :cond_60
    const/4 v1, 0x0

    new-array v3, v1, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/res/loader/ResourcesLoader;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    .line 421
    new-array v1, v1, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/res/ApkAssets;

    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 422
    return-void
.end method

.method public setResourceResolutionLoggingEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 900
    monitor-enter p0

    .line 901
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 902
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeSetResourceResolutionLoggingEnabled(JZ)V

    .line 903
    monitor-exit p0

    .line 904
    return-void

    .line 903
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method setThemeTo(JLandroid/content/res/AssetManager;J)V
    .registers 14
    .param p1, "dstThemePtr"    # J
    .param p3, "srcAssetManager"    # Landroid/content/res/AssetManager;
    .param p4, "srcThemePtr"    # J

    .line 1328
    monitor-enter p0

    .line 1329
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1330
    monitor-enter p3
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_17

    .line 1331
    :try_start_5
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1332
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-wide v4, p3, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Landroid/content/res/AssetManager;->nativeThemeCopy(JJJJ)V

    .line 1333
    monitor-exit p3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_14

    .line 1334
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_17

    .line 1335
    return-void

    .line 1333
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "dstThemePtr":J
    .end local p3    # "srcAssetManager":Landroid/content/res/AssetManager;
    .end local p4    # "srcThemePtr":J
    :try_start_16
    throw v0

    .line 1334
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "dstThemePtr":J
    .restart local p3    # "srcAssetManager":Landroid/content/res/AssetManager;
    .restart local p4    # "srcThemePtr":J
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_17

    throw v0
.end method

.method xmlBlockGone(I)V
    .registers 4
    .param p1, "id"    # I

    .line 1212
    monitor-enter p0

    .line 1213
    int-to-long v0, p1

    :try_start_2
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 1214
    monitor-exit p0

    .line 1215
    return-void

    .line 1214
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_7

    throw v0
.end method
