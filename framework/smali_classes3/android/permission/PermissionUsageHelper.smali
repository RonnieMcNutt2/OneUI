.class public Landroid/permission/PermissionUsageHelper;
.super Ljava/lang/Object;
.source "PermissionUsageHelper.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/app/AppOpsManager$OnOpStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionUsageHelper$AccessChainLink;,
        Landroid/permission/PermissionUsageHelper$OpUsage;
    }
.end annotation


# static fields
.field private static final CAMERA_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_RECENT_TIME_MS:J = 0x3a98L

.field private static final DEFAULT_RUNNING_TIME_MS:J = 0x1388L

.field private static final LOCATION_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIC_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPERTY_CAMERA_MIC_ICONS_ENABLED:Ljava/lang/String; = "camera_mic_icons_enabled"

.field private static final PROPERTY_LOCATION_INDICATORS_ENABLED:Ljava/lang/String; = "location_indicators_enabled"

.field private static final PROPERTY_PERMISSIONS_HUB_2_ENABLED:Ljava/lang/String; = "permissions_hub_2_enabled"

.field private static final RECENT_ACCESS_TIME_MS:Ljava/lang/String; = "recent_access_time_ms"

.field private static final RUNNING_ACCESS_TIME_MS:Ljava/lang/String; = "running_access_time_ms"

.field private static final SYSTEM_PKG:Ljava/lang/String; = "android"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAttributionChains:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionUsageHelper$AccessChainLink;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPkgManager:Landroid/content/pm/PackageManager;

.field private mUserContexts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 134
    const-string v0, "android:coarse_location"

    const-string v1, "android:fine_location"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->LOCATION_OPS:Ljava/util/List;

    .line 139
    const-string v0, "android:receive_ambient_trigger_audio"

    const-string v1, "android:record_audio"

    const-string v2, "android:phone_call_microphone"

    invoke-static {v2, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->MIC_OPS:Ljava/util/List;

    .line 145
    const-string v0, "android:phone_call_camera"

    const-string v1, "android:camera"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->CAMERA_OPS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    .line 182
    iput-object p1, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 184
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 185
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    .line 186
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "android:camera"

    const-string v1, "android:record_audio"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "opStrs":[Ljava/lang/String;
    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 190
    const/16 v1, 0x1a

    const/16 v2, 0x1b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 191
    .local v1, "ops":[I
    iget-object v2, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v1, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 192
    return-void
.end method

.method private addLinkToChainIfNotPresentLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .registers 15
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "attributionFlags"    # I
    .param p6, "attributionChainId"    # I

    .line 270
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    .line 271
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/permission/PermissionUsageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/permission/PermissionUsageHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 270
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 272
    .local v0, "currentChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    new-instance v7, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/permission/PermissionUsageHelper$AccessChainLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 275
    .local v1, "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 276
    return-void

    .line 279
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 280
    .local v2, "currSize":I
    if-eqz v2, :cond_61

    invoke-virtual {v1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v3

    if-nez v3, :cond_61

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v3}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_61

    .line 284
    :cond_3e
    invoke-virtual {v1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isStart()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 285
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_64

    .line 286
    :cond_49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v3}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 288
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_64

    .line 283
    :cond_61
    :goto_61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_64
    :goto_64
    return-void
.end method

.method private formatLabelList(Ljava/util/List;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 546
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getGroupForOp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "op"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_76

    :cond_7
    goto :goto_4e

    :sswitch_8
    const-string v0, "android:camera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_4f

    :sswitch_12
    const-string v0, "android:phone_call_camera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_4f

    :sswitch_1c
    const-string v0, "android:record_audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4f

    :sswitch_26
    const-string v0, "android:receive_ambient_trigger_audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_4f

    :sswitch_30
    const-string v0, "android:phone_call_microphone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_4f

    :sswitch_3a
    const-string v0, "android:fine_location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_4f

    :sswitch_44
    const-string v0, "android:coarse_location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_4f

    :goto_4e
    const/4 v0, -0x1

    :goto_4f
    packed-switch v0, :pswitch_data_94

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown app op: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :pswitch_6b
    const-string v0, "android.permission-group.LOCATION"

    return-object v0

    .line 159
    :pswitch_6e
    return-object p0

    .line 156
    :pswitch_6f
    const-string v0, "android.permission-group.CAMERA"

    return-object v0

    .line 154
    :pswitch_72
    const-string v0, "android.permission-group.MICROPHONE"

    return-object v0

    nop

    :sswitch_data_76
    .sparse-switch
        -0x639fe5c6 -> :sswitch_44
        -0xc86dd31 -> :sswitch_3a
        0x8da560f -> :sswitch_30
        0x268c0901 -> :sswitch_26
        0x47019993 -> :sswitch_1c
        0x52e1ba8a -> :sswitch_12
        0x5b14ae90 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_72
        :pswitch_72
        :pswitch_6f
        :pswitch_6e
        :pswitch_6e
        :pswitch_6b
        :pswitch_6b
    .end packed-switch
.end method

.method private getOpUsages(Ljava/util/List;)Ljava/util/Map;
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;>;"
        }
    .end annotation

    .line 461
    .local p1, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    :try_start_2
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_16} :catch_1ee

    .line 465
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    nop

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 468
    .local v4, "now":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Landroid/permission/PermissionUsageHelper;->getRecentThreshold(Ljava/lang/Long;)J

    move-result-wide v6

    .line 469
    .local v6, "recentThreshold":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Landroid/permission/PermissionUsageHelper;->getRunningThreshold(Ljava/lang/Long;)J

    move-result-wide v8

    .line 470
    .local v8, "runningThreshold":J
    const/16 v2, 0xd

    .line 471
    .local v2, "opFlags":I
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 473
    .local v10, "usages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 474
    .local v11, "numPkgOps":I
    const/4 v12, 0x0

    .local v12, "pkgOpNum":I
    :goto_37
    if-ge v12, v11, :cond_1b5

    .line 475
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$PackageOps;

    .line 476
    .local v13, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v23

    .line 477
    .local v23, "uid":I
    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v24

    .line 478
    .local v24, "user":Landroid/os/UserHandle;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 480
    .local v25, "packageName":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 481
    .local v15, "numOpEntries":I
    const/4 v14, 0x0

    .local v14, "opEntryNum":I
    :goto_54
    if-ge v14, v15, :cond_1a1

    .line 482
    move-object/from16 v26, v0

    .end local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v26, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    .line 483
    .local v0, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOpStr()Ljava/lang/String;

    move-result-object v36

    .line 484
    .local v36, "op":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    .line 485
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 488
    .local v1, "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    .line 489
    .local v3, "numAttrEntries":I
    const/16 v16, 0x0

    move/from16 v37, v11

    move/from16 v11, v16

    .local v11, "attrOpEntryNum":I
    .local v37, "numPkgOps":I
    :goto_81
    if-ge v11, v3, :cond_187

    .line 490
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v38, v1

    .end local v1    # "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v38, "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    .line 491
    .local v1, "attributionTag":Ljava/lang/String;
    nop

    .line 492
    move/from16 v39, v3

    .end local v3    # "numAttrEntries":I
    .local v39, "numAttrEntries":I
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 494
    .local v3, "attrOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v3, v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v16

    .line 495
    .local v16, "lastAccessTime":J
    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_a9

    .line 496
    move-wide/from16 v16, v4

    move-wide/from16 v40, v16

    goto :goto_ab

    .line 495
    :cond_a9
    move-wide/from16 v40, v16

    .line 499
    .end local v16    # "lastAccessTime":J
    .local v40, "lastAccessTime":J
    :goto_ab
    cmp-long v16, v40, v6

    if-gez v16, :cond_c1

    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v16

    if-nez v16, :cond_c1

    .line 500
    move-object/from16 v28, v0

    move/from16 v17, v2

    move-wide/from16 v21, v4

    move/from16 v30, v14

    move/from16 v31, v15

    goto/16 :goto_175

    .line 503
    :cond_c1
    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v16

    if-nez v16, :cond_cf

    cmp-long v16, v40, v8

    if-ltz v16, :cond_cc

    goto :goto_cf

    :cond_cc
    const/16 v16, 0x0

    goto :goto_d1

    :cond_cf
    :goto_cf
    const/16 v16, 0x1

    :goto_d1
    move/from16 v34, v16

    .line 506
    .local v34, "isRunning":Z
    const/16 v16, 0x0

    .line 507
    .local v16, "proxyUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v3, v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v42

    .line 508
    .local v42, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-eqz v42, :cond_ff

    invoke-virtual/range {v42 .. v42}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_ff

    .line 509
    new-instance v17, Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual/range {v42 .. v42}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v42 .. v42}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v29

    .line 510
    invoke-virtual/range {v42 .. v42}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v31

    const/16 v35, 0x0

    move-object/from16 v27, v17

    move-object/from16 v30, v36

    move-wide/from16 v32, v40

    invoke-direct/range {v27 .. v35}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    move-object/from16 v16, v17

    move-object/from16 v27, v16

    goto :goto_101

    .line 513
    :cond_ff
    move-object/from16 v27, v16

    .end local v16    # "proxyUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .local v27, "proxyUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :goto_101
    move-object/from16 v28, v0

    .end local v0    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .local v28, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-static/range {v36 .. v36}, Landroid/permission/PermissionUsageHelper;->getGroupForOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "permGroupName":Ljava/lang/String;
    new-instance v29, Landroid/permission/PermissionUsageHelper$OpUsage;

    move/from16 v30, v14

    .end local v14    # "opEntryNum":I
    .local v30, "opEntryNum":I
    move-object/from16 v14, v29

    move/from16 v31, v15

    .end local v15    # "numOpEntries":I
    .local v31, "numOpEntries":I
    move-object/from16 v15, v25

    move-object/from16 v16, v1

    move-object/from16 v17, v36

    move/from16 v18, v23

    move-wide/from16 v19, v40

    move/from16 v21, v34

    move-object/from16 v22, v27

    invoke-direct/range {v14 .. v22}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    .line 517
    .local v14, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v14}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 518
    .local v15, "packageAttr":Ljava/lang/Integer;
    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_144

    .line 519
    new-instance v16, Landroid/util/ArrayMap;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v17, v16

    .line 520
    .local v17, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    move-object/from16 v16, v1

    move-object/from16 v1, v17

    .end local v17    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local v16, "attributionTag":Ljava/lang/String;
    invoke-virtual {v1, v15, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    move/from16 v17, v2

    move-wide/from16 v21, v4

    goto :goto_175

    .line 523
    .end local v16    # "attributionTag":Ljava/lang/String;
    .local v1, "attributionTag":Ljava/lang/String;
    :cond_144
    move-object/from16 v16, v1

    .line 524
    .end local v1    # "attributionTag":Ljava/lang/String;
    .restart local v16    # "attributionTag":Ljava/lang/String;
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 525
    .local v1, "permGroupUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_15a

    .line 526
    invoke-interface {v1, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v17, v2

    move-wide/from16 v21, v4

    goto :goto_175

    .line 527
    :cond_15a
    move/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "opFlags":I
    .end local v3    # "attrOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .local v17, "opFlags":I
    .local v18, "attrOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    iget-wide v2, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    .line 528
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v0

    .end local v0    # "permGroupName":Ljava/lang/String;
    .local v20, "permGroupName":Ljava/lang/String;
    move-object/from16 v0, v19

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    move-wide/from16 v21, v4

    .end local v4    # "now":J
    .local v21, "now":J
    iget-wide v4, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_175

    .line 529
    invoke-interface {v1, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .end local v1    # "permGroupUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v14    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v15    # "packageAttr":Ljava/lang/Integer;
    .end local v16    # "attributionTag":Ljava/lang/String;
    .end local v18    # "attrOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v20    # "permGroupName":Ljava/lang/String;
    .end local v27    # "proxyUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v34    # "isRunning":Z
    .end local v40    # "lastAccessTime":J
    .end local v42    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :cond_175
    :goto_175
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v17

    move-wide/from16 v4, v21

    move-object/from16 v0, v28

    move/from16 v14, v30

    move/from16 v15, v31

    move-object/from16 v1, v38

    move/from16 v3, v39

    goto/16 :goto_81

    .end local v17    # "opFlags":I
    .end local v21    # "now":J
    .end local v28    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v30    # "opEntryNum":I
    .end local v31    # "numOpEntries":I
    .end local v38    # "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v39    # "numAttrEntries":I
    .local v0, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .local v1, "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "opFlags":I
    .local v3, "numAttrEntries":I
    .restart local v4    # "now":J
    .local v14, "opEntryNum":I
    .local v15, "numOpEntries":I
    :cond_187
    move-object/from16 v28, v0

    move-object/from16 v38, v1

    move/from16 v17, v2

    move/from16 v39, v3

    move-wide/from16 v21, v4

    move/from16 v30, v14

    move/from16 v31, v15

    .line 481
    .end local v0    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v1    # "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "opFlags":I
    .end local v3    # "numAttrEntries":I
    .end local v4    # "now":J
    .end local v11    # "attrOpEntryNum":I
    .end local v14    # "opEntryNum":I
    .end local v15    # "numOpEntries":I
    .end local v36    # "op":Ljava/lang/String;
    .restart local v17    # "opFlags":I
    .restart local v21    # "now":J
    .restart local v30    # "opEntryNum":I
    .restart local v31    # "numOpEntries":I
    add-int/lit8 v14, v30, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v0, v26

    move/from16 v11, v37

    .end local v30    # "opEntryNum":I
    .restart local v14    # "opEntryNum":I
    goto/16 :goto_54

    .end local v17    # "opFlags":I
    .end local v21    # "now":J
    .end local v26    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31    # "numOpEntries":I
    .end local v37    # "numPkgOps":I
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v2    # "opFlags":I
    .restart local v4    # "now":J
    .local v11, "numPkgOps":I
    .restart local v15    # "numOpEntries":I
    :cond_1a1
    move-object/from16 v26, v0

    move/from16 v17, v2

    move-wide/from16 v21, v4

    move/from16 v37, v11

    move/from16 v30, v14

    move/from16 v31, v15

    .line 474
    .end local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v2    # "opFlags":I
    .end local v4    # "now":J
    .end local v11    # "numPkgOps":I
    .end local v13    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v14    # "opEntryNum":I
    .end local v15    # "numOpEntries":I
    .end local v23    # "uid":I
    .end local v24    # "user":Landroid/os/UserHandle;
    .end local v25    # "packageName":Ljava/lang/String;
    .restart local v17    # "opFlags":I
    .restart local v21    # "now":J
    .restart local v26    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v37    # "numPkgOps":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    goto/16 :goto_37

    .end local v17    # "opFlags":I
    .end local v21    # "now":J
    .end local v26    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v37    # "numPkgOps":I
    .restart local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v2    # "opFlags":I
    .restart local v4    # "now":J
    .restart local v11    # "numPkgOps":I
    :cond_1b5
    move-object/from16 v26, v0

    move/from16 v17, v2

    move-wide/from16 v21, v4

    move/from16 v37, v11

    .line 536
    .end local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v2    # "opFlags":I
    .end local v4    # "now":J
    .end local v11    # "numPkgOps":I
    .end local v12    # "pkgOpNum":I
    .restart local v17    # "opFlags":I
    .restart local v21    # "now":J
    .restart local v26    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v37    # "numPkgOps":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 537
    .local v0, "flattenedUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 538
    .local v1, "permGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1cc
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1ed

    .line 539
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 540
    .local v3, "permGroupName":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .end local v3    # "permGroupName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1cc

    .line 542
    .end local v2    # "i":I
    :cond_1ed
    return-object v0

    .line 462
    .end local v0    # "flattenedUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .end local v1    # "permGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "recentThreshold":J
    .end local v8    # "runningThreshold":J
    .end local v10    # "usages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .end local v17    # "opFlags":I
    .end local v21    # "now":J
    .end local v26    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v37    # "numPkgOps":I
    :catch_1ee
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static getRecentThreshold(Ljava/lang/Long;)J
    .registers 7
    .param p0, "now"    # Ljava/lang/Long;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "recent_access_time_ms"

    const-wide/16 v3, 0x3a98

    const-string/jumbo v5, "privacy"

    invoke-static {v5, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static getRunningThreshold(Ljava/lang/Long;)J
    .registers 7
    .param p0, "now"    # Ljava/lang/Long;

    .line 130
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "running_access_time_ms"

    const-wide/16 v3, 0x1388

    const-string/jumbo v5, "privacy"

    invoke-static {v5, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getSubattributionLabelsForPackage(Ljava/lang/String;I)Landroid/util/ArrayMap;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 393
    .local v0, "attributionLabelMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 395
    .local v1, "user":Landroid/os/UserHandle;
    :try_start_9
    invoke-direct {p0, p1, p2}, Landroid/permission/PermissionUsageHelper;->isSubattributionSupported(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 396
    return-object v0

    .line 398
    :cond_10
    invoke-direct {p0, v1}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 399
    .local v2, "userContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 401
    const-wide v4, 0x80001000L    # 1.060999919E-314

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v4

    .line 399
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 403
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 404
    .local v4, "pkgContext":Landroid/content/Context;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    array-length v7, v6

    :goto_2f
    if-ge v5, v7, :cond_48

    aget-object v8, v6, v5
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_33} :catch_49

    .line 406
    .local v8, "attribution":Landroid/content/pm/Attribution;
    :try_start_33
    invoke-virtual {v8}, Landroid/content/pm/Attribution;->getLabel()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 407
    .local v9, "resourceForLabel":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/pm/Attribution;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_42} :catch_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_42} :catch_49

    .line 410
    nop

    .end local v9    # "resourceForLabel":Ljava/lang/String;
    goto :goto_45

    .line 408
    :catch_44
    move-exception v9

    .line 404
    .end local v8    # "attribution":Landroid/content/pm/Attribution;
    :goto_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 414
    .end local v2    # "userContext":Landroid/content/Context;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pkgContext":Landroid/content/Context;
    :cond_48
    goto :goto_4a

    .line 412
    :catch_49
    move-exception v2

    .line 415
    :goto_4a
    return-object v0
.end method

.method private getUniqueUsagesWithLabels(Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 22
    .param p1, "permGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 551
    .local p2, "usages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v4, v0

    .line 553
    .local v4, "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    if-eqz v3, :cond_2e4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v10, v4

    goto/16 :goto_2e5

    .line 557
    :cond_17
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    .line 559
    .local v5, "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v6, v0

    .line 561
    .local v6, "mostRecentUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v0

    .line 563
    .local v7, "proxyPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v0

    .line 565
    .local v8, "proxyLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v0

    .line 567
    .local v9, "proxies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_36
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_61

    .line 568
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 569
    .local v10, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v11, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v11, :cond_5e

    .line 571
    iget-object v11, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .end local v10    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 576
    .end local v0    # "i":I
    :cond_61
    const/4 v0, 0x0

    .local v0, "usageNum":I
    :goto_62
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_d6

    .line 577
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 578
    .restart local v10    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    if-nez v10, :cond_73

    .line 579
    move-object/from16 v16, v4

    goto :goto_cf

    .line 582
    :cond_73
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    .line 585
    .local v11, "usageAttr":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a0

    iget-object v12, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v12, :cond_a0

    const-string v12, "android.permission-group.MICROPHONE"

    .line 586
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a0

    .line 587
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_a0
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    .line 593
    .local v12, "usageId":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 594
    .local v13, "lastMostRecent":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v14, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v14}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_cd

    if-eqz v13, :cond_c3

    iget-wide v14, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    move-object/from16 v16, v4

    .end local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .local v16, "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    iget-wide v3, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v3, v14, v3

    if-lez v3, :cond_cf

    goto :goto_c5

    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_c3
    move-object/from16 v16, v4

    .line 596
    .end local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :goto_c5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cf

    .line 594
    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_cd
    move-object/from16 v16, v4

    .line 576
    .end local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .end local v10    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v11    # "usageAttr":I
    .end local v12    # "usageId":I
    .end local v13    # "lastMostRecent":Landroid/permission/PermissionUsageHelper$OpUsage;
    .restart local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_cf
    :goto_cf
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    goto :goto_62

    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_d6
    move-object/from16 v16, v4

    .line 601
    .end local v0    # "usageNum":I
    .end local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    move v3, v0

    .local v3, "numStart":I
    :goto_da
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v10, 0x0

    if-ge v3, v0, :cond_1c0

    .line 602
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 604
    .local v11, "start":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 606
    .local v0, "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 607
    .local v12, "proxyLabelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_1b8

    if-nez v12, :cond_107

    .line 608
    move-object/from16 v10, v16

    goto/16 :goto_1ba

    .line 610
    :cond_107
    const/4 v13, 0x0

    .line 611
    .local v13, "iterNum":I
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 612
    .local v14, "maxUsages":I
    :goto_10c
    iget-object v15, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v15, :cond_19a

    .line 614
    iget-object v15, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v15}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_133

    .line 615
    iget-object v15, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v15}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    move-object v4, v0

    goto :goto_141

    .line 619
    :cond_133
    iget-object v15, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 620
    .local v15, "proxy":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v4, v15, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19a

    .line 621
    move-object v0, v15

    .line 623
    add-int/lit8 v14, v14, 0x1

    move-object v4, v0

    .line 629
    .end local v0    # "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v15    # "proxy":Landroid/permission/PermissionUsageHelper$OpUsage;
    .local v4, "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :goto_141
    if-eqz v4, :cond_199

    if-eq v13, v14, :cond_199

    .line 630
    invoke-virtual {v4}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    if-ne v0, v15, :cond_150

    .line 632
    goto :goto_199

    .line 635
    :cond_150
    invoke-virtual {v4}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v0, v4, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v15, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_193

    iget-object v0, v4, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 638
    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 640
    nop

    .line 641
    :try_start_16e
    invoke-virtual {v4}, Landroid/permission/PermissionUsageHelper$OpUsage;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 642
    .local v0, "userPkgManager":Landroid/content/pm/PackageManager;
    iget-object v15, v4, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v15, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 644
    .local v15, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v15, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v18, v17

    .line 646
    .local v18, "appLabel":Ljava/lang/CharSequence;
    move-object/from16 v10, v18

    .end local v18    # "appLabel":Ljava/lang/CharSequence;
    .local v10, "appLabel":Ljava/lang/CharSequence;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_191

    .line 647
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_191
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16e .. :try_end_191} :catch_192

    .line 651
    .end local v0    # "userPkgManager":Landroid/content/pm/PackageManager;
    .end local v10    # "appLabel":Ljava/lang/CharSequence;
    .end local v15    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_191
    goto :goto_193

    .line 649
    :catch_192
    move-exception v0

    .line 653
    :cond_193
    :goto_193
    add-int/lit8 v13, v13, 0x1

    move-object v0, v4

    const/4 v10, 0x0

    goto/16 :goto_10c

    .line 658
    :cond_199
    :goto_199
    move-object v0, v4

    .end local v4    # "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .local v0, "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :cond_19a
    const-string v4, "android.permission-group.MICROPHONE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b5

    .line 659
    nop

    .line 660
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1ab

    const/4 v4, 0x0

    goto :goto_1af

    :cond_1ab
    invoke-direct {v1, v12}, Landroid/permission/PermissionUsageHelper;->formatLabelList(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 659
    :goto_1af
    move-object/from16 v10, v16

    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .local v10, "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    invoke-virtual {v10, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ba

    .line 658
    .end local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_1b5
    move-object/from16 v10, v16

    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    goto :goto_1ba

    .line 607
    .end local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .end local v13    # "iterNum":I
    .end local v14    # "maxUsages":I
    .restart local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_1b8
    move-object/from16 v10, v16

    .line 601
    .end local v0    # "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v11    # "start":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v12    # "proxyLabelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :goto_1ba
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v16, v10

    goto/16 :goto_da

    .end local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_1c0
    move-object/from16 v10, v16

    .line 664
    .end local v3    # "numStart":I
    .end local v16    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    iget-object v3, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 665
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_1c7
    :try_start_1c7
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v4, v0, :cond_2ac

    .line 666
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v11, v0

    .line 667
    .local v11, "usageList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 670
    .local v0, "lastVisible":I
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2a3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v12}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v12

    if-eqz v12, :cond_2a3

    .line 671
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v13}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isStart()Z

    move-result v12

    if-eqz v12, :cond_2a1

    .line 672
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    iget-object v12, v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v12, v12, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    invoke-static {v12}, Landroid/permission/PermissionUsageHelper;->getGroupForOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29f

    const-string v12, "android.permission-group.MICROPHONE"

    .line 673
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_21d

    .line 674
    const/4 v1, 0x0

    goto/16 :goto_2a4

    .line 678
    :cond_21d
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_221
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_23c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 679
    .local v13, "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    iget-object v14, v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v14}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 680
    nop

    .end local v13    # "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    goto :goto_221

    .line 682
    :cond_23c
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v12, v13

    .line 683
    .local v12, "start":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v14, v13

    move v13, v0

    .line 684
    .end local v0    # "lastVisible":I
    .local v13, "lastVisible":I
    .local v14, "lastVisibleLink":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    :goto_24c
    if-lez v13, :cond_262

    iget-object v0, v14, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_262

    .line 685
    add-int/lit8 v13, v13, -0x1

    .line 686
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v14, v0

    goto :goto_24c

    .line 688
    :cond_262
    const/4 v15, 0x0

    .line 689
    .local v15, "proxyLabel":Ljava/lang/String;
    iget-object v0, v14, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v2, v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v2, v2, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_26f
    .catchall {:try_start_1c7 .. :try_end_26f} :catchall_2e1

    if-nez v0, :cond_298

    .line 691
    :try_start_271
    iget-object v0, v14, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 692
    invoke-virtual {v0}, Landroid/permission/PermissionUsageHelper$OpUsage;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 693
    .local v0, "userPkgManager":Landroid/content/pm/PackageManager;
    iget-object v2, v14, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v2, v2, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;
    :try_end_283
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_271 .. :try_end_283} :catch_295
    .catchall {:try_start_271 .. :try_end_283} :catchall_2e1

    const/4 v1, 0x0

    :try_start_284
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 695
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_290
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_284 .. :try_end_290} :catch_293
    .catchall {:try_start_284 .. :try_end_290} :catchall_2e1

    move-object/from16 v15, v16

    .line 698
    .end local v0    # "userPkgManager":Landroid/content/pm/PackageManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_299

    .line 696
    :catch_293
    move-exception v0

    goto :goto_299

    :catch_295
    move-exception v0

    const/4 v1, 0x0

    goto :goto_299

    .line 689
    :cond_298
    const/4 v1, 0x0

    .line 700
    :goto_299
    :try_start_299
    iget-object v0, v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v10, v0, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a4

    .line 672
    .end local v12    # "start":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    .end local v13    # "lastVisible":I
    .end local v14    # "lastVisibleLink":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    .end local v15    # "proxyLabel":Ljava/lang/String;
    .local v0, "lastVisible":I
    :cond_29f
    const/4 v1, 0x0

    goto :goto_2a4

    .line 671
    :cond_2a1
    const/4 v1, 0x0

    goto :goto_2a4

    .line 670
    :cond_2a3
    const/4 v1, 0x0

    .line 665
    .end local v0    # "lastVisible":I
    .end local v11    # "usageList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    :goto_2a4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_1c7

    .line 702
    .end local v4    # "i":I
    :cond_2ac
    monitor-exit v3
    :try_end_2ad
    .catchall {:try_start_299 .. :try_end_2ad} :catchall_2e1

    .line 704
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 705
    .local v1, "packageHash":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2de

    .line 706
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/permission/PermissionUsageHelper$OpUsage;

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2df

    .line 705
    :cond_2de
    const/4 v3, 0x0

    .line 708
    .end local v1    # "packageHash":I
    :goto_2df
    goto :goto_2b5

    .line 710
    :cond_2e0
    return-object v10

    .line 702
    :catchall_2e1
    move-exception v0

    :try_start_2e2
    monitor-exit v3
    :try_end_2e3
    .catchall {:try_start_2e2 .. :try_end_2e3} :catchall_2e1

    throw v0

    .line 553
    .end local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v6    # "mostRecentUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v7    # "proxyPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v8    # "proxyLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .end local v9    # "proxies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .local v4, "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_2e4
    move-object v10, v4

    .line 554
    .end local v4    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .restart local v10    # "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :goto_2e5
    return-object v10
.end method

.method private getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 195
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 196
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_14
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private isLocationProvider(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 445
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    .line 446
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 445
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 446
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    .line 445
    return v0
.end method

.method private isSubattributionSupported(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 423
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/permission/PermissionUsageHelper;->isLocationProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 424
    return v0

    .line 426
    :cond_8
    nop

    .line 427
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 428
    .local v1, "userPkgManager":Landroid/content/pm/PackageManager;
    nop

    .line 429
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    .line 430
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 428
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 431
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_2b

    .line 432
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->areAttributionsUserVisible()Z

    move-result v0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2c

    return v0

    .line 434
    :cond_2b
    return v0

    .line 435
    .end local v1    # "userPkgManager":Landroid/content/pm/PackageManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_2c
    move-exception v1

    .line 436
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method static synthetic lambda$addLinkToChainIfNotPresentLocked$0(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "k"    # Ljava/lang/Integer;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static shouldShowIndicators()Z
    .registers 3

    .line 115
    const-string/jumbo v0, "privacy"

    const-string v1, "camera_mic_icons_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_15

    .line 116
    invoke-static {}, Landroid/permission/PermissionUsageHelper;->shouldShowPermissionsHub()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    nop

    .line 115
    :goto_16
    return v2
.end method

.method private static shouldShowLocationIndicator()Z
    .registers 3

    .line 120
    const-string/jumbo v0, "location_indicators_enabled"

    const/4 v1, 0x0

    const-string/jumbo v2, "privacy"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private shouldShowPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 714
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/permission/PermissionManager;->shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static shouldShowPermissionsHub()Z
    .registers 3

    .line 110
    const-string/jumbo v0, "permissions_hub_2_enabled"

    const/4 v1, 0x0

    const-string/jumbo v2, "privacy"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private updateSubattributionLabelsMap(Ljava/util/List;Landroid/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 371
    .local p1, "usages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local p2, "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_34

    .line 374
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 375
    .local v1, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v2, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    if-eqz v2, :cond_32

    iget-object v2, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 377
    iget-object v2, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    .line 378
    invoke-direct {p0, v3, v4}, Landroid/permission/PermissionUsageHelper;->getSubattributionLabelsForPackage(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 377
    invoke-virtual {p2, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v1    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :cond_32
    goto :goto_d

    .line 381
    :cond_33
    return-void

    .line 372
    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public getOpUsageData(Z)Ljava/util/List;
    .registers 36
    .param p1, "isMicMuted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 296
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v1, "usages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionGroupUsage;>;"
    invoke-static {}, Landroid/permission/PermissionUsageHelper;->shouldShowIndicators()Z

    move-result v2

    if-nez v2, :cond_e

    .line 299
    return-object v1

    .line 302
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Landroid/permission/PermissionUsageHelper;->CAMERA_OPS:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 303
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/permission/PermissionUsageHelper;->shouldShowLocationIndicator()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 304
    sget-object v3, Landroid/permission/PermissionUsageHelper;->LOCATION_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    :cond_20
    if-nez p1, :cond_27

    .line 307
    sget-object v3, Landroid/permission/PermissionUsageHelper;->MIC_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    :cond_27
    invoke-direct {v0, v2}, Landroid/permission/PermissionUsageHelper;->getOpUsages(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 312
    .local v3, "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 316
    .local v4, "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, v0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v6, Landroid/media/AudioManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 317
    .local v5, "audioManager":Landroid/media/AudioManager;
    const-string v6, "android:phone_call_camera"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "android:phone_call_microphone"

    const/4 v9, 0x1

    if-nez v7, :cond_52

    .line 318
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    goto :goto_52

    :cond_50
    const/4 v7, 0x0

    goto :goto_53

    :cond_52
    :goto_52
    move v7, v9

    .line 319
    .local v7, "hasPhoneCall":Z
    :goto_53
    if-eqz v7, :cond_93

    const-string v10, "android.permission-group.MICROPHONE"

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_93

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_93

    .line 321
    iget-object v11, v0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v12, Landroid/telephony/TelephonyManager;

    .line 322
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 323
    .local v11, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 324
    .local v10, "permUsages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    const/4 v12, 0x0

    .local v12, "usageNum":I
    :goto_75
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_93

    .line 325
    nop

    .line 326
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v13, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 325
    invoke-virtual {v11, v13}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v9, :cond_90

    .line 328
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    :cond_90
    add-int/lit8 v12, v12, 0x1

    goto :goto_75

    .line 335
    .end local v10    # "permUsages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v11    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v12    # "usageNum":I
    :cond_93
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 337
    .local v9, "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    .local v10, "permGroupNum":I
    :goto_99
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_156

    .line 338
    const/4 v11, 0x0

    .line 339
    .local v11, "isPhone":Z
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 341
    .local v12, "permGroup":Ljava/lang/String;
    nop

    .line 342
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-direct {v0, v12, v13}, Landroid/permission/PermissionUsageHelper;->getUniqueUsagesWithLabels(Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v13

    .line 344
    .local v13, "usagesWithLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-direct {v0, v14, v9}, Landroid/permission/PermissionUsageHelper;->updateSubattributionLabelsMap(Ljava/util/List;Landroid/util/ArrayMap;)V

    .line 346
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c4

    .line 347
    const/4 v11, 0x1

    .line 348
    const-string v12, "android.permission-group.MICROPHONE"

    goto :goto_cd

    .line 349
    :cond_c4
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_cd

    .line 350
    const/4 v11, 0x1

    .line 351
    const-string v12, "android.permission-group.CAMERA"

    .line 354
    :cond_cd
    :goto_cd
    const/4 v14, 0x0

    move v15, v14

    .local v15, "usageNum":I
    :goto_cf
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v15, v14, :cond_140

    .line 355
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 356
    .local v14, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v0, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    move-object/from16 v25, v2

    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v25, "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v9, v0, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v2, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 357
    move-object/from16 v26, v3

    .end local v3    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .local v26, "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    .local v0, "attributionLabel":Ljava/lang/String;
    new-instance v2, Landroid/permission/PermissionGroupUsage;

    iget-object v3, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    move-object/from16 v27, v4

    .end local v4    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v27, "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v4, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    .end local v5    # "audioManager":Landroid/media/AudioManager;
    .local v28, "audioManager":Landroid/media/AudioManager;
    iget-wide v5, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    move/from16 v30, v7

    .end local v7    # "hasPhoneCall":Z
    .local v30, "hasPhoneCall":Z
    iget-boolean v7, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    move-object/from16 v31, v8

    iget-object v8, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 362
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v16

    check-cast v24, Ljava/lang/CharSequence;

    move-object/from16 v32, v14

    .end local v14    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .local v32, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    move-object v14, v2

    move/from16 v33, v15

    .end local v15    # "usageNum":I
    .local v33, "usageNum":I
    move-object v15, v3

    move/from16 v16, v4

    move-wide/from16 v17, v5

    move-object/from16 v19, v12

    move/from16 v20, v7

    move/from16 v21, v11

    move-object/from16 v22, v8

    move-object/from16 v23, v0

    invoke-direct/range {v14 .. v24}, Landroid/permission/PermissionGroupUsage;-><init>(Ljava/lang/String;IJLjava/lang/String;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 358
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v0    # "attributionLabel":Ljava/lang/String;
    .end local v32    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    add-int/lit8 v15, v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move/from16 v7, v30

    move-object/from16 v8, v31

    .end local v33    # "usageNum":I
    .restart local v15    # "usageNum":I
    goto :goto_cf

    .end local v25    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .end local v27    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "audioManager":Landroid/media/AudioManager;
    .end local v30    # "hasPhoneCall":Z
    .restart local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .restart local v4    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "audioManager":Landroid/media/AudioManager;
    .restart local v7    # "hasPhoneCall":Z
    :cond_140
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v33, v15

    .line 337
    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .end local v4    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "audioManager":Landroid/media/AudioManager;
    .end local v7    # "hasPhoneCall":Z
    .end local v11    # "isPhone":Z
    .end local v12    # "permGroup":Ljava/lang/String;
    .end local v13    # "usagesWithLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .end local v15    # "usageNum":I
    .restart local v25    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .restart local v27    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v28    # "audioManager":Landroid/media/AudioManager;
    .restart local v30    # "hasPhoneCall":Z
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_99

    .line 366
    .end local v10    # "permGroupNum":I
    .end local v25    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .end local v27    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "audioManager":Landroid/media/AudioManager;
    .end local v30    # "hasPhoneCall":Z
    .restart local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .restart local v4    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "audioManager":Landroid/media/AudioManager;
    .restart local v7    # "hasPhoneCall":Z
    :cond_156
    return-object v1
.end method

.method public onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 23
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "active"    # Z
    .param p6, "attributionFlags"    # I
    .param p7, "attributionChainId"    # I

    .line 216
    move-object v1, p0

    if-eqz p5, :cond_4

    .line 218
    return-void

    .line 224
    :cond_4
    iget-object v2, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 225
    :try_start_7
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 227
    .local v0, "numChains":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v3, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v0, :cond_63

    .line 229
    iget-object v5, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 230
    .local v5, "chainId":I
    iget-object v6, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 231
    .local v6, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 232
    .local v7, "chainSize":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_37
    if-ge v8, v7, :cond_58

    .line 233
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/permission/PermissionUsageHelper$AccessChainLink;
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_73

    .line 234
    .local v9, "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    :try_start_47
    invoke-virtual {v9, v10, v12, v13, v11}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->packageAndOpEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_55

    .line 235
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    goto :goto_60

    .line 232
    .end local v9    # "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    :cond_55
    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_58
    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 228
    .end local v5    # "chainId":I
    .end local v6    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    .end local v7    # "chainSize":I
    .end local v8    # "j":I
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_63
    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 240
    .end local v4    # "i":I
    iget-object v4, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 241
    nop

    .end local v0    # "numChains":I
    .end local v3    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-exit v2

    .line 242
    return-void

    .line 241
    :catchall_73
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    :goto_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_47 .. :try_end_7d} :catchall_7e

    throw v0

    :catchall_7e
    move-exception v0

    goto :goto_7c
.end method

.method public onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 210
    return-void
.end method

.method public onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I

    .line 248
    return-void
.end method

.method public onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .registers 21
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I
    .param p7, "startedType"    # I
    .param p8, "attributionFlags"    # I
    .param p9, "attributionChainId"    # I

    .line 255
    if-eqz p7, :cond_29

    const/4 v0, -0x1

    move/from16 v8, p9

    if-eq v8, v0, :cond_27

    if-eqz p8, :cond_27

    and-int/lit8 v0, p8, 0x8

    if-nez v0, :cond_f

    move-object v9, p0

    goto :goto_2c

    .line 261
    :cond_f
    move-object v9, p0

    iget-object v10, v9, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 262
    :try_start_13
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move v4, p2

    move-object v5, p4

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Landroid/permission/PermissionUsageHelper;->addLinkToChainIfNotPresentLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 264
    monitor-exit v10

    .line 265
    return-void

    .line 264
    :catchall_24
    move-exception v0

    monitor-exit v10
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_24

    throw v0

    .line 255
    :cond_27
    move-object v9, p0

    goto :goto_2c

    :cond_29
    move-object v9, p0

    move/from16 v8, p9

    .line 259
    :goto_2c
    return-void
.end method

.method public tearDown()V
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 203
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 204
    return-void
.end method
