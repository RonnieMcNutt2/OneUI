.class public abstract Landroid/os/CountDownTimer;
.super Ljava/lang/Object;
.source "CountDownTimer.java"


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mMillisInFuture:J

.field private mStopTimeInFuture:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmCancelled(Landroid/os/CountDownTimer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountdownInterval(Landroid/os/CountDownTimer;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/CountDownTimer;->mCountdownInterval:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmStopTimeInFuture(Landroid/os/CountDownTimer;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/CountDownTimer;->mStopTimeInFuture:J

    return-wide v0
.end method

.method public constructor <init>(JJ)V
    .registers 6
    .param p1, "millisInFuture"    # J
    .param p3, "countDownInterval"    # J

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    .line 129
    new-instance v0, Landroid/os/CountDownTimer$1;

    invoke-direct {v0, p0}, Landroid/os/CountDownTimer$1;-><init>(Landroid/os/CountDownTimer;)V

    iput-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    .line 86
    iput-wide p1, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    .line 87
    iput-wide p3, p0, Landroid/os/CountDownTimer;->mCountdownInterval:J

    .line 88
    return-void
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .registers 3

    monitor-enter p0

    .line 94
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    .line 95
    iget-object v1, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 96
    monitor-exit p0

    return-void

    .line 93
    .end local p0    # "this":Landroid/os/CountDownTimer;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final declared-synchronized start()Landroid/os/CountDownTimer;
    .registers 5

    monitor-enter p0

    .line 102
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    .line 103
    iget-wide v0, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_11

    .line 104
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->onFinish()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_26

    .line 105
    monitor-exit p0

    return-object p0

    .line 107
    .end local p0    # "this":Landroid/os/CountDownTimer;
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/CountDownTimer;->mStopTimeInFuture:J

    .line 108
    iget-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_26

    .line 109
    monitor-exit p0

    return-object p0

    .line 101
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method
