.class final Landroid/app/Instrumentation$Idler;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Idler"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private mIdle:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2482
    iput-object p1, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    .line 2483
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z

    .line 2484
    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .registers 2

    .line 2487
    iget-object v0, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 2488
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2490
    :cond_7
    monitor-enter p0

    .line 2491
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z

    .line 2492
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2493
    monitor-exit p0

    .line 2494
    const/4 v0, 0x0

    return v0

    .line 2493
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public waitForIdle()V
    .registers 2

    .line 2498
    monitor-enter p0

    .line 2499
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    .line 2501
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 2503
    :goto_8
    goto :goto_1

    .line 2502
    :catch_9
    move-exception v0

    goto :goto_8

    .line 2505
    :cond_b
    :try_start_b
    monitor-exit p0

    .line 2506
    return-void

    .line 2505
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_d

    throw v0
.end method
