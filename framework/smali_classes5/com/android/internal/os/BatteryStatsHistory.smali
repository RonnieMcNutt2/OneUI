.class public Lcom/android/internal/os/BatteryStatsHistory;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;,
        Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;,
        Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;
    }
.end annotation


# static fields
.field static final BATTERY_LEVEL_DETAILS_FLAG:I = 0x1

.field private static final DEBUG:Z = false

.field static final DELTA_BATTERY_CHARGE_FLAG:I = 0x1000000

.field static final DELTA_BATTERY_CURRENT_FLAG:I = 0x40000

.field static final DELTA_BATTERY_LEVEL_FLAG:I = 0x80000

.field static final DELTA_BATTERY_SEC_INFO_FLAG:I = 0x20000

.field static final DELTA_EVENT_FLAG:I = 0x800000

.field static final DELTA_STATE2_FLAG:I = 0x200000

.field static final DELTA_STATE_FLAG:I = 0x100000

.field static final DELTA_STATE_MASK:I = -0x2000000

.field static final DELTA_TIME_ABS:I = 0x1fffd

.field static final DELTA_TIME_INT:I = 0x1fffe

.field static final DELTA_TIME_LONG:I = 0x1ffff

.field static final DELTA_TIME_MASK:I = 0x1ffff

.field static final DELTA_WAKELOCK_FLAG:I = 0x400000

.field static final EXTENSION_CPU_USAGE_FLAG:I = 0x8

.field static final EXTENSION_CPU_USAGE_HEADER_FLAG:I = 0x4

.field static final EXTENSION_MEASURED_ENERGY_FLAG:I = 0x2

.field static final EXTENSION_MEASURED_ENERGY_HEADER_FLAG:I = 0x1

.field private static final FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field private static final HISTORY_DIR:Ljava/lang/String; = "battery-history"

.field private static final HISTORY_TAG_INDEX_LIMIT:I = 0x7ffe

.field private static final MAX_HISTORY_TAG_STRING_LENGTH:I = 0x400

.field private static final MIN_FREE_SPACE:I = 0x6400000

.field static final STATE_BATTERY_HEALTH_MASK:I = 0x7

.field static final STATE_BATTERY_HEALTH_SHIFT:I = 0x1a

.field static final STATE_BATTERY_MASK:I = -0x1000000

.field static final STATE_BATTERY_PLUG_MASK:I = 0x3

.field static final STATE_BATTERY_PLUG_SHIFT:I = 0x18

.field static final STATE_BATTERY_STATUS_MASK:I = 0x7

.field static final STATE_BATTERY_STATUS_SHIFT:I = 0x1d

.field static final STATE_SEC_BATTERY_HEALTH_MASK:I = 0x8

.field static final STATE_SEC_BATTERY_HEALTH_SHIFT:I = 0xe

.field private static final TAG:Ljava/lang/String; = "BatteryStatsHistory"

.field static final TAG_FIRST_OCCURRENCE_FLAG:I = 0x8000

.field private static final VERSION:I = 0xa00d1

.field private static final VERSION_SEC:I = 0xa0000


# instance fields
.field private mActiveFile:Landroid/util/AtomicFile;

.field private mCleanupEnabled:Z

.field private final mClock:Lcom/android/internal/os/Clock;

.field private mCpuUsageHeaderWritten:Z

.field private mCurrentFileIndex:I

.field private mCurrentParcel:Landroid/os/Parcel;

.field private mCurrentParcelEnd:I

.field private final mFileNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveBatteryLevel:Z

.field private final mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

.field private mHistoryBaseTimeMs:J

.field private final mHistoryBuffer:Landroid/os/Parcel;

.field private mHistoryBufferLastPos:I

.field private final mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field private final mHistoryDir:Ljava/io/File;

.field private final mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field private final mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field private mHistoryParcels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field

.field private final mHistoryTagPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/BatteryStats$HistoryTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHistoryElapsedRealtimeMs:J

.field private mLastHistoryStepLevel:B

.field private mMaxHistoryBufferSize:I

.field private mMaxHistoryFiles:I

.field private mMeasuredEnergyHeaderWritten:Z

.field private mMutable:Z

.field private mNextHistoryTagIdx:I

.field private mNumHistoryTagChars:I

.field private mParcelIndex:I

.field private mRecordingHistory:Z

.field private final mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

.field private final mSystemDir:Ljava/io/File;

.field private mTraceLastState:I

.field private mTraceLastState2:I

.field private mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

.field private mTrackRunningHistoryElapsedRealtimeMs:J

.field private mTrackRunningHistoryUptimeMs:J

.field private final mVarintParceler:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

.field private final mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(IILcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;)V
    .registers 9
    .param p1, "maxHistoryFiles"    # I
    .param p2, "maxHistoryBufferSize"    # I
    .param p3, "stepDetailsCalculator"    # Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;
    .param p4, "clock"    # Lcom/android/internal/os/Clock;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 185
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    .line 187
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 189
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 197
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    .line 199
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 200
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 201
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 202
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 203
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 204
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 205
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryElapsedRealtimeMs:J

    .line 206
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 207
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 209
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMeasuredEnergyHeaderWritten:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCpuUsageHeaderWritten:Z

    .line 211
    new-instance v2, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    invoke-direct {v2}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mVarintParceler:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    .line 212
    iput-byte v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    .line 213
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCleanupEnabled:Z

    .line 275
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 276
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 350
    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryFiles:I

    .line 351
    iput p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 352
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    .line 353
    new-instance v1, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    .line 354
    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    .line 357
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mSystemDir:Ljava/io/File;

    .line 358
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    .line 359
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 360
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    .line 361
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 185
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    .line 187
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 189
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 197
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    .line 199
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 200
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 201
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 202
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 203
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 204
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 205
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryElapsedRealtimeMs:J

    .line 206
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 207
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 209
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMeasuredEnergyHeaderWritten:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCpuUsageHeaderWritten:Z

    .line 211
    new-instance v2, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    invoke-direct {v2}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mVarintParceler:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    .line 212
    iput-byte v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    .line 213
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCleanupEnabled:Z

    .line 275
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 276
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 368
    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    .line 369
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    .line 370
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mSystemDir:Ljava/io/File;

    .line 371
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    .line 372
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    .line 373
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 374
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    .line 378
    .local v0, "historyBlob":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    .line 379
    array-length v4, v0

    invoke-virtual {v3, v0, v1, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 381
    invoke-direct {p0, p1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    .line 382
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/io/File;IILcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;)V
    .registers 17
    .param p1, "historyBuffer"    # Landroid/os/Parcel;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "maxHistoryFiles"    # I
    .param p4, "maxHistoryBufferSize"    # I
    .param p5, "stepDetailsCalculator"    # Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;
    .param p6, "clock"    # Lcom/android/internal/os/Clock;
    .param p7, "tracer"    # Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    .line 296
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;Ljava/io/File;IILcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory;)V

    .line 298
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/io/File;IILcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory;)V
    .registers 15
    .param p1, "historyBuffer"    # Landroid/os/Parcel;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "maxHistoryFiles"    # I
    .param p4, "maxHistoryBufferSize"    # I
    .param p5, "stepDetailsCalculator"    # Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;
    .param p6, "clock"    # Lcom/android/internal/os/Clock;
    .param p7, "tracer"    # Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;
    .param p8, "writableHistory"    # Lcom/android/internal/os/BatteryStatsHistory;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 185
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    .line 187
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 189
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 197
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    .line 199
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 200
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 201
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 202
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 203
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 204
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 205
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryElapsedRealtimeMs:J

    .line 206
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 207
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 209
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMeasuredEnergyHeaderWritten:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCpuUsageHeaderWritten:Z

    .line 211
    new-instance v2, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    invoke-direct {v2}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mVarintParceler:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    .line 212
    iput-byte v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    .line 213
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCleanupEnabled:Z

    .line 275
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 276
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 304
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    .line 305
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mSystemDir:Ljava/io/File;

    .line 306
    iput p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryFiles:I

    .line 307
    iput p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 308
    iput-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    .line 309
    iput-object p7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    .line 310
    iput-object p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    .line 311
    iput-object p8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 312
    if-eqz p8, :cond_73

    .line 313
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 316
    :cond_73
    new-instance v3, Ljava/io/File;

    const-string v4, "battery-history"

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    .line 317
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 318
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a1

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HistoryDir does not exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryStatsHistory"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_a1
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 324
    .local v4, "dedup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v5, Lcom/android/internal/os/BatteryStatsHistory$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/android/internal/os/BatteryStatsHistory$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 337
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_cd

    .line 338
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 340
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(I)V

    goto :goto_d7

    .line 343
    :cond_cd
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-direct {p0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(I)V

    .line 346
    :goto_d7
    return-void
.end method

.method public constructor <init>(Ljava/io/File;IILcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;)V
    .registers 14
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "maxHistoryFiles"    # I
    .param p3, "maxHistoryBufferSize"    # I
    .param p4, "stepDetailsCalculator"    # Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;
    .param p5, "clock"    # Lcom/android/internal/os/Clock;

    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    new-instance v7, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    invoke-direct {v7}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;Ljava/io/File;IILcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;)V

    .line 289
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    .line 290
    return-void
.end method

.method private buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 6
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .line 1933
    const/4 v0, 0x0

    .line 1934
    .local v0, "bits":I
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v2, 0x19

    const/high16 v3, -0x2000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v0

    .line 1935
    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    const/16 v2, 0xf

    const v3, 0x1ff8000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v0

    .line 1936
    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    const/4 v2, 0x1

    const/16 v3, 0x7ffe

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v0

    .line 1937
    return v0
.end method

.method private buildBatterySecInfo(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 5
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .line 1958
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private buildCurrentNTemperature(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 5
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .line 1942
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->current:S

    shl-int/lit8 v1, v1, 0x0

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 6
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .line 1964
    const/4 v0, 0x0

    .line 1965
    .local v0, "plugType":I
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    .line 1966
    const/4 v0, 0x1

    goto :goto_18

    .line 1967
    :cond_9
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_11

    .line 1968
    const/4 v0, 0x2

    goto :goto_18

    .line 1969
    :cond_11
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_18

    .line 1970
    const/4 v0, 0x3

    .line 1972
    :cond_18
    :goto_18
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x1d

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x1a

    or-int/2addr v1, v2

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x8

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1
.end method

.method private buildTemperature2(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 5
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .line 1948
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    shl-int/lit8 v0, v0, 0x1d

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    shl-int/lit8 v1, v1, 0x1c

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    shl-int/lit8 v1, v1, 0x1b

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    shl-int/lit8 v1, v1, 0x1a

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    shl-int/lit8 v1, v1, 0x19

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private cleanupLocked()V
    .registers 4

    .line 506
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCleanupEnabled:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    if-nez v0, :cond_9

    goto :goto_47

    .line 511
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->hasFreeDiskSpace()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 512
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 513
    .local v0, "oldest":I
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 519
    .end local v0    # "oldest":I
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryFiles:I

    if-le v0, v2, :cond_46

    .line 520
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 521
    .restart local v0    # "oldest":I
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 522
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 523
    .end local v0    # "oldest":I
    goto :goto_23

    .line 524
    :cond_46
    return-void

    .line 507
    :cond_47
    :goto_47
    return-void
.end method

.method public static createFromBatteryUsageStatsParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsHistory;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 800
    new-instance v0, Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private ensureHistoryTagArray()V
    .registers 6

    .line 2188
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2189
    return-void

    .line 2192
    :cond_5
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    .line 2193
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2194
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, -0x8001

    and-int/2addr v3, v4

    .line 2195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$HistoryTag;

    .line 2194
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2196
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    goto :goto_1c

    .line 2197
    :cond_42
    return-void
.end method

.method private getFile(I)Landroid/util/AtomicFile;
    .registers 7
    .param p1, "num"    # I

    .line 461
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private hasFreeDiskSpace()Z
    .registers 6

    .line 872
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 873
    .local v0, "stats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    const-wide/32 v3, 0x6400000

    cmp-long v1, v1, v3

    if-lez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method private initHistoryBuffer()V
    .registers 4

    .line 385
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBaseTimeMs:J

    .line 386
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryElapsedRealtimeMs:J

    .line 387
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 388
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMeasuredEnergyHeaderWritten:Z

    .line 390
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCpuUsageHeaderWritten:Z

    .line 392
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataSize(I)V

    .line 393
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 394
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 395
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 396
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 397
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 398
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 399
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 400
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 401
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    if-eqz v0, :cond_3f

    .line 402
    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;->clear()V

    .line 404
    :cond_3f
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z
    .registers 7
    .param p0, "dedup"    # Ljava/util/Set;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 325
    const-string v0, ".bin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 326
    .local v0, "b":I
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 327
    return v1

    .line 329
    :cond_a
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/internal/util/ParseUtils;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 330
    .local v2, "c":I
    if-eq v2, v3, :cond_1e

    .line 331
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    const/4 v1, 0x1

    return v1

    .line 334
    :cond_1e
    return v1
.end method

.method private readFromParcel(Landroid/os/Parcel;Z)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "useBlobs"    # Z

    .line 850
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 851
    .local v0, "start":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 853
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_37

    .line 854
    if-eqz p2, :cond_19

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v4

    goto :goto_1d

    :cond_19
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 855
    .local v4, "temp":[B
    :goto_1d
    if-eqz v4, :cond_34

    array-length v5, v4

    if-nez v5, :cond_23

    .line 856
    goto :goto_34

    .line 858
    :cond_23
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 859
    .local v5, "p":Landroid/os/Parcel;
    array-length v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 860
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 861
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    .end local v4    # "temp":[B
    .end local v5    # "p":Landroid/os/Parcel;
    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 866
    .end local v3    # "i":I
    :cond_37
    return-void
.end method

.method private recordTraceCounters(II[Landroid/os/BatteryStats$BitDescription;)V
    .registers 11
    .param p1, "oldval"    # I
    .param p2, "newval"    # I
    .param p3, "descriptions"    # [Landroid/os/BatteryStats$BitDescription;

    .line 1338
    xor-int v0, p1, p2

    .line 1339
    .local v0, "diff":I
    if-nez v0, :cond_5

    return-void

    .line 1341
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p3

    if-ge v1, v2, :cond_41

    .line 1342
    aget-object v2, p3, v1

    .line 1343
    .local v2, "bd":Landroid/os/BatteryStats$BitDescription;
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, v0

    if-nez v3, :cond_11

    goto :goto_3e

    .line 1346
    :cond_11
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v3, :cond_1e

    .line 1347
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    .local v3, "value":I
    :goto_1d
    goto :goto_24

    .line 1349
    .end local v3    # "value":I
    :cond_1e
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p2

    iget v4, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v3, v4

    .line 1352
    .restart local v3    # "value":I
    :goto_24
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery_stats."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->traceCounter(Ljava/lang/String;I)V

    .line 1341
    .end local v2    # "bd":Landroid/os/BatteryStats$BitDescription;
    .end local v3    # "value":I
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1354
    .end local v1    # "i":I
    :cond_41
    return-void
.end method

.method private recordTraceEvents(ILandroid/os/BatteryStats$HistoryTag;)V
    .registers 9
    .param p1, "code"    # I
    .param p2, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .line 1309
    if-nez p1, :cond_3

    return-void

    .line 1311
    :cond_3
    const v0, -0xc001

    and-int/2addr v0, p1

    .line 1312
    .local v0, "idx":I
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_10

    const-string v1, "+"

    goto :goto_19

    .line 1313
    :cond_10
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_17

    const-string v1, "-"

    goto :goto_19

    :cond_17
    const-string v1, ""

    :goto_19
    nop

    .line 1315
    .local v1, "prefix":Ljava/lang/String;
    sget-object v2, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 1316
    .local v2, "names":[Ljava/lang/String;
    if-ltz v0, :cond_6e

    array-length v3, v2

    if-lt v0, v3, :cond_22

    goto :goto_6e

    .line 1318
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battery_stats."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1319
    .local v3, "track":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1320
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->traceInstantEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    return-void

    .line 1316
    .end local v3    # "track":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_6e
    :goto_6e
    return-void
.end method

.method private setActiveFile(I)V
    .registers 3
    .param p1, "fileNumber"    # I

    .line 448
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    .line 452
    return-void
.end method

.method private setBitField(IIII)I
    .registers 8
    .param p1, "bits"    # I
    .param p2, "value"    # I
    .param p3, "shift"    # I
    .param p4, "mask"    # I

    .line 1357
    shl-int v0, p2, p3

    .line 1358
    .local v0, "shiftedValue":I
    not-int v1, p4

    and-int/2addr v1, v0

    if-eqz v1, :cond_31

    .line 1359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fit in the bit field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1360
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1359
    const-string v2, "BatteryStatsHistory"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    and-int/2addr v0, p4

    .line 1363
    :cond_31
    not-int v1, p4

    and-int/2addr v1, p1

    or-int/2addr v1, v0

    return v1
.end method

.method private setCleanupEnabledLocked(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 498
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCleanupEnabled:Z

    .line 499
    if-eqz p1, :cond_7

    .line 500
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->cleanupLocked()V

    .line 502
    :cond_7
    return-void
.end method

.method private skipHead(Landroid/os/Parcel;)Z
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .line 692
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 694
    .local v1, "version":I
    const v2, 0xa00d1

    if-eq v1, v2, :cond_e

    .line 695
    return v0

    .line 698
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 699
    const/4 v0, 0x1

    return v0
.end method

.method private writeHistoryBuffer(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2121
    const v0, 0xa00d1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2122
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBaseTimeMs:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryElapsedRealtimeMs:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2123
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 2129
    return-void
.end method

.method private writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V
    .registers 28
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .line 1390
    move-object/from16 v7, p0

    move-object/from16 v8, p5

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->tracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1391
    iget v0, v8, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v7, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceEvents(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 1392
    iget v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    iget v1, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    sget-object v2, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-direct {v7, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceCounters(II[Landroid/os/BatteryStats$BitDescription;)V

    .line 1394
    iget v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    iget v1, v8, Landroid/os/BatteryStats$HistoryItem;->states2:I

    sget-object v2, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-direct {v7, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceCounters(II[Landroid/os/BatteryStats$BitDescription;)V

    .line 1396
    iget v0, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 1397
    iget v0, v8, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 1400
    :cond_2f
    iget-boolean v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    if-eqz v0, :cond_299

    iget-boolean v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    if-nez v0, :cond_39

    goto/16 :goto_299

    .line 1404
    :cond_39
    iget-boolean v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_291

    .line 1408
    iget-wide v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBaseTimeMs:J

    add-long v0, v0, p1

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v9, v0, v2

    .line 1409
    .local v9, "timeDiffMs":J
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v1, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v11, v0, v1

    .line 1410
    .local v11, "diffStates":I
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v1, v8, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v12, v0, v1

    .line 1411
    .local v12, "diffStates2":I
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v13, v0, v1

    .line 1412
    .local v13, "lastDiffStates":I
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v14, v0, v1

    .line 1421
    .local v14, "lastDiffStates2":I
    iget v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    const/4 v1, -0x1

    if-ltz v0, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v0, :cond_1bd

    const-wide/16 v2, 0x3e8

    cmp-long v0, v9, v2

    if-gez v0, :cond_1bd

    and-int v0, v11, v13

    if-nez v0, :cond_1bd

    and-int v0, v12, v14

    if-nez v0, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean v0, v0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-nez v0, :cond_1bd

    iget-boolean v0, v8, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-nez v0, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_98

    iget-object v0, v8, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_1bd

    :cond_98
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_a2

    iget-object v0, v8, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_1bd

    :cond_a2
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-nez v0, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v0, :cond_b2

    iget v0, v8, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-nez v0, :cond_1bd

    :cond_b2
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v2, v8, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-char v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iget-char v2, v8, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v0, v0, Landroid/os/BatteryStats$HistoryItem;->current:S

    iget-short v2, v8, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    iget v2, v8, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iget v2, v8, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iget v2, v8, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-ne v0, v2, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    if-nez v0, :cond_1bd

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    if-nez v0, :cond_1bd

    .line 1459
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataSize(I)V

    .line 1460
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1461
    iput v1, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 1462
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v4, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBaseTimeMs:J

    sub-long/2addr v2, v4

    .line 1466
    .end local p1    # "elapsedRealtimeMs":J
    .local v2, "elapsedRealtimeMs":J
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_188

    .line 1467
    iget-object v0, v8, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, v8, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1468
    iget-object v0, v8, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1473
    :cond_188
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_19b

    .line 1474
    iget-object v0, v8, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, v8, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1475
    iget-object v0, v8, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1480
    :cond_19b
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v0, :cond_1b4

    .line 1481
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput v0, v8, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1482
    iget-object v0, v8, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, v8, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1483
    iget-object v0, v8, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1485
    :cond_1b4
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    move-wide v15, v2

    goto :goto_1bf

    .line 1487
    .end local v2    # "elapsedRealtimeMs":J
    .restart local p1    # "elapsedRealtimeMs":J
    :cond_1bd
    move-wide/from16 v15, p1

    .end local p1    # "elapsedRealtimeMs":J
    .local v15, "elapsedRealtimeMs":J
    :goto_1bf
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    .line 1489
    .local v6, "dataSize":I
    iget v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const/4 v2, 0x0

    if-lt v6, v0, :cond_252

    .line 1490
    if-nez v0, :cond_1d8

    .line 1491
    const-string v0, "BatteryStatsHistory"

    const-string/jumbo v3, "mMaxHistoryBufferSize should not be zero when writing history"

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/16 v0, 0x400

    iput v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 1496
    :cond_1d8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 1497
    .local v17, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistory()V

    .line 1502
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHistory;->startNextFile()V

    .line 1503
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataSize(I)V

    .line 1504
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1505
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v3, v7, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1506
    iput v1, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 1507
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 1508
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 1512
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1513
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x8000

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    goto :goto_20b

    .line 1515
    :cond_22d
    iput-boolean v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mMeasuredEnergyHeaderWritten:Z

    .line 1516
    iput-boolean v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mCpuUsageHeaderWritten:Z

    .line 1519
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-object v5, v0

    .line 1520
    .local v5, "copy":Landroid/os/BatteryStats$HistoryItem;
    invoke-virtual {v5, v8}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1522
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide v1, v15

    move-wide/from16 v3, p3

    move-object/from16 v20, v5

    .end local v5    # "copy":Landroid/os/BatteryStats$HistoryItem;
    .local v20, "copy":Landroid/os/BatteryStats$HistoryItem;
    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHistory;->startRecordingHistory(JJZ)V

    .line 1524
    move-object/from16 v5, v20

    move/from16 v21, v6

    .end local v6    # "dataSize":I
    .local v21, "dataSize":I
    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1525
    return-void

    .line 1528
    .end local v17    # "start":J
    .end local v20    # "copy":Landroid/os/BatteryStats$HistoryItem;
    .end local v21    # "dataSize":I
    .restart local v6    # "dataSize":I
    :cond_252
    move/from16 v21, v6

    .end local v6    # "dataSize":I
    .restart local v21    # "dataSize":I
    if-nez v21, :cond_285

    .line 1530
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-object v6, v0

    .line 1531
    .local v6, "copy":Landroid/os/BatteryStats$HistoryItem;
    invoke-virtual {v6, v8}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1532
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1533
    const/4 v0, 0x0

    iput-object v0, v6, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1534
    iput-object v0, v6, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1535
    iput v2, v6, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1536
    iput-object v0, v6, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1537
    iput-boolean v2, v6, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1538
    iput-object v0, v6, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    .line 1539
    iput-object v0, v6, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    .line 1540
    const/16 v17, 0x7

    move-object/from16 v0, p0

    move-wide v1, v15

    move-wide/from16 v3, p3

    move-object v5, v6

    move-object/from16 v18, v6

    .end local v6    # "copy":Landroid/os/BatteryStats$HistoryItem;
    .local v18, "copy":Landroid/os/BatteryStats$HistoryItem;
    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1542
    .end local v18    # "copy":Landroid/os/BatteryStats$HistoryItem;
    :cond_285
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide v1, v15

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1543
    return-void

    .line 1405
    .end local v9    # "timeDiffMs":J
    .end local v11    # "diffStates":I
    .end local v12    # "diffStates2":I
    .end local v13    # "lastDiffStates":I
    .end local v14    # "lastDiffStates2":I
    .end local v15    # "elapsedRealtimeMs":J
    .end local v21    # "dataSize":I
    .restart local p1    # "elapsedRealtimeMs":J
    :cond_291
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Battery history is not writable"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1401
    :cond_299
    :goto_299
    return-void
.end method

.method private writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V
    .registers 15
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p6, "cmd"    # B

    .line 1547
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_83

    .line 1550
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 1551
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1552
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean v0, v0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    iget-boolean v0, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    move v0, v1

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 1553
    .local v0, "hasTags":Z
    :goto_22
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBaseTimeMs:J

    add-long/2addr v3, p1

    invoke-virtual {v2, v3, v4, p6, p5}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 1554
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_64

    .line 1555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Significantly earlier event written to battery history: time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryStatsHistory"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_64
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iput-boolean v0, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1560
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V

    .line 1561
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryElapsedRealtimeMs:J

    .line 1562
    const/4 v2, 0x0

    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1563
    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1564
    iput v1, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1565
    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1566
    iput-boolean v1, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1567
    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    .line 1568
    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    .line 1574
    return-void

    .line 1548
    .end local v0    # "hasTags":Z
    :cond_83
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Battery history is not writable"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I
    .registers 9
    .param p1, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .line 1991
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v1, "BatteryStatsHistory"

    if-nez v0, :cond_c

    .line 1992
    const-string/jumbo v0, "writeHistoryTag called with null name"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_c
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1996
    .local v0, "stringLength":I
    const/16 v2, 0x400

    if-le v0, v2, :cond_37

    .line 1997
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Long battery history tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2001
    :cond_37
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2003
    .local v1, "idxObj":Ljava/lang/Integer;
    const v2, 0x8000

    if-eqz v1, :cond_59

    .line 2004
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2005
    .local v3, "idx":I
    and-int/2addr v2, v3

    if-eqz v2, :cond_58

    .line 2006
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    const v4, -0x8001

    and-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    :cond_58
    return v3

    .line 2009
    .end local v3    # "idx":I
    :cond_59
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    const/16 v4, 0x7ffe

    if-ge v3, v4, :cond_8a

    .line 2010
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 2011
    .restart local v3    # "idx":I
    new-instance v4, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 2012
    .local v4, "key":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v4, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2013
    iput v3, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 2014
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 2017
    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    add-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 2018
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    if-eqz v5, :cond_88

    .line 2019
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2021
    :cond_88
    or-int/2addr v2, v3

    return v2

    .line 2024
    .end local v3    # "idx":I
    .end local v4    # "key":Landroid/os/BatteryStats$HistoryTag;
    :cond_8a
    const v2, 0xfffe

    return v2
.end method

.method private writeParcelToFileLocked(Landroid/os/Parcel;Landroid/util/AtomicFile;)V
    .registers 9
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "file"    # Landroid/util/AtomicFile;

    .line 2132
    const/4 v0, 0x0

    .line 2133
    .local v0, "fos":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2135
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2136
    .local v1, "startTimeMs":J
    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v0, v3

    .line 2137
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2138
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 2139
    invoke-virtual {p2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2145
    const-string v3, "batterystats"

    .line 2146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 2145
    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_26} :catch_29
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    .end local v1    # "startTimeMs":J
    goto :goto_34

    .line 2151
    :catchall_27
    move-exception v1

    goto :goto_3b

    .line 2147
    :catch_29
    move-exception v1

    .line 2148
    .local v1, "e":Ljava/io/IOException;
    :try_start_2a
    const-string v2, "BatteryStatsHistory"

    const-string v3, "Error writing battery statistics"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2149
    invoke-virtual {p2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_27

    .line 2151
    .end local v1    # "e":Ljava/io/IOException;
    :goto_34
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2152
    nop

    .line 2153
    return-void

    .line 2151
    :goto_3b
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2152
    throw v1
.end method

.method private writeToParcel(Landroid/os/Parcel;Z)V
    .registers 11
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "useBlobs"    # Z

    .line 773
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 774
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_60

    .line 776
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v3

    .line 777
    .local v3, "file":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 779
    .local v4, "raw":[B
    :try_start_2d
    invoke-virtual {v3}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_33

    move-object v4, v5

    .line 782
    goto :goto_54

    .line 780
    :catch_33
    move-exception v5

    .line 781
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryStatsHistory"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_54
    if-eqz p2, :cond_5a

    .line 784
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeBlob([B)V

    goto :goto_5d

    .line 787
    :cond_5a
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 775
    .end local v3    # "file":Landroid/util/AtomicFile;
    .end local v4    # "raw":[B
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 793
    .end local v2    # "i":I
    :cond_60
    return-void
.end method


# virtual methods
.method public commitCurrentHistoryBatchLocked()V
    .registers 3

    .line 2032
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2033
    return-void
.end method

.method public continueRecordingHistory()V
    .registers 13

    .line 942
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_12

    .line 943
    return-void

    .line 946
    :cond_12
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 947
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v8

    .line 948
    .local v8, "elapsedRealtimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v10

    .line 949
    .local v10, "uptimeMs":J
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 v7, 0x4

    move-object v1, p0

    move-wide v2, v8

    move-wide v4, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 950
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->startRecordingHistory(JJZ)V

    .line 951
    return-void
.end method

.method public copy()Lcom/android/internal/os/BatteryStatsHistory;
    .registers 12

    .line 425
    monitor-enter p0

    .line 427
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 428
    .local v0, "historyBufferCopy":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 430
    new-instance v10, Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mSystemDir:Ljava/io/File;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, v0

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;Ljava/io/File;IILcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory;)V

    monitor-exit p0

    return-object v10

    .line 432
    .end local v0    # "historyBufferCopy":Landroid/os/Parcel;
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public forceRecordAllHistory()V
    .registers 2

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    .line 923
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 924
    return-void
.end method

.method public getActiveFile()Landroid/util/AtomicFile;
    .registers 2

    .line 883
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method public getFilesNumbers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    return-object v0
.end method

.method public getHighSpeakerVolumeState()B
    .registers 2

    .line 1009
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    return v0
.end method

.method public getHistoryStringPoolBytes()I
    .registers 2

    .line 2166
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    return v0
.end method

.method public getHistoryStringPoolSize()I
    .registers 2

    .line 2159
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getHistoryTagPoolString(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 2173
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->ensureHistoryTagArray()V

    .line 2174
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    .line 2175
    .local v0, "historyTag":Landroid/os/BatteryStats$HistoryTag;
    if-eqz v0, :cond_10

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method public getHistoryTagPoolUid(I)I
    .registers 4
    .param p1, "index"    # I

    .line 2182
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->ensureHistoryTagArray()V

    .line 2183
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    .line 2184
    .local v0, "historyTag":Landroid/os/BatteryStats$HistoryTag;
    if-eqz v0, :cond_10

    iget v1, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    goto :goto_11

    :cond_10
    const/4 v1, -0x1

    :goto_11
    return v1
.end method

.method public getHistoryUsedSize()I
    .registers 7

    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, "ret":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2a

    .line 892
    int-to-long v2, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 891
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 894
    .end local v1    # "i":I
    :cond_2a
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 895
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_4e

    .line 896
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_36
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 897
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 896
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 900
    .end local v1    # "i":I
    :cond_4e
    return v0
.end method

.method public getNextParcel()Landroid/os/Parcel;
    .registers 7

    .line 597
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 598
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    if-ge v0, v2, :cond_10

    .line 600
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object v0

    .line 601
    :cond_10
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    if-ne v0, v2, :cond_17

    .line 603
    return-object v1

    .line 604
    :cond_17
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v0, :cond_21

    .line 605
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 607
    :cond_21
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 613
    :cond_26
    :goto_26
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFileIndex:I

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_6d

    .line 614
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 615
    iput v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 617
    .local v0, "p":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFileIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFileIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v2

    .line 618
    .local v2, "file":Landroid/util/AtomicFile;
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->readFileToParcel(Landroid/os/Parcel;Landroid/util/AtomicFile;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 620
    .local v3, "bufSize":I
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 621
    .local v4, "curPos":I
    add-int v5, v4, v3

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 622
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 623
    if-ge v4, v5, :cond_68

    .line 624
    return-object v0

    .line 626
    .end local v3    # "bufSize":I
    .end local v4    # "curPos":I
    :cond_68
    goto :goto_6c

    .line 627
    :cond_69
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    .end local v0    # "p":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :goto_6c
    goto :goto_26

    .line 633
    :cond_6d
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v0, :cond_a2

    .line 634
    :goto_71
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a2

    .line 635
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    .line 636
    .restart local v0    # "p":Landroid/os/Parcel;
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->skipHead(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 637
    goto :goto_71

    .line 639
    :cond_90
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 640
    .local v2, "bufSize":I
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 641
    .restart local v4    # "curPos":I
    add-int v5, v4, v2

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 642
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 643
    if-ge v4, v5, :cond_a1

    .line 644
    return-object v0

    .line 646
    .end local v0    # "p":Landroid/os/Parcel;
    .end local v2    # "bufSize":I
    .end local v4    # "curPos":I
    :cond_a1
    goto :goto_71

    .line 650
    :cond_a2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gtz v0, :cond_ab

    .line 652
    return-object v1

    .line 654
    :cond_ab
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 656
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 657
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .line 439
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isRecordingHistory()Z
    .registers 2

    .line 914
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    return v0
.end method

.method public isResetEnabled()Z
    .registers 2

    .line 531
    monitor-enter p0

    .line 532
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCleanupEnabled:Z

    monitor-exit p0

    return v0

    .line 533
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public iterate()Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .registers 4

    .line 558
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFileIndex:I

    .line 559
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 560
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 561
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    .line 562
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 563
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    if-eqz v1, :cond_1b

    .line 564
    monitor-enter v1

    .line 565
    :try_start_11
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {v2, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setCleanupEnabledLocked(Z)V

    .line 566
    monitor-exit v1

    goto :goto_1b

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v0

    .line 568
    :cond_1b
    :goto_1b
    new-instance v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;-><init>(Lcom/android/internal/os/BatteryStatsHistory;)V

    return-object v0
.end method

.method iteratorFinished()V
    .registers 4

    .line 576
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 577
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    .line 578
    monitor-enter v0

    .line 579
    :try_start_f
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {v2, v1}, Lcom/android/internal/os/BatteryStatsHistory;->setCleanupEnabledLocked(Z)V

    .line 580
    monitor-exit v0

    goto :goto_1b

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v1

    .line 582
    :cond_19
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 584
    :goto_1b
    return-void
.end method

.method public maybeUpdateWakelockTag(JJLjava/lang/String;I)Z
    .registers 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "historyName"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .line 1141
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v0, :cond_8

    .line 1142
    const/4 v0, 0x0

    return v0

    .line 1144
    :cond_8
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_28

    .line 1146
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1147
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1148
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1149
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1150
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1152
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method public readFileToParcel(Landroid/os/Parcel;Landroid/util/AtomicFile;)Z
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "file"    # Landroid/util/AtomicFile;

    .line 668
    const/4 v0, 0x0

    .line 670
    .local v0, "raw":[B
    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 671
    .local v2, "start":J
    invoke-virtual {p2}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_18

    move-object v0, v4

    .line 679
    .end local v2    # "start":J
    nop

    .line 680
    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 681
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 682
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->skipHead(Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 676
    :catch_18
    move-exception v2

    .line 677
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatteryStatsHistory"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    return v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 845
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->readHistoryBuffer(Landroid/os/Parcel;)V

    .line 846
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    .line 847
    return-void
.end method

.method public readHistoryBuffer(Landroid/os/Parcel;)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    .line 2062
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2063
    .local v0, "version":I
    const v1, 0xa00d1

    if-eq v0, v1, :cond_33

    .line 2064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readHistoryBuffer: version got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; erasing old stats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    return-void

    .line 2069
    :cond_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2071
    .local v1, "historyBaseTime":J
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2072
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2074
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2075
    .local v3, "bufSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 2076
    .local v4, "curPos":I
    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    mul-int/lit8 v5, v5, 0x64

    if-ge v3, v5, :cond_90

    .line 2079
    and-int/lit8 v5, v3, -0x4

    if-ne v5, v3, :cond_77

    .line 2087
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v5, p1, v4, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 2088
    add-int v5, v4, v3

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2091
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBaseTimeMs:J

    .line 2099
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_76

    .line 2100
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v5}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2101
    .local v5, "elapsedRealtimeMs":J
    iput-wide v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryElapsedRealtimeMs:J

    .line 2102
    iget-wide v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBaseTimeMs:J

    sub-long/2addr v7, v5

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBaseTimeMs:J

    .line 2110
    .end local v5    # "elapsedRealtimeMs":J
    :cond_76
    return-void

    .line 2080
    :cond_77
    new-instance v5, Landroid/os/ParcelFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File corrupt: history data buffer not aligned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2077
    :cond_90
    new-instance v5, Landroid/os/ParcelFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File corrupt: history data buffer too large "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public readSummary()Z
    .registers 8

    .line 807
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    const-string v1, "BatteryStatsHistory"

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 808
    const-string/jumbo v0, "readSummary: no history file associated with this instance"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return v2

    .line 812
    :cond_e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 814
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 815
    .local v3, "start":J
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 816
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v5

    .line 817
    .local v5, "raw":[B
    array-length v6, v5

    if-lez v6, :cond_31

    .line 818
    array-length v6, v5

    invoke-virtual {v0, v5, v2, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 819
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 820
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readHistoryBuffer(Landroid/os/Parcel;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_31} :catch_39
    .catchall {:try_start_12 .. :try_end_31} :catchall_37

    .line 834
    .end local v3    # "start":J
    .end local v5    # "raw":[B
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    nop

    .line 836
    const/4 v1, 0x1

    return v1

    .line 834
    :catchall_37
    move-exception v1

    goto :goto_47

    .line 829
    :catch_39
    move-exception v3

    .line 830
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3a
    const-string v4, "Error reading battery history"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->reset()V
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_37

    .line 832
    nop

    .line 834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 832
    return v2

    .line 834
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_47
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    throw v1
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 725
    .local v0, "inclHistory":Z
    if-eqz v0, :cond_9

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;)V

    .line 729
    :cond_9
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 730
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 731
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 733
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 734
    .local v1, "numTags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v1, :cond_52

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 736
    .local v3, "idx":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 737
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 738
    .local v5, "uid":I
    new-instance v6, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 739
    .local v6, "tag":Landroid/os/BatteryStats$HistoryTag;
    iput-object v4, v6, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 740
    iput v5, v6, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 741
    iput v3, v6, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 742
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    if-lt v3, v7, :cond_42

    .line 744
    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 746
    :cond_42
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    iget-object v8, v6, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 734
    .end local v3    # "idx":I
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "tag":Landroid/os/BatteryStats$HistoryTag;
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 748
    .end local v2    # "i":I
    :cond_52
    return-void
.end method

.method public recordBatteryState(JJIZ)V
    .registers 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "batteryLevel"    # I
    .param p6, "isPlugged"    # Z

    .line 1096
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p5

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1097
    invoke-virtual {p0, p6}, Lcom/android/internal/os/BatteryStatsHistory;->setPluggedInState(Z)V

    .line 1102
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1103
    return-void
.end method

.method public recordCpuUsage(JJLandroid/os/BatteryStats$CpuUsageDetails;)V
    .registers 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cpuUsageDetails"    # Landroid/os/BatteryStats$CpuUsageDetails;

    .line 1329
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    .line 1330
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1331
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1332
    return-void
.end method

.method public recordCurrentTimeChange(JJJ)V
    .registers 15
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "currentTimeMs"    # J

    .line 1068
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    if-nez v0, :cond_5

    .line 1069
    return-void

    .line 1072
    :cond_5
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1073
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 v7, 0x5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1075
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1076
    return-void
.end method

.method public recordDataConnectionTypeChangeEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "dataConnectionType"    # I

    .line 1275
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v2, 0x9

    const/16 v3, 0x3e00

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1278
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1279
    return-void
.end method

.method public recordDeviceIdleEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "mode"    # I

    .line 1243
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/16 v2, 0x19

    const/high16 v3, 0x6000000

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1246
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1247
    return-void
.end method

.method public recordEnergyConsumerDetails(JJLandroid/os/BatteryStats$EnergyConsumerDetails;)V
    .registers 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "energyConsumerDetails"    # Landroid/os/BatteryStats$EnergyConsumerDetails;

    .line 1110
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    .line 1111
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1112
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1113
    return-void
.end method

.method public recordEvent(JJILjava/lang/String;I)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "code"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "uid"    # I

    .line 1057
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1058
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1059
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p6, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1060
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p7, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1061
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1062
    return-void
.end method

.method public recordGpsSignalQualityEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "signalLevel"    # I

    .line 1233
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v2, 0x7

    const/16 v3, 0x80

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1236
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1237
    return-void
.end method

.method public recordPhoneStateChangeEvent(JJIIII)V
    .registers 14
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "addStateFlag"    # I
    .param p6, "removeStateFlag"    # I
    .param p7, "state"    # I
    .param p8, "signalStrength"    # I

    .line 1254
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    not-int v2, p6

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1255
    const/4 v0, -0x1

    if-eq p7, v0, :cond_19

    .line 1256
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1257
    const/4 v3, 0x6

    const/16 v4, 0x1c0

    invoke-direct {p0, v2, p7, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v2

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1261
    :cond_19
    if-eq p8, v0, :cond_28

    .line 1262
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1263
    const/4 v2, 0x3

    const/16 v3, 0x38

    invoke-direct {p0, v1, p8, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1267
    :cond_28
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1268
    return-void
.end method

.method public recordScreenBrightnessEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "brightnessBin"    # I

    .line 1222
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1225
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1226
    return-void
.end method

.method public recordShutdownEvent(JJJ)V
    .registers 15
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "currentTimeMs"    # J

    .line 1082
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    if-nez v0, :cond_5

    .line 1083
    return-void

    .line 1086
    :cond_5
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1087
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v7, 0x8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1088
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1089
    return-void
.end method

.method public recordState2StartEvent(JJI)V
    .registers 8
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I

    .line 1195
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1196
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1197
    return-void
.end method

.method public recordState2StopEvent(JJI)V
    .registers 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I

    .line 1203
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1204
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1205
    return-void
.end method

.method public recordStateChangeEvent(JJII)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateStartFlags"    # I
    .param p6, "stateStopFlags"    # I

    .line 1187
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    not-int v2, p6

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1188
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1189
    return-void
.end method

.method public recordStateStartEvent(JJI)V
    .registers 8
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I

    .line 1170
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1171
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1172
    return-void
.end method

.method public recordStateStopEvent(JJI)V
    .registers 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I

    .line 1178
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1179
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1180
    return-void
.end method

.method public recordWakelockStartEvent(JJLjava/lang/String;I)V
    .registers 14
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "historyName"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .line 1130
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1131
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1132
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1133
    const/high16 v6, 0x40000000    # 2.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStartEvent(JJI)V

    .line 1134
    return-void
.end method

.method public recordWakelockStopEvent(JJLjava/lang/String;I)V
    .registers 14
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "historyName"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .line 1160
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1161
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz p5, :cond_e

    move-object v1, p5

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    iput-object v1, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1163
    const/high16 v6, 0x40000000    # 2.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJI)V

    .line 1164
    return-void
.end method

.method public recordWakeupEvent(JJLjava/lang/String;)V
    .registers 8
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "reason"    # Ljava/lang/String;

    .line 1211
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1212
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1213
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1214
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1215
    return-void
.end method

.method public recordWifiConsumedCharge(JJD)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "monitoredRailChargeMah"    # D

    .line 1121
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    add-double/2addr v1, p5

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 1122
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1123
    return-void
.end method

.method public recordWifiSignalStrengthChangeEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "strengthBin"    # I

    .line 1298
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1299
    const/4 v2, 0x4

    const/16 v3, 0x70

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1302
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1303
    return-void
.end method

.method public recordWifiSupplicantStateChangeEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "supplState"    # I

    .line 1286
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1287
    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1290
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1291
    return-void
.end method

.method public reset()V
    .registers 4

    .line 542
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 543
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 544
    .end local v1    # "i":Ljava/lang/Integer;
    goto :goto_6

    .line 545
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 546
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-direct {p0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(I)V

    .line 549
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    .line 550
    return-void
.end method

.method public setBatteryState(IIIIIII)V
    .registers 10
    .param p1, "status"    # I
    .param p2, "level"    # I
    .param p3, "health"    # I
    .param p4, "plugType"    # I
    .param p5, "temperature"    # I
    .param p6, "voltageMv"    # I
    .param p7, "chargeUah"    # I

    .line 969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    .line 970
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 971
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p2

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 972
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p3

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 973
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p4

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 974
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short v1, p5

    iput-short v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 975
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-char v1, p6

    iput-char v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 976
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p7, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 977
    return-void
.end method

.method public setBatteryState(IIIIIIIIIIII)V
    .registers 15
    .param p1, "status"    # I
    .param p2, "level"    # I
    .param p3, "health"    # I
    .param p4, "plugType"    # I
    .param p5, "temperature"    # I
    .param p6, "voltageMv"    # I
    .param p7, "chargeUah"    # I
    .param p8, "secTxShareEvent"    # I
    .param p9, "secOnline"    # I
    .param p10, "secCurrentEvent"    # I
    .param p11, "secEvent"    # I
    .param p12, "otgOnline"    # I

    .line 983
    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/os/BatteryStatsHistory;->setBatteryState(IIIIIII)V

    .line 984
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p8, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    .line 985
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p9

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    .line 986
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p10, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    .line 987
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p11, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    .line 988
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p12

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    .line 989
    return-void
.end method

.method public setBatteryState(ZIII)V
    .registers 7
    .param p1, "charging"    # Z
    .param p2, "status"    # I
    .param p3, "level"    # I
    .param p4, "chargeUah"    # I

    .line 957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    .line 958
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->setChargingState(Z)V

    .line 959
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p2

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 960
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p3

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 961
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 962
    return-void
.end method

.method public setBluetoothScanState(Z)V
    .registers 5
    .param p1, "scaning"    # Z

    .line 1013
    if-eqz p1, :cond_c

    .line 1014
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_16

    .line 1016
    :cond_c
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1022
    :goto_16
    return-void
.end method

.method public setChargingState(Z)V
    .registers 5
    .param p1, "charging"    # Z

    .line 1045
    if-eqz p1, :cond_c

    .line 1046
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_16

    .line 1048
    :cond_c
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1050
    :goto_16
    return-void
.end method

.method public setHighSpeakerVolumeState(B)V
    .registers 3
    .param p1, "volumeState"    # B

    .line 1005
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-byte p1, v0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    .line 1006
    return-void
.end method

.method public setHistoryRecordingEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 907
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 908
    return-void
.end method

.method public setMaxHistoryBufferSize(I)V
    .registers 2
    .param p1, "maxHistoryBufferSize"    # I

    .line 417
    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 418
    return-void
.end method

.method public setMaxHistoryFiles(I)V
    .registers 2
    .param p1, "maxHistoryFiles"    # I

    .line 410
    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryFiles:I

    .line 411
    return-void
.end method

.method public setPluggedInState(Z)V
    .registers 5
    .param p1, "pluggedIn"    # Z

    .line 1034
    if-eqz p1, :cond_c

    .line 1035
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_16

    .line 1037
    :cond_c
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1039
    :goto_16
    return-void
.end method

.method public setSubScreenState(ZZ)V
    .registers 4
    .param p1, "isOn"    # Z
    .param p2, "isDoze"    # Z

    .line 1025
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-byte p1, v0, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    .line 1026
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-byte p2, v0, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    .line 1027
    return-void
.end method

.method public setTemperatureNCurrent(IIIII)V
    .registers 8
    .param p1, "ap_temp"    # I
    .param p2, "pa_temp"    # I
    .param p3, "skin_temp"    # I
    .param p4, "sub_batt_temp"    # I
    .param p5, "current"    # I

    .line 993
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 994
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p2

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    .line 995
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p3

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    .line 996
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p4

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    .line 997
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short v1, p5

    iput-short v1, v0, Landroid/os/BatteryStats$HistoryItem;->current:S

    .line 998
    return-void
.end method

.method public setWifiApState(Z)V
    .registers 3
    .param p1, "hotspotState"    # Z

    .line 1001
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-byte p1, v0, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    .line 1002
    return-void
.end method

.method public startNextFile()V
    .registers 6

    .line 470
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryFiles:I

    if-nez v0, :cond_d

    .line 471
    const-string v0, "BatteryStatsHistory"

    const-string/jumbo v1, "mMaxHistoryFiles should not be zero when writing history"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void

    .line 475
    :cond_d
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 476
    const-string v0, "BatteryStatsHistory"

    const-string/jumbo v1, "mFileNumbers should never be empty"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void

    .line 482
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 483
    .local v0, "next":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(I)V

    .line 486
    :try_start_3e
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_47} :catch_48

    .line 489
    goto :goto_67

    .line 487
    :catch_48
    move-exception v1

    .line 488
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "BatteryStatsHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create history file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .end local v1    # "e":Ljava/io/IOException;
    :goto_67
    monitor-enter p0

    .line 492
    :try_start_68
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->cleanupLocked()V

    .line 493
    monitor-exit p0

    .line 494
    return-void

    .line 493
    :catchall_6d
    move-exception v1

    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public startRecordingHistory(JJZ)V
    .registers 16
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "reset"    # Z

    .line 931
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 932
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 933
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 934
    if-eqz p5, :cond_13

    const/4 v0, 0x7

    goto :goto_14

    :cond_13
    const/4 v0, 0x5

    :goto_14
    move v9, v0

    .line 933
    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 935
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 936
    return-void
.end method

.method public writeHistory()V
    .registers 5

    .line 2039
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2040
    const-string v0, "BatteryStatsHistory"

    const-string/jumbo v1, "writeHistory: this instance instance is read-only"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    return-void

    .line 2044
    :cond_f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2046
    .local v0, "p":Landroid/os/Parcel;
    :try_start_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2047
    .local v1, "start":J
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryBuffer(Landroid/os/Parcel;)V

    .line 2052
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->writeParcelToFileLocked(Landroid/os/Parcel;Landroid/util/AtomicFile;)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_24

    .line 2054
    .end local v1    # "start":J
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2055
    nop

    .line 2056
    return-void

    .line 2054
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2055
    throw v1
.end method

.method public writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 36
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "last"    # Landroid/os/BatteryStats$HistoryItem;

    .line 1655
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v3, :cond_2c7

    iget-byte v5, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v5, :cond_10

    goto/16 :goto_2c7

    .line 1661
    :cond_10
    const/4 v5, 0x0

    .line 1662
    .local v5, "extensionFlags":I
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v8, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v6, v8

    .line 1663
    .local v6, "deltaTime":J
    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v8

    .line 1664
    .local v8, "lastBatteryLevelInt":I
    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v9

    .line 1667
    .local v9, "lastStateInt":I
    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildCurrentNTemperature(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v10

    .line 1668
    .local v10, "lastCurrentNTemperatureInt":I
    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildTemperature2(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v11

    .line 1669
    .local v11, "lastTemperatureInt2":I
    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatterySecInfo(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v12

    .line 1673
    .local v12, "lastBatterySecInfoInt":I
    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-ltz v13, :cond_45

    const-wide/32 v13, 0x7fffffff

    cmp-long v13, v6, v13

    if-lez v13, :cond_38

    goto :goto_45

    .line 1675
    :cond_38
    const-wide/32 v13, 0x1fffd

    cmp-long v13, v6, v13

    if-ltz v13, :cond_43

    .line 1676
    const v13, 0x1fffe

    .local v13, "deltaTimeToken":I
    goto :goto_48

    .line 1678
    .end local v13    # "deltaTimeToken":I
    :cond_43
    long-to-int v13, v6

    .restart local v13    # "deltaTimeToken":I
    goto :goto_48

    .line 1674
    .end local v13    # "deltaTimeToken":I
    :cond_45
    :goto_45
    const v13, 0x1ffff

    .line 1680
    .restart local v13    # "deltaTimeToken":I
    :goto_48
    iget v14, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v15, -0x2000000

    and-int/2addr v14, v15

    or-int/2addr v14, v13

    .line 1681
    .local v14, "firstToken":I
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v15

    .line 1683
    .local v15, "batteryLevelInt":I
    iget-byte v4, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-wide/from16 v16, v6

    .end local v6    # "deltaTime":J
    .local v16, "deltaTime":J
    iget-byte v6, v0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    if-lt v4, v6, :cond_65

    if-nez v6, :cond_5d

    goto :goto_65

    .line 1690
    :cond_5d
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1691
    iget-byte v4, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    goto :goto_77

    .line 1684
    :cond_65
    :goto_65
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;->getHistoryStepDetails()Landroid/os/BatteryStats$HistoryStepDetails;

    move-result-object v4

    iput-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1685
    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v4, :cond_77

    .line 1686
    or-int/lit8 v15, v15, 0x1

    .line 1687
    iget-byte v4, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    .line 1694
    :cond_77
    :goto_77
    if-eq v15, v8, :cond_7b

    const/4 v6, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v6, 0x0

    .line 1695
    .local v6, "batteryLevelIntChanged":Z
    :goto_7c
    if-eqz v6, :cond_81

    .line 1696
    const/high16 v7, 0x80000

    or-int/2addr v14, v7

    .line 1699
    :cond_81
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildCurrentNTemperature(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v7

    .line 1700
    .local v7, "CurrentNTemperatureInt":I
    if-eq v7, v10, :cond_8a

    const/16 v18, 0x1

    goto :goto_8c

    :cond_8a
    const/16 v18, 0x0

    .line 1701
    .local v18, "CurrentNTemperatureIntChanged":Z
    :goto_8c
    const/high16 v19, 0x40000

    if-eqz v18, :cond_92

    .line 1702
    or-int v14, v14, v19

    .line 1704
    :cond_92
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildTemperature2(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v4

    .line 1705
    .local v4, "TemperatureInt2":I
    if-eq v4, v11, :cond_9b

    const/16 v20, 0x1

    goto :goto_9d

    :cond_9b
    const/16 v20, 0x0

    .line 1706
    .local v20, "TemperatureInt2Changed":Z
    :goto_9d
    if-eqz v20, :cond_a1

    .line 1707
    or-int v14, v14, v19

    .line 1709
    :cond_a1
    move/from16 v19, v8

    .end local v8    # "lastBatteryLevelInt":I
    .local v19, "lastBatteryLevelInt":I
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatterySecInfo(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v8

    .line 1710
    .local v8, "batterySecInfoInt":I
    if-eq v8, v12, :cond_ac

    const/16 v21, 0x1

    goto :goto_ae

    :cond_ac
    const/16 v21, 0x0

    .line 1711
    .local v21, "batterySecInfoIntChanged":Z
    :goto_ae
    const/high16 v22, 0x20000

    if-eqz v21, :cond_b4

    .line 1712
    or-int v14, v14, v22

    .line 1714
    :cond_b4
    move/from16 v23, v10

    .end local v10    # "lastCurrentNTemperatureInt":I
    .local v23, "lastCurrentNTemperatureInt":I
    iget v10, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    move/from16 v24, v11

    .end local v11    # "lastTemperatureInt2":I
    .local v24, "lastTemperatureInt2":I
    iget v11, v3, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-eq v10, v11, :cond_c0

    const/4 v10, 0x1

    goto :goto_c1

    :cond_c0
    const/4 v10, 0x0

    .line 1716
    .local v10, "batterySecCurrentEventIntChanged":Z
    :goto_c1
    if-eqz v10, :cond_c5

    .line 1717
    or-int v14, v14, v22

    .line 1719
    :cond_c5
    iget v11, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    move/from16 v25, v12

    .end local v12    # "lastBatterySecInfoInt":I
    .local v25, "lastBatterySecInfoInt":I
    iget v12, v3, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-eq v11, v12, :cond_cf

    const/4 v11, 0x1

    goto :goto_d0

    :cond_cf
    const/4 v11, 0x0

    .line 1720
    .local v11, "batterySecEventIntChanged":Z
    :goto_d0
    if-eqz v11, :cond_d4

    .line 1721
    or-int v14, v14, v22

    .line 1724
    :cond_d4
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v12

    .line 1725
    .local v12, "stateInt":I
    if-eq v12, v9, :cond_dd

    const/16 v26, 0x1

    goto :goto_df

    :cond_dd
    const/16 v26, 0x0

    .line 1726
    .local v26, "stateIntChanged":Z
    :goto_df
    if-eqz v26, :cond_e5

    .line 1727
    const/high16 v27, 0x100000

    or-int v14, v14, v27

    .line 1729
    :cond_e5
    move/from16 v27, v9

    .end local v9    # "lastStateInt":I
    .local v27, "lastStateInt":I
    iget-object v9, v2, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    if-eqz v9, :cond_f3

    .line 1730
    or-int/lit8 v5, v5, 0x2

    .line 1731
    iget-boolean v9, v0, Lcom/android/internal/os/BatteryStatsHistory;->mMeasuredEnergyHeaderWritten:Z

    if-nez v9, :cond_f3

    .line 1732
    or-int/lit8 v5, v5, 0x1

    .line 1735
    :cond_f3
    iget-object v9, v2, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    if-eqz v9, :cond_ff

    .line 1736
    or-int/lit8 v5, v5, 0x8

    .line 1737
    iget-boolean v9, v0, Lcom/android/internal/os/BatteryStatsHistory;->mCpuUsageHeaderWritten:Z

    if-nez v9, :cond_ff

    .line 1738
    or-int/lit8 v5, v5, 0x4

    .line 1741
    :cond_ff
    if-eqz v5, :cond_108

    .line 1742
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int v9, v9, v22

    iput v9, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_111

    .line 1744
    :cond_108
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v22, -0x20001

    and-int v9, v9, v22

    iput v9, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1746
    :goto_111
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v0, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v9, v0, :cond_11c

    if-eqz v5, :cond_11a

    goto :goto_11c

    :cond_11a
    const/4 v0, 0x0

    goto :goto_11d

    :cond_11c
    :goto_11c
    const/4 v0, 0x1

    .line 1747
    .local v0, "state2IntChanged":Z
    :goto_11d
    if-eqz v0, :cond_122

    .line 1748
    const/high16 v9, 0x200000

    or-int/2addr v14, v9

    .line 1750
    :cond_122
    iget-object v9, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v9, :cond_12a

    iget-object v9, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v9, :cond_12d

    .line 1751
    :cond_12a
    const/high16 v9, 0x400000

    or-int/2addr v14, v9

    .line 1753
    :cond_12d
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v9, :cond_134

    .line 1754
    const/high16 v9, 0x800000

    or-int/2addr v14, v9

    .line 1757
    :cond_134
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    move/from16 v22, v5

    .end local v5    # "extensionFlags":I
    .local v22, "extensionFlags":I
    iget v5, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    if-eq v9, v5, :cond_13e

    const/4 v5, 0x1

    goto :goto_13f

    :cond_13e
    const/4 v5, 0x0

    .line 1758
    .local v5, "batteryChargeChanged":Z
    :goto_13f
    if-eqz v5, :cond_144

    .line 1759
    const/high16 v9, 0x1000000

    or-int/2addr v14, v9

    .line 1761
    :cond_144
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    const v9, 0x1fffe

    if-lt v13, v9, :cond_161

    .line 1768
    if-ne v13, v9, :cond_158

    .line 1770
    move v9, v13

    move/from16 v28, v14

    move-wide/from16 v13, v16

    .end local v14    # "firstToken":I
    .end local v16    # "deltaTime":J
    .local v9, "deltaTimeToken":I
    .local v13, "deltaTime":J
    .local v28, "firstToken":I
    long-to-int v3, v13

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_166

    .line 1773
    .end local v9    # "deltaTimeToken":I
    .end local v28    # "firstToken":I
    .local v13, "deltaTimeToken":I
    .restart local v14    # "firstToken":I
    .restart local v16    # "deltaTime":J
    :cond_158
    move v9, v13

    move/from16 v28, v14

    move-wide/from16 v13, v16

    .end local v14    # "firstToken":I
    .end local v16    # "deltaTime":J
    .restart local v9    # "deltaTimeToken":I
    .local v13, "deltaTime":J
    .restart local v28    # "firstToken":I
    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_166

    .line 1767
    .end local v9    # "deltaTimeToken":I
    .end local v28    # "firstToken":I
    .local v13, "deltaTimeToken":I
    .restart local v14    # "firstToken":I
    .restart local v16    # "deltaTime":J
    :cond_161
    move v9, v13

    move/from16 v28, v14

    move-wide/from16 v13, v16

    .line 1776
    .end local v14    # "firstToken":I
    .end local v16    # "deltaTime":J
    .restart local v9    # "deltaTimeToken":I
    .local v13, "deltaTime":J
    .restart local v28    # "firstToken":I
    :goto_166
    if-eqz v6, :cond_16b

    .line 1777
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1787
    :cond_16b
    if-nez v18, :cond_16f

    if-eqz v20, :cond_175

    .line 1788
    :cond_16f
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1794
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1803
    :cond_175
    if-nez v21, :cond_17b

    if-nez v10, :cond_17b

    if-eqz v11, :cond_188

    .line 1805
    :cond_17b
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1808
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    :cond_188
    if-eqz v26, :cond_18d

    .line 1820
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1830
    :cond_18d
    if-eqz v0, :cond_194

    .line 1831
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1837
    :cond_194
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const v16, 0x8000

    if-nez v3, :cond_1a9

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_1a0

    goto :goto_1a9

    :cond_1a0
    move/from16 v17, v0

    move/from16 v29, v4

    move/from16 v31, v6

    move-object/from16 v0, p0

    goto :goto_1ff

    .line 1840
    :cond_1a9
    :goto_1a9
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_1b8

    .line 1841
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move/from16 v17, v0

    move-object/from16 v0, p0

    .end local v0    # "state2IntChanged":Z
    .local v17, "state2IntChanged":Z
    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v3

    .local v3, "wakeLockIndex":I
    goto :goto_1bf

    .line 1847
    .end local v3    # "wakeLockIndex":I
    .end local v17    # "state2IntChanged":Z
    .restart local v0    # "state2IntChanged":Z
    :cond_1b8
    move/from16 v17, v0

    move-object/from16 v0, p0

    .end local v0    # "state2IntChanged":Z
    .restart local v17    # "state2IntChanged":Z
    const v3, 0xffff

    .line 1849
    .restart local v3    # "wakeLockIndex":I
    :goto_1bf
    move/from16 v29, v4

    .end local v4    # "TemperatureInt2":I
    .local v29, "TemperatureInt2":I
    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v4, :cond_1cc

    .line 1850
    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v4

    .local v4, "wakeReasonIndex":I
    goto :goto_1cf

    .line 1856
    .end local v4    # "wakeReasonIndex":I
    :cond_1cc
    const v4, 0xffff

    .line 1858
    .restart local v4    # "wakeReasonIndex":I
    :goto_1cf
    shl-int/lit8 v30, v4, 0x10

    move/from16 v31, v6

    .end local v6    # "batteryLevelIntChanged":Z
    .local v31, "batteryLevelIntChanged":Z
    or-int v6, v30, v3

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1859
    iget-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v6, :cond_1ec

    and-int v6, v3, v16

    if-eqz v6, :cond_1ec

    .line 1861
    iget-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move/from16 v30, v3

    const/4 v3, 0x0

    .end local v3    # "wakeLockIndex":I
    .local v30, "wakeLockIndex":I
    invoke-virtual {v6, v1, v3}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1862
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    goto :goto_1ee

    .line 1859
    .end local v30    # "wakeLockIndex":I
    .restart local v3    # "wakeLockIndex":I
    :cond_1ec
    move/from16 v30, v3

    .line 1864
    .end local v3    # "wakeLockIndex":I
    .restart local v30    # "wakeLockIndex":I
    :goto_1ee
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_1ff

    and-int v3, v4, v16

    if-eqz v3, :cond_1ff

    .line 1866
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1867
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1870
    .end local v4    # "wakeReasonIndex":I
    .end local v30    # "wakeLockIndex":I
    :cond_1ff
    :goto_1ff
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_22a

    .line 1871
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v3

    .line 1872
    .local v3, "index":I
    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v6, 0xffff

    and-int/2addr v4, v6

    const/high16 v6, -0x10000

    move/from16 v30, v7

    .end local v7    # "CurrentNTemperatureInt":I
    .local v30, "CurrentNTemperatureInt":I
    const/16 v7, 0x10

    invoke-direct {v0, v4, v3, v7, v6}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v4

    .line 1873
    .local v4, "codeAndIndex":I
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    and-int v6, v3, v16

    if-eqz v6, :cond_22c

    .line 1875
    iget-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1876
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    goto :goto_22c

    .line 1870
    .end local v3    # "index":I
    .end local v4    # "codeAndIndex":I
    .end local v30    # "CurrentNTemperatureInt":I
    .restart local v7    # "CurrentNTemperatureInt":I
    :cond_22a
    move/from16 v30, v7

    .line 1885
    .end local v7    # "CurrentNTemperatureInt":I
    .restart local v30    # "CurrentNTemperatureInt":I
    :cond_22c
    :goto_22c
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v3, :cond_235

    .line 1886
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v3, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->writeToParcel(Landroid/os/Parcel;)V

    .line 1889
    :cond_235
    if-eqz v5, :cond_23c

    .line 1891
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1893
    :cond_23c
    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1894
    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1895
    if-eqz v22, :cond_2c6

    .line 1896
    move/from16 v3, v22

    .end local v22    # "extensionFlags":I
    .local v3, "extensionFlags":I
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1897
    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    if-eqz v4, :cond_291

    .line 1901
    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mMeasuredEnergyHeaderWritten:Z

    if-nez v4, :cond_285

    .line 1902
    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    iget-object v4, v4, Landroid/os/BatteryStats$EnergyConsumerDetails;->consumers:[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    .line 1904
    .local v4, "consumers":[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;
    array-length v6, v4

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1905
    array-length v6, v4

    const/4 v7, 0x0

    :goto_25f
    if-ge v7, v6, :cond_27d

    move/from16 v22, v3

    .end local v3    # "extensionFlags":I
    .restart local v22    # "extensionFlags":I
    aget-object v3, v4, v7

    .line 1906
    .local v3, "consumer":Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;
    move-object/from16 v16, v4

    .end local v4    # "consumers":[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;
    .local v16, "consumers":[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;
    iget v4, v3, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->type:I

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1907
    iget v4, v3, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->ordinal:I

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    iget-object v4, v3, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1905
    .end local v3    # "consumer":Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v16

    move/from16 v3, v22

    goto :goto_25f

    .line 1910
    .end local v16    # "consumers":[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;
    .end local v22    # "extensionFlags":I
    .local v3, "extensionFlags":I
    .restart local v4    # "consumers":[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;
    :cond_27d
    move/from16 v22, v3

    move-object/from16 v16, v4

    .end local v3    # "extensionFlags":I
    .end local v4    # "consumers":[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;
    .restart local v16    # "consumers":[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;
    .restart local v22    # "extensionFlags":I
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsHistory;->mMeasuredEnergyHeaderWritten:Z

    goto :goto_287

    .line 1901
    .end local v16    # "consumers":[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;
    .end local v22    # "extensionFlags":I
    .restart local v3    # "extensionFlags":I
    :cond_285
    move/from16 v22, v3

    .line 1912
    .end local v3    # "extensionFlags":I
    .restart local v22    # "extensionFlags":I
    :goto_287
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHistory;->mVarintParceler:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    iget-object v4, v4, Landroid/os/BatteryStats$EnergyConsumerDetails;->chargeUC:[J

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->writeLongArray(Landroid/os/Parcel;[J)V

    goto :goto_293

    .line 1897
    .end local v22    # "extensionFlags":I
    .restart local v3    # "extensionFlags":I
    :cond_291
    move/from16 v22, v3

    .line 1915
    .end local v3    # "extensionFlags":I
    .restart local v22    # "extensionFlags":I
    :goto_293
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    if-eqz v3, :cond_2c6

    .line 1919
    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsHistory;->mCpuUsageHeaderWritten:Z

    if-nez v3, :cond_2b6

    .line 1920
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$CpuUsageDetails;->cpuBracketDescriptions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1921
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$CpuUsageDetails;->cpuBracketDescriptions:[Ljava/lang/String;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_2a9
    if-ge v6, v4, :cond_2b3

    aget-object v7, v3, v6

    .line 1922
    .local v7, "desc":Ljava/lang/String;
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1921
    .end local v7    # "desc":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a9

    .line 1924
    :cond_2b3
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsHistory;->mCpuUsageHeaderWritten:Z

    .line 1926
    :cond_2b6
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget v3, v3, Landroid/os/BatteryStats$CpuUsageDetails;->uid:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1927
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHistory;->mVarintParceler:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget-object v4, v4, Landroid/os/BatteryStats$CpuUsageDetails;->cpuUsageMs:[J

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->writeLongArray(Landroid/os/Parcel;[J)V

    .line 1930
    :cond_2c6
    return-void

    .line 1656
    .end local v5    # "batteryChargeChanged":Z
    .end local v8    # "batterySecInfoInt":I
    .end local v9    # "deltaTimeToken":I
    .end local v10    # "batterySecCurrentEventIntChanged":Z
    .end local v11    # "batterySecEventIntChanged":Z
    .end local v12    # "stateInt":I
    .end local v13    # "deltaTime":J
    .end local v15    # "batteryLevelInt":I
    .end local v17    # "state2IntChanged":Z
    .end local v18    # "CurrentNTemperatureIntChanged":Z
    .end local v19    # "lastBatteryLevelInt":I
    .end local v20    # "TemperatureInt2Changed":Z
    .end local v21    # "batterySecInfoIntChanged":Z
    .end local v22    # "extensionFlags":I
    .end local v23    # "lastCurrentNTemperatureInt":I
    .end local v24    # "lastTemperatureInt2":I
    .end local v25    # "lastBatterySecInfoInt":I
    .end local v26    # "stateIntChanged":Z
    .end local v27    # "lastStateInt":I
    .end local v28    # "firstToken":I
    .end local v29    # "TemperatureInt2":I
    .end local v30    # "CurrentNTemperatureInt":I
    .end local v31    # "batteryLevelIntChanged":Z
    :cond_2c7
    :goto_2c7
    const v3, 0x1fffd

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1658
    return-void
.end method

.method public writeHistoryItem(JJ)V
    .registers 22
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .line 1370
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    iget-wide v0, v6, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_49

    .line 1371
    sub-long v11, v7, v0

    .line 1372
    .local v11, "diffElapsedMs":J
    iget-wide v0, v6, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    sub-long v13, v9, v0

    .line 1373
    .local v13, "diffUptimeMs":J
    const-wide/16 v0, 0x14

    sub-long v0, v11, v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_49

    .line 1374
    sub-long v0, v11, v13

    sub-long v15, v7, v0

    .line 1375
    .local v15, "wakeElapsedTimeMs":J
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v6, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1376
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1377
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1378
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1379
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1380
    iget-object v5, v6, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v0, p0

    move-wide v1, v15

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 1383
    .end local v11    # "diffElapsedMs":J
    .end local v13    # "diffUptimeMs":J
    .end local v15    # "wakeElapsedTimeMs":J
    :cond_49
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1384
    iput-wide v7, v6, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 1385
    iput-wide v9, v6, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 1386
    iget-object v5, v6, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 1387
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;Z)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclHistory"    # Z

    .line 706
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 707
    if-eqz p2, :cond_8

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;)V

    .line 711
    :cond_8
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 713
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$HistoryTag;

    .line 714
    .local v2, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 716
    iget v3, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "tag":Landroid/os/BatteryStats$HistoryTag;
    goto :goto_1b

    .line 718
    :cond_45
    return-void
.end method

.method public writeToBatteryUsageStatsParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 768
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 769
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;Z)V

    .line 770
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 757
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryBuffer(Landroid/os/Parcel;)V

    .line 758
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;Z)V

    .line 759
    return-void
.end method
