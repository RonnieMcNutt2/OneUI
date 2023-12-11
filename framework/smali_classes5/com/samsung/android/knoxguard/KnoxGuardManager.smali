.class public Lcom/samsung/android/knoxguard/KnoxGuardManager;
.super Ljava/lang/Object;
.source "KnoxGuardManager.java"


# static fields
.field private static final KNOXGUARD_SERVICE:Ljava/lang/String; = "knoxguard_service"

.field private static TAG:Ljava/lang/String;

.field private static mKnoxGuardManager:Lcom/samsung/android/knoxguard/KnoxGuardManager;


# instance fields
.field private mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-string v0, "KnoxGuardManager"

    sput-object v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knoxguard/KnoxGuardManager;
    .registers 2

    const-class v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;

    monitor-enter v0

    .line 24
    :try_start_3
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mKnoxGuardManager:Lcom/samsung/android/knoxguard/KnoxGuardManager;

    if-nez v1, :cond_e

    .line 25
    new-instance v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/KnoxGuardManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mKnoxGuardManager:Lcom/samsung/android/knoxguard/KnoxGuardManager;

    .line 27
    :cond_e
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mKnoxGuardManager:Lcom/samsung/android/knoxguard/KnoxGuardManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 23
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    if-nez v0, :cond_11

    .line 33
    const-string/jumbo v0, "knoxguard_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    .line 35
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    return-object v0
.end method


# virtual methods
.method public addPackagesToClearCacheBlockList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 122
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 124
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->addPackagesToClearCacheBlockList(Ljava/util/List;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 125
    :catch_d
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToForceStopBlockList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 111
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 113
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->addPackagesToForceStopBlockList(Ljava/util/List;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 114
    :catch_d
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public allowFirmwareRecovery(Z)Z
    .registers 5
    .param p1, "allow"    # Z

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 80
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->allowFirmwareRecovery(Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 81
    :catch_d
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public allowOTAUpgrade(Z)Z
    .registers 5
    .param p1, "allow"    # Z

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 91
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->allowOTAUpgrade(Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 92
    :catch_d
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public allowSafeMode(Z)Z
    .registers 5
    .param p1, "allow"    # Z

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 102
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->allowSafeMode(Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 103
    :catch_d
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public bindToLockScreen()V
    .registers 4

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 274
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->bindToLockScreen()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 277
    goto :goto_14

    .line 275
    :catch_c
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public callKGsv()V
    .registers 4

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 44
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->callKGsv()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 47
    goto :goto_14

    .line 45
    :catch_c
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public generateHotpDHRequest()Ljava/lang/String;
    .registers 4

    .line 396
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 398
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->generateHotpDHRequest()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 399
    :catch_d
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientData()Ljava/lang/String;
    .registers 4

    .line 475
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 477
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getClientData()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 478
    :catch_d
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHotpChallenge()Ljava/lang/String;
    .registers 4

    .line 407
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 409
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getHotpChallenge()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 410
    :catch_d
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKGID()Ljava/lang/String;
    .registers 4

    .line 497
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 499
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getKGID()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 500
    :catch_d
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKGPolicy()Ljava/lang/String;
    .registers 4

    .line 373
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 375
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getKGPolicy()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 376
    :catch_d
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKGServiceInfo()Landroid/os/Bundle;
    .registers 4

    .line 617
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 619
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getKGServiceInfo()Landroid/os/Bundle;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 620
    :catch_d
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKGServiceVersion()I
    .registers 4

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 284
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getKGServiceVersion()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 285
    :catch_d
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 287
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public getLockAction()Ljava/lang/String;
    .registers 4

    .line 464
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 466
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getLockAction()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 467
    :catch_d
    move-exception v0

    .line 468
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "serverMsg"    # Ljava/lang/String;
    .param p2, "serverToken"    # Ljava/lang/String;

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_18

    .line 306
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 307
    :catch_f
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with Knox Guard service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    return-object v1

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    return-object v1
.end method

.method public getPBAUniqueNumber()Ljava/lang/String;
    .registers 5

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_18

    .line 228
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getPBAUniqueNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 229
    :catch_f
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with Knox Guard service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    return-object v1

    .line 234
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    return-object v1
.end method

.method public getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 552
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 554
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 555
    :catch_d
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object p2
.end method

.method public getTAError()I
    .registers 4

    .line 563
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 565
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getTAError()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 566
    :catch_d
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public getTAInfo(I)Ljava/lang/String;
    .registers 5
    .param p1, "infoFlag"    # I

    .line 574
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 576
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getTAInfo(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 577
    :catch_d
    move-exception v0

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTAState()I
    .registers 2

    .line 358
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getTAStateSetError(Z)I

    move-result v0

    return v0
.end method

.method public getTAStateSetError(Z)I
    .registers 5
    .param p1, "setError"    # Z

    .line 362
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 364
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getTAStateSetError(Z)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 365
    :catch_d
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/16 v0, -0x3e8

    return v0
.end method

.method public isSkipSupportContainerSupported()Z
    .registers 4

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 217
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->isSkipSupportContainerSupported()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 218
    :catch_d
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isVpnExceptionRequired()Z
    .registers 4

    .line 596
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 598
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->isVpnExceptionRequired()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 599
    :catch_d
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I
    .registers 21
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "clientName"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "skipPin"    # Z
    .param p7, "skipSupport"    # Z
    .param p8, "bundle"    # Landroid/os/Bundle;

    .line 452
    const/16 v1, -0x3e8

    .line 453
    .local v1, "res":I
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-nez v0, :cond_9

    .line 454
    return v1

    .line 456
    :cond_9
    move-object v2, p0

    :try_start_a
    iget-object v3, v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I

    move-result v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1d} :catch_1f

    move v1, v0

    .line 459
    goto :goto_27

    .line 457
    :catch_1f
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return v1
.end method

.method public provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "enrollCert"    # Ljava/lang/String;
    .param p2, "hotpCert"    # Ljava/lang/String;
    .param p3, "policyCert"    # Ljava/lang/String;
    .param p4, "blCert"    # Ljava/lang/String;

    .line 585
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 587
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 588
    :catch_d
    move-exception v0

    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public registerIntent(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "preFix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 57
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->registerIntent(Ljava/lang/String;Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 60
    goto :goto_14

    .line 58
    :catch_c
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 166
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 169
    goto :goto_14

    .line 167
    :catch_c
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public resetRPMB()I
    .registers 4

    .line 508
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 510
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->resetRPMB()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 511
    :catch_d
    move-exception v0

    .line 512
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public resetRPMB2(Ljava/lang/String;)I
    .registers 5
    .param p1, "optional"    # Ljava/lang/String;

    .line 519
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 521
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->resetRPMB2(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 522
    :catch_d
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userhandle"    # Landroid/os/UserHandle;

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 186
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 189
    goto :goto_14

    .line 187
    :catch_c
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 156
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 159
    goto :goto_14

    .line 157
    :catch_c
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public setAdminRemovable(Z)Z
    .registers 5
    .param p1, "removable"    # Z

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 69
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setAdminRemovable(Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 70
    :catch_d
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public setAirplaneMode(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 146
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setAirplaneMode(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 149
    goto :goto_14

    .line 147
    :catch_c
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 135
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setApplicationUninstallationDisabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 136
    :catch_d
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckingState()I
    .registers 4

    .line 530
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 532
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setCheckingState()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 533
    :catch_d
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public setClientData(Ljava/lang/String;)I
    .registers 5
    .param p1, "clientData"    # Ljava/lang/String;

    .line 486
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 488
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setClientData(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 489
    :catch_d
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public setClientHealthOK()V
    .registers 4

    .line 607
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 609
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setClientHealthOK()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 612
    goto :goto_14

    .line 610
    :catch_c
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public setKnoxGuardExemptRule(Z)V
    .registers 5
    .param p1, "add"    # Z

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 262
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setKnoxGuardExemptRule(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    .line 263
    :catch_c
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    goto :goto_1c

    .line 267
    :cond_15
    sget-object v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v1, "No Knox Guard Service found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_1c
    return-void
.end method

.method public setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .registers 30
    .param p1, "type"    # I
    .param p2, "state"    # Z
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "emergencycallbutton"    # Z
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "failcount"    # I
    .param p9, "timeout"    # J
    .param p11, "blockcount"    # I
    .param p12, "skippin"    # Z
    .param p13, "bundle"    # Landroid/os/Bundle;

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 196
    move-object/from16 v1, p0

    :try_start_8
    iget-object v2, v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    invoke-interface/range {v2 .. v15}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_25} :catch_26

    .line 199
    goto :goto_31

    .line 197
    :catch_26
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxGuard service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    move-object/from16 v1, p0

    .line 201
    :goto_31
    return-void
.end method

.method public setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V
    .registers 32
    .param p1, "type"    # I
    .param p2, "state"    # Z
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "emergencycallbutton"    # Z
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "failcount"    # I
    .param p9, "timeout"    # J
    .param p11, "blockcount"    # I
    .param p12, "skippin"    # Z
    .param p13, "bundle"    # Landroid/os/Bundle;
    .param p14, "skipSupportContainer"    # Z

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 206
    move-object/from16 v1, p0

    :try_start_8
    iget-object v2, v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    invoke-interface/range {v2 .. v16}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setRemoteLockToLockscreenWithSkipSupport(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_27} :catch_28

    .line 209
    goto :goto_33

    .line 207
    :catch_28
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxGuard service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_31
    move-object/from16 v1, p0

    .line 211
    :goto_33
    return-void
.end method

.method public setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userhandle"    # Landroid/os/UserHandle;

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 176
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 179
    goto :goto_14

    .line 177
    :catch_c
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public shouldBlockCustomRom()Z
    .registers 4

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 251
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->shouldBlockCustomRom()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 252
    :catch_d
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public showInstallmentStatus()Z
    .registers 4

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 240
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->showInstallmentStatus()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 241
    :catch_d
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public unRegisterIntent()V
    .registers 4

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 296
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->unRegisterIntent()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 299
    goto :goto_14

    .line 297
    :catch_c
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public unlockScreen()I
    .registers 5

    .line 440
    const/16 v0, -0x3e8

    .line 441
    .local v0, "res":I
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v1

    if-nez v1, :cond_9

    .line 442
    return v0

    .line 444
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->unlockScreen()I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_11

    move v0, v1

    .line 447
    goto :goto_19

    .line 445
    :catch_11
    move-exception v1

    .line 446
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_19
    return v0
.end method

.method public verifyCompleteToken(Ljava/lang/String;)I
    .registers 6
    .param p1, "serverResponse"    # Ljava/lang/String;

    .line 384
    const/16 v0, -0x3e8

    .line 385
    .local v0, "res":I
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v1

    if-nez v1, :cond_9

    .line 386
    return v0

    .line 388
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyCompleteToken(Ljava/lang/String;)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_11

    move v0, v1

    .line 391
    goto :goto_19

    .line 389
    :catch_11
    move-exception v1

    .line 390
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_19
    return v0
.end method

.method public verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "hub"    # Ljava/lang/String;
    .param p2, "sigature"    # Ljava/lang/String;
    .param p3, "challenge"    # Ljava/lang/String;

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 334
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 335
    :catch_d
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with KnoxGuard KGTA processcommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1d

    .line 339
    :cond_16
    sget-object v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v1, "failed talking with KnoxGuard KGTA, service not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_1d
    const/16 v0, -0x3e8

    return v0
.end method

.method public verifyHOTPPin(Ljava/lang/String;)I
    .registers 5
    .param p1, "pin"    # Ljava/lang/String;

    .line 345
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 347
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyHOTPPin(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 348
    :catch_d
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1d

    .line 352
    :cond_16
    sget-object v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v1, "failed talking with KnoxGuard KGTA, service not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_1d
    const/4 v0, -0x1

    return v0
.end method

.method public verifyHOTPsecret(Ljava/lang/String;)I
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 319
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 321
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyHOTPsecret(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 322
    :catch_d
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with KnoxGuard KGTA processcommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1d

    .line 326
    :cond_16
    sget-object v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v1, "failed talking with KnoxGuard KGTA, service not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_1d
    const/16 v0, -0x3e8

    return v0
.end method

.method public verifyKgRot()Ljava/lang/String;
    .registers 4

    .line 541
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 543
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyKgRot()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 544
    :catch_d
    move-exception v0

    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const-string v0, ""

    return-object v0
.end method

.method public verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "sigature"    # Ljava/lang/String;

    .line 429
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 431
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 432
    :catch_d
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "regInfo"    # Ljava/lang/String;
    .param p2, "regInfoSig"    # Ljava/lang/String;

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 420
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 421
    :catch_d
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method
