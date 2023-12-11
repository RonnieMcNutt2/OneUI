.class public Lcom/samsung/android/aod/AODManager;
.super Ljava/lang/Object;
.source "AODManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;,
        Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;,
        Lcom/samsung/android/aod/AODManager$AODDozeCallback;,
        Lcom/samsung/android/aod/AODManager$AODDozeLock;,
        Lcom/samsung/android/aod/AODManager$AODChangeListener;
    }
.end annotation


# static fields
.field public static final AOD_MANAGER_VERSION:I = 0x4

.field public static final AOD_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.aodservice"

.field public static final INTERVAL_100:I = 0x0

.field public static final INTERVAL_1000:I = 0x3

.field public static final INTERVAL_200:I = 0x1

.field public static final INTERVAL_500:I = 0x2

.field public static final INTERVAL_DEBUG:I = 0x3e7

.field public static final ROTATE_0:I = 0x0

.field public static final ROTATE_180:I = 0x2

.field public static final ROTATE_270:I = 0x3

.field public static final ROTATE_90:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AODManager"

.field public static final TYPE_ACTIVE_ANALOG_IMAGE:I = 0x2

.field public static final TYPE_ACTIVE_DIGITAL_IMAGE:I = 0x3

.field public static final TYPE_ACTIVE_ICON_IMAGE:I = 0x1

.field private static sInstance:Lcom/samsung/android/aod/AODManager;


# instance fields
.field private mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mAODCallbackLock:Ljava/lang/Object;

.field private mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

.field mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/aod/IAODManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmService(Lcom/samsung/android/aod/AODManager;)Lcom/samsung/android/aod/IAODManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/samsung/android/aod/AODManager;->sInstance:Lcom/samsung/android/aod/AODManager;

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Lcom/samsung/android/aod/AODManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/aod/AODManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/aod/AODManager;->sInstance:Lcom/samsung/android/aod/AODManager;

    :goto_c
    return-object v0
.end method

.method private getService()Lcom/samsung/android/aod/IAODManager;
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    if-nez v0, :cond_10

    .line 82
    const-string v0, "AODManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 83
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/aod/IAODManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    .line 85
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    if-nez v0, :cond_1c

    .line 86
    const-string v0, "AODManager"

    const-string/jumbo v1, "getService fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    return-object v0
.end method


# virtual methods
.method public addLogText(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 176
    return-void

    .line 179
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/aod/IAODManager;->addLogText(Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 182
    goto :goto_2a

    .line 180
    :catch_d
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public getActiveImageInfo()Ljava/lang/String;
    .registers 5

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 258
    return-object v1

    .line 261
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0}, Lcom/samsung/android/aod/IAODManager;->getActiveImageInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 262
    :catch_f
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AODManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-object v1
.end method

.method public getAodActiveArea(Z)Ljava/lang/String;
    .registers 6
    .param p1, "isSubDisplay"    # Z

    .line 311
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const-string v1, "NG"

    if-nez v0, :cond_9

    .line 312
    return-object v1

    .line 315
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/aod/IAODManager;->getAodActiveArea(Z)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 316
    :catch_10
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AODManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-object v1
.end method

.method public isAODState()Z
    .registers 5

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 98
    return v1

    .line 101
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0}, Lcom/samsung/android/aod/IAODManager;->isAODState()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 102
    :catch_f
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AODManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v1
.end method

.method public isSViewCoverBrightnessHigh()Z
    .registers 5

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 159
    return v1

    .line 162
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0}, Lcom/samsung/android/aod/IAODManager;->isSViewCoverBrightnessHigh()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 163
    :catch_f
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AODManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v1
.end method

.method public readyToScreenTurningOn()V
    .registers 4

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 329
    return-void

    .line 332
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0}, Lcom/samsung/android/aod/IAODManager;->readyToScreenTurningOn()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 335
    goto :goto_2a

    .line 333
    :catch_d
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public registerAODDozeCallback(Lcom/samsung/android/aod/AODManager$AODDozeCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/samsung/android/aod/AODManager$AODDozeCallback;

    .line 441
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 442
    return-void

    .line 444
    :cond_7
    const-string v0, "AODManager"

    if-nez p1, :cond_12

    .line 445
    const-string/jumbo v1, "registerAODDozeCallback: callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void

    .line 448
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    if-nez v1, :cond_3f

    .line 449
    new-instance v1, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;-><init>(Lcom/samsung/android/aod/AODManager;Lcom/samsung/android/aod/AODManager$AODDozeCallback;)V

    iput-object v1, p0, Lcom/samsung/android/aod/AODManager;->mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    .line 451
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/aod/IAODManager;->registerAODDozeCallback(Landroid/os/IBinder;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_3e

    .line 452
    :catch_23
    move-exception v1

    .line 453
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3e
    goto :goto_45

    .line 456
    :cond_3f
    const-string/jumbo v1, "registerAODDozeCallback: listener already registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_45
    return-void
.end method

.method public registerAODListener(Lcom/samsung/android/aod/AODListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/samsung/android/aod/AODListener;

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 345
    return-void

    .line 348
    :cond_7
    if-nez p1, :cond_12

    .line 349
    const-string v0, "AODManager"

    const-string/jumbo v1, "registerAODListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 352
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "delegate":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;>;"
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 355
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    .line 356
    .local v3, "temp":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->getListener()Lcom/samsung/android/aod/AODListener;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-virtual {v3}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->getListener()Lcom/samsung/android/aod/AODListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 357
    move-object v1, v3

    .line 358
    goto :goto_3b

    .line 360
    .end local v3    # "temp":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    :cond_3a
    goto :goto_1c

    .line 361
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;>;"
    :cond_3b
    :goto_3b
    if-nez v1, :cond_6e

    .line 362
    new-instance v2, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;-><init>(Lcom/samsung/android/aod/AODManager;Lcom/samsung/android/aod/AODListener;)V

    move-object v1, v2

    .line 363
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_16 .. :try_end_48} :catchall_78

    .line 365
    :try_start_48
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/aod/IAODManager;->registerAODListener(Landroid/os/IBinder;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4d} :catch_4e
    .catchall {:try_start_48 .. :try_end_4d} :catchall_78

    .line 368
    goto :goto_6c

    .line 366
    :catch_4e
    move-exception v2

    .line 367
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4f
    const-string v3, "AODManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AODManagerService RuntimeException?\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    nop

    .line 373
    .end local v1    # "delegate":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_6c
    monitor-exit v0

    .line 374
    return-void

    .line 370
    .restart local v1    # "delegate":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    :cond_6e
    const-string v2, "AODManager"

    const-string/jumbo v3, "registerAODListener : listener already registered"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    monitor-exit v0

    return-void

    .line 373
    .end local v1    # "delegate":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_4f .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public requestAODToast(Lcom/samsung/android/aod/AODToast;)V
    .registers 5
    .param p1, "toast"    # Lcom/samsung/android/aod/AODToast;

    .line 489
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 490
    return-void

    .line 493
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/aod/IAODManager;->requestAODToast(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    .line 496
    goto :goto_30

    .line 494
    :catch_13
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method public setLiveClockCommand(III[I)I
    .registers 9
    .param p1, "nodeType"    # I
    .param p2, "cmd"    # I
    .param p3, "dataSize"    # I
    .param p4, "dataArray"    # [I

    .line 292
    const/4 v0, -0x1

    .line 293
    .local v0, "result":I
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 294
    return v0

    .line 297
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/aod/IAODManager;->setLiveClockCommand(III[I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v1

    .line 298
    :catch_f
    move-exception v1

    .line 299
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AODManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public setLiveClockImage(II[BLjava/lang/String;)I
    .registers 9
    .param p1, "nodeType"    # I
    .param p2, "clockType"    # I
    .param p3, "img_buf"    # [B
    .param p4, "imageInfo"    # Ljava/lang/String;

    .line 274
    const/4 v0, -0x1

    .line 275
    .local v0, "result":I
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 276
    return v0

    .line 279
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/aod/IAODManager;->setLiveClockImage(II[BLjava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v1

    .line 280
    :catch_f
    move-exception v1

    .line 281
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AODManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public setLiveClockInfo(IJJJJJJJJ)I
    .registers 39
    .param p1, "type"    # I
    .param p2, "en"    # J
    .param p4, "interval"    # J
    .param p6, "hour"    # J
    .param p8, "min"    # J
    .param p10, "second"    # J
    .param p12, "ms"    # J
    .param p14, "pos_x"    # J
    .param p16, "pos_y"    # J

    .line 222
    const/4 v1, -0x1

    .line 223
    .local v1, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 224
    return v1

    .line 227
    :cond_8
    move-object/from16 v2, p0

    :try_start_a
    iget-object v3, v2, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    invoke-interface/range {v3 .. v20}, Lcom/samsung/android/aod/IAODManager;->setLiveClockInfo(IJJJJJJJJ)I

    move-result v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_22} :catch_23

    return v0

    .line 228
    :catch_23
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AODManagerService RuntimeException?\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AODManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return v1
.end method

.method public setLiveClockNeedle([B)V
    .registers 5
    .param p1, "img_buf"    # [B

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 242
    return-void

    .line 245
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/aod/IAODManager;->setLiveClockNeedle([B)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 248
    goto :goto_2a

    .line 246
    :catch_d
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public unregisterAODDozeCallback(Lcom/samsung/android/aod/AODManager$AODDozeCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/samsung/android/aod/AODManager$AODDozeCallback;

    .line 465
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 466
    return-void

    .line 468
    :cond_7
    const-string v0, "AODManager"

    if-nez p1, :cond_12

    .line 469
    const-string/jumbo v1, "unregisterAODDozeCallback: callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void

    .line 472
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    if-nez v1, :cond_1d

    .line 473
    const-string/jumbo v1, "unregisterAODDozeCallback: not registered yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 476
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/aod/IAODManager;->unregisterAODDozeCallback(Landroid/os/IBinder;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23

    .line 479
    goto :goto_3e

    .line 477
    :catch_23
    move-exception v1

    .line 478
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    .line 482
    :goto_41
    return-void
.end method

.method public unregisterAODListener(Lcom/samsung/android/aod/AODListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/samsung/android/aod/AODListener;

    .line 382
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 383
    return-void

    .line 386
    :cond_7
    if-nez p1, :cond_12

    .line 388
    const-string v0, "AODManager"

    const-string/jumbo v1, "unregisterAODListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 391
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "delegate":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;>;"
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    .line 395
    .local v3, "temp":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->getListener()Lcom/samsung/android/aod/AODListener;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-virtual {v3}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->getListener()Lcom/samsung/android/aod/AODListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 396
    move-object v1, v3

    .line 397
    goto :goto_3b

    .line 399
    .end local v3    # "temp":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    :cond_3a
    goto :goto_1c

    .line 400
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;>;"
    :cond_3b
    :goto_3b
    if-nez v1, :cond_47

    .line 401
    const-string v2, "AODManager"

    const-string/jumbo v3, "unregisterAODListener : cannot find the listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_16 .. :try_end_46} :catchall_71

    return-void

    .line 405
    :cond_47
    :try_start_47
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/aod/IAODManager;->unregisterAODListener(Landroid/os/IBinder;)V

    .line 406
    iget-object v2, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_51} :catch_52
    .catchall {:try_start_47 .. :try_end_51} :catchall_71

    .line 409
    goto :goto_6f

    .line 407
    :catch_52
    move-exception v2

    .line 408
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_53
    const-string v3, "AODManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AODManagerService RuntimeException?\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v1    # "delegate":Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_6f
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_53 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public updateAODTspRect(IIII)V
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 120
    return-void

    .line 123
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    const-string v6, "com.samsung.android.app.aodservice"

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/aod/IAODManager;->updateAODTspRect(IIIILjava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    .line 126
    goto :goto_30

    .line 124
    :catch_13
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method public updateAODTspRect(IIIILjava/lang/String;)V
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 141
    return-void

    .line 144
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/aod/IAODManager;->updateAODTspRect(IIIILjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    .line 147
    goto :goto_2f

    .line 145
    :catch_12
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method public writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "arg3"    # Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 198
    return-void

    .line 201
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/aod/IAODManager;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    .line 204
    goto :goto_2f

    .line 202
    :catch_12
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method
