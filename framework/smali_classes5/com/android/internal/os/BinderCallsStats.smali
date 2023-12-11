.class public Lcom/android/internal/os/BinderCallsStats;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderCallsStats$Injector;,
        Lcom/android/internal/os/BinderCallsStats$UidEntry;,
        Lcom/android/internal/os/BinderCallsStats$CallStat;,
        Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;,
        Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;,
        Lcom/android/internal/os/BinderCallsStats$SettingsObserver;,
        Lcom/android/internal/os/BinderCallsStats$OverflowBinder;,
        Lcom/android/internal/os/BinderCallsStats$CallStatKey;
    }
.end annotation


# static fields
.field private static final BINDER_STATS_FILE_SIZE_THRESHOLD:J = 0x200000L

.field private static final CALL_SESSIONS_POOL_SIZE:I = 0x64

.field private static final CALL_STATS_OBSERVER_DEBOUNCE_MILLIS:I = 0x1388

.field private static final DEBUG_ENTRY_PREFIX:Ljava/lang/String; = "__DEBUG_"

.field public static final DEBUG_LEVEL_LOW:Z

.field public static final DEFAULT_COLLECT_LATENCY_DATA:Z = true

.field public static final DEFAULT_IGNORE_BATTERY_STATUS:Z = false

.field protected static final DEFAULT_TOP_ENTRY_NUMBER:I = 0x5

.field public static final DEFAULT_TRACK_DIRECT_CALLING_UID:Z = true

.field public static final DEFAULT_TRACK_SCREEN_INTERACTIVE:Z = false

.field public static final DETAILED_TRACKING_DEFAULT:Z = true

.field public static final ENABLED_DEFAULT:Z = true

.field private static final EXCEPTION_COUNT_OVERFLOW_NAME:Ljava/lang/String; = "overflow"

.field private static final INTERVAL_NEEDED_RESET_DATA_TIME_MILLIS:J = 0x2932e00L

.field public static final MAX_BINDER_CALL_STATS_COUNT_DEFAULT:I = 0x5dc

.field private static final MAX_EXCEPTION_COUNT_SIZE:I = 0x32

.field private static final OVERFLOW_BINDER:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field private static final OVERFLOW_DIRECT_CALLING_UID:I = -0x1

.field private static final OVERFLOW_PACKAGE_NAME:Ljava/lang/String; = "OVERFLOW"

.field private static final OVERFLOW_SCREEN_INTERACTIVE:Z = false

.field private static final OVERFLOW_TRANSACTION_CODE:I = -0x1

.field public static final PERIODIC_SAMPLING_INTERVAL_DEFAULT:I

.field public static final SAVED_LOCATION_FLAG:I = -0x1

.field public static final SHARDING_MODULO_DEFAULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BinderCallsStats"


# instance fields
.field private mAddDebugEntries:Z

.field private mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

.field private final mBinderStats:Lcom/android/internal/os/BinderStats;

.field private final mCallSessionsPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/os/BinderInternal$CallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mCallStatsCount:J

.field private mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

.field private final mCallStatsObserverHandler:Landroid/os/Handler;

.field private mCallStatsObserverRunnable:Ljava/lang/Runnable;

.field private mCollectLatencyData:Z

.field private mCollectedCallCount:J

.field private mCollectedCpuTime:J

.field private mCpuUsageThreshold:I

.field private mDetailedTracking:Z

.field private mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

.field private mEnablePackageStats:Z

.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderStats$BinderStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryLock:Ljava/lang/Object;

.field private final mExceptionCounts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreBatteryStatus:Z

.field private mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

.field private final mLock:Ljava/lang/Object;

.field private mMaxBinderCallStatsCount:I

.field private volatile mNativeTids:Landroid/util/IntArray;

.field private final mNativeTidsLock:Ljava/lang/Object;

.field private mNeededResetDataTime:J

.field private mPeriodicSamplingInterval:I

.field private final mPidToPackageMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private mRecordingAllTransactionsForUid:Z

.field private mSendUidsToObserver:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShardingModulo:I

.field private mShardingOffset:I

.field private mStartCurrentTime:J

.field private mStartElapsedTime:J

.field private mTrackDirectCallingUid:Z

.field private mTrackScreenInteractive:Z

.field private final mUidAllEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2mV8S8yp1kRIXGIMfT1sN1ZVO5Y(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByActCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6OT4SvUlJjWv3GG3n7NmzuqSn_k(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByBinderClassAndCode(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Pr85-6HhTBhjaOk50JenXUlo6J8(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallStatsObserver(Lcom/android/internal/os/BinderCallsStats;)Lcom/android/internal/os/BinderInternal$CallStatsObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/internal/os/BinderCallsStats;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSendUidsToObserver(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidEntries(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnoteCallsStatsDelayed(Lcom/android/internal/os/BinderCallsStats;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteCallsStatsDelayed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetOVERFLOW_BINDER()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/android/internal/os/BinderCallsStats;->OVERFLOW_BINDER:Ljava/lang/Class;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 86
    nop

    .line 87
    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4f4c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/BinderCallsStats;->DEBUG_LEVEL_LOW:Z

    .line 92
    if-eqz v0, :cond_17

    const/16 v0, 0x3e8

    goto :goto_19

    :cond_17
    const/16 v0, 0xa

    :goto_19
    sput v0, Lcom/android/internal/os/BinderCallsStats;->PERIODIC_SAMPLING_INTERVAL_DEFAULT:I

    .line 102
    const-class v0, Lcom/android/internal/os/BinderCallsStats$OverflowBinder;

    sput-object v0, Lcom/android/internal/os/BinderCallsStats;->OVERFLOW_BINDER:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats$Injector;)V
    .registers 3
    .param p1, "injector"    # Lcom/android/internal/os/BinderCallsStats$Injector;

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V

    .line 227
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V
    .registers 6
    .param p1, "injector"    # Lcom/android/internal/os/BinderCallsStats$Injector;
    .param p2, "processSource"    # I

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    .line 122
    sget v1, Lcom/android/internal/os/BinderCallsStats;->PERIODIC_SAMPLING_INTERVAL_DEFAULT:I

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    .line 123
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    .line 124
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    .line 129
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    .line 131
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    .line 133
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    .line 134
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    .line 136
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    .line 137
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    .line 141
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    .line 142
    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    .line 143
    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    .line 152
    iput v0, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    .line 159
    new-instance v0, Lcom/android/internal/os/BinderStats;

    invoke-direct {v0}, Lcom/android/internal/os/BinderStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    .line 163
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    .line 168
    new-instance v0, Landroid/util/ArraySet;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    .line 170
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BinderCallsStats$1;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTidsLock:Ljava/lang/Object;

    .line 207
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 230
    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats$Injector;->getRandomGenerator()Ljava/util/Random;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    .line 231
    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    .line 232
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BinderCallsStats$Injector;->getLatencyObserver(I)Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    .line 233
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    .line 234
    return-void
.end method

.method private canCollect()Z
    .registers 4

    .line 536
    sget-boolean v0, Lcom/android/internal/os/BinderCallsStats;->DEBUG_LEVEL_LOW:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 537
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-eqz v0, :cond_a

    .line 538
    return v1

    .line 540
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    if-eqz v0, :cond_f

    .line 541
    return v1

    .line 543
    :cond_f
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    const/4 v2, 0x0

    if-nez v0, :cond_15

    .line 544
    return v2

    .line 546
    :cond_15
    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 547
    return v2

    .line 550
    :cond_1c
    return v1
.end method

.method private static compareByActCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 8
    .param p0, "a"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p1, "b"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1805
    iget-wide v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v2, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    div-long/2addr v0, v2

    iget-wide v2, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v4, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private static compareByBinderClassAndCode(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 5
    .param p0, "a"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p1, "b"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1816
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1817
    .local v0, "result":I
    if-eqz v0, :cond_c

    .line 1818
    move v1, v0

    goto :goto_14

    .line 1819
    :cond_c
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget v2, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    .line 1817
    :goto_14
    return v1
.end method

.method private static compareByCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 6
    .param p0, "a"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p1, "b"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1811
    iget-wide v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .registers 8
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 912
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 913
    .local v0, "uid":I
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 914
    .local v1, "callStat":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 915
    iput v0, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 916
    iput v0, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 917
    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 918
    iput-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__DEBUG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 920
    iput-wide p2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 921
    return-object v1
.end method

.method private dumpLocked(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V
    .registers 31
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageMap"    # Lcom/android/internal/os/AppIdToPackageMap;
    .param p3, "workSourceUid"    # I
    .param p4, "verbose"    # Z

    .line 1002
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    .line 1003
    const/4 v5, 0x1

    .end local p4    # "verbose":Z
    .local v5, "verbose":Z
    goto :goto_f

    .line 1002
    .end local v5    # "verbose":Z
    .restart local p4    # "verbose":Z
    :cond_d
    move/from16 v5, p4

    .line 1005
    .end local p4    # "verbose":Z
    .restart local v5    # "verbose":Z
    :goto_f
    const-string v6, "Start time: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    iget-wide v7, v0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    invoke-static {v6, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1007
    const-string v6, "On battery time (ms): "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1008
    iget-object v6, v0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v6

    goto :goto_30

    :cond_2e
    const-wide/16 v6, 0x0

    :goto_30
    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 1009
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sampling interval period: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sharding modulo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    const-string v6, ""

    if-eqz v5, :cond_69

    move-object v7, v6

    goto :goto_6b

    :cond_69
    const-string v7, "(top 90% by cpu time) "

    .line 1013
    .local v7, "datasetSizeDesc":Ljava/lang/String;
    :goto_6b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1014
    .local v8, "sb":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Per-UID raw data "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(package/uid, worksource, call_desc, screen_interactive, cpu_time_micros, max_cpu_time_micros, latency_time_micros, max_latency_time_micros, exception_count, max_request_size_bytes, max_reply_size_bytes, recorded_call_count, call_count):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    const/4 v9, 0x1

    if-eq v3, v4, :cond_9e

    .line 1022
    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v10, :cond_98

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatsPerPackage(I)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_9c

    .line 1023
    :cond_98
    invoke-virtual {v0, v3, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(IZ)Ljava/util/ArrayList;

    move-result-object v10

    :goto_9c
    nop

    .local v10, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    goto :goto_ac

    .line 1025
    .end local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :cond_9e
    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v10, :cond_a7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatsPerPackage()Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_ab

    .line 1026
    :cond_a7
    invoke-virtual {v0, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;

    move-result-object v10

    :goto_ab
    nop

    .line 1028
    .restart local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :goto_ac
    new-instance v11, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v10, v11}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1029
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1030
    .local v12, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iget-object v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    if-eqz v13, :cond_d3

    iget-object v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    const-string v14, "__DEBUG_"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d3

    .line 1032
    goto :goto_b8

    .line 1034
    :cond_d3
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1035
    const-string v13, "    "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1036
    const/16 v14, 0x3c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1037
    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 1038
    invoke-virtual {v2, v14}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1039
    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 1040
    invoke-virtual {v2, v15}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1041
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1042
    const/16 v15, 0x23

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1043
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1044
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v15, v10

    .end local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .local v15, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-wide v9, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1045
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move v13, v5

    .end local v5    # "verbose":Z
    .local v13, "verbose":Z
    iget-wide v4, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1046
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v11

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1047
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1048
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    const-wide/16 v16, 0x5f

    if-eqz v10, :cond_161

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    goto :goto_163

    :cond_161
    move-wide/from16 v10, v16

    :goto_163
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1049
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v10, :cond_172

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    goto :goto_174

    :cond_172
    move-wide/from16 v10, v16

    :goto_174
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1050
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v10, :cond_183

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    goto :goto_185

    :cond_183
    move-wide/from16 v10, v16

    :goto_185
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1051
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1052
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1054
    .end local v12    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    move-object v11, v5

    move v5, v13

    move-object v10, v15

    const/4 v4, -0x1

    const/4 v9, 0x1

    goto/16 :goto_b8

    .line 1055
    .end local v13    # "verbose":Z
    .end local v15    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .restart local v5    # "verbose":Z
    .restart local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :cond_1a6
    move v13, v5

    move-object v15, v10

    .end local v5    # "verbose":Z
    .end local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .restart local v13    # "verbose":Z
    .restart local v15    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1056
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    const-wide/16 v11, 0x0

    .line 1058
    .local v11, "totalCallsCount":J
    const-wide/16 v16, 0x0

    .line 1059
    .local v16, "totalRecordedCallsCount":J
    const-wide/16 v18, 0x0

    .line 1061
    .local v18, "totalCpuTime":J
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1d4

    .line 1062
    invoke-direct {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v5

    .line 1063
    .local v5, "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    move-wide/from16 v20, v11

    .end local v11    # "totalCallsCount":J
    .local v20, "totalCallsCount":J
    iget-wide v10, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long v18, v18, v10

    .line 1065
    iget-wide v10, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v16, v16, v10

    .line 1066
    iget-wide v10, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long v11, v20, v10

    .line 1067
    .end local v5    # "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v20    # "totalCallsCount":J
    .restart local v11    # "totalCallsCount":J
    move-object v5, v15

    move-wide/from16 v9, v16

    move-wide/from16 v14, v18

    goto :goto_211

    .line 1068
    :cond_1d4
    move-wide/from16 v20, v11

    .end local v11    # "totalCallsCount":J
    .restart local v20    # "totalCallsCount":J
    iget-object v5, v0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1069
    .local v5, "uidEntriesSize":I
    const/4 v10, 0x0

    .end local v20    # "totalCallsCount":J
    .local v10, "i":I
    .restart local v11    # "totalCallsCount":J
    :goto_1dd
    if-ge v10, v5, :cond_1fa

    .line 1070
    iget-object v14, v0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1071
    .local v14, "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    move/from16 v21, v10

    .end local v10    # "i":I
    .local v21, "i":I
    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long v18, v18, v9

    .line 1073
    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v16, v16, v9

    .line 1074
    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v11, v9

    .line 1069
    .end local v14    # "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    add-int/lit8 v10, v21, 0x1

    .end local v21    # "i":I
    .restart local v10    # "i":I
    goto :goto_1dd

    :cond_1fa
    move/from16 v21, v10

    .line 1076
    .end local v10    # "i":I
    new-instance v9, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda2;-><init>()V

    .line 1077
    invoke-static {v9}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v9

    .line 1076
    invoke-interface {v4, v9}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    move-object v5, v15

    move-wide/from16 v9, v16

    move-wide/from16 v14, v18

    .line 1080
    .end local v15    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .end local v16    # "totalRecordedCallsCount":J
    .end local v18    # "totalCpuTime":J
    .local v5, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .local v9, "totalRecordedCallsCount":J
    .local v14, "totalCpuTime":J
    :goto_211
    move-object/from16 v16, v5

    .end local v5    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .local v16, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v8

    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v17, "sb":Ljava/lang/StringBuilder;
    const-string v8, "Per-UID Summary "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "(cpu_time, % of total cpu_time, recorded_call_count, call_count, package/uid):"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    if-eqz v13, :cond_237

    move-object v5, v4

    move-object/from16 v18, v7

    goto :goto_247

    .line 1083
    :cond_237
    new-instance v5, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "datasetSizeDesc":Ljava/lang/String;
    .local v18, "datasetSizeDesc":Ljava/lang/String;
    const-wide v7, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5, v7, v8}, Lcom/android/internal/os/BinderCallsStats;->getHighestValues(Ljava/util/List;Ljava/util/function/ToDoubleFunction;D)Ljava/util/List;

    move-result-object v5

    :goto_247
    nop

    .line 1084
    .local v5, "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_24c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2a6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1085
    .local v8, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    move-object/from16 v19, v4

    .end local v4    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .local v19, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    iget v4, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-virtual {v2, v4}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v4

    .line 1086
    .local v4, "uidStr":Ljava/lang/String;
    move-object/from16 v22, v5

    move-object/from16 v21, v6

    .end local v5    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .local v22, "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    iget-wide v5, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 1087
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v23, v7

    iget-wide v6, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v6, v6

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v24

    move-wide/from16 v24, v9

    .end local v9    # "totalRecordedCallsCount":J
    .local v24, "totalRecordedCallsCount":J
    long-to-double v9, v14

    div-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v9, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 1088
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v9, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v5, v6, v7, v9, v4}, [Ljava/lang/Object;

    move-result-object v5

    .line 1086
    const-string v6, "  %10d %3.0f%% %8d %8d %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    iget-boolean v5, v0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v5, :cond_29b

    .line 1090
    invoke-direct {v0, v1, v8}, Lcom/android/internal/os/BinderCallsStats;->printCallStatsByPackage(Ljava/io/PrintWriter;Lcom/android/internal/os/BinderCallsStats$UidEntry;)V

    .line 1092
    .end local v4    # "uidStr":Ljava/lang/String;
    .end local v8    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_29b
    move-object/from16 v4, v19

    move-object/from16 v6, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v23

    move-wide/from16 v9, v24

    goto :goto_24c

    .line 1093
    .end local v19    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .end local v22    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .end local v24    # "totalRecordedCallsCount":J
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .restart local v5    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .restart local v9    # "totalRecordedCallsCount":J
    :cond_2a6
    move-object/from16 v19, v4

    move-object/from16 v22, v5

    move-object/from16 v21, v6

    move-wide/from16 v24, v9

    .end local v4    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .end local v5    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .end local v9    # "totalRecordedCallsCount":J
    .restart local v19    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .restart local v22    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .restart local v24    # "totalRecordedCallsCount":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1094
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2d7

    .line 1095
    nop

    .line 1097
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    long-to-double v6, v14

    move-wide/from16 v8, v24

    .end local v24    # "totalRecordedCallsCount":J
    .local v8, "totalRecordedCallsCount":J
    long-to-double v2, v8

    div-double/2addr v6, v2

    .line 1098
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1095
    const-string v3, "  Summary: total_cpu_time=%d, calls_count=%d, avg_call_cpu_time=%.0f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_2d9

    .line 1094
    .end local v8    # "totalRecordedCallsCount":J
    .restart local v24    # "totalRecordedCallsCount":J
    :cond_2d7
    move-wide/from16 v8, v24

    .line 1102
    .end local v24    # "totalRecordedCallsCount":J
    .restart local v8    # "totalRecordedCallsCount":J
    :goto_2d9
    const-string v2, "Exceptions thrown (exception_count, class_name):"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    .local v2, "exceptionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v3, v0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1108
    new-instance v3, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1109
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_301
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1110
    .local v4, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "  %6d %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    .end local v4    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_301

    .line 1113
    :cond_31f
    iget v3, v0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_32e

    .line 1114
    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1115
    const-string v3, "/!\\ Displayed data is sampled. See sampling interval at the top."

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    :cond_32e
    return-void
.end method

.method private getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .registers 6
    .param p1, "workSourceUid"    # I
    .param p2, "stat"    # Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 868
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 869
    .local v0, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 870
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 871
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 872
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    .line 873
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    .line 874
    iget-boolean v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    .line 875
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 876
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 877
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 878
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 879
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 880
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 881
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 882
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 883
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    .line 884
    return-object v0
.end method

.method private getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .registers 6
    .param p1, "workSourceUid"    # I
    .param p2, "stat"    # Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 609
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 610
    .local v0, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 611
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 612
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 613
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    .line 614
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    .line 615
    iget-boolean v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    .line 616
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 617
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 618
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 619
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 620
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 621
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 622
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 623
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 624
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    .line 625
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    .line 626
    return-object v0
.end method

.method private getHashCode(II)I
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1136
    move v0, p2

    .line 1137
    .local v0, "result":I
    shl-int/lit8 v1, v0, 0x10

    or-int/2addr v1, p1

    return v1
.end method

.method public static getHighestValues(Ljava/util/List;Ljava/util/function/ToDoubleFunction;D)Ljava/util/List;
    .registers 14
    .param p2, "percentile"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/ToDoubleFunction<",
            "TT;>;D)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1785
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "toDouble":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1786
    .local v0, "sortedList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1787
    const-wide/16 v1, 0x0

    .line 1788
    .local v1, "total":D
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1789
    .local v4, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v4}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 1790
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_16

    .line 1791
    :cond_26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1792
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-wide/16 v4, 0x0

    .line 1793
    .local v4, "runningSum":D
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1794
    .local v7, "item":Ljava/lang/Object;, "TT;"
    mul-double v8, p2, v1

    cmpl-double v8, v4, v8

    if-lez v8, :cond_42

    .line 1795
    goto :goto_4b

    .line 1797
    :cond_42
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1798
    invoke-interface {p1, v7}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 1799
    .end local v7    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_31

    .line 1800
    :cond_4b
    :goto_4b
    return-object v3
.end method

.method private getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .registers 4
    .param p1, "uid"    # I

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    if-gez p1, :cond_1c

    .line 465
    mul-int/lit8 p1, p1, -0x1

    .line 466
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 467
    if-nez v0, :cond_32

    .line 468
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-direct {v1, p1}, Lcom/android/internal/os/BinderCallsStats$UidEntry;-><init>(I)V

    move-object v0, v1

    .line 469
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_32

    .line 472
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 473
    if-nez v0, :cond_32

    .line 474
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-direct {v1, p1}, Lcom/android/internal/os/BinderCallsStats$UidEntry;-><init>(I)V

    move-object v0, v1

    .line 475
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    :cond_32
    :goto_32
    return-object v0
.end method

.method private isDebugEntry(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)Z
    .registers 6
    .param p1, "e"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1416
    iget-object v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    if-nez v0, :cond_18

    iget-object v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 1417
    const-string v1, "__DEBUG_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-wide v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1416
    :goto_19
    return v0
.end method

.method static synthetic lambda$dumpLocked$3(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D
    .registers 3
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1077
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v0, v0

    return-wide v0
.end method

.method static synthetic lambda$dumpLocked$4(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D
    .registers 3
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1083
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v0, v0

    return-wide v0
.end method

.method static synthetic lambda$dumpLocked$5(Ljava/util/List;Ljava/util/Map$Entry;)V
    .registers 4
    .param p0, "exceptionEntries"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 1107
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$dumpLocked$6(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 4
    .param p0, "e1"    # Landroid/util/Pair;
    .param p1, "e2"    # Landroid/util/Pair;

    .line 1108
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getExportedCallStats$1(Ljava/util/ArrayList;Ljava/util/Map$Entry;)V
    .registers 3
    .param p0, "resultCallStats"    # Ljava/util/ArrayList;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 811
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getHeaviestApplicationUid$0(Lcom/android/internal/os/BinderCallsStats$UidEntry;)J
    .registers 3
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 661
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    return-wide v0
.end method

.method static synthetic lambda$printCallStatsByPackage$2(Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;)J
    .registers 3
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    .line 987
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    return-wide v0
.end method

.method private noteBinderThreadNativeIds()V
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-nez v0, :cond_5

    .line 527
    return-void

    .line 530
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getNativeTids()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/os/BinderInternal$CallStatsObserver;->noteBinderThreadNativeIds([I)V

    .line 531
    return-void
.end method

.method private noteCallsStatsDelayed()V
    .registers 5

    .line 290
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-eqz v0, :cond_14

    .line 292
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    :cond_14
    return-void
.end method

.method private noteNativeThreadId()V
    .registers 7

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getNativeTid()I

    move-result v0

    .line 504
    .local v0, "tid":I
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v1

    .line 505
    .local v1, "index":I
    if-ltz v1, :cond_d

    .line 506
    return-void

    .line 511
    :cond_d
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTidsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 512
    :try_start_10
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 513
    .local v3, "nativeTids":Landroid/util/IntArray;
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v4

    move v1, v4

    .line 514
    if-gez v1, :cond_2f

    .line 515
    new-instance v4, Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/IntArray;-><init>(I)V

    .line 516
    .local v4, "copyOnWriteArray":Landroid/util/IntArray;
    invoke-virtual {v4, v3}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 517
    neg-int v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5, v0}, Landroid/util/IntArray;->add(II)V

    .line 518
    iput-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 520
    .end local v3    # "nativeTids":Landroid/util/IntArray;
    .end local v4    # "copyOnWriteArray":Landroid/util/IntArray;
    :cond_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_34

    .line 522
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteBinderThreadNativeIds()V

    .line 523
    return-void

    .line 520
    :catchall_34
    move-exception v3

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v3
.end method

.method private obtainCallSession()Lcom/android/internal/os/BinderInternal$CallSession;
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderInternal$CallSession;

    .line 328
    .local v0, "s":Lcom/android/internal/os/BinderInternal$CallSession;
    if-nez v0, :cond_10

    new-instance v1, Lcom/android/internal/os/BinderInternal$CallSession;

    invoke-direct {v1}, Lcom/android/internal/os/BinderInternal$CallSession;-><init>()V

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1
.end method

.method private prepareExportedCallStats(I)Ljava/util/ArrayList;
    .registers 27
    .param p1, "cpuUsage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 1423
    move-object/from16 v1, p0

    iget v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    move/from16 v4, p1

    if-lt v4, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move v5, v0

    .line 1424
    .local v5, "exportNeeded":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 1425
    .local v6, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v7, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1426
    :try_start_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    sub-long/2addr v8, v10

    .line 1427
    .local v8, "duration":J
    const-string v0, "BinderCallsStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Collected cpu time : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "us, collected call count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    .line 1431
    iput-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    .line 1433
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1434
    .local v0, "uidEntriesSize":I
    const/4 v10, 0x0

    .local v10, "entryIdx":I
    :goto_60
    if-ge v10, v0, :cond_14d

    .line 1435
    iget-object v11, v1, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1437
    .local v11, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget v12, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    mul-int/lit8 v12, v12, -0x1

    invoke-direct {v1, v12}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v12

    .line 1438
    .local v12, "targetEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    iget-wide v2, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long/2addr v13, v2

    iput-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 1439
    iget-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    iget-wide v13, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v2, v13

    iput-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    .line 1440
    iget-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    iget-wide v13, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v2, v13

    iput-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 1441
    iget-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    iget-wide v13, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    add-long/2addr v2, v13

    iput-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    .line 1443
    invoke-virtual {v11}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_141

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$CallStat;
    :try_end_a2
    .catchall {:try_start_15 .. :try_end_a2} :catchall_1a4

    .line 1444
    .local v3, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    if-eqz v5, :cond_b3

    .line 1445
    :try_start_a4
    iget v13, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {v1, v13, v3}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_ae

    goto :goto_b3

    .line 1473
    .end local v0    # "uidEntriesSize":I
    .end local v3    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v8    # "duration":J
    .end local v10    # "entryIdx":I
    .end local v11    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v12    # "targetEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :catchall_ae
    move-exception v0

    move/from16 v24, v5

    goto/16 :goto_1a7

    .line 1449
    .restart local v0    # "uidEntriesSize":I
    .restart local v3    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .restart local v8    # "duration":J
    .restart local v10    # "entryIdx":I
    .restart local v11    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v12    # "targetEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_b3
    :goto_b3
    :try_start_b3
    iget v14, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iget-object v15, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iget v13, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    move/from16 v20, v0

    .end local v0    # "uidEntriesSize":I
    .local v20, "uidEntriesSize":I
    iget-boolean v0, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    move-wide/from16 v21, v8

    .end local v8    # "duration":J
    .local v21, "duration":J
    iget-wide v8, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    move-object/from16 v23, v2

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I
    :try_end_c5
    .catchall {:try_start_b3 .. :try_end_c5} :catchall_1a4

    move/from16 v24, v5

    .end local v5    # "exportNeeded":Z
    .local v24, "exportNeeded":Z
    int-to-long v4, v2

    cmp-long v2, v8, v4

    if-ltz v2, :cond_cf

    const/16 v18, 0x1

    goto :goto_d1

    :cond_cf
    const/16 v18, 0x0

    :goto_d1
    :try_start_d1
    iget-object v2, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    move v4, v13

    move-object v13, v12

    move/from16 v16, v4

    move/from16 v17, v0

    move-object/from16 v19, v2

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getOrCreate(ILjava/lang/Class;IZZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    .line 1455
    .local v0, "targetStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    .line 1456
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 1457
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    .line 1458
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    .line 1460
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    .line 1461
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 1463
    iget-boolean v2, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v2, :cond_12e

    .line 1464
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    .line 1466
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    .line 1468
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    .line 1470
    :cond_12e
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 1471
    .end local v0    # "targetStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v3    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    move/from16 v4, p1

    move/from16 v0, v20

    move-wide/from16 v8, v21

    move-object/from16 v2, v23

    move/from16 v5, v24

    goto/16 :goto_96

    .line 1443
    .end local v20    # "uidEntriesSize":I
    .end local v21    # "duration":J
    .end local v24    # "exportNeeded":Z
    .local v0, "uidEntriesSize":I
    .restart local v5    # "exportNeeded":Z
    .restart local v8    # "duration":J
    :cond_141
    move/from16 v20, v0

    move/from16 v24, v5

    move-wide/from16 v21, v8

    .line 1434
    .end local v0    # "uidEntriesSize":I
    .end local v5    # "exportNeeded":Z
    .end local v8    # "duration":J
    .end local v11    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v12    # "targetEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v20    # "uidEntriesSize":I
    .restart local v21    # "duration":J
    .restart local v24    # "exportNeeded":Z
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, p1

    goto/16 :goto_60

    .end local v20    # "uidEntriesSize":I
    .end local v21    # "duration":J
    .end local v24    # "exportNeeded":Z
    .restart local v0    # "uidEntriesSize":I
    .restart local v5    # "exportNeeded":Z
    .restart local v8    # "duration":J
    :cond_14d
    move/from16 v20, v0

    move/from16 v24, v5

    move-wide/from16 v21, v8

    .line 1473
    .end local v0    # "uidEntriesSize":I
    .end local v5    # "exportNeeded":Z
    .end local v8    # "duration":J
    .end local v10    # "entryIdx":I
    .restart local v24    # "exportNeeded":Z
    monitor-exit v7
    :try_end_154
    .catchall {:try_start_d1 .. :try_end_154} :catchall_1a9

    .line 1475
    if-eqz v24, :cond_1a3

    .line 1477
    invoke-direct {v1, v6}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 1480
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz v0, :cond_1a3

    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_1a3

    .line 1481
    const-string/jumbo v0, "start_time_millis"

    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    const-string v0, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    const-string v0, "battery_time_millis"

    iget-object v2, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 1484
    invoke-virtual {v2}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    .line 1483
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    const-string/jumbo v0, "sampling_interval"

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    const-string/jumbo v0, "sharding_modulo"

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    :cond_1a3
    return-object v6

    .line 1473
    .end local v24    # "exportNeeded":Z
    .restart local v5    # "exportNeeded":Z
    :catchall_1a4
    move-exception v0

    move/from16 v24, v5

    .end local v5    # "exportNeeded":Z
    .restart local v24    # "exportNeeded":Z
    :goto_1a7
    :try_start_1a7
    monitor-exit v7
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_1a9

    throw v0

    :catchall_1a9
    move-exception v0

    goto :goto_1a7
.end method

.method private printCallStatsByPackage(Ljava/io/PrintWriter;Lcom/android/internal/os/BinderCallsStats$UidEntry;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "entry"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 968
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 969
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;>;"
    invoke-virtual {p2}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 970
    .local v2, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget-object v3, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    .line 971
    .local v3, "scs":Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
    if-nez v3, :cond_4c

    .line 972
    new-instance v4, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    invoke-direct {v4, p0}, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    move-object v3, v4

    .line 973
    iget-object v4, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->packageName:Ljava/lang/String;

    .line 974
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    .line 975
    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    .line 976
    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    .line 977
    iget-object v4, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 979
    :cond_4c
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    .line 980
    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    .line 981
    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    .line 983
    .end local v2    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v3    # "scs":Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
    :goto_65
    goto :goto_d

    .line 985
    :cond_66
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 986
    .local v1, "statsValues":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;>;"
    new-instance v2, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda9;-><init>()V

    .line 987
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    .line 986
    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 989
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    .line 990
    .local v3, "elem":Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    iget-wide v6, p2, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    .line 991
    .local v4, "ratio":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_c4

    .line 992
    const-string v6, "          "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 993
    nop

    .line 994
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    .line 995
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->packageName:Ljava/lang/String;

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v6

    .line 993
    const-string v7, " (%3.0f%%/%8d/%8d/%s)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    .end local v3    # "elem":Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
    .end local v4    # "ratio":D
    :cond_c4
    goto :goto_83

    .line 998
    :cond_c5
    return-void
.end method

.method private processCallEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
    .registers 35
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;
    .param p2, "parcelRequestSize"    # I
    .param p3, "parcelReplySize"    # I
    .param p4, "workSourceUid"    # I

    .line 347
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-eqz v0, :cond_f

    .line 348
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BinderLatencyObserver;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;)V

    .line 352
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    if-nez v0, :cond_16

    .line 353
    return-void

    .line 356
    :cond_16
    const/4 v0, 0x0

    .line 358
    .local v0, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget-boolean v4, v2, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    if-eqz v4, :cond_1f

    .line 359
    const/4 v4, 0x1

    move v5, v4

    move-object v4, v0

    .local v4, "recordCall":Z
    goto :goto_2f

    .line 360
    .end local v4    # "recordCall":Z
    :cond_1f
    iget-boolean v4, v1, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-eqz v4, :cond_2c

    .line 361
    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v0

    .line 362
    iget-boolean v4, v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    move v5, v4

    move-object v4, v0

    .restart local v4    # "recordCall":Z
    goto :goto_2f

    .line 364
    .end local v4    # "recordCall":Z
    :cond_2c
    const/4 v4, 0x0

    move v5, v4

    move-object v4, v0

    .line 369
    .end local v0    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v4, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v5, "recordCall":Z
    :goto_2f
    if-eqz v5, :cond_40

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    sub-long/2addr v6, v8

    .line 371
    .local v6, "duration":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    sub-long/2addr v8, v10

    .local v8, "latencyDuration":J
    goto :goto_44

    .line 373
    .end local v6    # "duration":J
    .end local v8    # "latencyDuration":J
    :cond_40
    const-wide/16 v6, 0x0

    .line 374
    .restart local v6    # "duration":J
    const-wide/16 v8, 0x0

    .line 376
    .restart local v8    # "latencyDuration":J
    :goto_44
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    if-eqz v0, :cond_50

    .line 377
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isScreenInteractive()Z

    move-result v0

    move v15, v0

    goto :goto_51

    .line 378
    :cond_50
    const/4 v15, 0x0

    :goto_51
    nop

    .line 379
    .local v15, "screenInteractive":Z
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    if-eqz v0, :cond_5b

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getCallingUid()I

    move-result v0

    goto :goto_5c

    .line 381
    :cond_5b
    const/4 v0, -0x1

    :goto_5c
    move v14, v0

    .line 382
    .local v14, "callingUid":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getCallingPid()I

    move-result v13

    .line 383
    .local v13, "callingPid":I
    const/4 v0, 0x0

    .line 384
    .local v0, "packageName":Ljava/lang/String;
    iget-boolean v11, v1, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v11, :cond_73

    .line 385
    if-lez v13, :cond_6d

    invoke-virtual {v1, v13, v14}, Lcom/android/internal/os/BinderCallsStats;->getPackageName(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_6f

    :cond_6d
    const-string v11, "async"

    :goto_6f
    move-object v0, v11

    move-object/from16 v22, v0

    goto :goto_75

    .line 384
    :cond_73
    move-object/from16 v22, v0

    .line 388
    .end local v0    # "packageName":Ljava/lang/String;
    .local v22, "packageName":Ljava/lang/String;
    :goto_75
    iget-object v12, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 389
    :try_start_78
    iget-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    add-long/2addr v10, v6

    iput-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    .line 390
    iget-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    const-wide/16 v23, 0x1

    add-long v10, v10, v23

    iput-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v10
    :try_end_89
    .catchall {:try_start_78 .. :try_end_89} :catchall_1a8

    if-nez v10, :cond_9d

    .line 394
    :try_start_8b
    monitor-exit v12

    return-void

    .line 446
    :catchall_8d
    move-exception v0

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v25, v12

    move/from16 v26, v13

    move v10, v14

    move/from16 v14, p2

    move/from16 v7, p3

    goto/16 :goto_1b6

    .line 397
    :cond_9d
    if-nez v4, :cond_a4

    .line 398
    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v10
    :try_end_a3
    .catchall {:try_start_8b .. :try_end_a3} :catchall_8d

    move-object v4, v10

    .line 401
    :cond_a4
    :try_start_a4
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long v10, v10, v23

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    .line 402
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    add-long v10, v10, v23

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    .line 403
    if-eqz v5, :cond_164

    .line 404
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v10, v6

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 405
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v10, v10, v23

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 407
    iget-object v10, v2, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iget v11, v2, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I
    :try_end_c1
    .catchall {:try_start_a4 .. :try_end_c1} :catchall_1a8

    const/16 v16, 0x0

    move/from16 v17, v11

    move-object v11, v4

    move-object/from16 v25, v12

    move v12, v14

    move/from16 v26, v13

    .end local v13    # "callingPid":I
    .local v26, "callingPid":I
    move-object v13, v10

    move v10, v14

    .end local v14    # "callingUid":I
    .local v10, "callingUid":I
    move/from16 v14, v17

    move-object/from16 v17, v22

    :try_start_d1
    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getOrCreate(ILjava/lang/Class;IZZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v11

    .line 412
    .local v11, "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J
    :try_end_d7
    .catchall {:try_start_d1 .. :try_end_d7} :catchall_15a

    const-wide/16 v16, 0x0

    cmp-long v12, v12, v16

    if-nez v12, :cond_df

    const/4 v0, 0x1

    goto :goto_e0

    :cond_df
    const/4 v0, 0x0

    .line 413
    .local v0, "isNewCallStat":Z
    :goto_e0
    if-eqz v0, :cond_f4

    .line 414
    :try_start_e2
    iget-wide v12, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    add-long v12, v12, v23

    iput-wide v12, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_e9

    goto :goto_f4

    .line 446
    .end local v0    # "isNewCallStat":Z
    .end local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :catchall_e9
    move-exception v0

    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v7, p3

    goto/16 :goto_1b6

    .line 417
    .restart local v0    # "isNewCallStat":Z
    .restart local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :cond_f4
    :goto_f4
    :try_start_f4
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 418
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 419
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    .line 420
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v12, v6

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    .line 421
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    .line 422
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v12, v8

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    .line 423
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 424
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 425
    iget-boolean v12, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v12, :cond_151

    .line 426
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iget-boolean v14, v2, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    if-eqz v14, :cond_12b

    goto :goto_12d

    :cond_12b
    move-wide/from16 v23, v16

    :goto_12d
    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    .line 427
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J
    :try_end_133
    .catchall {:try_start_f4 .. :try_end_133} :catchall_15a

    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .local v27, "recordCall":Z
    .local v28, "duration":J
    int-to-long v5, v14

    .line 428
    :try_start_13a
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    .line 429
    iget-wide v5, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J
    :try_end_142
    .catchall {:try_start_13a .. :try_end_142} :catchall_14c

    move/from16 v7, p3

    int-to-long v12, v7

    .line 430
    :try_start_145
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    goto :goto_159

    .line 446
    .end local v0    # "isNewCallStat":Z
    .end local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :catchall_14c
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_1b6

    .line 425
    .end local v27    # "recordCall":Z
    .end local v28    # "duration":J
    .restart local v0    # "isNewCallStat":Z
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    .restart local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :cond_151
    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v7, p3

    .line 432
    .end local v0    # "isNewCallStat":Z
    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .end local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .restart local v27    # "recordCall":Z
    .restart local v28    # "duration":J
    :goto_159
    goto :goto_193

    .line 446
    .end local v27    # "recordCall":Z
    .end local v28    # "duration":J
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    :catchall_15a
    move-exception v0

    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v7, p3

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .restart local v27    # "recordCall":Z
    .restart local v28    # "duration":J
    goto :goto_1b6

    .line 435
    .end local v10    # "callingUid":I
    .end local v26    # "callingPid":I
    .end local v27    # "recordCall":Z
    .end local v28    # "duration":J
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    .restart local v13    # "callingPid":I
    .restart local v14    # "callingUid":I
    :cond_164
    move/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v25, v12

    move/from16 v26, v13

    move v10, v14

    move/from16 v14, p2

    move/from16 v7, p3

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .end local v13    # "callingPid":I
    .end local v14    # "callingUid":I
    .restart local v10    # "callingUid":I
    .restart local v26    # "callingPid":I
    .restart local v27    # "recordCall":Z
    .restart local v28    # "duration":J
    iget-object v0, v2, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iget v5, v2, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    move-object/from16 v16, v4

    move/from16 v17, v10

    move-object/from16 v18, v0

    move/from16 v19, v5

    move/from16 v20, v15

    move-object/from16 v21, v22

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->get(ILjava/lang/Class;IZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    .line 438
    .local v0, "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    if-eqz v0, :cond_193

    .line 439
    iget-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long v5, v5, v23

    iput-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 440
    iget-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long v5, v5, v23

    iput-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 443
    .end local v0    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :cond_193
    :goto_193
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-eqz v0, :cond_1a6

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_1a6

    .line 444
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_1a6
    monitor-exit v25

    .line 447
    return-void

    .line 446
    .end local v10    # "callingUid":I
    .end local v26    # "callingPid":I
    .end local v27    # "recordCall":Z
    .end local v28    # "duration":J
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    .restart local v13    # "callingPid":I
    .restart local v14    # "callingUid":I
    :catchall_1a8
    move-exception v0

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v25, v12

    move/from16 v26, v13

    move v10, v14

    move/from16 v14, p2

    move/from16 v7, p3

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .end local v13    # "callingPid":I
    .end local v14    # "callingUid":I
    .restart local v10    # "callingUid":I
    .restart local v26    # "callingPid":I
    .restart local v27    # "recordCall":Z
    .restart local v28    # "duration":J
    :goto_1b6
    monitor-exit v25
    :try_end_1b7
    .catchall {:try_start_145 .. :try_end_1b7} :catchall_1b8

    throw v0

    :catchall_1b8
    move-exception v0

    goto :goto_1b6
.end method

.method private resolveBinderMethodNames(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;)V"
        }
    .end annotation

    .line 890
    .local p1, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    const/4 v0, 0x0

    .line 891
    .local v0, "previous":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    const/4 v1, 0x0

    .line 892
    .local v1, "previousMethodName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 893
    new-instance v2, Lcom/android/internal/os/BinderTransactionNameResolver;

    invoke-direct {v2}, Lcom/android/internal/os/BinderTransactionNameResolver;-><init>()V

    .line 894
    .local v2, "resolver":Lcom/android/internal/os/BinderTransactionNameResolver;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 895
    .local v4, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_30

    iget-object v7, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 896
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    goto :goto_30

    :cond_2e
    move v7, v5

    goto :goto_31

    :cond_30
    :goto_30
    move v7, v6

    .line 897
    .local v7, "isClassDifferent":Z
    :goto_31
    if-eqz v0, :cond_39

    iget v8, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget v9, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    if-eq v8, v9, :cond_3a

    :cond_39
    move v5, v6

    .line 900
    .local v5, "isCodeDifferent":Z
    :cond_3a
    if-nez v7, :cond_41

    if-eqz v5, :cond_3f

    goto :goto_41

    .line 903
    :cond_3f
    move-object v6, v1

    .local v6, "methodName":Ljava/lang/String;
    goto :goto_49

    .line 901
    .end local v6    # "methodName":Ljava/lang/String;
    :cond_41
    :goto_41
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    iget v8, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    invoke-virtual {v2, v6, v8}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v6

    .line 905
    .restart local v6    # "methodName":Ljava/lang/String;
    :goto_49
    move-object v1, v6

    .line 906
    iput-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 907
    move-object v0, v4

    .line 908
    .end local v4    # "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .end local v5    # "isCodeDifferent":Z
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "isClassDifferent":Z
    goto :goto_13

    .line 909
    :cond_4e
    return-void
.end method

.method private shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z
    .registers 7
    .param p1, "e"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p2, "applySharding"    # Z

    .line 450
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 451
    return v0

    .line 454
    :cond_4
    iget-object v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 455
    .local v1, "hash":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    add-int/2addr v2, v3

    .line 456
    .end local v1    # "hash":I
    .local v2, "hash":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    add-int/2addr v1, v3

    .line 457
    .end local v2    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    if-eqz v3, :cond_1d

    const/16 v3, 0x4cf

    goto :goto_1f

    :cond_1d
    const/16 v3, 0x4d5

    :goto_1f
    add-int/2addr v2, v3

    .line 459
    .end local v1    # "hash":I
    .restart local v2    # "hash":I
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    add-int/2addr v1, v2

    iget v3, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method public static startForBluetooth(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1824
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;

    new-instance v1, Lcom/android/internal/os/BinderCallsStats;

    new-instance v2, Lcom/android/internal/os/BinderCallsStats$Injector;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$Injector;-><init>()V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;)V

    .line 1830
    return-void
.end method


# virtual methods
.method public callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
    .registers 7
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;
    .param p2, "parcelRequestSize"    # I
    .param p3, "parcelReplySize"    # I
    .param p4, "workSourceUid"    # I

    .line 334
    if-nez p1, :cond_3

    .line 335
    return-void

    .line 338
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats;->processCallEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_15

    .line 341
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_15
    return-void
.end method

.method public callStarted(Landroid/os/Binder;II)Lcom/android/internal/os/BinderInternal$CallSession;
    .registers 8
    .param p1, "binder"    # Landroid/os/Binder;
    .param p2, "code"    # I
    .param p3, "workSourceUid"    # I

    .line 300
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteNativeThreadId()V

    .line 302
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    .line 304
    .local v0, "collectCpu":Z
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-nez v1, :cond_f

    if-nez v0, :cond_f

    .line 305
    const/4 v1, 0x0

    return-object v1

    .line 308
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->obtainCallSession()Lcom/android/internal/os/BinderInternal$CallSession;

    move-result-object v1

    .line 309
    .local v1, "s":Lcom/android/internal/os/BinderInternal$CallSession;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    .line 310
    iput p2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    .line 311
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    .line 312
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    .line 313
    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->shouldRecordDetailedData()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    .line 316
    if-eqz v0, :cond_41

    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-nez v2, :cond_34

    iget-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    if-eqz v2, :cond_41

    .line 317
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    goto :goto_4b

    .line 319
    :cond_41
    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-eqz v2, :cond_4b

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    .line 323
    :cond_4b
    :goto_4b
    return-object v1
.end method

.method public callThrewException(Lcom/android/internal/os/BinderInternal$CallSession;Ljava/lang/Exception;)V
    .registers 9
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 483
    if-nez p1, :cond_3

    .line 484
    return-void

    .line 486
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    .line 488
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "className":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_11} :catch_3e

    .line 490
    :try_start_11
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_1f

    .line 491
    const-string/jumbo v3, "overflow"

    move-object v1, v3

    .line 493
    :cond_1f
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 494
    .local v3, "count":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    if-nez v3, :cond_2c

    goto :goto_31

    :cond_2c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    :goto_31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    nop

    .end local v3    # "count":Ljava/lang/Integer;
    monitor-exit v2

    .line 499
    .end local v1    # "className":Ljava/lang/String;
    goto :goto_46

    .line 495
    .restart local v1    # "className":Ljava/lang/String;
    :catchall_3b
    move-exception v0

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_3b

    .end local p0    # "this":Lcom/android/internal/os/BinderCallsStats;
    .end local p1    # "s":Lcom/android/internal/os/BinderInternal$CallSession;
    .end local p2    # "exception":Ljava/lang/Exception;
    :try_start_3d
    throw v0
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_3e} :catch_3e

    .line 496
    .end local v1    # "className":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/internal/os/BinderCallsStats;
    .restart local p1    # "s":Lcom/android/internal/os/BinderInternal$CallSession;
    .restart local p2    # "exception":Ljava/lang/Exception;
    :catch_3e
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BinderCallsStats"

    const-string v2, "Unexpected exception while updating mExceptionCounts"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_46
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageMap"    # Lcom/android/internal/os/AppIdToPackageMap;
    .param p3, "workSourceUid"    # I
    .param p4, "verbose"    # Z

    .line 940
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats;->dumpLocked(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V

    .line 942
    monitor-exit v0

    .line 943
    return-void

    .line 942
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public dumpStats(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sampling interval period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_1b
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2f

    .line 949
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BinderStats;->addData(Ljava/util/ArrayList;)V

    .line 950
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 952
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_5e

    .line 953
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BinderStats;->dump(Ljava/io/PrintWriter;)V

    .line 954
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v0, :cond_5d

    .line 955
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 956
    :try_start_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of pid entry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    monitor-exit v0

    goto :goto_5d

    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_5a

    throw v1

    .line 959
    :cond_5d
    :goto_5d
    return-void

    .line 952
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public enablePackageStats(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 245
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    .line 246
    return-void
.end method

.method protected getCallingPid()I
    .registers 2

    .line 1128
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    return v0
.end method

.method protected getCallingUid()I
    .registers 2

    .line 1124
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getCollectLatencyData()Z
    .registers 2

    .line 1336
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    return v0
.end method

.method protected getElapsedRealtimeMicro()J
    .registers 5

    .line 1200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getExceptionCounts()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1775
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getExportedCallStats()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 715
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCallStats(I)Ljava/util/ArrayList;
    .registers 3
    .param p1, "workSourceUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 839
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCallStats(IZ)Ljava/util/ArrayList;
    .registers 10
    .param p1, "workSourceUid"    # I
    .param p2, "applySharding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 850
    .local v0, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    .line 851
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 852
    mul-int/lit8 v2, p1, -0x1

    :try_start_10
    invoke-direct {p0, v2}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    .line 853
    .local v2, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-virtual {v2}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 854
    .local v4, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    invoke-direct {p0, p1, v4}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v5

    .line 855
    .local v5, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    invoke-direct {p0, v5, p2}, Lcom/android/internal/os/BinderCallsStats;->shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 856
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    .end local v4    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v5    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    :cond_35
    goto :goto_1c

    .line 859
    .end local v2    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_3b

    .line 862
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 864
    return-object v0

    .line 859
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method public getExportedCallStats(Z)Ljava/util/ArrayList;
    .registers 19
    .param p1, "applySharding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 725
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-nez v0, :cond_c

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 775
    :cond_c
    const/4 v0, 0x5

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    .line 777
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    move-object v2, v0

    .line 778
    .local v2, "tmpExportedKey":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 779
    .local v3, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 780
    .local v4, "resultsPerUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 781
    :try_start_27
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 782
    .local v0, "uidEntriesSize":I
    const/4 v6, 0x0

    .local v6, "entryIdx":I
    :goto_2e
    if-ge v6, v0, :cond_f5

    .line 783
    iget-object v7, v1, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 784
    .local v7, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-virtual {v7}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 785
    .local v9, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget v10, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {v1, v10, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v10
    :try_end_52
    .catchall {:try_start_27 .. :try_end_52} :catchall_148

    .line 786
    .local v10, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    move/from16 v11, p1

    :try_start_54
    invoke-direct {v1, v10, v11}, Lcom/android/internal/os/BinderCallsStats;->shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z

    move-result v12

    if-eqz v12, :cond_cd

    .line 787
    iget v12, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v12, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->transactionCode:I

    .line 788
    iget-boolean v12, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v12, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->screenInteractive:Z

    .line 789
    iget-object v12, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v12, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->binderClass:Ljava/lang/Class;

    .line 791
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 792
    .local v12, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    if-nez v12, :cond_89

    .line 793
    iget v13, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {v1, v13, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v13

    move-object v12, v13

    .line 794
    new-instance v13, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;

    iget v14, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iget-boolean v15, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    move/from16 v16, v0

    .end local v0    # "uidEntriesSize":I
    .local v16, "uidEntriesSize":I
    iget-object v0, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-direct {v13, v1, v14, v15, v0}, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;-><init>(Lcom/android/internal/os/BinderCallsStats;IZLjava/lang/Class;)V

    move-object v0, v13

    .line 796
    .local v0, "exportedKey":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    invoke-virtual {v4, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    move-object v0, v7

    move-object v15, v8

    .end local v0    # "exportedKey":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    goto :goto_d1

    .line 798
    .end local v16    # "uidEntriesSize":I
    .local v0, "uidEntriesSize":I
    :cond_89
    move/from16 v16, v0

    .end local v0    # "uidEntriesSize":I
    .restart local v16    # "uidEntriesSize":I
    iget-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    move-object v0, v7

    move-object v15, v8

    .end local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v0, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget-wide v7, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v13, v7

    iput-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 799
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 800
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 801
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 802
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 803
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 804
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 805
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 806
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    goto :goto_d1

    .line 786
    .end local v12    # "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .end local v16    # "uidEntriesSize":I
    .local v0, "uidEntriesSize":I
    .restart local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_cd
    move/from16 v16, v0

    move-object v0, v7

    move-object v15, v8

    .line 809
    .end local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v9    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v10    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .local v0, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v16    # "uidEntriesSize":I
    :goto_d1
    move-object v7, v0

    move-object v8, v15

    move/from16 v0, v16

    goto/16 :goto_40

    .line 810
    .end local v16    # "uidEntriesSize":I
    .local v0, "uidEntriesSize":I
    .restart local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_d7
    move/from16 v11, p1

    move/from16 v16, v0

    move-object v0, v7

    .end local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v0, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v16    # "uidEntriesSize":I
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    new-instance v8, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;

    invoke-direct {v8, v3}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v7, v8}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 815
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 782
    .end local v0    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    goto/16 :goto_2e

    .end local v16    # "uidEntriesSize":I
    .local v0, "uidEntriesSize":I
    :cond_f5
    move/from16 v11, p1

    move/from16 v16, v0

    .line 817
    .end local v0    # "uidEntriesSize":I
    .end local v6    # "entryIdx":I
    monitor-exit v5
    :try_end_fa
    .catchall {:try_start_54 .. :try_end_fa} :catchall_14d

    .line 820
    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 823
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz v0, :cond_147

    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_147

    .line 824
    const-string/jumbo v0, "start_time_millis"

    iget-wide v5, v1, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    const-string v0, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    const-string v0, "battery_time_millis"

    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 827
    invoke-virtual {v5}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    .line 826
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    const-string/jumbo v0, "sampling_interval"

    iget v5, v1, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v5, v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    const-string/jumbo v0, "sharding_modulo"

    iget v5, v1, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    int-to-long v5, v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_147
    return-object v3

    .line 817
    :catchall_148
    move-exception v0

    move/from16 v11, p1

    :goto_14b
    :try_start_14b
    monitor-exit v5
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14d

    throw v0

    :catchall_14d
    move-exception v0

    goto :goto_14b
.end method

.method public getExportedCallStatsPerPackage()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 558
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-nez v0, :cond_a

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 562
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v0, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 564
    :try_start_12
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 565
    .local v2, "uidEntriesSize":I
    const/4 v3, 0x0

    .local v3, "entryIdx":I
    :goto_19
    if-ge v3, v2, :cond_45

    .line 566
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 567
    .local v4, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-virtual {v4}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 568
    .local v6, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget v7, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {p0, v7, v6}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    nop

    .end local v6    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    goto :goto_2b

    .line 565
    .end local v4    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 571
    .end local v2    # "uidEntriesSize":I
    .end local v3    # "entryIdx":I
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_12 .. :try_end_46} :catchall_94

    .line 574
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 577
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v1, :cond_93

    .line 578
    const-string/jumbo v1, "start_time_millis"

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    const-string v1, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    const-string v1, "battery_time_millis"

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 581
    invoke-virtual {v2}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    .line 580
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    const-string/jumbo v1, "sampling_interval"

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    const-string/jumbo v1, "sharding_modulo"

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_93
    return-object v0

    .line 571
    :catchall_94
    move-exception v2

    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v2
.end method

.method public getExportedCallStatsPerPackage(I)Ljava/util/ArrayList;
    .registers 8
    .param p1, "workSourceUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v0, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    .line 596
    .local v2, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-virtual {v2}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 597
    .local v4, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    invoke-direct {p0, p1, v4}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    nop

    .end local v4    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    goto :goto_14

    .line 599
    .end local v2    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2e

    .line 602
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 604
    return-object v0

    .line 599
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public getExportedExceptionStats()Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 926
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 927
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-object v1

    .line 928
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getHeaviestApplicationUid(I)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;
    .registers 16
    .param p1, "threshold"    # I

    .line 646
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 647
    return-object v1

    .line 650
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    const-wide/16 v2, 0x0

    .line 653
    .local v2, "totalCpuTime":J
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 654
    .local v4, "uidEntriesSize":I
    if-lez v4, :cond_130

    .line 655
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v4, :cond_2b

    .line 656
    iget-object v6, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 657
    .local v6, "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    iget-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v2, v7

    .line 655
    .end local v6    # "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 660
    .end local v5    # "i":I
    :cond_2b
    new-instance v5, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda8;-><init>()V

    .line 661
    invoke-static {v5}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v5

    .line 660
    invoke-interface {v0, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 663
    const/4 v5, 0x3

    if-ge v4, v5, :cond_3f

    move v5, v4

    .line 664
    .local v5, "numOfTopProcesses":I
    :cond_3f
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_40
    if-ge v6, v5, :cond_a7

    .line 665
    const-string v7, "BinderCallsStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Top["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] UID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget v9, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CallCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 666
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v9, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 667
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v9, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), cpuTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 668
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v9, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 665
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 670
    .end local v6    # "i":I
    :cond_a7
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 671
    .local v7, "top":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget-wide v8, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    long-to-float v9, v2

    div-float/2addr v8, v9

    .line 672
    .local v8, "ratio":F
    float-to-int v9, v8

    if-lt v9, p1, :cond_130

    .line 673
    const-string v9, "BinderCallsStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Heavy Binder Caller is detected. It occupies "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%.2f"

    .line 674
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% in the binder_calls_stats"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 673
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v9, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v9

    .line 676
    :try_start_e8
    iget-object v10, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_125

    .line 682
    iget-object v10, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 683
    .local v10, "size":I
    iget-object v11, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    add-int/lit8 v12, v10, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BinderStats$BinderStatsEntry;

    .line 684
    .local v11, "last":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    iget-object v12, v11, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStats:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    iget-object v12, v12, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->packageName:Ljava/lang/String;

    .line 685
    .local v12, "topPackageName":Ljava/lang/String;
    iget-object v13, v11, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStats:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    iget v6, v6, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callingUid:I

    .line 687
    .local v6, "topUid":I
    iget v13, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    if-ne v13, v6, :cond_125

    .line 689
    const-string v1, "BinderCallsStats"

    const-string v13, "Match TOP uid with stats info"

    invoke-static {v1, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {v12, v6, v8}, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->create(Ljava/lang/String;IF)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    move-result-object v1

    monitor-exit v9

    return-object v1

    .line 693
    .end local v6    # "topUid":I
    .end local v10    # "size":I
    .end local v11    # "last":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    .end local v12    # "topPackageName":Ljava/lang/String;
    :cond_125
    monitor-exit v9
    :try_end_126
    .catchall {:try_start_e8 .. :try_end_126} :catchall_12d

    .line 694
    iget v6, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-static {v1, v6, v8}, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->create(Ljava/lang/String;IF)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    move-result-object v1

    return-object v1

    .line 693
    :catchall_12d
    move-exception v1

    :try_start_12e
    monitor-exit v9
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    throw v1

    .line 697
    .end local v5    # "numOfTopProcesses":I
    .end local v7    # "top":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v8    # "ratio":F
    :cond_130
    return-object v1
.end method

.method public getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;
    .registers 2

    .line 1779
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    return-object v0
.end method

.method protected getNativeTid()I
    .registers 2

    .line 1132
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method

.method public getNativeTids()[I
    .registers 2

    .line 1196
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method protected getPackageName(II)Ljava/lang/String;
    .registers 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1141
    const/4 v0, 0x0

    .line 1142
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BinderCallsStats;->getHashCode(II)I

    move-result v1

    .line 1144
    .local v1, "hashCode":I
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1145
    :try_start_8
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1146
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 1148
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_a6

    .line 1150
    if-eqz v0, :cond_25

    const-string v2, "<pre-initialized>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1151
    return-object v0

    .line 1154
    :cond_25
    const/4 v2, 0x0

    .line 1156
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_26
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/%d/cmdline"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 1159
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1160
    if-eqz v0, :cond_52

    .line 1161
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_56

    .line 1163
    :cond_52
    const-string/jumbo v3, "unknown"
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_55} :catch_66
    .catchall {:try_start_26 .. :try_end_55} :catchall_64

    move-object v0, v3

    .line 1170
    :goto_56
    nop

    .line 1171
    :try_start_57
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 1175
    :cond_5a
    :goto_5a
    goto :goto_78

    .line 1173
    :catch_5b
    move-exception v3

    .line 1174
    .local v3, "ce":Ljava/io/IOException;
    const-string v4, "BinderCallsStats"

    const-string v5, "IO errors occurred during closing file..."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1176
    .end local v3    # "ce":Ljava/io/IOException;
    goto :goto_78

    .line 1169
    :catchall_64
    move-exception v3

    goto :goto_95

    .line 1165
    :catch_66
    move-exception v3

    .line 1166
    .local v3, "e":Ljava/io/IOException;
    :try_start_67
    const-string v4, "BinderCallsStats"

    const-string v5, "IO errors occurred ..."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    const-string/jumbo v4, "unknown"
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_64

    move-object v0, v4

    .line 1170
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_5a

    .line 1171
    :try_start_74
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_5b

    goto :goto_5a

    .line 1178
    :goto_78
    const-string v3, "dumpsys"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8d

    .line 1179
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1180
    :try_start_83
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1181
    monitor-exit v3

    goto :goto_94

    :catchall_8a
    move-exception v4

    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_8a

    throw v4

    .line 1186
    :cond_8d
    const-string v3, "BinderCallsStats"

    const-string v4, "This is dumpsys command... We will not add it into HashMap"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :goto_94
    return-object v0

    .line 1170
    :goto_95
    if-eqz v2, :cond_a4

    .line 1171
    :try_start_97
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_a4

    .line 1173
    :catch_9b
    move-exception v4

    .line 1174
    .local v4, "ce":Ljava/io/IOException;
    const-string v5, "BinderCallsStats"

    const-string v6, "IO errors occurred during closing file..."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a5

    .line 1175
    .end local v4    # "ce":Ljava/io/IOException;
    :cond_a4
    :goto_a4
    nop

    .line 1176
    :goto_a5
    throw v3

    .line 1148
    .end local v2    # "br":Ljava/io/BufferedReader;
    :catchall_a6
    move-exception v3

    :try_start_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v3
.end method

.method protected getThreadTimeMicro()J
    .registers 3

    .line 1120
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidEntries()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation

    .line 1770
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    return-object v0
.end method

.method public init()V
    .registers 9

    .line 249
    const-string v0, "Failed to close file, /data/log/binder_calls_stats"

    const-string v1, "BinderCallsStats"

    const/4 v2, 0x0

    .line 250
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 252
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/binder_calls_stats"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x200000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_27

    .line 258
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_1c} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_3e
    .catchall {:try_start_6 .. :try_end_1c} :catchall_3c

    .line 268
    if-eqz v3, :cond_26

    .line 270
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    .line 273
    goto :goto_26

    .line 271
    :catch_22
    move-exception v4

    .line 272
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_26
    :goto_26
    return-void

    .line 261
    :cond_27
    :try_start_27
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 262
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/BinderStats;->read(Ljava/io/InputStream;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_32} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_32} :catch_3e
    .catchall {:try_start_27 .. :try_end_32} :catchall_3c

    .line 268
    nop

    .line 270
    :try_start_33
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    .line 273
    :goto_36
    goto :goto_58

    .line 271
    :catch_37
    move-exception v4

    .line 272
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_36

    .line 268
    :catchall_3c
    move-exception v4

    goto :goto_59

    .line 265
    :catch_3e
    move-exception v4

    .line 266
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3f
    const-string v5, "Exception occurred during load from file"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    .line 268
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_58

    .line 270
    :try_start_47
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_37

    goto :goto_36

    .line 263
    :catch_4b
    move-exception v4

    .line 264
    .local v4, "fne":Ljava/io/FileNotFoundException;
    :try_start_4c
    const-string v5, "The file does NOT exist... /data/log/binder_calls_stats"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_3c

    .line 268
    nop

    .end local v4    # "fne":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_58

    .line 270
    :try_start_54
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_37

    goto :goto_36

    .line 276
    :cond_58
    :goto_58
    return-void

    .line 268
    :goto_59
    if-eqz v3, :cond_63

    .line 270
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 273
    goto :goto_63

    .line 271
    :catch_5f
    move-exception v5

    .line 272
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_63
    :goto_63
    throw v4
.end method

.method public isNeededResetData()Z
    .registers 7

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 702
    .local v0, "currentTime":J
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v2}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isScreenInteractive()Z

    move-result v2

    if-nez v2, :cond_2a

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    iget v4, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2a

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    .line 705
    iput-wide v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    .line 706
    const/4 v2, 0x1

    return v2

    .line 708
    :cond_2a
    const/4 v2, 0x0

    return v2
.end method

.method public recordAllCallsForWorkSourceUid(I)V
    .registers 5
    .param p1, "workSourceUid"    # I

    .line 1263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording all Binder calls for UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BinderCallsStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v1

    .line 1267
    .local v1, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iput-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    .line 1268
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    .line 1270
    mul-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    .line 1271
    .local v2, "tmpUidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iput-boolean v0, v2, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    .line 1272
    return-void
.end method

.method public reportProcessDied(IILjava/lang/String;)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 932
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BinderCallsStats;->getHashCode(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 934
    monitor-exit v0

    .line 935
    return-void

    .line 934
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public varargs reset([Z)V
    .registers 5
    .param p1, "allEntriesOnly"    # [Z

    .line 1365
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1366
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1367
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    .line 1368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    .line 1369
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1a

    .line 1370
    array-length v0, p1

    if-nez v0, :cond_19

    .line 1371
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->resetForSEC()V

    .line 1373
    :cond_19
    return-void

    .line 1369
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public resetForSEC()V
    .registers 4

    .line 1350
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1351
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1352
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    .line 1354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    .line 1355
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v1, :cond_20

    .line 1356
    invoke-virtual {v1}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->reset()V

    .line 1358
    :cond_20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    .line 1361
    monitor-exit v0

    .line 1362
    return-void

    .line 1361
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public setAddDebugEntries(Z)V
    .registers 2
    .param p1, "addDebugEntries"    # Z

    .line 1275
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    .line 1276
    return-void
.end method

.method public setCallStatsObserver(Lcom/android/internal/os/BinderInternal$CallStatsObserver;)V
    .registers 2
    .param p1, "callStatsObserver"    # Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    .line 284
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    .line 285
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteBinderThreadNativeIds()V

    .line 286
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteCallsStatsDelayed()V

    .line 287
    return-void
.end method

.method public setCollectLatencyData(Z)V
    .registers 2
    .param p1, "collectLatencyData"    # Z

    .line 1330
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    .line 1331
    return-void
.end method

.method public setCpuUsageThreshold(I)Z
    .registers 4
    .param p1, "cpuUsageThreshold"    # I

    .line 1340
    if-ltz p1, :cond_b

    const/16 v0, 0x64

    if-le p1, v0, :cond_7

    goto :goto_b

    .line 1345
    :cond_7
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    .line 1346
    const/4 v0, 0x1

    return v0

    .line 1341
    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid cpu usage threshold value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderCallsStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const/4 v0, 0x0

    return v0
.end method

.method public setDetailedTracking(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1211
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eq p1, v1, :cond_f

    .line 1213
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    .line 1214
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1216
    :cond_f
    monitor-exit v0

    .line 1217
    return-void

    .line 1216
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V
    .registers 3
    .param p1, "deviceState"    # Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 237
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_7

    .line 238
    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->close()V

    .line 240
    :cond_7
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 241
    invoke-virtual {p1}, Lcom/android/internal/os/CachedDeviceState$Readonly;->createTimeOnBatteryStopwatch()Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 242
    return-void
.end method

.method public setIgnoreBatteryStatus(Z)V
    .registers 4
    .param p1, "ignored"    # Z

    .line 1247
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1248
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    if-eq p1, v1, :cond_f

    .line 1249
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    .line 1250
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1252
    :cond_f
    monitor-exit v0

    .line 1253
    return-void

    .line 1252
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public setMaxBinderCallStats(I)V
    .registers 5
    .param p1, "maxKeys"    # I

    .line 1282
    if-gtz p1, :cond_1b

    .line 1283
    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid max value (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    return-void

    .line 1288
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1289
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    if-eq p1, v1, :cond_2a

    .line 1290
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    .line 1291
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1293
    :cond_2a
    monitor-exit v0

    .line 1294
    return-void

    .line 1293
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public setSamplingInterval(I)V
    .registers 5
    .param p1, "samplingInterval"    # I

    .line 1297
    if-gtz p1, :cond_1b

    .line 1298
    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sampling interval (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    return-void

    .line 1303
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1304
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    if-eq p1, v1, :cond_2a

    .line 1305
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    .line 1306
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1308
    :cond_2a
    monitor-exit v0

    .line 1309
    return-void

    .line 1308
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public setShardingModulo(I)V
    .registers 5
    .param p1, "shardingModulo"    # I

    .line 1313
    if-gtz p1, :cond_1b

    .line 1314
    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sharding modulo (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    return-void

    .line 1319
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1320
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    if-eq p1, v1, :cond_32

    .line 1321
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    .line 1322
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    .line 1323
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1325
    :cond_32
    monitor-exit v0

    .line 1326
    return-void

    .line 1325
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_34

    throw v1
.end method

.method public setTrackDirectCallerUid(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1235
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1236
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    if-eq p1, v1, :cond_f

    .line 1237
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    .line 1238
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1240
    :cond_f
    monitor-exit v0

    .line 1241
    return-void

    .line 1240
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public setTrackScreenInteractive(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1223
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1224
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    if-eq p1, v1, :cond_f

    .line 1225
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    .line 1226
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1228
    :cond_f
    monitor-exit v0

    .line 1229
    return-void

    .line 1228
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected shouldRecordDetailedData()Z
    .registers 3

    .line 1204
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public store(II)V
    .registers 11
    .param p1, "N"    # I
    .param p2, "cpuUsage"    # I

    .line 1494
    invoke-direct {p0, p2}, Lcom/android/internal/os/BinderCallsStats;->prepareExportedCallStats(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1496
    .local v0, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    if-lt p2, v1, :cond_8f

    .line 1497
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1498
    const/4 v1, 0x0

    .line 1499
    .local v1, "count":I
    new-instance v2, Lcom/android/internal/os/BinderStats$BinderStatsEntry;

    invoke-direct {v2}, Lcom/android/internal/os/BinderStats$BinderStatsEntry;-><init>()V

    .line 1500
    .local v2, "entry":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    iget-wide v3, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    iput-wide v3, v2, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStartTime:J

    .line 1501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mEndTime:J

    .line 1502
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1503
    .local v4, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    invoke-direct {p0, v4}, Lcom/android/internal/os/BinderCallsStats;->isDebugEntry(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)Z

    move-result v5

    if-eqz v5, :cond_37

    goto :goto_24

    .line 1504
    :cond_37
    new-instance v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    invoke-direct {v5}, Lcom/android/internal/os/BinderStats$BinderStatsUnit;-><init>()V

    .line 1505
    .local v5, "u":Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    iget v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    iput v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callingUid:I

    .line 1506
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->packageName:Ljava/lang/String;

    .line 1507
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->binderClass:Ljava/lang/String;

    .line 1508
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->methodName:Ljava/lang/String;

    .line 1509
    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iput-wide v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->cpuTimeMicros:J

    .line 1510
    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iput-wide v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callCount:J

    .line 1511
    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iput-wide v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->recordedCallCount:J

    .line 1512
    invoke-virtual {v2, v5}, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->addUnit(Lcom/android/internal/os/BinderStats$BinderStatsUnit;)V

    .line 1514
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_60

    goto :goto_61

    .line 1515
    .end local v4    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .end local v5    # "u":Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    :cond_60
    goto :goto_24

    .line 1517
    :cond_61
    :goto_61
    if-lez v1, :cond_8f

    .line 1518
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1519
    :try_start_66
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    const-string v4, "BinderCallsStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "store() invoked. mEntries size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    monitor-exit v3

    goto :goto_8f

    :catchall_8c
    move-exception v4

    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_66 .. :try_end_8e} :catchall_8c

    throw v4

    .line 1524
    .end local v1    # "count":I
    .end local v2    # "entry":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    :cond_8f
    :goto_8f
    return-void
.end method

.method public writeToFile()V
    .registers 7

    .line 1376
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1377
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_14

    .line 1378
    const-string v1, "BinderCallsStats"

    const-string v2, "Nothing to write to file. Just return"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    monitor-exit v0

    return-void

    .line 1381
    :cond_14
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BinderStats;->addData(Ljava/util/ArrayList;)V

    .line 1382
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1383
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_be

    .line 1384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1385
    .local v0, "out":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1386
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BinderStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1387
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x200000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6c

    .line 1388
    const-string v2, "BinderCallsStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The state of stats data looks abnormal. parcel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1389
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), entry_num("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v4}, Lcom/android/internal/os/BinderStats;->getSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1388
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_6c
    const/4 v2, 0x0

    .line 1393
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 1395
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_6e
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/binder_calls_stats"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1396
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_83

    .line 1397
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1398
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1400
    :cond_83
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v4

    .line 1401
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1402
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_93} :catch_9f
    .catchall {:try_start_6e .. :try_end_93} :catchall_9d

    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1408
    nop

    .line 1409
    :try_start_97
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    .line 1411
    :cond_9a
    :goto_9a
    goto :goto_b1

    :catch_9b
    move-exception v1

    .line 1412
    goto :goto_b1

    .line 1406
    :catchall_9d
    move-exception v1

    goto :goto_b2

    .line 1403
    :catch_9f
    move-exception v1

    .line 1404
    .local v1, "e":Ljava/lang/Exception;
    :try_start_a0
    const-string v4, "BinderCallsStats"

    const-string v5, "Exception occurred during writing file"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_9d

    .line 1406
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1408
    if-eqz v3, :cond_9a

    .line 1409
    :try_start_ad
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_9b

    goto :goto_9a

    .line 1413
    :goto_b1
    return-void

    .line 1406
    :goto_b2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1408
    if-eqz v3, :cond_bc

    .line 1409
    :try_start_b7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_bc

    .line 1411
    :catch_bb
    move-exception v4

    :cond_bc
    :goto_bc
    nop

    .line 1412
    throw v1

    .line 1383
    .end local v0    # "out":Landroid/os/Parcel;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_be
    move-exception v1

    :try_start_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v1
.end method
