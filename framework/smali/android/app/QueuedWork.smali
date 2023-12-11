.class public Landroid/app/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/QueuedWork$QueuedWorkHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DELAY:J = 0x64L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_WAIT_TIME_MILLIS:J = 0x200L

.field private static mNumWaits:I

.field private static final mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

.field private static sCanDelay:Z

.field private static final sFinishers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;

.field private static final sLock:Ljava/lang/Object;

.field private static sProcessingWork:Ljava/lang/Object;

.field private static sWork:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smprocessPendingWork()V
    .registers 0

    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 52
    const-class v0, Landroid/app/QueuedWork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    .line 80
    const/4 v0, 0x0

    sput-object v0, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 88
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 93
    new-instance v0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    sput-object v0, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    .line 95
    const/4 v0, 0x0

    sput v0, Landroid/app/QueuedWork;->mNumWaits:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFinisher(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .line 130
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static getHandler()Landroid/os/Handler;
    .registers 4

    .line 104
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_1e

    .line 106
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "queued-work-looper"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v2, Landroid/app/QueuedWork$QueuedWorkHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/QueuedWork$QueuedWorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 112
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_1e
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 113
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public static hasPendingWork()Z
    .registers 2

    .line 240
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 242
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static processPendingWork()V
    .registers 7

    .line 246
    const-wide/16 v0, 0x0

    .line 252
    .local v0, "startTime":J
    sget-object v2, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    monitor-enter v2

    .line 255
    :try_start_5
    sget-object v3, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_39

    .line 256
    :try_start_8
    sget-object v4, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 257
    .local v4, "work":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    sput-object v5, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 260
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_36

    .line 263
    :try_start_1a
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_34

    .line 264
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 265
    .local v5, "w":Ljava/lang/Runnable;
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 266
    .end local v5    # "w":Ljava/lang/Runnable;
    goto :goto_24

    .line 273
    .end local v4    # "work":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_39

    .line 274
    return-void

    .line 261
    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .end local v0    # "startTime":J
    :try_start_38
    throw v4

    .line 273
    .restart local v0    # "startTime":J
    :catchall_39
    move-exception v3

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_39

    throw v3
.end method

.method public static queue(Ljava/lang/Runnable;Z)V
    .registers 7
    .param p0, "work"    # Ljava/lang/Runnable;
    .param p1, "shouldDelay"    # Z

    .line 223
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 225
    .local v0, "handler":Landroid/os/Handler;
    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_7
    sget-object v2, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 228
    const/4 v2, 0x1

    if-eqz p1, :cond_19

    sget-boolean v3, Landroid/app/QueuedWork;->sCanDelay:Z

    if-eqz v3, :cond_19

    .line 229
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1c

    .line 231
    :cond_19
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    :goto_1c
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public static removeFinisher(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .line 142
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static waitToFinish()V
    .registers 12

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    .local v0, "startTime":J
    const/4 v2, 0x0

    .line 159
    .local v2, "hadMessages":Z
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 161
    .local v3, "handler":Landroid/os/Handler;
    sget-object v4, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 162
    const/4 v5, 0x1

    :try_start_d
    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 164
    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    :cond_16
    const/4 v6, 0x0

    sput-boolean v6, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 174
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_7e

    .line 176
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 178
    .local v4, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1e
    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_79

    .line 180
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 181
    nop

    .line 187
    :goto_25
    :try_start_25
    sget-object v6, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_75

    .line 188
    :try_start_28
    sget-object v7, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    .line 189
    .local v7, "finisher":Ljava/lang/Runnable;
    monitor-exit v6
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_72

    .line 191
    if-nez v7, :cond_6e

    .line 192
    nop

    .line 198
    .end local v7    # "finisher":Ljava/lang/Runnable;
    sput-boolean v5, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 199
    nop

    .line 201
    monitor-enter v6

    .line 202
    :try_start_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 204
    .local v7, "waitTime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_45

    if-eqz v2, :cond_69

    .line 205
    :cond_45
    sget-object v9, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    .line 206
    sget v10, Landroid/app/QueuedWork;->mNumWaits:I

    add-int/2addr v10, v5

    sput v10, Landroid/app/QueuedWork;->mNumWaits:I

    .line 208
    rem-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_61

    const-wide/16 v10, 0x200

    cmp-long v5, v7, v10

    if-lez v5, :cond_69

    .line 209
    :cond_61
    sget-object v5, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "waited: "

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 212
    .end local v7    # "waitTime":J
    :cond_69
    monitor-exit v6

    .line 213
    return-void

    .line 212
    :catchall_6b
    move-exception v5

    monitor-exit v6
    :try_end_6d
    .catchall {:try_start_38 .. :try_end_6d} :catchall_6b

    throw v5

    .line 195
    .local v7, "finisher":Ljava/lang/Runnable;
    :cond_6e
    :try_start_6e
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_75

    .line 196
    .end local v7    # "finisher":Ljava/lang/Runnable;
    goto :goto_25

    .line 189
    :catchall_72
    move-exception v7

    :try_start_73
    monitor-exit v6
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    .end local v0    # "startTime":J
    .end local v2    # "hadMessages":Z
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_74
    throw v7
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 198
    .restart local v0    # "startTime":J
    .restart local v2    # "hadMessages":Z
    .restart local v3    # "handler":Landroid/os/Handler;
    .restart local v4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_75
    move-exception v6

    sput-boolean v5, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 199
    throw v6

    .line 180
    :catchall_79
    move-exception v5

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 181
    throw v5

    .line 174
    .end local v4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_7e
    move-exception v5

    :try_start_7f
    monitor-exit v4
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v5
.end method
