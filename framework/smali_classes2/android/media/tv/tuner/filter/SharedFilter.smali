.class public final Landroid/media/tv/tuner/filter/SharedFilter;
.super Ljava/lang/Object;
.source "SharedFilter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/SharedFilter$Status;
    }
.end annotation


# static fields
.field public static final STATUS_INACCESSIBLE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "SharedFilter"


# instance fields
.field private mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

.field private mCallbackLock:Ljava/lang/Object;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mIsAccessible:Z

.field private mIsClosed:Z

.field private mLock:Ljava/lang/Object;

.field private mNativeContext:J


# direct methods
.method public static synthetic $r8$lambda$KVUBwJ0M2sH75XxQ70PeEoNMlLw(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter;->lambda$onFilterEvent$1([Landroid/media/tv/tuner/filter/FilterEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mbsny9YxMJWiojSGk6eSMH3Wbio(Landroid/media/tv/tuner/filter/SharedFilter;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter;->lambda$onFilterStatus$0(I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    .line 58
    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method private synthetic lambda$onFilterEvent$1([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 7
    .param p1, "events"    # [Landroid/media/tv/tuner/filter/FilterEvent;

    .line 95
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v1, :cond_b

    .line 97
    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilterCallback;->onFilterEvent(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    goto :goto_1e

    .line 99
    :cond_b
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1e

    aget-object v3, p1, v2

    .line 100
    .local v3, "event":Landroid/media/tv/tuner/filter/FilterEvent;
    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_1b

    .line 101
    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    .line 99
    .end local v3    # "event":Landroid/media/tv/tuner/filter/FilterEvent;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 105
    :cond_1e
    :goto_1e
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private synthetic lambda$onFilterStatus$0(I)V
    .registers 4
    .param p1, "status"    # I

    .line 81
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v1, :cond_a

    .line 83
    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/SharedFilter;I)V

    .line 85
    :cond_a
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private native nativeFlushSharedFilter()I
.end method

.method private native nativeSharedClose()I
.end method

.method private native nativeSharedRead([BJJ)I
.end method

.method private native nativeStartSharedFilter()I
.end method

.method private native nativeStopSharedFilter()I
.end method

.method private onFilterEvent([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 7
    .param p1, "events"    # [Landroid/media/tv/tuner/filter/FilterEvent;

    .line 92
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_14

    .line 94
    new-instance v2, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_27

    .line 108
    :cond_14
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_27

    aget-object v3, p1, v2

    .line 109
    .local v3, "event":Landroid/media/tv/tuner/filter/FilterEvent;
    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_24

    .line 110
    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    .line 108
    .end local v3    # "event":Landroid/media/tv/tuner/filter/FilterEvent;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 114
    :cond_27
    :goto_27
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private onFilterStatus(I)V
    .registers 5
    .param p1, "status"    # I

    .line 73
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    const/16 v1, 0x80

    if-ne p1, v1, :cond_a

    .line 75
    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    .line 77
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_23

    .line 78
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_e
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1e

    .line 80
    new-instance v2, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/filter/SharedFilter;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    :cond_1e
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_20

    throw v0

    .line 77
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 201
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    if-eqz v1, :cond_9

    .line 203
    monitor-exit v0

    return-void

    .line 205
    :cond_9
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    .line 206
    const/4 v2, 0x0

    :try_start_d
    iput-object v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    .line 207
    iput-object v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 208
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1c

    .line 209
    :try_start_12
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeSharedClose()I

    .line 210
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    .line 211
    iput-object v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    .line 212
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 213
    return-void

    .line 208
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local p0    # "this":Landroid/media/tv/tuner/filter/SharedFilter;
    :try_start_1e
    throw v2

    .line 212
    .restart local p0    # "this":Landroid/media/tv/tuner/filter/SharedFilter;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public flush()I
    .registers 4

    .line 172
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    .line 174
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 175
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeFlushSharedFilter()I

    move-result v1

    monitor-exit v0

    return v1

    .line 176
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getCallback()Landroid/media/tv/tuner/filter/SharedFilterCallback;
    .registers 3

    .line 127
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public read([BJJ)I
    .registers 15
    .param p1, "buffer"    # [B
    .param p2, "offset"    # J
    .param p4, "size"    # J

    .line 188
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    .line 190
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 191
    array-length v1, p1

    int-to-long v1, v1

    sub-long/2addr v1, p2

    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_21

    .line 192
    .end local p4    # "size":J
    .local v7, "size":J
    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    :try_start_1b
    invoke-direct/range {v3 .. v8}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeSharedRead([BJJ)I

    move-result p4

    monitor-exit v0

    return p4

    .line 193
    .end local v7    # "size":J
    .restart local p4    # "size":J
    :catchall_21
    move-exception v1

    move-wide v7, p4

    move-object p4, v1

    .end local p4    # "size":J
    .restart local v7    # "size":J
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_26

    throw p4

    :catchall_26
    move-exception p4

    goto :goto_24
.end method

.method public setCallback(Landroid/media/tv/tuner/filter/SharedFilterCallback;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "cb"    # Landroid/media/tv/tuner/filter/SharedFilterCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 119
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    iput-object p1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    .line 121
    iput-object p2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public start()I
    .registers 4

    .line 139
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    .line 141
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 142
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeStartSharedFilter()I

    move-result v1

    monitor-exit v0

    return v1

    .line 143
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public stop()I
    .registers 4

    .line 155
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    .line 157
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 158
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeStopSharedFilter()I

    move-result v1

    monitor-exit v0

    return v1

    .line 159
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method
