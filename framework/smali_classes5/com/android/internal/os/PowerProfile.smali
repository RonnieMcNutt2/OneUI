.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerProfile$CpuClusterKey;,
        Lcom/android/internal/os/PowerProfile$Subsystem;,
        Lcom/android/internal/os/PowerProfile$PowerGroup;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final CPU_CLUSTER_POWER_COUNT:Ljava/lang/String; = "cpu.cluster_power.cluster"

.field private static final CPU_CORE_POWER_PREFIX:Ljava/lang/String; = "cpu.core_power.cluster"

.field private static final CPU_CORE_SPEED_PREFIX:Ljava/lang/String; = "cpu.core_speeds.cluster"

.field private static final CPU_PER_CLUSTER_CORE_COUNT:Ljava/lang/String; = "cpu.clusters.cores"

.field private static final CPU_POWER_BRACKETS_PREFIX:Ljava/lang/String; = "cpu.power_brackets.cluster"

.field private static final DEFAULT_CPU_POWER_BRACKET_NUMBER:I = 0x3

.field public static final POWER_AMBIENT_DISPLAY:Ljava/lang/String; = "ambient.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_AUDIO:Ljava/lang/String; = "audio"

.field public static final POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final POWER_BATTERY_TYPICAL_CAPACITY:Ljava/lang/String; = "battery.typical.capacity"

.field public static final POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_BLUETOOTH_CONTROLLER_IDLE:Ljava/lang/String; = "bluetooth.controller.idle"

.field public static final POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "bluetooth.controller.voltage"

.field public static final POWER_BLUETOOTH_CONTROLLER_RX:Ljava/lang/String; = "bluetooth.controller.rx"

.field public static final POWER_BLUETOOTH_CONTROLLER_TX:Ljava/lang/String; = "bluetooth.controller.tx"

.field public static final POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_CAMERA:Ljava/lang/String; = "camera.avg"

.field public static final POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"

.field public static final POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final POWER_CPU_SUSPEND:Ljava/lang/String; = "cpu.suspend"

.field public static final POWER_FLASHLIGHT:Ljava/lang/String; = "camera.flashlight"

.field public static final POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final POWER_GPS_OPERATING_VOLTAGE:Ljava/lang/String; = "gps.voltage"

.field public static final POWER_GPS_SIGNAL_QUALITY_BASED:Ljava/lang/String; = "gps.signalqualitybased"

.field public static final POWER_GROUP_DISPLAY_AMBIENT:Ljava/lang/String; = "ambient.on.display"

.field public static final POWER_GROUP_DISPLAY_SCREEN_FULL:Ljava/lang/String; = "screen.full.display"

.field public static final POWER_GROUP_DISPLAY_SCREEN_ON:Ljava/lang/String; = "screen.on.display"

.field public static final POWER_MEMORY:Ljava/lang/String; = "memory.bandwidths"

.field public static final POWER_MODEM_CONTROLLER_IDLE:Ljava/lang/String; = "modem.controller.idle"

.field public static final POWER_MODEM_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "modem.controller.voltage"

.field public static final POWER_MODEM_CONTROLLER_RX:Ljava/lang/String; = "modem.controller.rx"

.field public static final POWER_MODEM_CONTROLLER_SLEEP:Ljava/lang/String; = "modem.controller.sleep"

.field public static final POWER_MODEM_CONTROLLER_TX:Ljava/lang/String; = "modem.controller.tx"

.field public static final POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_VIDEO:Ljava/lang/String; = "video"

.field public static final POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final POWER_WIFI_BATCHED_SCAN:Ljava/lang/String; = "wifi.batchedscan"

.field public static final POWER_WIFI_CONTROLLER_IDLE:Ljava/lang/String; = "wifi.controller.idle"

.field public static final POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "wifi.controller.voltage"

.field public static final POWER_WIFI_CONTROLLER_RX:Ljava/lang/String; = "wifi.controller.rx"

.field public static final POWER_WIFI_CONTROLLER_TX:Ljava/lang/String; = "wifi.controller.tx"

.field public static final POWER_WIFI_CONTROLLER_TX_LEVELS:Ljava/lang/String; = "wifi.controller.tx_levels"

.field public static final POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final SUBSYSTEM_FIELDS_MASK:J = -0x1L

.field private static final SUBSYSTEM_MASK:J = 0xf00000000L

.field public static final SUBSYSTEM_MODEM:J = 0x100000000L

.field public static final SUBSYSTEM_NONE:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "PowerProfile"

.field private static final TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_MODEM:Ljava/lang/String; = "modem"

.field private static final sLock:Ljava/lang/Object;

.field static final sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

.field static final sPowerArrayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field static final sPowerItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

.field private mCpuPowerBracketCount:I

.field private mNumDisplays:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    .line 313
    new-instance v0, Lcom/android/internal/power/ModemPowerProfile;

    invoke-direct {v0}, Lcom/android/internal/power/ModemPowerProfile;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    .line 323
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;Z)V

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forTest"    # Z

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    if-eqz p2, :cond_c

    const v1, 0x1170079

    goto :goto_f

    .line 341
    :cond_c
    const v1, 0x1170078

    :goto_f
    nop

    .line 342
    .local v1, "xmlId":I
    :try_start_10
    invoke-direct {p0, p1, v1}, Lcom/android/internal/os/PowerProfile;->initLocked(Landroid/content/Context;I)V

    .line 343
    .end local v1    # "xmlId":I
    monitor-exit v0

    .line 344
    return-void

    .line 343
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private static getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "ordinal"    # I

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDeprecatedModemConstant(ILjava/lang/String;I)V
    .registers 10
    .param p1, "key"    # I
    .param p2, "deprecatedKey"    # Ljava/lang/String;
    .param p3, "level"    # I

    .line 759
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainMa(I)D

    move-result-wide v1

    .line 760
    .local v1, "drain":D
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_d

    return-void

    .line 762
    :cond_d
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    .line 763
    .local v3, "deprecatedDrain":D
    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 764
    return-void
.end method

.method private initCpuClusters()V
    .registers 12

    .line 466
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    const-string v1, "cpu.clusters.cores"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 467
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 468
    .local v0, "data":[Ljava/lang/Double;
    array-length v1, v0

    new-array v1, v1, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 469
    const/4 v1, 0x0

    .local v1, "cluster":I
    :goto_16
    array-length v2, v0

    if-ge v1, v2, :cond_6c

    .line 470
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 471
    .local v2, "numCpusInCluster":I
    iget-object v3, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v10, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpu.core_speeds.cluster"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpu.cluster_power.cluster"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpu.core_power.cluster"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v4, v10

    move v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey-IA;)V

    aput-object v10, v3, v1

    .line 469
    .end local v2    # "numCpusInCluster":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 475
    .end local v0    # "data":[Ljava/lang/Double;
    .end local v1    # "cluster":I
    :cond_6c
    goto :goto_9d

    .line 477
    :cond_6d
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 478
    const/4 v0, 0x1

    .line 479
    .local v0, "numCpus":I
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 480
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 482
    :cond_8a
    iget-object v7, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v8, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const-string v2, "cpu.core_speeds.cluster0"

    const-string v3, "cpu.cluster_power.cluster0"

    const-string v4, "cpu.core_power.cluster0"

    const/4 v6, 0x0

    move-object v1, v8

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey-IA;)V

    const/4 v1, 0x0

    aput-object v8, v7, v1

    .line 486
    .end local v0    # "numCpus":I
    :goto_9d
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->initCpuPowerBrackets(I)V

    .line 487
    return-void
.end method

.method private initDisplays()V
    .registers 13

    .line 685
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 686
    :goto_3
    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 687
    const-string v2, "ambient.on.display"

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v5

    .line 686
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_d4

    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 689
    const-string/jumbo v6, "screen.on.display"

    invoke-virtual {p0, v6, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v7

    .line 688
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_d4

    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 691
    const-string/jumbo v7, "screen.full.display"

    invoke-virtual {p0, v7, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v3

    .line 690
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_34

    goto/16 :goto_d4

    .line 697
    :cond_34
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    const-string v3, "ambient.on"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 698
    .local v3, "deprecatedAmbientDisplay":Ljava/lang/Double;
    const/4 v4, 0x0

    .line 699
    .local v4, "legacy":Z
    const-string v8, " instead."

    const-string v9, "PowerProfile"

    if-eqz v3, :cond_6b

    iget v10, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v10, :cond_6b

    .line 700
    invoke-static {v2, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, "key":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ambient.on is deprecated! Use "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const/4 v4, 0x1

    .line 706
    .end local v2    # "key":Ljava/lang/String;
    :cond_6b
    const-string/jumbo v2, "screen.on"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 707
    .local v2, "deprecatedScreenOn":Ljava/lang/Double;
    if-eqz v2, :cond_9d

    iget v10, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v10, :cond_9d

    .line 708
    invoke-static {v6, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 709
    .local v6, "key":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "screen.on is deprecated! Use "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const/4 v4, 0x1

    .line 714
    .end local v6    # "key":Ljava/lang/String;
    :cond_9d
    const-string/jumbo v6, "screen.full"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    .line 715
    .local v6, "deprecatedScreenFull":Ljava/lang/Double;
    if-eqz v6, :cond_cf

    iget v10, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v10, :cond_cf

    .line 716
    invoke-static {v7, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "key":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "screen.full is deprecated! Use "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const/4 v4, 0x1

    .line 721
    .end local v0    # "key":Ljava/lang/String;
    :cond_cf
    if-eqz v4, :cond_d3

    .line 722
    iput v5, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 724
    :cond_d3
    return-void

    .line 693
    .end local v2    # "deprecatedScreenOn":Ljava/lang/Double;
    .end local v3    # "deprecatedAmbientDisplay":Ljava/lang/Double;
    .end local v4    # "legacy":Z
    .end local v6    # "deprecatedScreenFull":Ljava/lang/Double;
    :cond_d4
    :goto_d4
    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    goto/16 :goto_3
.end method

.method private initLocked(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlId"    # I

    .line 362
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;I)V

    .line 365
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuClusters()V

    .line 366
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initDisplays()V

    .line 367
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initModem()V

    .line 368
    return-void
.end method

.method private initModem()V
    .registers 4

    .line 734
    const-string/jumbo v0, "modem.controller.sleep"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 736
    const/high16 v0, 0x10000000

    const-string/jumbo v2, "modem.controller.idle"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 738
    const/high16 v0, 0x20000000

    const-string/jumbo v2, "modem.controller.rx"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 741
    const/high16 v0, 0x30000000

    const-string/jumbo v2, "modem.controller.tx"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 744
    const/high16 v0, 0x31000000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 747
    const/high16 v0, 0x32000000

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 750
    const/high16 v0, 0x33000000

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 753
    const/high16 v0, 0x34000000

    const/4 v1, 0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 756
    return-void
.end method

.method private isIgnoreType(Ljava/lang/String;)Z
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 801
    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_13

    .line 802
    if-eqz p1, :cond_13

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 803
    const/4 v0, 0x1

    return v0

    .line 806
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$dump$0(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Double;)V
    .registers 3
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .line 1108
    invoke-virtual {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1109
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1110
    return-void
.end method

.method static synthetic lambda$dump$1(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/Double;)V
    .registers 4
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Double;

    .line 1112
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1113
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1114
    return-void
.end method

.method private readPowerValuesFromXml(Landroid/content/Context;I)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlId"    # I

    .line 371
    const-string/jumbo v1, "item"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 372
    .local v2, "resources":Landroid/content/res/Resources;
    move/from16 v3, p2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 373
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    .line 374
    .local v5, "parsingArray":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 375
    .local v6, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v7, 0x0

    .line 378
    .local v7, "arrayName":Ljava/lang/String;
    :try_start_15
    const-string v0, "device"

    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 381
    :goto_1a
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 383
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 384
    .local v8, "element":Ljava/lang/String;
    if-nez v8, :cond_8a

    .line 415
    .end local v8    # "element":Ljava/lang/String;
    if-eqz v5, :cond_37

    .line 416
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Double;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Double;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_37} :catch_121
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_37} :catch_11a
    .catchall {:try_start_15 .. :try_end_37} :catchall_118

    .line 423
    :cond_37
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 424
    nop

    .line 427
    const v0, 0x10e0042

    const v1, 0x10e0040

    const v8, 0x10e003f

    const v9, 0x10e0041

    filled-new-array {v8, v9, v0, v1}, [I

    move-result-object v0

    .line 434
    .local v0, "configResIds":[I
    const-string v1, "bluetooth.controller.tx"

    const-string v8, "bluetooth.controller.voltage"

    const-string v9, "bluetooth.controller.idle"

    const-string v10, "bluetooth.controller.rx"

    filled-new-array {v9, v10, v1, v8}, [Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "configResIdKeys":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_58
    array-length v9, v0

    if-ge v8, v9, :cond_89

    .line 442
    aget-object v9, v1, v8

    .line 445
    .local v9, "key":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_76

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_76

    .line 446
    goto :goto_86

    .line 448
    :cond_76
    aget v11, v0, v8

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 449
    .local v11, "value":I
    if-lez v11, :cond_86

    .line 450
    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "value":I
    :cond_86
    :goto_86
    add-int/lit8 v8, v8, 0x1

    goto :goto_58

    .line 453
    .end local v8    # "i":I
    :cond_89
    return-void

    .line 386
    .end local v0    # "configResIds":[I
    .end local v1    # "configResIdKeys":[Ljava/lang/String;
    .local v8, "element":Ljava/lang/String;
    :cond_8a
    const-string/jumbo v0, "value"

    if-eqz v5, :cond_a7

    :try_start_8f
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a7

    .line 388
    sget-object v9, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/Double;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Double;

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const/4 v5, 0x0

    .line 391
    :cond_a7
    const-string v9, "array"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_ad} :catch_121
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_ad} :catch_11a
    .catchall {:try_start_8f .. :try_end_ad} :catchall_118

    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    if-eqz v9, :cond_bd

    .line 392
    const/4 v5, 0x1

    .line 393
    :try_start_b4
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 394
    invoke-interface {v4, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .end local v7    # "arrayName":Ljava/lang/String;
    .local v0, "arrayName":Ljava/lang/String;
    goto :goto_116

    .line 395
    .end local v0    # "arrayName":Ljava/lang/String;
    .restart local v7    # "arrayName":Ljava/lang/String;
    :cond_bd
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d9

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    goto :goto_d9

    .line 411
    :cond_ca
    const-string/jumbo v0, "modem"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 412
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v0, v4}, Lcom/android/internal/power/ModemPowerProfile;->parseFromXml(Landroid/content/res/XmlResourceParser;)V

    goto :goto_116

    .line 396
    :cond_d9
    :goto_d9
    const/4 v0, 0x0

    .line 397
    .local v0, "name":Ljava/lang/String;
    if-nez v5, :cond_e2

    invoke-interface {v4, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto :goto_e3

    :cond_e2
    move-object v9, v0

    .line 398
    .end local v0    # "name":Ljava/lang/String;
    .local v9, "name":Ljava/lang/String;
    :goto_e3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v10, 0x4

    if-ne v0, v10, :cond_115

    .line 399
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b4 .. :try_end_ee} :catch_121
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_ee} :catch_11a
    .catchall {:try_start_b4 .. :try_end_ee} :catchall_118

    move-object v10, v0

    .line 400
    .local v10, "power":Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 402
    .local v11, "value":D
    :try_start_f1
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13
    :try_end_f9
    .catch Ljava/lang/NumberFormatException; {:try_start_f1 .. :try_end_f9} :catch_fb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f1 .. :try_end_f9} :catch_121
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f9} :catch_11a
    .catchall {:try_start_f1 .. :try_end_f9} :catchall_118

    move-wide v11, v13

    .line 404
    goto :goto_fc

    .line 403
    :catch_fb
    move-exception v0

    .line 405
    :goto_fc
    :try_start_fc
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 406
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v0, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_115

    .line 407
    :cond_10c
    if-eqz v5, :cond_115

    .line 408
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_115
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fc .. :try_end_115} :catch_121
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_115} :catch_11a
    .catchall {:try_start_fc .. :try_end_115} :catchall_118

    .line 411
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "power":Ljava/lang/String;
    .end local v11    # "value":D
    :cond_115
    :goto_115
    nop

    .line 414
    .end local v8    # "element":Ljava/lang/String;
    :goto_116
    goto/16 :goto_1a

    .line 423
    :catchall_118
    move-exception v0

    goto :goto_128

    .line 420
    :catch_11a
    move-exception v0

    .line 421
    .local v0, "e":Ljava/io/IOException;
    :try_start_11b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "parsingArray":Z
    .end local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v7    # "arrayName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "xmlId":I
    throw v1

    .line 418
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parsingArray":Z
    .restart local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v7    # "arrayName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "xmlId":I
    :catch_121
    move-exception v0

    .line 419
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "parsingArray":Z
    .end local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v7    # "arrayName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "xmlId":I
    throw v1
    :try_end_128
    .catchall {:try_start_11b .. :try_end_128} :catchall_118

    .line 423
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parsingArray":Z
    .restart local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v7    # "arrayName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "xmlId":I
    :goto_128
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 424
    throw v0
.end method

.method private writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fieldId"    # J

    .line 1130
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1131
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 1132
    .local v3, "d":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, p3, p4, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 1131
    .end local v3    # "d":Ljava/lang/Double;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1135
    :cond_1e
    return-void
.end method

.method private writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fieldId"    # J

    .line 1123
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1124
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 1126
    :cond_15
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1106
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1107
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1111
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1115
    const-string v1, "Modem values:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1117
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v1, v0}, Lcom/android/internal/power/ModemPowerProfile;->dump(Ljava/io/PrintWriter;)V

    .line 1118
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1119
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 946
    const-string v0, "cpu.suspend"

    const-wide v1, 0x10100000001L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 949
    const-string v0, "cpu.idle"

    const-wide v1, 0x10100000002L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 952
    const-string v0, "cpu.active"

    const-wide v3, 0x10100000003L

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 958
    const/4 v0, 0x0

    .local v0, "cluster":I
    :goto_1f
    iget-object v3, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v3, v3

    if-ge v0, v3, :cond_a5

    .line 959
    const-wide v3, 0x20b00000028L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 960
    .local v3, "token":J
    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 961
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->clusterPowerKey:Ljava/lang/String;

    .line 962
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 961
    invoke-virtual {p1, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 963
    iget-object v5, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    const-wide v6, 0x10500000003L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 964
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Double;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_69
    if-ge v8, v6, :cond_7c

    aget-object v9, v5, v8

    .line 965
    .local v9, "speed":Ljava/lang/Double;
    const-wide v10, 0x20300000004L

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 964
    .end local v9    # "speed":Ljava/lang/Double;
    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    .line 967
    :cond_7c
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Double;

    array-length v6, v5

    :goto_8b
    if-ge v7, v6, :cond_9e

    aget-object v8, v5, v7

    .line 968
    .local v8, "corePower":Ljava/lang/Double;
    const-wide v9, 0x20100000005L

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 967
    .end local v8    # "corePower":Ljava/lang/Double;
    add-int/lit8 v7, v7, 0x1

    goto :goto_8b

    .line 970
    :cond_9e
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 958
    .end local v3    # "token":J
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1f

    .line 974
    .end local v0    # "cluster":I
    :cond_a5
    const-string/jumbo v0, "wifi.scan"

    const-wide v1, 0x10100000004L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 977
    const-string/jumbo v0, "wifi.on"

    const-wide v1, 0x10100000005L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 980
    const-string/jumbo v0, "wifi.active"

    const-wide v1, 0x10100000006L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 983
    const-string/jumbo v0, "wifi.controller.idle"

    const-wide v1, 0x10100000007L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 987
    const-string/jumbo v0, "wifi.controller.rx"

    const-wide v1, 0x10100000008L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 991
    const-string/jumbo v0, "wifi.controller.tx"

    const-wide v1, 0x10100000009L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 995
    const-string/jumbo v0, "wifi.controller.tx_levels"

    const-wide v1, 0x2010000000aL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 999
    const-string/jumbo v0, "wifi.controller.voltage"

    const-wide v1, 0x1010000000bL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1003
    const-string v0, "bluetooth.controller.idle"

    const-wide v1, 0x1010000000cL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1007
    const-string v0, "bluetooth.controller.rx"

    const-wide v1, 0x1010000000dL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1011
    const-string v0, "bluetooth.controller.tx"

    const-wide v1, 0x1010000000eL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1015
    const-string v0, "bluetooth.controller.voltage"

    const-wide v1, 0x1010000000fL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1019
    const-string/jumbo v0, "modem.controller.sleep"

    const-wide v1, 0x10100000010L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1023
    const-string/jumbo v0, "modem.controller.idle"

    const-wide v1, 0x10100000011L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1027
    const-string/jumbo v0, "modem.controller.rx"

    const-wide v1, 0x10100000012L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1031
    const-string/jumbo v0, "modem.controller.tx"

    const-wide v1, 0x20100000013L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1035
    const-string/jumbo v0, "modem.controller.voltage"

    const-wide v1, 0x10100000014L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1039
    const-string/jumbo v0, "gps.on"

    const-wide v1, 0x10100000015L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1042
    const-string/jumbo v0, "gps.signalqualitybased"

    const-wide v1, 0x20100000016L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1046
    const-string/jumbo v0, "gps.voltage"

    const-wide v1, 0x10100000017L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1050
    const-string v0, "bluetooth.on"

    const-wide v1, 0x10100000018L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1053
    const-string v0, "bluetooth.active"

    const-wide v1, 0x10100000019L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1057
    const-string v0, "bluetooth.at"

    const-wide v1, 0x1010000001aL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1061
    const-string v0, "ambient.on"

    const-wide v1, 0x1010000001bL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1064
    const-string/jumbo v0, "screen.on"

    const-wide v1, 0x1010000001cL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1067
    const-string/jumbo v0, "radio.on"

    const-wide v1, 0x1010000001dL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1070
    const-string/jumbo v0, "radio.scanning"

    const-wide v1, 0x1010000001eL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1073
    const-string/jumbo v0, "radio.active"

    const-wide v1, 0x1010000001fL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1076
    const-string/jumbo v0, "screen.full"

    const-wide v1, 0x10100000020L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1079
    const-string v0, "audio"

    const-wide v1, 0x10100000021L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1082
    const-string/jumbo v0, "video"

    const-wide v1, 0x10100000022L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1085
    const-string v0, "camera.flashlight"

    const-wide v1, 0x10100000023L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1088
    const-string/jumbo v0, "memory.bandwidths"

    const-wide v1, 0x10100000024L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1091
    const-string v0, "camera.avg"

    const-wide v1, 0x10100000025L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1094
    const-string/jumbo v0, "wifi.batchedscan"

    const-wide v1, 0x10100000026L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1098
    const-string v0, "battery.capacity"

    const-wide v1, 0x10100000027L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 1100
    return-void
.end method

.method public forceInitForTesting(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlId"    # I

    .line 352
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 354
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 355
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v1}, Lcom/android/internal/power/ModemPowerProfile;->clear()V

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/PowerProfile;->initLocked(Landroid/content/Context;I)V

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getAverageBatteryDrainMa(J)D
    .registers 5
    .param p1, "key"    # J

    .line 859
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAverageBatteryDrainOrDefaultMa(JD)D
    .registers 11
    .param p1, "key"    # J
    .param p3, "defaultValue"    # D

    .line 836
    const-wide v0, 0xf00000000L

    and-long/2addr v0, p1

    .line 837
    .local v0, "subsystemType":J
    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    .line 840
    .local v2, "subsystemFields":I
    const-wide v3, 0x100000000L

    cmp-long v3, v0, v3

    if-nez v3, :cond_1a

    .line 841
    sget-object v3, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v3, v2}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainMa(I)D

    move-result-wide v3

    .local v3, "value":D
    goto :goto_1c

    .line 843
    .end local v3    # "value":D
    :cond_1a
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 846
    .restart local v3    # "value":D
    :goto_1c
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_23

    return-wide p3

    .line 847
    :cond_23
    return-wide v3
.end method

.method public getAveragePower(Ljava/lang/String;)D
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 818
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->isIgnoreType(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    .line 819
    return-wide v1

    .line 822
    :cond_9
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAveragePower(Ljava/lang/String;I)D
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 873
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->isIgnoreType(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    .line 874
    return-wide v1

    .line 877
    :cond_9
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 878
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 879
    :cond_1c
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 880
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 881
    .local v0, "values":[Ljava/lang/Double;
    array-length v3, v0

    if-le v3, p2, :cond_36

    if-ltz p2, :cond_36

    .line 882
    aget-object v1, v0, p2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 883
    :cond_36
    if-ltz p2, :cond_46

    array-length v3, v0

    if-nez v3, :cond_3c

    goto :goto_46

    .line 886
    :cond_3c
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 884
    :cond_46
    :goto_46
    return-wide v1

    .line 889
    .end local v0    # "values":[Ljava/lang/Double;
    :cond_47
    return-wide v1
.end method

.method public getAveragePowerForCpuCluster(I)D
    .registers 4
    .param p1, "cluster"    # I

    .line 617
    if-ltz p1, :cond_10

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-ge p1, v1, :cond_10

    .line 618
    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->clusterPowerKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 620
    :cond_10
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAveragePowerForCpuCore(II)D
    .registers 5
    .param p1, "cluster"    # I
    .param p2, "step"    # I

    .line 624
    if-ltz p1, :cond_10

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-ge p1, v1, :cond_10

    .line 625
    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0

    .line 627
    :cond_10
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAveragePowerForOrdinal(Ljava/lang/String;I)D
    .registers 5
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .line 916
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAveragePowerForOrdinal(Ljava/lang/String;ID)D
    .registers 8
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "ordinal"    # I
    .param p3, "defaultValue"    # D

    .line 904
    invoke-static {p1, p2}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    return-wide v1
.end method

.method public getAveragePowerOrDefault(Ljava/lang/String;D)D
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 790
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 791
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 792
    :cond_13
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 793
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 795
    :cond_29
    return-wide p2
.end method

.method public getBatteryCapacity()D
    .registers 3

    .line 927
    const-string v0, "battery.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryTypicalCapacity()D
    .registers 3

    .line 932
    const-string/jumbo v0, "jp"

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 933
    const-string/jumbo v0, "ro.product.vendor.device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "beyond"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 934
    const-wide/16 v0, 0x0

    return-wide v0

    .line 937
    :cond_21
    const-string v0, "battery.typical.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCpuPowerBracketCount()I
    .registers 2

    .line 634
    iget v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    return v0
.end method

.method public getCpuPowerBracketDescription(I)Ljava/lang/String;
    .registers 10
    .param p1, "powerBracket"    # I

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "cluster":I
    :goto_6
    iget-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v3, v2

    if-ge v1, v3, :cond_76

    .line 643
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerBrackets:[I

    .line 644
    .local v2, "brackets":[I
    const/4 v3, 0x0

    .local v3, "step":I
    :goto_10
    array-length v4, v2

    if-ge v3, v4, :cond_73

    .line 645
    aget v4, v2, v3

    if-ne v4, p1, :cond_70

    .line 646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_22

    .line 647
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :cond_22
    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_31

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    :cond_31
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Double;

    .line 653
    .local v4, "freqs":[Ljava/lang/Double;
    if-eqz v4, :cond_4f

    array-length v5, v4

    if-ge v3, v5, :cond_4f

    .line 655
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    :cond_4f
    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 659
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 658
    const-string v7, "%.1f"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    .end local v4    # "freqs":[Ljava/lang/Double;
    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 642
    .end local v2    # "brackets":[I
    .end local v3    # "step":I
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 664
    .end local v1    # "cluster":I
    :cond_76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNumCoresInCpuCluster(I)I
    .registers 4
    .param p1, "cluster"    # I

    .line 599
    if-ltz p1, :cond_d

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_d

    .line 602
    :cond_8
    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    return v0

    .line 600
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public getNumCpuClusters()I
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    return v0
.end method

.method public getNumDisplays()I
    .registers 2

    .line 730
    iget v0, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    return v0
.end method

.method public getNumElements(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 773
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 774
    const/4 v0, 0x1

    return v0

    .line 775
    :cond_a
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 776
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v0, v0

    return v0

    .line 778
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public getNumSpeedStepsInCpuCluster(I)I
    .registers 4
    .param p1, "cluster"    # I

    .line 607
    if-ltz p1, :cond_24

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_24

    .line 610
    :cond_8
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 611
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v0, v0

    return v0

    .line 613
    :cond_22
    const/4 v0, 0x1

    return v0

    .line 608
    :cond_24
    :goto_24
    const/4 v0, 0x0

    return v0
.end method

.method public getPowerBracketForCpuCore(II)I
    .registers 5
    .param p1, "cluster"    # I
    .param p2, "step"    # I

    .line 671
    if-ltz p1, :cond_19

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-ge p1, v1, :cond_19

    if-ltz p2, :cond_19

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerBrackets:[I

    array-length v0, v0

    if-ge p2, v0, :cond_19

    .line 675
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerBrackets:[I

    aget v0, v0, p2

    return v0

    .line 677
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public initCpuPowerBrackets(I)V
    .registers 24
    .param p1, "defaultCpuPowerBracketNumber"    # I

    .line 494
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 495
    .local v2, "anyBracketsSpecified":Z
    const/4 v3, 0x1

    .line 496
    .local v3, "allBracketsSpecified":Z
    const/4 v4, 0x0

    .local v4, "cluster":I
    :goto_7
    iget-object v5, v0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v5, v5

    const-string v6, "cpu.power_brackets.cluster"

    if-ge v4, v5, :cond_39

    .line 497
    invoke-virtual {v0, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v5

    .line 498
    .local v5, "steps":I
    iget-object v7, v0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v7, v7, v4

    new-array v8, v5, [I

    iput-object v8, v7, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerBrackets:[I

    .line 499
    sget-object v7, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_35

    .line 500
    const/4 v2, 0x1

    goto :goto_36

    .line 502
    :cond_35
    const/4 v3, 0x0

    .line 496
    .end local v5    # "steps":I
    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 506
    .end local v4    # "cluster":I
    :cond_39
    if-eqz v2, :cond_46

    if-eqz v3, :cond_3e

    goto :goto_46

    .line 507
    :cond_3e
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Power brackets should be specified for all clusters or no clusters"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 511
    :cond_46
    :goto_46
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    .line 512
    if-eqz v3, :cond_bc

    .line 513
    const/4 v4, 0x0

    .restart local v4    # "cluster":I
    :goto_4c
    iget-object v5, v0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v5, v5

    if-ge v4, v5, :cond_b0

    .line 514
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Double;

    .line 515
    .local v5, "data":[Ljava/lang/Double;
    array-length v7, v5

    iget-object v8, v0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerBrackets:[I

    array-length v8, v8

    if-ne v7, v8, :cond_97

    .line 520
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_75
    array-length v8, v5

    if-ge v7, v8, :cond_94

    .line 521
    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    .line 522
    .local v8, "bracket":I
    iget-object v9, v0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerBrackets:[I

    aput v8, v9, v7

    .line 523
    iget v9, v0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    if-le v8, v9, :cond_91

    .line 524
    iput v8, v0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    .line 520
    .end local v8    # "bracket":I
    :cond_91
    add-int/lit8 v7, v7, 0x1

    goto :goto_75

    .line 513
    .end local v5    # "data":[Ljava/lang/Double;
    .end local v7    # "i":I
    :cond_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 516
    .restart local v5    # "data":[Ljava/lang/Double;
    :cond_97
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong number of items in cpu.power_brackets.cluster"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 528
    .end local v4    # "cluster":I
    .end local v5    # "data":[Ljava/lang/Double;
    :cond_b0
    iget v4, v0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    move/from16 v21, v2

    move/from16 v20, v3

    goto/16 :goto_157

    .line 530
    :cond_bc
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 531
    .local v4, "minPower":D
    const-wide/16 v6, 0x1

    .line 532
    .local v6, "maxPower":D
    const/4 v8, 0x0

    .line 533
    .local v8, "stateCount":I
    const/4 v9, 0x0

    .local v9, "cluster":I
    :goto_c5
    iget-object v10, v0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v10, v10

    if-ge v9, v10, :cond_e6

    .line 534
    invoke-virtual {v0, v9}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v10

    .line 535
    .local v10, "steps":I
    const/4 v11, 0x0

    .local v11, "step":I
    :goto_cf
    if-ge v11, v10, :cond_e2

    .line 536
    invoke-virtual {v0, v9, v11}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v12

    .line 537
    .local v12, "power":D
    cmpg-double v14, v12, v4

    if-gez v14, :cond_da

    .line 538
    move-wide v4, v12

    .line 540
    :cond_da
    cmpl-double v14, v12, v6

    if-lez v14, :cond_df

    .line 541
    move-wide v6, v12

    .line 535
    .end local v12    # "power":D
    :cond_df
    add-int/lit8 v11, v11, 0x1

    goto :goto_cf

    .line 544
    .end local v11    # "step":I
    :cond_e2
    add-int/2addr v8, v10

    .line 533
    .end local v10    # "steps":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_c5

    .line 547
    .end local v9    # "cluster":I
    :cond_e6
    if-gt v8, v1, :cond_10e

    .line 548
    iput v8, v0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    .line 549
    const/4 v9, 0x0

    .line 550
    .local v9, "bracket":I
    const/4 v10, 0x0

    .local v10, "cluster":I
    :goto_ec
    iget-object v11, v0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v11, v11

    if-ge v10, v11, :cond_109

    .line 551
    invoke-virtual {v0, v10}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v11

    .line 552
    .local v11, "steps":I
    const/4 v12, 0x0

    .local v12, "step":I
    :goto_f6
    if-ge v12, v11, :cond_106

    .line 553
    iget-object v13, v0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v13, v13, v10

    iget-object v13, v13, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerBrackets:[I

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "bracket":I
    .local v14, "bracket":I
    aput v9, v13, v12

    .line 552
    add-int/lit8 v12, v12, 0x1

    move v9, v14

    goto :goto_f6

    .line 550
    .end local v11    # "steps":I
    .end local v12    # "step":I
    .end local v14    # "bracket":I
    .restart local v9    # "bracket":I
    :cond_106
    add-int/lit8 v10, v10, 0x1

    goto :goto_ec

    .line 556
    .end local v9    # "bracket":I
    .end local v10    # "cluster":I
    :cond_109
    move/from16 v21, v2

    move/from16 v20, v3

    goto :goto_157

    .line 557
    :cond_10e
    iput v1, v0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    .line 558
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    .line 559
    .local v9, "minLogPower":D
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    sub-double/2addr v11, v9

    int-to-double v13, v1

    div-double/2addr v11, v13

    .line 562
    .local v11, "logBracket":D
    const/4 v13, 0x0

    .local v13, "cluster":I
    :goto_11c
    iget-object v14, v0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v14, v14

    if-ge v13, v14, :cond_153

    .line 563
    invoke-virtual {v0, v13}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v14

    .line 564
    .local v14, "steps":I
    const/4 v15, 0x0

    .local v15, "step":I
    :goto_126
    if-ge v15, v14, :cond_14c

    .line 565
    invoke-virtual {v0, v13, v15}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v16

    .line 566
    .local v16, "power":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    sub-double v18, v18, v9

    move/from16 v21, v2

    move/from16 v20, v3

    .end local v2    # "anyBracketsSpecified":Z
    .end local v3    # "allBracketsSpecified":Z
    .local v20, "allBracketsSpecified":Z
    .local v21, "anyBracketsSpecified":Z
    div-double v2, v18, v11

    double-to-int v2, v2

    .line 567
    .local v2, "bracket":I
    if-lt v2, v1, :cond_13d

    .line 568
    add-int/lit8 v2, v1, -0x1

    .line 570
    :cond_13d
    iget-object v3, v0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v3, v3, v13

    iget-object v3, v3, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerBrackets:[I

    aput v2, v3, v15

    .line 564
    .end local v2    # "bracket":I
    .end local v16    # "power":D
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v20

    move/from16 v2, v21

    goto :goto_126

    .end local v20    # "allBracketsSpecified":Z
    .end local v21    # "anyBracketsSpecified":Z
    .local v2, "anyBracketsSpecified":Z
    .restart local v3    # "allBracketsSpecified":Z
    :cond_14c
    move/from16 v21, v2

    move/from16 v20, v3

    .line 562
    .end local v2    # "anyBracketsSpecified":Z
    .end local v3    # "allBracketsSpecified":Z
    .end local v14    # "steps":I
    .end local v15    # "step":I
    .restart local v20    # "allBracketsSpecified":Z
    .restart local v21    # "anyBracketsSpecified":Z
    add-int/lit8 v13, v13, 0x1

    goto :goto_11c

    .end local v20    # "allBracketsSpecified":Z
    .end local v21    # "anyBracketsSpecified":Z
    .restart local v2    # "anyBracketsSpecified":Z
    .restart local v3    # "allBracketsSpecified":Z
    :cond_153
    move/from16 v21, v2

    move/from16 v20, v3

    .line 575
    .end local v2    # "anyBracketsSpecified":Z
    .end local v3    # "allBracketsSpecified":Z
    .end local v4    # "minPower":D
    .end local v6    # "maxPower":D
    .end local v8    # "stateCount":I
    .end local v9    # "minLogPower":D
    .end local v11    # "logBracket":D
    .end local v13    # "cluster":I
    .restart local v20    # "allBracketsSpecified":Z
    .restart local v21    # "anyBracketsSpecified":Z
    :goto_157
    return-void
.end method
