.class public final Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;
.super Ljava/lang/Object;
.source "SemRemoteAppModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveCheckerDelegate;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mRemoteAppModeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mRotationChangedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureAppChangedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

.field private mStartActivityInterceptedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/remoteappmode/IRemoteAppMode;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    .line 37
    iput-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    .line 38
    iput-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    .line 39
    iput-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    .line 40
    iput-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    .line 433
    iput-object p2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    .line 434
    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .line 652
    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->clearAll()V

    .line 656
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    if-eqz v1, :cond_f

    .line 657
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 660
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    if-eqz v1, :cond_16

    .line 661
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 664
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    if-eqz v1, :cond_1d

    .line 665
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1d} :catch_20
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1e

    .line 669
    :cond_1d
    goto :goto_24

    .line 670
    :catchall_1e
    move-exception v1

    goto :goto_26

    .line 667
    :catch_20
    move-exception v1

    .line 668
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_21
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 670
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    monitor-exit v0

    .line 671
    return-void

    .line 670
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_1e

    throw v1
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;)I
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "checker"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    new-instance v6, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveCheckerDelegate;

    invoke-direct {v6, p6}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveCheckerDelegate;-><init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 55
    :catch_11
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public disableSendingUserPresentIntent()V
    .registers 2

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->disableSendingUserPresentIntent()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 401
    goto :goto_a

    .line 399
    :catch_6
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 402
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public enableSendingUserPresentIntent(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->enableSendingUserPresentIntent(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 393
    goto :goto_a

    .line 391
    :catch_6
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 394
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->forceStopPackage(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 803
    goto :goto_a

    .line 801
    :catch_6
    move-exception v0

    .line 802
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 804
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "outputPfd"    # Landroid/os/ParcelFileDescriptor;

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 385
    goto :goto_a

    .line 383
    :catch_6
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 386
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public getProtocolVersion()I
    .registers 2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->getProtocolVersion()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 45
    :catch_7
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 49
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public getSendingUserPresentExpiredTime()J
    .registers 3

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->getSendingUserPresentExpiredTime()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 424
    :catch_7
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 428
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isAllowed()Z
    .registers 2

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->isAllowed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 374
    :catch_7
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 377
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isSendingUserPresentEnabled()Z
    .registers 2

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->isSendingUserPresentEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 407
    :catch_7
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public launchApplication(ILjava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "activityOptionsBundle"    # Landroid/os/Bundle;

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->launchApplication(ILjava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 90
    goto :goto_a

    .line 88
    :catch_6
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 91
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public moveDisplayToTop(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->moveDisplayToTop(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 82
    goto :goto_a

    .line 80
    :catch_6
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public registerRemoteAppModeListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;

    .line 850
    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    if-nez p1, :cond_f

    .line 852
    :try_start_5
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerRemoteAppModeListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    monitor-exit v0

    return-void

    .line 856
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    if-nez v1, :cond_1a

    .line 857
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    .line 860
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 861
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerRemoteAppModeListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    monitor-exit v0

    return-void

    .line 865
    :cond_43
    new-instance v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;-><init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;)V
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_76

    .line 867
    .local v1, "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;
    :try_start_48
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->registerRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;Ljava/lang/String;)Z

    .line 868
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRemoteAppModeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_6f} :catch_70
    .catchall {:try_start_48 .. :try_end_6f} :catchall_76

    .line 872
    goto :goto_74

    .line 870
    :catch_70
    move-exception v2

    .line 871
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_71
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 873
    .end local v1    # "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_74
    monitor-exit v0

    .line 874
    return-void

    .line 873
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public registerRotationChangeListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;I)V
    .registers 8
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;
    .param p2, "displayId"    # I

    .line 480
    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    if-nez p1, :cond_f

    .line 482
    :try_start_5
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerRotationChangeListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    monitor-exit v0

    return-void

    .line 486
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    if-nez v1, :cond_1a

    .line 487
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    .line 490
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 491
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    monitor-exit v0

    return-void

    .line 495
    :cond_43
    new-instance v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;-><init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;)V
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_76

    .line 497
    .local v1, "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;
    :try_start_48
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, p2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->registerRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;I)Z

    .line 498
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRotationChangeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_6f} :catch_70
    .catchall {:try_start_48 .. :try_end_6f} :catchall_76

    .line 502
    goto :goto_74

    .line 500
    :catch_70
    move-exception v2

    .line 501
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_71
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 503
    .end local v1    # "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_74
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public registerSecureAppChangedListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;

    .line 598
    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    if-nez p1, :cond_f

    .line 600
    :try_start_5
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerSecureAppChangedListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    monitor-exit v0

    return-void

    .line 604
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    if-nez v1, :cond_1a

    .line 605
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    .line 608
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 609
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerSecureAppChangedListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    monitor-exit v0

    return-void

    .line 613
    :cond_43
    new-instance v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;-><init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;)V
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_76

    .line 615
    .local v1, "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;
    :try_start_48
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->registerSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;)Z

    .line 616
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerSecureAppChangedListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_6f} :catch_70
    .catchall {:try_start_48 .. :try_end_6f} :catchall_76

    .line 620
    goto :goto_74

    .line 618
    :catch_70
    move-exception v2

    .line 619
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_71
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 621
    .end local v1    # "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_74
    monitor-exit v0

    .line 622
    return-void

    .line 621
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public registerStartActivityInterceptedListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;

    .line 717
    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    if-nez p1, :cond_f

    .line 719
    :try_start_5
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    monitor-exit v0

    return-void

    .line 723
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    if-nez v1, :cond_1a

    .line 724
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    .line 727
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 728
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    monitor-exit v0

    return-void

    .line 732
    :cond_43
    new-instance v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;-><init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;)V
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_76

    .line 734
    .local v1, "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;
    :try_start_48
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->registerStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;Ljava/lang/String;)Z

    .line 735
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_6f} :catch_70
    .catchall {:try_start_48 .. :try_end_6f} :catchall_76

    .line 739
    goto :goto_74

    .line 737
    :catch_70
    move-exception v2

    .line 738
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_71
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 740
    .end local v1    # "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_74
    monitor-exit v0

    .line 741
    return-void

    .line 740
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public registerTaskChangeListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;

    .line 319
    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    if-nez p1, :cond_f

    .line 321
    :try_start_5
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerTaskChangeListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    monitor-exit v0

    return-void

    .line 325
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    if-nez v1, :cond_1a

    .line 326
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    .line 329
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 330
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerTaskChangeListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    monitor-exit v0

    return-void

    .line 333
    :cond_43
    new-instance v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;-><init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;)V
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_76

    .line 335
    .local v1, "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;
    :try_start_48
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->registerTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;)Z

    .line 336
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerTaskChangeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_6f} :catch_70
    .catchall {:try_start_48 .. :try_end_6f} :catchall_76

    .line 340
    goto :goto_74

    .line 338
    :catch_70
    move-exception v2

    .line 339
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_71
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 341
    .end local v1    # "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_74
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public releaseVirtualDisplay(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->releaseVirtualDisplay(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 66
    goto :goto_a

    .line 64
    :catch_6
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 67
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public resizeVirtualDisplay(IIIILandroid/view/Surface;)V
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "surface"    # Landroid/view/Surface;

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->resizeVirtualDisplay(IIIILandroid/view/Surface;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 74
    goto :goto_f

    .line 72
    :catch_b
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 75
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public sendNotificationAction(Landroid/service/notification/StatusBarNotification;ILandroid/content/Intent;)Z
    .registers 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "actionIndex"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->sendNotificationAction(Landroid/service/notification/StatusBarNotification;ILandroid/content/Intent;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 791
    :catch_7
    move-exception v0

    .line 792
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 795
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public sendNotificationContent(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->sendNotificationContent(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 781
    :catch_7
    move-exception v0

    .line 782
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 785
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public sendPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->sendPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 775
    goto :goto_a

    .line 773
    :catch_6
    move-exception v0

    .line 774
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 776
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public setLTWProtocolVersion(I)V
    .registers 3
    .param p1, "version"    # I

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->setLTWProtocolVersion(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 106
    goto :goto_a

    .line 104
    :catch_6
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public setSendingUserPresentExpiredTime(J)V
    .registers 4
    .param p1, "expiredTimeMillis"    # J

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->setSendingUserPresentExpiredTime(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 418
    goto :goto_a

    .line 416
    :catch_6
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 419
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public startRFCommService()V
    .registers 2

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->startRFCommService()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 114
    goto :goto_a

    .line 112
    :catch_6
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 115
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public stopRFCommService()V
    .registers 2

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->stopRFCommService()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 122
    goto :goto_a

    .line 120
    :catch_6
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public transferTaskWithoutIntercept(IILandroid/os/Bundle;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "targetDisplayId"    # I
    .param p3, "activityOptionsBundle"    # Landroid/os/Bundle;

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->transferTaskWithoutIntercept(IILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 98
    goto :goto_a

    .line 96
    :catch_6
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public unregisterRemoteAppModeListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;

    .line 877
    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    if-nez p1, :cond_f

    .line 879
    :try_start_5
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterRemoteAppModeListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    monitor-exit v0

    return-void

    .line 882
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    if-nez v1, :cond_15

    .line 883
    monitor-exit v0

    return-void

    .line 885
    :cond_15
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;

    .line 886
    .local v1, "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;
    if-nez v1, :cond_3e

    .line 887
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterRemoteAppModeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    monitor-exit v0

    return-void

    .line 890
    :cond_3e
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 891
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_71

    .line 894
    :cond_49
    :try_start_49
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v2, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->unregisterRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;)Z

    .line 895
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterRemoteAppModeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_67} :catch_68
    .catchall {:try_start_49 .. :try_end_67} :catchall_71

    .line 898
    goto :goto_6c

    .line 896
    :catch_68
    move-exception v2

    .line 897
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_69
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 899
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_6c
    invoke-virtual {v1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;->nullOutListenerLocked()V

    .line 900
    .end local v1    # "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;
    monitor-exit v0

    .line 901
    return-void

    .line 900
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public unregisterRotationChangeListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;

    .line 507
    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    if-nez p1, :cond_f

    .line 509
    :try_start_5
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterRotationChangeListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    monitor-exit v0

    return-void

    .line 512
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    if-nez v1, :cond_15

    .line 513
    monitor-exit v0

    return-void

    .line 515
    :cond_15
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;

    .line 516
    .local v1, "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;
    if-nez v1, :cond_3e

    .line 517
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterRotationChangeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    monitor-exit v0

    return-void

    .line 520
    :cond_3e
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 521
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_71

    .line 524
    :cond_49
    :try_start_49
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v2, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->unregisterRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;)Z

    .line 525
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterRotationChangeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_67} :catch_68
    .catchall {:try_start_49 .. :try_end_67} :catchall_71

    .line 528
    goto :goto_6c

    .line 526
    :catch_68
    move-exception v2

    .line 527
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_69
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 529
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_6c
    invoke-virtual {v1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;->nullOutListenerLocked()V

    .line 530
    .end local v1    # "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;
    monitor-exit v0

    .line 531
    return-void

    .line 530
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public unregisterSecureAppChangedListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;

    .line 625
    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 626
    if-nez p1, :cond_f

    .line 627
    :try_start_5
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterSecureAppChangedListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    monitor-exit v0

    return-void

    .line 630
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    if-nez v1, :cond_15

    .line 631
    monitor-exit v0

    return-void

    .line 633
    :cond_15
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;

    .line 634
    .local v1, "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;
    if-nez v1, :cond_3e

    .line 635
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterSecureAppChangedListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    monitor-exit v0

    return-void

    .line 638
    :cond_3e
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 639
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_71

    .line 642
    :cond_49
    :try_start_49
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v2, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->unregisterSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;)Z

    .line 643
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterSecureAppChangedListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_67} :catch_68
    .catchall {:try_start_49 .. :try_end_67} :catchall_71

    .line 646
    goto :goto_6c

    .line 644
    :catch_68
    move-exception v2

    .line 645
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_69
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 647
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_6c
    invoke-virtual {v1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;->nullOutListenerLocked()V

    .line 648
    .end local v1    # "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;
    monitor-exit v0

    .line 649
    return-void

    .line 648
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public unregisterStartActivityInterceptedListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;

    .line 744
    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    if-nez p1, :cond_f

    .line 746
    :try_start_5
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    monitor-exit v0

    return-void

    .line 749
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    if-nez v1, :cond_15

    .line 750
    monitor-exit v0

    return-void

    .line 752
    :cond_15
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;

    .line 753
    .local v1, "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;
    if-nez v1, :cond_3e

    .line 754
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    monitor-exit v0

    return-void

    .line 757
    :cond_3e
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 758
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_71

    .line 761
    :cond_49
    :try_start_49
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v2, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->unregisterStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;)Z

    .line 762
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_67} :catch_68
    .catchall {:try_start_49 .. :try_end_67} :catchall_71

    .line 765
    goto :goto_6c

    .line 763
    :catch_68
    move-exception v2

    .line 764
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_69
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 766
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_6c
    invoke-virtual {v1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;->nullOutListenerLocked()V

    .line 767
    .end local v1    # "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;
    monitor-exit v0

    .line 768
    return-void

    .line 767
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;

    .line 345
    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    if-nez p1, :cond_f

    .line 347
    :try_start_5
    sget-object v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterTaskChangeListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    monitor-exit v0

    return-void

    .line 350
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    if-nez v1, :cond_15

    .line 351
    monitor-exit v0

    return-void

    .line 353
    :cond_15
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;

    .line 354
    .local v1, "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;
    if-nez v1, :cond_3e

    .line 355
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterTaskChangeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    monitor-exit v0

    return-void

    .line 358
    :cond_3e
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 359
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_71

    .line 362
    :cond_49
    :try_start_49
    iget-object v2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v2, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z

    .line 363
    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterTaskChangeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_67} :catch_68
    .catchall {:try_start_49 .. :try_end_67} :catchall_71

    .line 366
    goto :goto_6c

    .line 364
    :catch_68
    move-exception v2

    .line 365
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_69
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 367
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_6c
    invoke-virtual {v1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;->nullOutListenerLocked()V

    .line 368
    .end local v1    # "delegate":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;
    monitor-exit v0

    .line 369
    return-void

    .line 368
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_71

    throw v1
.end method
