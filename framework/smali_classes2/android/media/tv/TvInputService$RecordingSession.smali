.class public abstract Landroid/media/tv/TvInputService$RecordingSession;
.super Ljava/lang/Object;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RecordingSession"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitialize(Landroid/media/tv/TvInputService$RecordingSession;Landroid/media/tv/ITvInputSessionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->initialize(Landroid/media/tv/ITvInputSessionCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 2236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mLock:Ljava/lang/Object;

    .line 2229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    .line 2237
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mHandler:Landroid/os/Handler;

    .line 2238
    return-void
.end method

.method private executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 2560
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2561
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    if-nez v1, :cond_d

    .line 2563
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 2565
    :cond_d
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2566
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_22

    .line 2569
    :cond_1d
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2572
    :goto_22
    monitor-exit v0

    .line 2573
    return-void

    .line 2572
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private initialize(Landroid/media/tv/ITvInputSessionCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/tv/ITvInputSessionCallback;

    .line 2550
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2551
    :try_start_3
    iput-object p1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    .line 2552
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 2553
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 2554
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_b

    .line 2555
    :cond_1b
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2556
    monitor-exit v0

    .line 2557
    return-void

    .line 2556
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method


# virtual methods
.method appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 2546
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2547
    return-void
.end method

.method public notifyError(I)V
    .registers 4
    .param p1, "error"    # I

    .line 2314
    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_24

    .line 2316
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyError - invalid error code ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is changed to RECORDING_ERROR_UNKNOWN."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvInputService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    const/4 p1, 0x0

    .line 2320
    :cond_24
    move v0, p1

    .line 2321
    .local v0, "validError":I
    new-instance v1, Landroid/media/tv/TvInputService$RecordingSession$3;

    invoke-direct {v1, p0, v0}, Landroid/media/tv/TvInputService$RecordingSession$3;-><init>(Landroid/media/tv/TvInputService$RecordingSession;I)V

    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 2335
    return-void
.end method

.method public notifyRecordingStopped(Landroid/net/Uri;)V
    .registers 3
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .line 2280
    new-instance v0, Landroid/media/tv/TvInputService$RecordingSession$2;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$RecordingSession$2;-><init>(Landroid/media/tv/TvInputService$RecordingSession;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 2294
    return-void
.end method

.method public notifySessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2346
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    new-instance v0, Landroid/media/tv/TvInputService$RecordingSession$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession$4;-><init>(Landroid/media/tv/TvInputService$RecordingSession;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 2361
    return-void
.end method

.method public notifyTuned(Landroid/net/Uri;)V
    .registers 3
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 2252
    new-instance v0, Landroid/media/tv/TvInputService$RecordingSession$1;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$RecordingSession$1;-><init>(Landroid/media/tv/TvInputService$RecordingSession;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 2266
    return-void
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 2492
    return-void
.end method

.method public onPauseRecording(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "params"    # Landroid/os/Bundle;

    .line 2462
    return-void
.end method

.method public abstract onRelease()V
.end method

.method public onResumeRecording(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "params"    # Landroid/os/Bundle;

    .line 2473
    return-void
.end method

.method public abstract onStartRecording(Landroid/net/Uri;)V
.end method

.method public onStartRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "programUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 2436
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->onStartRecording(Landroid/net/Uri;)V

    .line 2437
    return-void
.end method

.method public abstract onStopRecording()V
.end method

.method public abstract onTune(Landroid/net/Uri;)V
.end method

.method public onTune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 2393
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->onTune(Landroid/net/Uri;)V

    .line 2394
    return-void
.end method

.method pauseRecording(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "params"    # Landroid/os/Bundle;

    .line 2531
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->onPauseRecording(Landroid/os/Bundle;)V

    .line 2532
    return-void
.end method

.method release()V
    .registers 1

    .line 2507
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$RecordingSession;->onRelease()V

    .line 2508
    return-void
.end method

.method resumeRecording(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "params"    # Landroid/os/Bundle;

    .line 2539
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->onResumeRecording(Landroid/os/Bundle;)V

    .line 2540
    return-void
.end method

.method startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "programUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 2515
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession;->onStartRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2516
    return-void
.end method

.method stopRecording()V
    .registers 1

    .line 2523
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$RecordingSession;->onStopRecording()V

    .line 2524
    return-void
.end method

.method tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 2499
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession;->onTune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2500
    return-void
.end method
