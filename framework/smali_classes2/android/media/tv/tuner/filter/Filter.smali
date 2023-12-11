.class public Landroid/media/tv/tuner/filter/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/Filter$MonitorEventMask;,
        Landroid/media/tv/tuner/filter/Filter$ScramblingStatus;,
        Landroid/media/tv/tuner/filter/Filter$Status;,
        Landroid/media/tv/tuner/filter/Filter$Subtype;,
        Landroid/media/tv/tuner/filter/Filter$Type;
    }
.end annotation


# static fields
.field public static final MONITOR_EVENT_IP_CID_CHANGE:I = 0x2

.field public static final MONITOR_EVENT_SCRAMBLING_STATUS:I = 0x1

.field public static final SCRAMBLING_STATUS_NOT_SCRAMBLED:I = 0x2

.field public static final SCRAMBLING_STATUS_SCRAMBLED:I = 0x4

.field public static final SCRAMBLING_STATUS_UNKNOWN:I = 0x1

.field public static final STATUS_DATA_READY:I = 0x1

.field public static final STATUS_HIGH_WATER:I = 0x4

.field public static final STATUS_LOW_WATER:I = 0x2

.field public static final STATUS_NO_DATA:I = 0x10

.field public static final STATUS_OVERFLOW:I = 0x8

.field public static final SUBTYPE_AUDIO:I = 0x3

.field public static final SUBTYPE_DOWNLOAD:I = 0x5

.field public static final SUBTYPE_IP:I = 0xd

.field public static final SUBTYPE_IP_PAYLOAD:I = 0xc

.field public static final SUBTYPE_MMTP:I = 0xa

.field public static final SUBTYPE_NTP:I = 0xb

.field public static final SUBTYPE_PAYLOAD_THROUGH:I = 0xe

.field public static final SUBTYPE_PCR:I = 0x8

.field public static final SUBTYPE_PES:I = 0x2

.field public static final SUBTYPE_PTP:I = 0x10

.field public static final SUBTYPE_RECORD:I = 0x6

.field public static final SUBTYPE_SECTION:I = 0x1

.field public static final SUBTYPE_TEMI:I = 0x9

.field public static final SUBTYPE_TLV:I = 0xf

.field public static final SUBTYPE_TS:I = 0x7

.field public static final SUBTYPE_UNDEFINED:I = 0x0

.field public static final SUBTYPE_VIDEO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Filter"

.field public static final TYPE_ALP:I = 0x10

.field public static final TYPE_IP:I = 0x4

.field public static final TYPE_MMTP:I = 0x2

.field public static final TYPE_TLV:I = 0x8

.field public static final TYPE_TS:I = 0x1

.field public static final TYPE_UNDEFINED:I


# instance fields
.field private mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

.field private final mCallbackLock:Ljava/lang/Object;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mId:J

.field private mIsClosed:Z

.field private mIsShared:Z

.field private mIsStarted:Z

.field private final mLock:Ljava/lang/Object;

.field private mMainType:I

.field private mNativeContext:J

.field private mSource:Landroid/media/tv/tuner/filter/Filter;

.field private mStarted:Z

.field private mSubtype:I


# direct methods
.method public static synthetic $r8$lambda$V80HNmN111iYJb6Xr5NyGANinF4(Landroid/media/tv/tuner/filter/Filter;[Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->lambda$onFilterEvent$1([Landroid/media/tv/tuner/filter/FilterEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pLVZkAuylT0a_kav2KCDkBRYFPI(Landroid/media/tv/tuner/filter/Filter;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->lambda$onFilterStatus$0(I)V

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .param p1, "id"    # J

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    .line 244
    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    .line 245
    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    .line 246
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    .line 266
    iput-wide p1, p0, Landroid/media/tv/tuner/filter/Filter;->mId:J

    .line 267
    return-void
.end method

.method private synthetic lambda$onFilterEvent$1([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 7
    .param p1, "events"    # [Landroid/media/tv/tuner/filter/FilterEvent;

    .line 292
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3b

    if-eqz v1, :cond_26

    .line 295
    :try_start_7
    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterEvent(Landroid/media/tv/tuner/filter/Filter;[Landroid/media/tv/tuner/filter/FilterEvent;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_3b

    .line 299
    goto :goto_39

    .line 297
    :catch_b
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_c
    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    nop

    .end local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_39

    .line 301
    :cond_26
    array-length v1, p1

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_39

    aget-object v3, p1, v2

    .line 302
    .local v3, "event":Landroid/media/tv/tuner/filter/FilterEvent;
    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_36

    .line 303
    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    .line 301
    .end local v3    # "event":Landroid/media/tv/tuner/filter/FilterEvent;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 307
    :cond_39
    :goto_39
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private synthetic lambda$onFilterStatus$0(I)V
    .registers 7
    .param p1, "status"    # I

    .line 273
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_26

    if-eqz v1, :cond_24

    .line 276
    :try_start_7
    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/Filter;I)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_26

    .line 280
    goto :goto_24

    .line 278
    :catch_b
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_c
    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_24
    :goto_24
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_26

    throw v1
.end method

.method private native nativeAcquireSharedFilterToken()Ljava/lang/String;
.end method

.method private native nativeClose()I
.end method

.method private native nativeConfigureFilter(IILandroid/media/tv/tuner/filter/FilterConfiguration;)I
.end method

.method private native nativeConfigureMonitorEvent(I)I
.end method

.method private native nativeFlushFilter()I
.end method

.method private native nativeFreeSharedFilterToken(Ljava/lang/String;)V
.end method

.method private native nativeGetId()I
.end method

.method private native nativeGetId64Bit()J
.end method

.method private native nativeRead([BJJ)I
.end method

.method private native nativeSetDataSizeDelayHint(I)I
.end method

.method private native nativeSetDataSource(Landroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native nativeSetTimeDelayHint(I)I
.end method

.method private native nativeStartFilter()I
.end method

.method private native nativeStopFilter()I
.end method

.method private onFilterEvent([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 7
    .param p1, "events"    # [Landroid/media/tv/tuner/filter/FilterEvent;

    .line 289
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_14

    .line 291
    new-instance v2, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/filter/Filter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_27

    .line 310
    :cond_14
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_27

    aget-object v3, p1, v2

    .line 311
    .local v3, "event":Landroid/media/tv/tuner/filter/FilterEvent;
    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_24

    .line 312
    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    .line 310
    .end local v3    # "event":Landroid/media/tv/tuner/filter/FilterEvent;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 316
    :cond_27
    :goto_27
    monitor-exit v0

    .line 317
    return-void

    .line 316
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

    .line 270
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    .line 272
    new-instance v2, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/filter/Filter;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 285
    :cond_13
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method


# virtual methods
.method public acquireSharedFilterToken()Ljava/lang/String;
    .registers 5

    .line 614
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 616
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_13

    goto :goto_1e

    .line 621
    :cond_13
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeAcquireSharedFilterToken()Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 623
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    .line 625
    :cond_1c
    monitor-exit v0

    return-object v1

    .line 617
    .end local v1    # "token":Ljava/lang/String;
    :cond_1e
    :goto_1e
    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire shared filter in a wrong state, started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "shared: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 626
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public close()V
    .registers 4

    .line 588
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    .line 590
    iput-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 591
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_29

    .line 593
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 594
    :try_start_c
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    if-eqz v0, :cond_12

    .line 595
    monitor-exit v1

    return-void

    .line 597
    :cond_12
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeClose()I

    move-result v0

    .line 598
    .local v0, "res":I
    if-eqz v0, :cond_1e

    .line 599
    const-string v2, "Failed to close filter."

    invoke-static {v0, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    goto :goto_24

    .line 601
    :cond_1e
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    .line 602
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    .line 604
    .end local v0    # "res":I
    :goto_24
    monitor-exit v1

    .line 605
    return-void

    .line 604
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_26

    throw v0

    .line 591
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public configure(Landroid/media/tv/tuner/filter/FilterConfiguration;)I
    .registers 8
    .param p1, "config"    # Landroid/media/tv/tuner/filter/FilterConfiguration;

    .line 356
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 358
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 359
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 361
    :cond_11
    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getSettings()Landroid/media/tv/tuner/filter/Settings;

    move-result-object v1

    .line 362
    .local v1, "s":Landroid/media/tv/tuner/filter/Settings;
    if-nez v1, :cond_1a

    iget v2, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    goto :goto_1e

    :cond_1a
    invoke-virtual {v1}, Landroid/media/tv/tuner/filter/Settings;->getType()I

    move-result v2

    .line 363
    .local v2, "subType":I
    :goto_1e
    iget v3, p0, Landroid/media/tv/tuner/filter/Filter;->mMainType:I

    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getType()I

    move-result v4

    if-ne v3, v4, :cond_6f

    iget v3, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    if-ne v3, v2, :cond_6f

    .line 369
    instance-of v3, v1, Landroid/media/tv/tuner/filter/RecordSettings;

    if-eqz v3, :cond_65

    move-object v3, v1

    check-cast v3, Landroid/media/tv/tuner/filter/RecordSettings;

    .line 370
    invoke-virtual {v3}, Landroid/media/tv/tuner/filter/RecordSettings;->getScIndexType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_65

    .line 371
    const/high16 v3, 0x30000

    invoke-static {v3}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v3

    if-nez v3, :cond_65

    .line 373
    const-string v3, "Filter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tuner version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/media/tv/tuner/TunerVersionChecker;->getTunerVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not support VVC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 377
    :cond_65
    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getType()I

    move-result v3

    invoke-direct {p0, v3, v2, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeConfigureFilter(IILandroid/media/tv/tuner/filter/FilterConfiguration;)I

    move-result v3

    monitor-exit v0

    return v3

    .line 364
    :cond_6f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid filter config. filter main type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/tv/tuner/filter/Filter;->mMainType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filter subtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". config main type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 366
    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config subtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/filter/Filter;
    .end local p1    # "config":Landroid/media/tv/tuner/filter/FilterConfiguration;
    throw v3

    .line 378
    .end local v1    # "s":Landroid/media/tv/tuner/filter/Settings;
    .end local v2    # "subType":I
    .restart local p0    # "this":Landroid/media/tv/tuner/filter/Filter;
    .restart local p1    # "config":Landroid/media/tv/tuner/filter/FilterConfiguration;
    :catchall_ae
    move-exception v1

    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_3 .. :try_end_b0} :catchall_ae

    throw v1
.end method

.method public delayCallbackForDurationMillis(J)I
    .registers 5
    .param p1, "durationInMs"    # J

    .line 661
    const/high16 v0, 0x20000

    const-string v1, "setTimeDelayHint"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 663
    const/4 v0, 0x1

    return v0

    .line 666
    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_26

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_26

    .line 667
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    long-to-int v1, p1

    :try_start_1d
    invoke-direct {p0, v1}, Landroid/media/tv/tuner/filter/Filter;->nativeSetTimeDelayHint(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 669
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_23

    throw v1

    .line 671
    :cond_26
    const/4 v0, 0x4

    return v0
.end method

.method public delayCallbackUntilBytesAccumulated(I)I
    .registers 4
    .param p1, "bytesAccumulated"    # I

    .line 691
    const/high16 v0, 0x20000

    const-string v1, "setTimeDelayHint"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 693
    const/4 v0, 0x1

    return v0

    .line 696
    :cond_c
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_f
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeSetDataSizeDelayHint(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 698
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_15

    throw v1
.end method

.method public flush()I
    .registers 4

    .line 549
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 551
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 552
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 554
    :cond_11
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeFlushFilter()I

    move-result v1

    monitor-exit v0

    return v1

    .line 555
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public freeSharedFilterToken(Ljava/lang/String;)V
    .registers 5
    .param p1, "filterToken"    # Ljava/lang/String;

    .line 635
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 637
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-nez v1, :cond_10

    .line 638
    monitor-exit v0

    return-void

    .line 640
    :cond_10
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeFreeSharedFilterToken(Ljava/lang/String;)V

    .line 641
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    .line 642
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getCallback()Landroid/media/tv/tuner/filter/FilterCallback;
    .registers 3

    .line 335
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    monitor-exit v0

    return-object v1

    .line 337
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getId()I
    .registers 4

    .line 387
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 389
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeGetId()I

    move-result v1

    monitor-exit v0

    return v1

    .line 390
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getIdLong()J
    .registers 4

    .line 397
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 399
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeGetId64Bit()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 400
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public read([BJJ)I
    .registers 15
    .param p1, "buffer"    # [B
    .param p2, "offset"    # J
    .param p4, "size"    # J

    .line 569
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 571
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 572
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 574
    :cond_11
    array-length v1, p1

    int-to-long v1, v1

    sub-long/2addr v1, p2

    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_24

    .line 575
    .end local p4    # "size":J
    .local v7, "size":J
    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    :try_start_1b
    invoke-direct/range {v3 .. v8}, Landroid/media/tv/tuner/filter/Filter;->nativeRead([BJJ)I

    move-result p4

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_21

    return p4

    .line 576
    :catchall_21
    move-exception v1

    move-wide p4, v7

    goto :goto_25

    .end local v7    # "size":J
    .restart local p4    # "size":J
    :catchall_24
    move-exception v1

    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setCallback(Landroid/media/tv/tuner/filter/FilterCallback;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "cb"    # Landroid/media/tv/tuner/filter/FilterCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 327
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    iput-object p1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    .line 329
    iput-object p2, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public setDataSource(Landroid/media/tv/tuner/filter/Filter;)I
    .registers 5
    .param p1, "source"    # Landroid/media/tv/tuner/filter/Filter;

    .line 463
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 465
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 466
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 468
    :cond_11
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mSource:Landroid/media/tv/tuner/filter/Filter;

    if-nez v1, :cond_1f

    .line 471
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeSetDataSource(Landroid/media/tv/tuner/filter/Filter;)I

    move-result v1

    .line 472
    .local v1, "res":I
    if-nez v1, :cond_1d

    .line 473
    iput-object p1, p0, Landroid/media/tv/tuner/filter/Filter;->mSource:Landroid/media/tv/tuner/filter/Filter;

    .line 475
    :cond_1d
    monitor-exit v0

    return v1

    .line 469
    .end local v1    # "res":I
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Data source is existing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/filter/Filter;
    .end local p1    # "source":Landroid/media/tv/tuner/filter/Filter;
    throw v1

    .line 476
    .restart local p0    # "this":Landroid/media/tv/tuner/filter/Filter;
    .restart local p1    # "source":Landroid/media/tv/tuner/filter/Filter;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public setMonitorEventMask(I)I
    .registers 5
    .param p1, "monitorEventMask"    # I

    .line 433
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 435
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 436
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 438
    :cond_11
    const-string v1, "setMonitorEventMask"

    const v2, 0x10001

    invoke-static {v2, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 440
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 442
    :cond_1f
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeConfigureMonitorEvent(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 443
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public setType(II)V
    .registers 4
    .param p1, "mainType"    # I
    .param p2, "subtype"    # I

    .line 321
    iput p1, p0, Landroid/media/tv/tuner/filter/Filter;->mMainType:I

    .line 322
    invoke-static {p1, p2}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    .line 323
    return-void
.end method

.method public start()I
    .registers 4

    .line 494
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 496
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 497
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 499
    :cond_11
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeStartFilter()I

    move-result v1

    .line 500
    .local v1, "res":I
    if-nez v1, :cond_1a

    .line 501
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    .line 503
    :cond_1a
    monitor-exit v0

    return v1

    .line 504
    .end local v1    # "res":I
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public stop()I
    .registers 4

    .line 524
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 526
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 527
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 529
    :cond_11
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeStopFilter()I

    move-result v1

    .line 530
    .local v1, "res":I
    if-nez v1, :cond_1a

    .line 531
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    .line 533
    :cond_1a
    monitor-exit v0

    return v1

    .line 534
    .end local v1    # "res":I
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method
