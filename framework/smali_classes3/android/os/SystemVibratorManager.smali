.class public Landroid/os/SystemVibratorManager;
.super Landroid/os/VibratorManager;
.source "SystemVibratorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemVibratorManager$SingleVibrator;,
        Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VibratorManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Vibrator$OnVibratorStateChangedListener;",
            "Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IVibratorManagerService;

.field private final mToken:Landroid/os/Binder;

.field private mVibratorIds:[I

.field private final mVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Landroid/os/SystemVibratorManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/os/SystemVibratorManager;->mListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Landroid/os/SystemVibratorManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;
    .registers 1

    iget-object p0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1}, Landroid/os/VibratorManager;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mToken:Landroid/os/Binder;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mVibrators:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mListeners:Landroid/util/ArrayMap;

    .line 58
    iput-object p1, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    .line 59
    nop

    .line 60
    const-string/jumbo v0, "vibrator_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/os/IVibratorManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    .line 61
    return-void
.end method

.method private cancelVibration(I)V
    .registers 5
    .param p1, "usageFilter"    # I

    .line 158
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "VibratorManager"

    if-nez v0, :cond_c

    .line 159
    const-string v0, "Failed to cancel vibration; no vibrator manager service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 163
    :cond_c
    :try_start_c
    iget-object v2, p0, Landroid/os/SystemVibratorManager;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v2}, Landroid/os/IVibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 166
    goto :goto_18

    .line 164
    :catch_12
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 149
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/os/SystemVibratorManager;->cancelVibration(I)V

    .line 150
    return-void
.end method

.method public cancel(I)V
    .registers 2
    .param p1, "usageFilter"    # I

    .line 154
    invoke-direct {p0, p1}, Landroid/os/SystemVibratorManager;->cancelVibration(I)V

    .line 155
    return-void
.end method

.method public getDefaultVibrator()Landroid/os/Vibrator;
    .registers 3

    .line 114
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    return-object v0
.end method

.method public getVibrator(I)Landroid/os/Vibrator;
    .registers 7
    .param p1, "vibratorId"    # I

    .line 86
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 88
    .local v1, "vibrator":Landroid/os/Vibrator;
    if-eqz v1, :cond_f

    .line 89
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_3b

    return-object v1

    .line 91
    :cond_f
    const/4 v2, 0x0

    .line 93
    .local v2, "info":Landroid/os/VibratorInfo;
    :try_start_10
    iget-object v3, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    if-nez v3, :cond_1c

    .line 94
    const-string v3, "VibratorManager"

    const-string v4, "Failed to retrieve vibrator; no vibrator manager service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 96
    :cond_1c
    invoke-interface {v3, p1}, Landroid/os/IVibratorManagerService;->getVibratorInfo(I)Landroid/os/VibratorInfo;

    move-result-object v3
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_20} :catch_22
    .catchall {:try_start_10 .. :try_end_20} :catchall_3b

    move-object v2, v3

    .line 100
    :goto_21
    goto :goto_26

    .line 98
    :catch_22
    move-exception v3

    .line 99
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_23
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 101
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_26
    if-eqz v2, :cond_34

    .line 102
    new-instance v3, Landroid/os/SystemVibratorManager$SingleVibrator;

    invoke-direct {v3, p0, v2}, Landroid/os/SystemVibratorManager$SingleVibrator;-><init>(Landroid/os/SystemVibratorManager;Landroid/os/VibratorInfo;)V

    move-object v1, v3

    .line 103
    iget-object v3, p0, Landroid/os/SystemVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_39

    .line 105
    :cond_34
    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v3

    move-object v1, v3

    .line 107
    :goto_39
    monitor-exit v0

    return-object v1

    .line 108
    .end local v1    # "vibrator":Landroid/os/Vibrator;
    .end local v2    # "info":Landroid/os/VibratorInfo;
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public getVibratorIds()[I
    .registers 4

    .line 66
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mVibratorIds:[I

    if-eqz v1, :cond_9

    .line 68
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_26

    return-object v1

    .line 71
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    if-nez v1, :cond_15

    .line 72
    const-string v1, "VibratorManager"

    const-string v2, "Failed to retrieve vibrator ids; no vibrator manager service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    goto :goto_21

    .line 74
    :cond_15
    invoke-interface {v1}, Landroid/os/IVibratorManagerService;->getVibratorIds()[I

    move-result-object v1

    iput-object v1, p0, Landroid/os/SystemVibratorManager;->mVibratorIds:[I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1b} :catch_1d
    .catchall {:try_start_9 .. :try_end_1b} :catchall_26

    :try_start_1b
    monitor-exit v0

    return-object v1

    .line 76
    :catch_1d
    move-exception v1

    .line 77
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 79
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_21
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v0

    return-object v1

    .line 80
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw v1
.end method

.method public semGetNumberOfSupportedPatterns()I
    .registers 5

    .line 332
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const/4 v1, 0x0

    const-string v2, "Failed to get semGetNumberOfSupportedPatterns"

    const-string v3, "VibratorManager"

    if-nez v0, :cond_d

    .line 333
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v1

    .line 337
    :cond_d
    :try_start_d
    invoke-interface {v0}, Landroid/os/IVibratorManagerService;->semGetNumberOfSupportedPatterns()I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 338
    :catch_12
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public semGetSupportedVibrationType()I
    .registers 5

    .line 346
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const/4 v1, 0x0

    const-string v2, "VibratorManager"

    if-nez v0, :cond_d

    .line 347
    const-string v0, "Failed to get semGetSupportedVibrationType"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return v1

    .line 351
    :cond_d
    :try_start_d
    invoke-interface {v0}, Landroid/os/IVibratorManagerService;->getSupportedVibratorGroup()I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 352
    :catch_12
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to get semGetNumberOfSupportedPatterns"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .registers 14
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/CombinedVibration;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 120
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const/4 v6, 0x0

    const-string v7, "VibratorManager"

    if-nez v0, :cond_d

    .line 121
    const-string v0, "Failed to set always-on effect; no vibrator manager service."

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v6

    .line 125
    :cond_d
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_12
    invoke-interface/range {v0 .. v5}, Landroid/os/IVibratorManagerService;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    return v0

    .line 126
    :catch_17
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Failed to set always-on effect."

    invoke-static {v7, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    return v6
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/CombinedVibration;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 135
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const-string v8, "VibratorManager"

    if-nez v0, :cond_c

    .line 136
    const-string v0, "Failed to vibrate; no vibrator manager service."

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 140
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssociatedDisplayId()I

    move-result v2

    iget-object v7, p0, Landroid/os/SystemVibratorManager;->mToken:Landroid/os/Binder;

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-interface/range {v0 .. v7}, Landroid/os/IVibratorManagerService;->vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_1d

    .line 144
    goto :goto_23

    .line 142
    :catch_1d
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Failed to vibrate."

    invoke-static {v8, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method
