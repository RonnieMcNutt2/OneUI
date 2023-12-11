.class public Lcom/samsung/android/os/SemTemperatureManager;
.super Ljava/lang/Object;
.source "SemTemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    }
.end annotation


# static fields
.field public static final HMT_LEVEL_DANGEROUS:I = 0x2

.field public static final HMT_LEVEL_NORMAL:I = 0x0

.field public static final HMT_LEVEL_WARNING:I = 0x1

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final SDHMS_VALUE_HMT_LEVEL:I = 0x2

.field private static final SDHMS_VALUE_SIOP_LEVEL:I = 0x1

.field public static final UNSUPPORTED:I = -0x3e7

.field private static mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

.field private static mThermistorList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/os/SemTemperatureManager$Thermistor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfputmService(Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V
    .registers 1

    sput-object p0, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .registers 1

    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/samsung/android/os/SemTemperatureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemTemperatureManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method private static getAllTemperatures()[I
    .registers 5

    .line 192
    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 193
    .local v1, "results":[I
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    .line 195
    .local v2, "svc":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v2, :cond_13

    .line 197
    :try_start_a
    invoke-interface {v2, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getAllTemperatures(I)[I

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    .line 198
    .end local v1    # "results":[I
    .local v0, "results":[I
    return-object v0

    .line 199
    .end local v0    # "results":[I
    .restart local v1    # "results":[I
    :catch_f
    move-exception v3

    .line 200
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v0, :cond_1d

    .line 204
    const/16 v4, -0x3e7

    aput v4, v1, v3

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 206
    .end local v3    # "i":I
    :cond_1d
    return-object v1
.end method

.method public static getHeadMountTheaterLevel(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 240
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 242
    .local v0, "svc":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_10

    .line 244
    const/4 v1, 0x2

    :try_start_7
    invoke-interface {v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSsrmStatus(I)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    .line 245
    :catch_c
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_10
    const/16 v1, -0x3e7

    return v1
.end method

.method public static getOverheatingProtectionLevel(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 219
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 221
    .local v0, "svc":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_10

    .line 223
    const/4 v1, 0x1

    :try_start_7
    invoke-interface {v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSsrmStatus(I)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    .line 224
    :catch_c
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_10
    const/16 v1, -0x3e7

    return v1
.end method

.method private static declared-synchronized getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .registers 4

    const-class v0, Lcom/samsung/android/os/SemTemperatureManager;

    monitor-enter v0

    .line 159
    :try_start_3
    sget-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v1, :cond_26

    .line 160
    const-string/jumbo v1, "sdhms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 161
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_26

    .line 162
    invoke-static {v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2a

    .line 163
    if-eqz v2, :cond_26

    .line 165
    :try_start_18
    new-instance v2, Lcom/samsung/android/os/SemTemperatureManager$1;

    invoke-direct {v2}, Lcom/samsung/android/os/SemTemperatureManager$1;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22
    .catchall {:try_start_18 .. :try_end_21} :catchall_2a

    .line 173
    goto :goto_26

    .line 171
    :catch_22
    move-exception v2

    .line 172
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_23
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 177
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_26
    :goto_26
    sget-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2a

    monitor-exit v0

    return-object v1

    .line 158
    :catchall_2a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    .registers 2
    .param p0, "thermistorType"    # I

    .line 281
    sget-object v0, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 282
    :cond_a
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->initThermistorList()V

    .line 285
    :cond_d
    sget-object v0, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    return-object v0
.end method

.method public static getThermistorList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/os/SemTemperatureManager$Thermistor;",
            ">;"
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 259
    :cond_a
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->initThermistorList()V

    .line 262
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/os/SemTemperatureManager$Thermistor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    sget-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 264
    sget-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_36

    .line 265
    sget-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 269
    .end local v1    # "i":I
    :cond_39
    return-object v0
.end method

.method private static declared-synchronized initThermistorList()V
    .registers 6

    const-class v0, Lcom/samsung/android/os/SemTemperatureManager;

    monitor-enter v0

    .line 181
    :try_start_3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    .line 182
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->getAllTemperatures()[I

    move-result-object v1

    .line 183
    .local v1, "results":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    const/16 v3, 0xc

    if-ge v2, v3, :cond_27

    .line 184
    new-instance v3, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;-><init>(ILcom/samsung/android/os/SemTemperatureManager$Thermistor-IA;)V

    .line 185
    .local v3, "t":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    aget v4, v1, v2

    const/16 v5, -0x3e7

    if-eq v4, v5, :cond_24

    .line 186
    sget-object v4, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_29

    .line 183
    .end local v3    # "t":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 189
    .end local v2    # "i":I
    :cond_27
    monitor-exit v0

    return-void

    .line 180
    .end local v1    # "results":[I
    :catchall_29
    move-exception v1

    monitor-exit v0

    throw v1
.end method
