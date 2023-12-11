.class public Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
.super Ljava/lang/Object;
.source "ServiceRemasterDirector.java"

# interfaces
.implements Lcom/samsung/android/photoremaster/IDirector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ServiceRemasterDirector"


# instance fields
.field private mInitialized:Z

.field private final mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

.field private final mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

.field private final mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

.field private final mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-direct {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    .line 24
    new-instance v1, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-direct {v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    .line 25
    new-instance v1, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-direct {v1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    .line 26
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    .line 27
    new-instance v2, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-direct {v2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    .line 30
    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getProgressObserver()Lcom/samsung/android/photoremasterservice/ProgressObserver;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->registerObserver(Lcom/samsung/android/photoremasterservice/ProgressObserver;)V

    .line 31
    return-void
.end method

.method private confirmInitialized()V
    .registers 2

    .line 407
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized(Z)V

    .line 408
    return-void
.end method

.method private confirmInitialized(Z)V
    .registers 4
    .param p1, "isLeavingLog"    # Z

    .line 411
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    if-nez v0, :cond_17

    .line 412
    const-string v0, "Access before initialization."

    const-string v1, "ServiceRemasterDirector"

    if-eqz p1, :cond_e

    .line 413
    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 415
    :cond_e
    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 419
    :cond_17
    return-void
.end method

.method private doInit(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    const-string v1, "ServiceRemasterDirector"

    if-eqz v0, :cond_d

    .line 68
    const-string v0, "Double Initialization!!! init is ignored."

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->initServiceCall()V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->initServiceCall()V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->init()V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->setContext(Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->setContext(Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->setContext(Landroid/content/Context;)V

    .line 80
    const-string v0, "9e7ffcc68ef8755ae7485ebc6d4b4ca19452294b"

    const-string v2, "2023.11.02.18:43"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "PhotoRemaster git commit: %s , build date: %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method private throwEmptyBundleException()V
    .registers 3

    .line 422
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "Return bundle is empty."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private unbindClients()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->unbindService()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->deinitServiceCall()V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->unbindService()V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->deinit()V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->deinitServiceCall()V

    .line 145
    return-void
.end method


# virtual methods
.method public declared-synchronized deinit()V
    .registers 5

    monitor-enter p0

    .line 149
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->lock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_69

    .line 155
    :try_start_2e
    invoke-direct {p0, v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized(Z)V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_31} :catch_34
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    .line 161
    goto :goto_47

    .line 169
    :catchall_32
    move-exception v0

    goto :goto_63

    .line 156
    :catch_34
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_35
    iget-boolean v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    if-nez v1, :cond_47

    .line 158
    const-string v1, "ServiceRemasterDirector"

    const-string v2, "Double Deinitialization!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_62

    .line 169
    :try_start_40
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_69

    .line 159
    monitor-exit p0

    return-void

    .line 164
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_47
    :goto_47
    :try_start_47
    iput-boolean v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    .line 165
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->unbindClients()V
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_62

    .line 169
    :try_start_53
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 170
    nop

    .line 171
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "deinit() is done."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_69

    .line 172
    monitor-exit p0

    return-void

    .line 169
    :catchall_62
    move-exception v0

    :goto_63
    :try_start_63
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 170
    throw v0
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_69

    .line 148
    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmapParam(I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "id"    # I

    monitor-enter p0

    .line 384
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_88

    .line 388
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 390
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_81

    .line 394
    .local v1, "retBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_74

    .line 398
    :try_start_46
    const-string/jumbo v2, "ret_bitmap"

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 399
    .local v2, "returnBitmap":Landroid/graphics/Bitmap;
    const-string v3, "ServiceRemasterDirector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ret Value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_46 .. :try_end_6a} :catchall_72

    .line 400
    nop

    .line 402
    :try_start_6b
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_88

    .line 400
    monitor-exit p0

    return-object v2

    .line 402
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    .end local v2    # "returnBitmap":Landroid/graphics/Bitmap;
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_72
    move-exception v0

    goto :goto_82

    .line 395
    .restart local v0    # "argBundle":Landroid/os/Bundle;
    .restart local v1    # "retBundle":Landroid/os/Bundle;
    :cond_74
    :try_start_74
    const-string v2, "ServiceRemasterDirector"

    const-string v3, "Return bundle is empty."

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "id":I
    throw v2
    :try_end_81
    .catchall {:try_start_74 .. :try_end_81} :catchall_81

    .line 402
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    .restart local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    .restart local p1    # "id":I
    :catchall_81
    move-exception v0

    :goto_82
    :try_start_82
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 403
    throw v0
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_88

    .line 383
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    .end local p1    # "id":I
    :catchall_88
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFocusRoi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "originalImage"    # Ljava/lang/String;
    .param p2, "remasteredImage"    # Ljava/lang/String;

    monitor-enter p0

    .line 441
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_cd

    .line 445
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 448
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "original_image_focus_roi"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string/jumbo v1, "remastered_image_focus_roi"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "original image for getFocusRoi(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "original_image_focus_roi"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remastered image for getFocusRoi(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "remastered_image_focus_roi"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 455
    .local v1, "retBundle":Landroid/os/Bundle;
    if-nez v1, :cond_98

    .line 456
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->throwEmptyBundleException()V

    .line 457
    const-string v2, ""
    :try_end_91
    .catchall {:try_start_2e .. :try_end_91} :catchall_c6

    .line 463
    :try_start_91
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_cd

    .line 457
    monitor-exit p0

    return-object v2

    .line 459
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_98
    :try_start_98
    const-string v2, "ServiceRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ret_string"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string/jumbo v2, "ret_string"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_bf
    .catchall {:try_start_98 .. :try_end_bf} :catchall_c6

    .line 463
    :try_start_bf
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_c4
    .catchall {:try_start_bf .. :try_end_c4} :catchall_cd

    .line 460
    monitor-exit p0

    return-object v2

    .line 463
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    :catchall_c6
    move-exception v0

    :try_start_c7
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 464
    throw v0
    :try_end_cd
    .catchall {:try_start_c7 .. :try_end_cd} :catchall_cd

    .line 440
    .end local p1    # "originalImage":Ljava/lang/String;
    .end local p2    # "remasteredImage":Ljava/lang/String;
    :catchall_cd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getIntParam(I)I
    .registers 7
    .param p1, "id"    # I

    monitor-enter p0

    .line 335
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_a6

    .line 339
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "int_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 346
    .local v1, "retBundle":Landroid/os/Bundle;
    if-nez v1, :cond_71

    .line 347
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->throwEmptyBundleException()V
    :try_end_68
    .catchall {:try_start_2e .. :try_end_68} :catchall_9f

    .line 348
    nop

    .line 354
    :try_start_69
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_a6

    .line 348
    monitor-exit p0

    const/4 v2, -0x1

    return v2

    .line 350
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_71
    :try_start_71
    const-string v2, "ServiceRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ret_int"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v2, "ret_int"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_98
    .catchall {:try_start_71 .. :try_end_98} :catchall_9f

    .line 354
    :try_start_98
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_a6

    .line 351
    monitor-exit p0

    return v2

    .line 354
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    :catchall_9f
    move-exception v0

    :try_start_a0
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 355
    throw v0
    :try_end_a6
    .catchall {:try_start_a0 .. :try_end_a6} :catchall_a6

    .line 334
    .end local p1    # "id":I
    :catchall_a6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLongParam(I)J
    .registers 8
    .param p1, "id"    # I

    monitor-enter p0

    .line 360
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_88

    .line 364
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 367
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 370
    .local v1, "retBundle":Landroid/os/Bundle;
    if-nez v1, :cond_53

    .line 371
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->throwEmptyBundleException()V
    :try_end_49
    .catchall {:try_start_2e .. :try_end_49} :catchall_81

    .line 372
    nop

    .line 377
    :try_start_4a
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_88

    .line 372
    monitor-exit p0

    const-wide/16 v2, -0x1

    return-wide v2

    .line 374
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_53
    :try_start_53
    const-string v2, "ServiceRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ret_long"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string/jumbo v2, "ret_long"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_7a
    .catchall {:try_start_53 .. :try_end_7a} :catchall_81

    .line 377
    :try_start_7a
    iget-object v4, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v4}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_88

    .line 375
    monitor-exit p0

    return-wide v2

    .line 377
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    :catchall_81
    move-exception v0

    :try_start_82
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 378
    throw v0
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_88

    .line 359
    .end local p1    # "id":I
    :catchall_88
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getStringParam(I)Ljava/lang/String;
    .registers 7
    .param p1, "id"    # I

    monitor-enter p0

    .line 312
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_87

    .line 316
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 318
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 322
    .local v1, "retBundle":Landroid/os/Bundle;
    if-nez v1, :cond_52

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->throwEmptyBundleException()V

    .line 324
    const-string v2, ""
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_80

    .line 329
    :try_start_4b
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_87

    .line 324
    monitor-exit p0

    return-object v2

    .line 326
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_52
    :try_start_52
    const-string v2, "ServiceRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ret_string"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string/jumbo v2, "ret_string"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_79
    .catchall {:try_start_52 .. :try_end_79} :catchall_80

    .line 329
    :try_start_79
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_87

    .line 327
    monitor-exit p0

    return-object v2

    .line 329
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    :catchall_80
    move-exception v0

    :try_start_81
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 330
    throw v0
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_87

    .line 311
    .end local p1    # "id":I
    :catchall_87
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 89
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_54

    .line 92
    :try_start_2e
    invoke-direct {p0, p1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->doInit(Landroid/content/Context;)Z

    move-result v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_4d

    if-nez v0, :cond_3b

    .line 98
    :try_start_34
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_54

    .line 93
    monitor-exit p0

    return-void

    .line 95
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_4d

    .line 98
    :try_start_45
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_54

    .line 99
    nop

    .line 100
    monitor-exit p0

    return-void

    .line 98
    :catchall_4d
    move-exception v0

    :try_start_4e
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 99
    throw v0
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_54

    .line 88
    .end local p1    # "context":Landroid/content/Context;
    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized processImage(ILjava/util/List;)Z
    .registers 9
    .param p1, "processMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .local p2, "enhanceModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 207
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->throwExceptionIfLocked()V

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "int_processMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v2, "arrayListInt_enhanceMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 216
    const-string v2, "ServiceRemasterDirector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processImage("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 219
    .local v2, "retBundle":Landroid/os/Bundle;
    if-nez v2, :cond_82

    .line 220
    const-string v4, "ServiceRemasterDirector"

    const-string/jumbo v5, "retBundle is null."

    invoke-static {v4, v5}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_1 .. :try_end_80} :catchall_8b

    .line 221
    monitor-exit p0

    return v3

    .line 223
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_82
    :try_start_82
    const-string/jumbo v3, "ret_boolean"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_8b

    monitor-exit p0

    return v3

    .line 206
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "retBundle":Landroid/os/Bundle;
    .end local p1    # "processMode":I
    .end local p2    # "enhanceModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_8b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBitmapParam(ILandroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 248
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_8c

    .line 251
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const-string v1, "bitmap_val"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 257
    const-string v1, "ServiceRemasterDirector"

    const-string/jumbo v2, "setBitmapParam:"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "int_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_7d
    .catchall {:try_start_2e .. :try_end_7d} :catchall_85

    .line 262
    .end local v0    # "argBundle":Landroid/os/Bundle;
    :try_start_7d
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_8c

    .line 263
    nop

    .line 264
    monitor-exit p0

    return-void

    .line 262
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_85
    move-exception v0

    :try_start_86
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 263
    throw v0
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_8c

    .line 247
    .end local p1    # "id":I
    .end local p2    # "value":Landroid/graphics/Bitmap;
    :catchall_8c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLongParam(IJ)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "value"    # J

    monitor-enter p0

    .line 288
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_a3

    .line 292
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_41

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_39

    goto :goto_41

    .line 293
    :cond_39
    :try_start_39
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    .end local p1    # "id":I
    .end local p2    # "value":J
    throw v0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3f

    .line 306
    .restart local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    .restart local p1    # "id":I
    .restart local p2    # "value":J
    :catchall_3f
    move-exception v0

    goto :goto_9d

    .line 296
    :cond_41
    :goto_41
    :try_start_41
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    const-string/jumbo v1, "long_value"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 301
    const-string v1, "ServiceRemasterDirector"

    const-string/jumbo v2, "setLongParam:"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "int_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "long_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_94
    .catchall {:try_start_41 .. :try_end_94} :catchall_9c

    .line 306
    .end local v0    # "argBundle":Landroid/os/Bundle;
    :try_start_94
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_a3

    .line 307
    nop

    .line 308
    monitor-exit p0

    return-void

    .line 306
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_9c
    move-exception v0

    :goto_9d
    :try_start_9d
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 307
    throw v0
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_a3

    .line 287
    .end local p1    # "id":I
    .end local p2    # "value":J
    :catchall_a3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;

    monitor-enter p0

    .line 428
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_42

    .line 432
    :try_start_2e
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3b

    .line 434
    :try_start_33
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_42

    .line 435
    nop

    .line 436
    monitor-exit p0

    return-void

    .line 434
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_3b
    move-exception v0

    :try_start_3c
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 435
    throw v0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_42

    .line 427
    .end local p1    # "listener":Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;
    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStringParam(ILjava/lang/String;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 268
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_90

    .line 272
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string/jumbo v1, "string_value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "ServiceRemasterDirector"

    const-string/jumbo v2, "setStringParam:"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "int_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "string_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_81
    .catchall {:try_start_2e .. :try_end_81} :catchall_89

    .line 282
    .end local v0    # "argBundle":Landroid/os/Bundle;
    :try_start_81
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_90

    .line 283
    nop

    .line 284
    monitor-exit p0

    return-void

    .line 282
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_89
    move-exception v0

    :try_start_8a
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 283
    throw v0
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_90

    .line 267
    .end local p1    # "id":I
    .end local p2    # "value":Ljava/lang/String;
    :catchall_90
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUriParam(ILandroid/net/Uri;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/net/Uri;

    monitor-enter p0

    .line 228
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_89

    .line 231
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string/jumbo v1, "uri_val"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 237
    const-string v1, "ServiceRemasterDirector"

    const-string/jumbo v2, "setUriParam:"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "int_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_7a
    .catchall {:try_start_2e .. :try_end_7a} :catchall_82

    .line 242
    .end local v0    # "argBundle":Landroid/os/Bundle;
    :try_start_7a
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_89

    .line 243
    nop

    .line 244
    monitor-exit p0

    return-void

    .line 242
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_82
    move-exception v0

    :try_start_83
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 243
    throw v0
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_89

    .line 227
    .end local p1    # "id":I
    .end local p2    # "value":Landroid/net/Uri;
    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stop()V
    .registers 5

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is called!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceRemasterDirector"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->lock()V

    .line 181
    :try_start_2d
    invoke-direct {p0, v2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized(Z)V
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_30} :catch_62
    .catchall {:try_start_2d .. :try_end_30} :catchall_60

    .line 186
    nop

    .line 190
    :try_start_31
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_38
    .catch Ljava/lang/IllegalStateException; {:try_start_31 .. :try_end_38} :catch_40
    .catchall {:try_start_31 .. :try_end_38} :catchall_3e

    .line 194
    :try_start_38
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    :goto_3a
    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->unbindService()V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_60

    .line 195
    goto :goto_49

    .line 194
    :catchall_3e
    move-exception v0

    goto :goto_59

    .line 191
    :catch_40
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_41
    const-string v2, "Stop is called before initialization!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3e

    .line 194
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :try_start_46
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_60

    goto :goto_3a

    .line 198
    :goto_49
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 199
    nop

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->deinit()V

    .line 203
    const-string/jumbo v0, "stop() is done."

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void

    .line 194
    :goto_59
    :try_start_59
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->unbindService()V

    .line 195
    nop

    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    throw v0

    .line 198
    .restart local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_60
    move-exception v0

    goto :goto_6e

    .line 182
    :catch_62
    move-exception v0

    .line 184
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const-string v2, "Stop is called after deinit is done. Stop is ignored."

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_60

    .line 198
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 185
    return-void

    .line 198
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_6e
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 199
    throw v0
.end method

.method public declared-synchronized tryInit(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 104
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_91

    .line 108
    :try_start_2e
    invoke-direct {p0, p1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->doInit(Landroid/content/Context;)Z

    move-result v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_8a

    if-nez v0, :cond_3c

    .line 109
    nop

    .line 120
    :try_start_35
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_91

    .line 109
    monitor-exit p0

    return v3

    .line 112
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, "retBundle":Landroid/os/Bundle;
    if-nez v0, :cond_57

    .line 114
    const-string v1, "ServiceRemasterDirector"

    const-string/jumbo v2, "retBundle is null."

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_8a

    .line 115
    nop

    .line 120
    :try_start_50
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_91

    .line 115
    monitor-exit p0

    return v3

    .line 118
    :cond_57
    :try_start_57
    const-string/jumbo v1, "ret_boolean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_8a

    .line 120
    .end local v0    # "retBundle":Landroid/os/Bundle;
    :try_start_60
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 121
    nop

    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    if-nez v0, :cond_86

    .line 124
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "Fail to tryInit. Unbind all."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->lock()V
    :try_end_76
    .catchall {:try_start_60 .. :try_end_76} :catchall_91

    .line 127
    :try_start_76
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->unbindClients()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7f

    .line 129
    :try_start_79
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 130
    goto :goto_86

    .line 129
    :catchall_7f
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 130
    throw v0

    .line 133
    :cond_86
    :goto_86
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z
    :try_end_88
    .catchall {:try_start_79 .. :try_end_88} :catchall_91

    monitor-exit p0

    return v0

    .line 120
    :catchall_8a
    move-exception v0

    :try_start_8b
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 121
    throw v0
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_91

    .line 103
    .end local p1    # "context":Landroid/content/Context;
    :catchall_91
    move-exception p1

    monitor-exit p0

    throw p1
.end method
