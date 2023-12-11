.class public Lcom/samsung/android/sdhms/SemDeviceHealthManager;
.super Ljava/lang/Object;
.source "SemDeviceHealthManager.java"


# static fields
.field public static final ACTION_THERMAL_THROTTLING_DELTA_CHANGED:Ljava/lang/String; = "com.sec.android.sdhms.action.THERMAL_THROTTLING_DELTA_CHANGED"

.field public static final DRAIN_TYPE_AMBIENT_DISPLAY:I = 0x3

.field public static final DRAIN_TYPE_BLUETOOTH:I = 0x6

.field public static final DRAIN_TYPE_CELL_STANDBY:I = 0x4

.field public static final DRAIN_TYPE_IDLE:I = 0x7

.field public static final DRAIN_TYPE_PHONE:I = 0x1

.field public static final DRAIN_TYPE_POWERSHARING:I = 0x8

.field public static final DRAIN_TYPE_SCREEN:I = 0x2

.field public static final DRAIN_TYPE_WIFI:I = 0x5

.field public static final EXTRA_ANOMALY_TYPE_APP_ERROR:Ljava/lang/String; = "AERR"

.field public static final EXTRA_ANOMALY_TYPE_BG_CAMERA:Ljava/lang/String; = "CAM_28"

.field public static final EXTRA_ANOMALY_TYPE_BG_CPU:Ljava/lang/String; = "CPU_27"

.field public static final EXTRA_ANOMALY_TYPE_BG_MOBILE:Ljava/lang/String; = "MOB_16"

.field public static final EXTRA_ANOMALY_TYPE_BG_MOBILE_WAKEUP:Ljava/lang/String; = "MWUP_16"

.field public static final EXTRA_ANOMALY_TYPE_CPU_KILL:Ljava/lang/String; = "KILL_27"

.field public static final EXTRA_ANOMALY_TYPE_WAKELOCK:Ljava/lang/String; = "WLOCK_3009"

.field public static final EXTRA_THROTTLING_DELTA:Ljava/lang/String; = "delta"

.field public static final EXTRA_THROTTLING_TIME:Ljava/lang/String; = "time"

.field public static final INTERVAL_TYPE_DAILY:I = 0x1

.field public static final INTERVAL_TYPE_PERIODICALLY:I


# instance fields
.field private mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# direct methods
.method static bridge synthetic -$$Nest$fputmService(Lcom/samsung/android/sdhms/SemDeviceHealthManager;Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .registers 4

    monitor-enter p0

    .line 491
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v0, :cond_24

    .line 492
    const-string/jumbo v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 493
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_24

    .line 494
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_28

    .line 495
    if-eqz v1, :cond_24

    .line 497
    :try_start_16
    new-instance v1, Lcom/samsung/android/sdhms/SemDeviceHealthManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager$1;-><init>(Lcom/samsung/android/sdhms/SemDeviceHealthManager;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_20
    .catchall {:try_start_16 .. :try_end_1f} :catchall_28

    .line 505
    goto :goto_24

    .line 503
    .end local p0    # "this":Lcom/samsung/android/sdhms/SemDeviceHealthManager;
    :catch_20
    move-exception v1

    .line 504
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_21
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 509
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-object v0

    .line 490
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getBatteryEventHistory(JJI)Ljava/util/List;
    .registers 14
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J
    .param p5, "historyTypes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryEventHistory;",
            ">;"
        }
    .end annotation

    .line 189
    cmp-long v0, p1, p3

    if-lez v0, :cond_9

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 193
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 194
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v7, 0x0

    if-eqz v0, :cond_1f

    .line 196
    nop

    .line 197
    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    :try_start_15
    invoke-interface/range {v1 .. v6}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getBatteryEventHistory(JJI)Ljava/util/List;

    move-result-object v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_1a

    .line 198
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryEventHistory;>;"
    return-object v1

    .line 199
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryEventHistory;>;"
    :catch_1a
    move-exception v1

    .line 200
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 201
    return-object v7

    .line 204
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    return-object v7
.end method

.method public getBatteryStats(IJJZ)Ljava/util/List;
    .registers 16
    .param p1, "intervalType"    # I
    .param p2, "startTimestamp"    # J
    .param p4, "endTimestamp"    # J
    .param p6, "includeDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats;",
            ">;"
        }
    .end annotation

    .line 136
    cmp-long v0, p2, p4

    if-lez v0, :cond_9

    .line 137
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 140
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 141
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v8, 0x0

    if-eqz v0, :cond_20

    .line 143
    nop

    .line 144
    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    :try_start_16
    invoke-interface/range {v1 .. v7}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getBatteryStats(IJJZ)Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1a} :catch_1b

    .line 145
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats;>;"
    return-object v1

    .line 146
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats;>;"
    :catch_1b
    move-exception v1

    .line 147
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 148
    return-object v8

    .line 151
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_20
    return-object v8
.end method

.method public getNetworkUsageStats(JJ)Ljava/util/List;
    .registers 8
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemNetworkUsageStats;",
            ">;"
        }
    .end annotation

    .line 346
    cmp-long v0, p1, p3

    if-lez v0, :cond_9

    .line 347
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 350
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 351
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 353
    nop

    .line 354
    :try_start_11
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getNetworkUsageStats(JJ)Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    .line 355
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemNetworkUsageStats;>;"
    return-object v1

    .line 356
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemNetworkUsageStats;>;"
    :catch_16
    move-exception v2

    .line 357
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 358
    return-object v1

    .line 361
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1b
    return-object v1
.end method

.method public getProcessUsageStats(JJ)Ljava/util/List;
    .registers 8
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemProcessUsageStats;",
            ">;"
        }
    .end annotation

    .line 315
    cmp-long v0, p1, p3

    if-lez v0, :cond_9

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 319
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 320
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 322
    nop

    .line 323
    :try_start_11
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getProcessUsageStats(JJ)Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    .line 324
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemProcessUsageStats;>;"
    return-object v1

    .line 325
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemProcessUsageStats;>;"
    :catch_16
    move-exception v2

    .line 326
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 327
    return-object v1

    .line 330
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1b
    return-object v1
.end method

.method public getSupportedHistoryTypes()I
    .registers 4

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 221
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_11

    .line 223
    :try_start_6
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSupportedHistoryTypes()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 224
    :catch_b
    move-exception v1

    .line 225
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 226
    const/4 v2, -0x1

    return v2

    .line 229
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public getSupportedThermalThrottlingDelta()I
    .registers 4

    .line 433
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 434
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_12

    .line 436
    :try_start_6
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSupportedThermalThrottlingDelta()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 437
    :catch_b
    move-exception v1

    .line 438
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 439
    const/16 v2, -0x378

    return v2

    .line 442
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    const/16 v1, -0x3e7

    return v1
.end method

.method public getThermalStats(JJ)Ljava/util/List;
    .registers 8
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemThermalStats;",
            ">;"
        }
    .end annotation

    .line 284
    cmp-long v0, p1, p3

    if-lez v0, :cond_9

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 288
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 289
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 291
    nop

    .line 292
    :try_start_11
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getThermalStats(JJ)Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    .line 293
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemThermalStats;>;"
    return-object v1

    .line 294
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemThermalStats;>;"
    :catch_16
    move-exception v2

    .line 295
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 296
    return-object v1

    .line 299
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1b
    return-object v1
.end method

.method public getThermalThrottlingDelta()I
    .registers 4

    .line 410
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 411
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_12

    .line 413
    :try_start_6
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getThermalThrottlingDelta()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 414
    :catch_b
    move-exception v1

    .line 415
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 416
    const/16 v2, -0x378

    return v2

    .line 419
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    const/16 v1, -0x3e7

    return v1
.end method

.method public setAnomalyConfig(Landroid/app/PendingIntent;)Z
    .registers 5
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 478
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 479
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 481
    :try_start_7
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->setAnomalyConfig(Landroid/app/PendingIntent;)Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    .line 482
    :catch_c
    move-exception v2

    .line 483
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 484
    return v1

    .line 487
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_11
    return v1
.end method

.method public setThermalThrottlingDelta(Landroid/content/Context;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .line 383
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 384
    return v0

    .line 387
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    .line 388
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v1, :cond_18

    .line 390
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "pkgName":Ljava/lang/String;
    invoke-interface {v1, v2, p2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->setThermalThrottlingDeltaWithPackageName(Ljava/lang/String;I)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_13

    return v0

    .line 392
    .end local v2    # "pkgName":Ljava/lang/String;
    :catch_13
    move-exception v2

    .line 393
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 394
    return v0

    .line 397
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_18
    return v0
.end method
