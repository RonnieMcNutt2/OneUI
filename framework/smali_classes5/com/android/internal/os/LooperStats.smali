.class public Lcom/android/internal/os/LooperStats;
.super Ljava/lang/Object;
.source "LooperStats.java"

# interfaces
.implements Landroid/os/Looper$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/LooperStats$Entry;,
        Lcom/android/internal/os/LooperStats$DispatchSession;,
        Lcom/android/internal/os/LooperStats$ExportedEntry;
    }
.end annotation


# static fields
.field public static final DEBUG_ENTRY_PREFIX:Ljava/lang/String; = "__DEBUG_"

.field public static final DEFAULT_IGNORE_BATTERY_STATUS:Z = false

.field private static final DISABLED_SCREEN_STATE_TRACKING_VALUE:Z = false

.field private static final SESSION_POOL_SIZE:I = 0x32


# instance fields
.field private mAddDebugEntries:Z

.field private mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

.field private mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

.field private final mEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/LooperStats$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntriesSizeCap:I

.field private final mHashCollisionEntry:Lcom/android/internal/os/LooperStats$Entry;

.field private mIgnoreBatteryStatus:Z

.field private final mLock:Ljava/lang/Object;

.field private final mOverflowEntry:Lcom/android/internal/os/LooperStats$Entry;

.field private mSamplingInterval:I

.field private final mSessionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/android/internal/os/LooperStats$DispatchSession;",
            ">;"
        }
    .end annotation
.end field

.field private mStartCurrentTime:J

.field private mStartElapsedTime:J

.field private mTrackScreenInteractive:Z


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "samplingInterval"    # I
    .param p2, "entriesSizeCap"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/LooperStats;->mEntries:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/LooperStats;->mLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Lcom/android/internal/os/LooperStats$Entry;

    const-string v1, "OVERFLOW"

    invoke-direct {v0, v1}, Lcom/android/internal/os/LooperStats$Entry;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/LooperStats;->mOverflowEntry:Lcom/android/internal/os/LooperStats$Entry;

    .line 49
    new-instance v0, Lcom/android/internal/os/LooperStats$Entry;

    const-string v1, "HASH_COLLISION"

    invoke-direct {v0, v1}, Lcom/android/internal/os/LooperStats$Entry;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/LooperStats;->mHashCollisionEntry:Lcom/android/internal/os/LooperStats$Entry;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/LooperStats;->mSessionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats;->mStartCurrentTime:J

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats;->mStartElapsedTime:J

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/LooperStats;->mAddDebugEntries:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/internal/os/LooperStats;->mTrackScreenInteractive:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/internal/os/LooperStats;->mIgnoreBatteryStatus:Z

    .line 63
    iput p1, p0, Lcom/android/internal/os/LooperStats;->mSamplingInterval:I

    .line 64
    iput p2, p0, Lcom/android/internal/os/LooperStats;->mEntriesSizeCap:I

    .line 65
    return-void
.end method

.method private createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/LooperStats$ExportedEntry;
    .registers 7
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 184
    new-instance v0, Lcom/android/internal/os/LooperStats$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "__DEBUG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/LooperStats$Entry;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "entry":Lcom/android/internal/os/LooperStats$Entry;
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/android/internal/os/LooperStats$Entry;->messageCount:J

    .line 186
    iput-wide v1, v0, Lcom/android/internal/os/LooperStats$Entry;->recordedMessageCount:J

    .line 187
    iput-wide p2, v0, Lcom/android/internal/os/LooperStats$Entry;->totalLatencyMicro:J

    .line 188
    new-instance v1, Lcom/android/internal/os/LooperStats$ExportedEntry;

    invoke-direct {v1, v0}, Lcom/android/internal/os/LooperStats$ExportedEntry;-><init>(Lcom/android/internal/os/LooperStats$Entry;)V

    return-object v1
.end method

.method private deviceStateAllowsCollection()Z
    .registers 4

    .line 144
    iget-boolean v0, p0, Lcom/android/internal/os/LooperStats;->mIgnoreBatteryStatus:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 145
    return v1

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 148
    return v2

    .line 150
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 151
    return v2

    .line 153
    :cond_13
    return v1
.end method

.method private findEntry(Landroid/os/Message;Z)Lcom/android/internal/os/LooperStats$Entry;
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "allowCreateNew"    # Z

    .line 244
    iget-boolean v0, p0, Lcom/android/internal/os/LooperStats;->mTrackScreenInteractive:Z

    if-eqz v0, :cond_b

    .line 245
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isScreenInteractive()Z

    move-result v0

    goto :goto_c

    .line 246
    :cond_b
    const/4 v0, 0x0

    :goto_c
    nop

    .line 247
    .local v0, "isInteractive":Z
    invoke-static {p1, v0}, Lcom/android/internal/os/LooperStats$Entry;->idFor(Landroid/os/Message;Z)I

    move-result v1

    .line 249
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/internal/os/LooperStats;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 250
    :try_start_14
    iget-object v3, p0, Lcom/android/internal/os/LooperStats;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/LooperStats$Entry;

    .line 251
    .local v3, "entry":Lcom/android/internal/os/LooperStats$Entry;
    if-nez v3, :cond_3c

    .line 252
    if-nez p2, :cond_23

    .line 253
    monitor-exit v2

    const/4 v2, 0x0

    return-object v2

    .line 254
    :cond_23
    iget-object v4, p0, Lcom/android/internal/os/LooperStats;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iget v5, p0, Lcom/android/internal/os/LooperStats;->mEntriesSizeCap:I

    if-lt v4, v5, :cond_31

    .line 256
    iget-object v4, p0, Lcom/android/internal/os/LooperStats;->mOverflowEntry:Lcom/android/internal/os/LooperStats$Entry;

    monitor-exit v2

    return-object v4

    .line 258
    :cond_31
    new-instance v4, Lcom/android/internal/os/LooperStats$Entry;

    invoke-direct {v4, p1, v0}, Lcom/android/internal/os/LooperStats$Entry;-><init>(Landroid/os/Message;Z)V

    move-object v3, v4

    .line 259
    iget-object v4, p0, Lcom/android/internal/os/LooperStats;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    :cond_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_74

    .line 264
    iget v2, v3, Lcom/android/internal/os/LooperStats$Entry;->workSourceUid:I

    iget v4, p1, Landroid/os/Message;->workSourceUid:I

    if-ne v2, v4, :cond_71

    iget-object v2, v3, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    .line 265
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v2, v4, :cond_71

    iget-object v2, v3, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    .line 266
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v2, v4, :cond_71

    iget-boolean v2, v3, Lcom/android/internal/os/LooperStats$Entry;->isInteractive:Z

    if-eq v2, v0, :cond_70

    goto :goto_71

    .line 271
    :cond_70
    return-object v3

    .line 269
    :cond_71
    :goto_71
    iget-object v2, p0, Lcom/android/internal/os/LooperStats;->mHashCollisionEntry:Lcom/android/internal/os/LooperStats$Entry;

    return-object v2

    .line 262
    .end local v3    # "entry":Lcom/android/internal/os/LooperStats$Entry;
    :catchall_74
    move-exception v3

    :try_start_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v3
.end method

.method private maybeAddSpecialEntry(Ljava/util/List;Lcom/android/internal/os/LooperStats$Entry;)V
    .registers 7
    .param p2, "specialEntry"    # Lcom/android/internal/os/LooperStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/LooperStats$ExportedEntry;",
            ">;",
            "Lcom/android/internal/os/LooperStats$Entry;",
            ")V"
        }
    .end annotation

    .line 205
    .local p1, "exportedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    monitor-enter p2

    .line 206
    :try_start_1
    iget-wide v0, p2, Lcom/android/internal/os/LooperStats$Entry;->messageCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    iget-wide v0, p2, Lcom/android/internal/os/LooperStats$Entry;->exceptionCount:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 207
    :cond_f
    new-instance v0, Lcom/android/internal/os/LooperStats$ExportedEntry;

    invoke-direct {v0, p2}, Lcom/android/internal/os/LooperStats$ExportedEntry;-><init>(Lcom/android/internal/os/LooperStats$Entry;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_17
    monitor-exit p2

    .line 210
    return-void

    .line 209
    :catchall_19
    move-exception v0

    monitor-exit p2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private recycleSession(Lcom/android/internal/os/LooperStats$DispatchSession;)V
    .registers 4
    .param p1, "session"    # Lcom/android/internal/os/LooperStats$DispatchSession;

    .line 275
    sget-object v0, Lcom/android/internal/os/LooperStats$DispatchSession;->NOT_SAMPLED:Lcom/android/internal/os/LooperStats$DispatchSession;

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mSessionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_13

    .line 276
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mSessionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_13
    return-void
.end method


# virtual methods
.method public dispatchingThrewException(Ljava/lang/Object;Landroid/os/Message;Ljava/lang/Exception;)V
    .registers 10
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "exception"    # Ljava/lang/Exception;

    .line 128
    invoke-direct {p0}, Lcom/android/internal/os/LooperStats;->deviceStateAllowsCollection()Z

    move-result v0

    if-nez v0, :cond_7

    .line 129
    return-void

    .line 132
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/android/internal/os/LooperStats$DispatchSession;

    .line 133
    .local v0, "session":Lcom/android/internal/os/LooperStats$DispatchSession;
    sget-object v1, Lcom/android/internal/os/LooperStats$DispatchSession;->NOT_SAMPLED:Lcom/android/internal/os/LooperStats$DispatchSession;

    if-eq v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-direct {p0, p2, v1}, Lcom/android/internal/os/LooperStats;->findEntry(Landroid/os/Message;Z)Lcom/android/internal/os/LooperStats$Entry;

    move-result-object v1

    .line 134
    .local v1, "entry":Lcom/android/internal/os/LooperStats$Entry;
    if-eqz v1, :cond_24

    .line 135
    monitor-enter v1

    .line 136
    :try_start_18
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$Entry;->exceptionCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/internal/os/LooperStats$Entry;->exceptionCount:J

    .line 137
    monitor-exit v1

    goto :goto_24

    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw v2

    .line 140
    :cond_24
    :goto_24
    invoke-direct {p0, v0}, Lcom/android/internal/os/LooperStats;->recycleSession(Lcom/android/internal/os/LooperStats$DispatchSession;)V

    .line 141
    return-void
.end method

.method public getBatteryTimeMillis()J
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method protected getElapsedRealtimeMicro()J
    .registers 5

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/os/LooperStats$ExportedEntry;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/LooperStats;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 161
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v2, "exportedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_29

    .line 163
    iget-object v4, p0, Lcom/android/internal/os/LooperStats;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/LooperStats$Entry;

    .line 164
    .local v4, "entry":Lcom/android/internal/os/LooperStats$Entry;
    monitor-enter v4
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_72

    .line 165
    :try_start_1a
    new-instance v5, Lcom/android/internal/os/LooperStats$ExportedEntry;

    invoke-direct {v5, v4}, Lcom/android/internal/os/LooperStats$ExportedEntry;-><init>(Lcom/android/internal/os/LooperStats$Entry;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    monitor-exit v4

    .line 162
    .end local v4    # "entry":Lcom/android/internal/os/LooperStats$Entry;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 166
    .restart local v4    # "entry":Lcom/android/internal/os/LooperStats$Entry;
    :catchall_26
    move-exception v5

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    .end local p0    # "this":Lcom/android/internal/os/LooperStats;
    :try_start_28
    throw v5

    .line 168
    .end local v1    # "size":I
    .end local v3    # "i":I
    .end local v4    # "entry":Lcom/android/internal/os/LooperStats$Entry;
    .restart local p0    # "this":Lcom/android/internal/os/LooperStats;
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_72

    .line 170
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mOverflowEntry:Lcom/android/internal/os/LooperStats$Entry;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/os/LooperStats;->maybeAddSpecialEntry(Ljava/util/List;Lcom/android/internal/os/LooperStats$Entry;)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mHashCollisionEntry:Lcom/android/internal/os/LooperStats$Entry;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/os/LooperStats;->maybeAddSpecialEntry(Ljava/util/List;Lcom/android/internal/os/LooperStats$Entry;)V

    .line 173
    iget-boolean v0, p0, Lcom/android/internal/os/LooperStats;->mAddDebugEntries:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_71

    .line 174
    const-string/jumbo v0, "start_time_millis"

    iget-wide v3, p0, Lcom/android/internal/os/LooperStats;->mStartElapsedTime:J

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/os/LooperStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/LooperStats$ExportedEntry;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v0, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/os/LooperStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/LooperStats$ExportedEntry;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v0, "battery_time_millis"

    iget-object v1, p0, Lcom/android/internal/os/LooperStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 177
    invoke-virtual {v1}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/os/LooperStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/LooperStats$ExportedEntry;

    move-result-object v0

    .line 176
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const-string/jumbo v0, "sampling_interval"

    iget v1, p0, Lcom/android/internal/os/LooperStats;->mSamplingInterval:I

    int-to-long v3, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/os/LooperStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/LooperStats$ExportedEntry;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_71
    return-object v2

    .line 168
    .end local v2    # "exportedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    :catchall_72
    move-exception v1

    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v1
.end method

.method public getStartElapsedTimeMillis()J
    .registers 3

    .line 197
    iget-wide v0, p0, Lcom/android/internal/os/LooperStats;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartTimeMillis()J
    .registers 3

    .line 193
    iget-wide v0, p0, Lcom/android/internal/os/LooperStats;->mStartCurrentTime:J

    return-wide v0
.end method

.method protected getSystemUptimeMillis()J
    .registers 3

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getThreadTimeMicro()J
    .registers 3

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    return-wide v0
.end method

.method public messageDispatchStarting()Ljava/lang/Object;
    .registers 4

    .line 82
    invoke-direct {p0}, Lcom/android/internal/os/LooperStats;->deviceStateAllowsCollection()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/internal/os/LooperStats;->shouldCollectDetailedData()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 83
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mSessionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LooperStats$DispatchSession;

    .line 84
    .local v0, "session":Lcom/android/internal/os/LooperStats$DispatchSession;
    if-nez v0, :cond_1d

    new-instance v1, Lcom/android/internal/os/LooperStats$DispatchSession;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/LooperStats$DispatchSession;-><init>(Lcom/android/internal/os/LooperStats$DispatchSession-IA;)V

    goto :goto_1e

    :cond_1d
    move-object v1, v0

    :goto_1e
    move-object v0, v1

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/os/LooperStats;->getElapsedRealtimeMicro()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/LooperStats$DispatchSession;->startTimeMicro:J

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/os/LooperStats;->getThreadTimeMicro()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/LooperStats$DispatchSession;->cpuStartMicro:J

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/os/LooperStats;->getSystemUptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/LooperStats$DispatchSession;->systemUptimeMillis:J

    .line 88
    return-object v0

    .line 91
    .end local v0    # "session":Lcom/android/internal/os/LooperStats$DispatchSession;
    :cond_32
    sget-object v0, Lcom/android/internal/os/LooperStats$DispatchSession;->NOT_SAMPLED:Lcom/android/internal/os/LooperStats$DispatchSession;

    return-object v0
.end method

.method public messageDispatched(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 20
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .line 96
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/LooperStats;->deviceStateAllowsCollection()Z

    move-result v0

    if-nez v0, :cond_9

    .line 97
    return-void

    .line 100
    :cond_9
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/os/LooperStats$DispatchSession;

    .line 101
    .local v2, "session":Lcom/android/internal/os/LooperStats$DispatchSession;
    sget-object v0, Lcom/android/internal/os/LooperStats$DispatchSession;->NOT_SAMPLED:Lcom/android/internal/os/LooperStats$DispatchSession;

    if-eq v2, v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    move-object/from16 v3, p2

    invoke-direct {v1, v3, v0}, Lcom/android/internal/os/LooperStats;->findEntry(Landroid/os/Message;Z)Lcom/android/internal/os/LooperStats$Entry;

    move-result-object v4

    .line 102
    .local v4, "entry":Lcom/android/internal/os/LooperStats$Entry;
    if-eqz v4, :cond_81

    .line 103
    monitor-enter v4

    .line 104
    :try_start_1d
    iget-wide v5, v4, Lcom/android/internal/os/LooperStats$Entry;->messageCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/internal/os/LooperStats$Entry;->messageCount:J

    .line 105
    sget-object v0, Lcom/android/internal/os/LooperStats$DispatchSession;->NOT_SAMPLED:Lcom/android/internal/os/LooperStats$DispatchSession;

    if-eq v2, v0, :cond_7c

    .line 106
    iget-wide v5, v4, Lcom/android/internal/os/LooperStats$Entry;->recordedMessageCount:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/internal/os/LooperStats$Entry;->recordedMessageCount:J

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/LooperStats;->getElapsedRealtimeMicro()J

    move-result-wide v5

    iget-wide v9, v2, Lcom/android/internal/os/LooperStats$DispatchSession;->startTimeMicro:J

    sub-long/2addr v5, v9

    .line 108
    .local v5, "latency":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/LooperStats;->getThreadTimeMicro()J

    move-result-wide v9

    iget-wide v11, v2, Lcom/android/internal/os/LooperStats$DispatchSession;->cpuStartMicro:J

    sub-long/2addr v9, v11

    .line 109
    .local v9, "cpuUsage":J
    iget-wide v11, v4, Lcom/android/internal/os/LooperStats$Entry;->totalLatencyMicro:J

    add-long/2addr v11, v5

    iput-wide v11, v4, Lcom/android/internal/os/LooperStats$Entry;->totalLatencyMicro:J

    .line 110
    iget-wide v11, v4, Lcom/android/internal/os/LooperStats$Entry;->maxLatencyMicro:J

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v4, Lcom/android/internal/os/LooperStats$Entry;->maxLatencyMicro:J

    .line 111
    iget-wide v11, v4, Lcom/android/internal/os/LooperStats$Entry;->cpuUsageMicro:J

    add-long/2addr v11, v9

    iput-wide v11, v4, Lcom/android/internal/os/LooperStats$Entry;->cpuUsageMicro:J

    .line 112
    iget-wide v11, v4, Lcom/android/internal/os/LooperStats$Entry;->maxCpuUsageMicro:J

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v4, Lcom/android/internal/os/LooperStats$Entry;->maxCpuUsageMicro:J

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getWhen()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_7c

    .line 114
    iget-wide v11, v2, Lcom/android/internal/os/LooperStats$DispatchSession;->systemUptimeMillis:J

    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getWhen()J

    move-result-wide v15

    sub-long/2addr v11, v15

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 115
    .local v11, "delay":J
    iget-wide v13, v4, Lcom/android/internal/os/LooperStats$Entry;->delayMillis:J

    add-long/2addr v13, v11

    iput-wide v13, v4, Lcom/android/internal/os/LooperStats$Entry;->delayMillis:J

    .line 116
    iget-wide v13, v4, Lcom/android/internal/os/LooperStats$Entry;->maxDelayMillis:J

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    iput-wide v13, v4, Lcom/android/internal/os/LooperStats$Entry;->maxDelayMillis:J

    .line 117
    iget-wide v13, v4, Lcom/android/internal/os/LooperStats$Entry;->recordedDelayMessageCount:J

    add-long/2addr v13, v7

    iput-wide v13, v4, Lcom/android/internal/os/LooperStats$Entry;->recordedDelayMessageCount:J

    .line 120
    .end local v5    # "latency":J
    .end local v9    # "cpuUsage":J
    .end local v11    # "delay":J
    :cond_7c
    monitor-exit v4

    goto :goto_81

    :catchall_7e
    move-exception v0

    monitor-exit v4
    :try_end_80
    .catchall {:try_start_1d .. :try_end_80} :catchall_7e

    throw v0

    .line 123
    :cond_81
    :goto_81
    invoke-direct {v1, v2}, Lcom/android/internal/os/LooperStats;->recycleSession(Lcom/android/internal/os/LooperStats$DispatchSession;)V

    .line 124
    return-void
.end method

.method public reset()V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/LooperStats;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 216
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_35

    .line 217
    iget-object v1, p0, Lcom/android/internal/os/LooperStats;->mHashCollisionEntry:Lcom/android/internal/os/LooperStats$Entry;

    monitor-enter v1

    .line 218
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mHashCollisionEntry:Lcom/android/internal/os/LooperStats$Entry;

    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats$Entry;->reset()V

    .line 219
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_32

    .line 220
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mOverflowEntry:Lcom/android/internal/os/LooperStats$Entry;

    monitor-enter v0

    .line 221
    :try_start_15
    iget-object v1, p0, Lcom/android/internal/os/LooperStats;->mOverflowEntry:Lcom/android/internal/os/LooperStats$Entry;

    invoke-virtual {v1}, Lcom/android/internal/os/LooperStats$Entry;->reset()V

    .line 222
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_2f

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats;->mStartCurrentTime:J

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats;->mStartElapsedTime:J

    .line 225
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_2e

    .line 226
    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->reset()V

    .line 228
    :cond_2e
    return-void

    .line 222
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1

    .line 219
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 216
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public setAddDebugEntries(Z)V
    .registers 2
    .param p1, "addDebugEntries"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/internal/os/LooperStats;->mAddDebugEntries:Z

    .line 78
    return-void
.end method

.method public setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V
    .registers 3
    .param p1, "deviceState"    # Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 68
    iget-object v0, p0, Lcom/android/internal/os/LooperStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_7

    .line 69
    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->close()V

    .line 72
    :cond_7
    iput-object p1, p0, Lcom/android/internal/os/LooperStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/os/CachedDeviceState$Readonly;->createTimeOnBatteryStopwatch()Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LooperStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 74
    return-void
.end method

.method public setIgnoreBatteryStatus(Z)V
    .registers 2
    .param p1, "ignore"    # Z

    .line 239
    iput-boolean p1, p0, Lcom/android/internal/os/LooperStats;->mIgnoreBatteryStatus:Z

    .line 240
    return-void
.end method

.method public setSamplingInterval(I)V
    .registers 2
    .param p1, "samplingInterval"    # I

    .line 231
    iput p1, p0, Lcom/android/internal/os/LooperStats;->mSamplingInterval:I

    .line 232
    return-void
.end method

.method public setTrackScreenInteractive(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 235
    iput-boolean p1, p0, Lcom/android/internal/os/LooperStats;->mTrackScreenInteractive:Z

    .line 236
    return-void
.end method

.method protected shouldCollectDetailedData()Z
    .registers 3

    .line 293
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/LooperStats;->mSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
