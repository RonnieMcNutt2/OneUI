.class public Lcom/android/internal/os/KernelSingleUidTimeReader;
.super Ljava/lang/Object;
.source "KernelSingleUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final PROC_FILE_DIR:Ljava/lang/String; = "/proc/uid/"

.field private static final PROC_FILE_NAME:Ljava/lang/String; = "/time_in_state"

.field private static final TAG:Ljava/lang/String;

.field public static final TOTAL_READ_ERROR_COUNT:I = 0x5

.field private static final UID_TIMES_PROC_FILE:Ljava/lang/String; = "/proc/uid_time_in_state"


# instance fields
.field private mBpfTimesAvailable:Z

.field private final mCpuFreqsCount:I

.field private mCpuFreqsCountVerified:Z

.field private final mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

.field private mLastUidCpuTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field private mReadErrorCounter:I

.field private mSingleUidCpuTimesAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/android/internal/os/KernelSingleUidTimeReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelSingleUidTimeReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "cpuFreqsCount"    # I

    .line 71
    new-instance v0, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    invoke-direct {v0}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelSingleUidTimeReader;-><init>(ILcom/android/internal/os/KernelSingleUidTimeReader$Injector;)V

    .line 72
    return-void
.end method

.method public constructor <init>(ILcom/android/internal/os/KernelSingleUidTimeReader$Injector;)V
    .registers 4
    .param p1, "cpuFreqsCount"    # I
    .param p2, "injector"    # Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mBpfTimesAvailable:Z

    .line 75
    iput-object p2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    .line 76
    iput p1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    .line 77
    if-nez p1, :cond_18

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    .line 80
    :cond_18
    return-void
.end method

.method private static final native canReadBpfTimes()Z
.end method

.method private readCpuTimesFromByteBuffer(Ljava/nio/ByteBuffer;)[J
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 141
    iget v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    new-array v0, v0, [J

    .line 142
    .local v0, "cpuTimesMs":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    if-ge v1, v2, :cond_15

    .line 144
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 146
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method private verifyCpuFreqsCount(ILjava/lang/String;)V
    .registers 7
    .param p1, "numBytes"    # I
    .param p2, "procFile"    # Ljava/lang/String;

    .line 129
    div-int/lit8 v0, p1, 0x8

    .line 130
    .local v0, "actualCount":I
    iget v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    if-ne v1, v0, :cond_a

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCountVerified:Z

    .line 137
    return-void

    .line 131
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    .line 132
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freq count didn\'t match,count from /proc/uid_time_in_state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", butcount from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addDelta(ILcom/android/internal/os/LongArrayMultiStateCounter;J)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "counter"    # Lcom/android/internal/os/LongArrayMultiStateCounter;
    .param p3, "timestampMs"    # J

    .line 250
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->addDelta(ILcom/android/internal/os/LongArrayMultiStateCounter;JLcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)Z

    .line 251
    return-void
.end method

.method public addDelta(ILcom/android/internal/os/LongArrayMultiStateCounter;JLcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "counter"    # Lcom/android/internal/os/LongArrayMultiStateCounter;
    .param p3, "timestampMs"    # J
    .param p5, "deltaContainer"    # Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;

    .line 259
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->addDelta(ILcom/android/internal/os/LongArrayMultiStateCounter;JLcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)Z

    .line 260
    return-void
.end method

.method public computeDelta(I[J)[J
    .registers 12
    .param p1, "uid"    # I
    .param p2, "latestCpuTimesMs"    # [J

    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 158
    monitor-exit p0

    return-object v1

    .line 161
    :cond_8
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 162
    .local v0, "lastCpuTimesMs":[J
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/os/KernelSingleUidTimeReader;->getDeltaLocked([J[J)[J

    move-result-object v2

    .line 163
    .local v2, "deltaTimesMs":[J
    if-nez v2, :cond_18

    .line 167
    monitor-exit p0

    return-object v1

    .line 170
    :cond_18
    const/4 v3, 0x0

    .line 171
    .local v3, "hasNonZero":Z
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1c
    if-ltz v4, :cond_2b

    .line 172
    aget-wide v5, v2, v4

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_28

    .line 173
    const/4 v3, 0x1

    .line 174
    goto :goto_2b

    .line 171
    :cond_28
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c

    .line 177
    .end local v4    # "i":I
    :cond_2b
    :goto_2b
    if-eqz v3, :cond_34

    .line 178
    iget-object v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    monitor-exit p0

    return-object v2

    .line 181
    :cond_34
    monitor-exit p0

    return-object v1

    .line 183
    .end local v0    # "lastCpuTimesMs":[J
    .end local v2    # "deltaTimesMs":[J
    .end local v3    # "hasNonZero":Z
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public getDeltaLocked([J[J)[J
    .registers 12
    .param p1, "lastCpuTimesMs"    # [J
    .param p2, "latestCpuTimesMs"    # [J

    .line 196
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-ltz v0, :cond_12

    .line 197
    aget-wide v4, p2, v0

    cmp-long v2, v4, v2

    if-gez v2, :cond_f

    .line 198
    return-object v1

    .line 196
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 201
    .end local v0    # "i":I
    :cond_12
    if-nez p1, :cond_15

    .line 202
    return-object p2

    .line 204
    :cond_15
    array-length v0, p2

    new-array v0, v0, [J

    .line 205
    .local v0, "deltaTimesMs":[J
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1b
    if-ltz v4, :cond_2e

    .line 206
    aget-wide v5, p2, v4

    aget-wide v7, p1, v4

    sub-long/2addr v5, v7

    aput-wide v5, v0, v4

    .line 207
    aget-wide v5, v0, v4

    cmp-long v5, v5, v2

    if-gez v5, :cond_2b

    .line 208
    return-object v1

    .line 205
    :cond_2b
    add-int/lit8 v4, v4, -0x1

    goto :goto_1b

    .line 211
    .end local v4    # "i":I
    :cond_2e
    return-object v0
.end method

.method public getLastUidCpuTimeMs()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    return-object v0
.end method

.method public readDeltaMs(I)[J
    .registers 9
    .param p1, "uid"    # I

    .line 87
    monitor-enter p0

    .line 88
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 89
    monitor-exit p0

    return-object v1

    .line 91
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mBpfTimesAvailable:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2f

    .line 92
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->readBpfData(I)[J

    move-result-object v0

    .line 93
    .local v0, "cpuTimesMs":[J
    array-length v4, v0

    if-nez v4, :cond_1a

    .line 94
    iput-boolean v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mBpfTimesAvailable:Z

    goto :goto_2f

    .line 95
    :cond_1a
    iget-boolean v4, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCountVerified:Z

    if-nez v4, :cond_27

    array-length v4, v0

    iget v5, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    if-eq v4, v5, :cond_27

    .line 96
    iput-boolean v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    .line 97
    monitor-exit p0

    return-object v1

    .line 99
    :cond_27
    iput-boolean v2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCountVerified:Z

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/KernelSingleUidTimeReader;->computeDelta(I[J)[J

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 104
    .end local v0    # "cpuTimesMs":[J
    :cond_2f
    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "/proc/uid/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/time_in_state"

    .line 106
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_75

    .line 109
    .local v0, "procFile":Ljava/lang/String;
    :try_start_44
    iget-object v4, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    invoke-virtual {v4, v0}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->readData(Ljava/lang/String;)[B

    move-result-object v4

    .line 110
    .local v4, "data":[B
    iget-boolean v5, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCountVerified:Z

    if-nez v5, :cond_52

    .line 111
    array-length v5, v4

    invoke-direct {p0, v5, v0}, Lcom/android/internal/os/KernelSingleUidTimeReader;->verifyCpuFreqsCount(ILjava/lang/String;)V

    .line 113
    :cond_52
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 114
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 115
    invoke-direct {p0, v5}, Lcom/android/internal/os/KernelSingleUidTimeReader;->readCpuTimesFromByteBuffer(Ljava/nio/ByteBuffer;)[J

    move-result-object v1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_61} :catch_68
    .catchall {:try_start_44 .. :try_end_61} :catchall_75

    .line 122
    .end local v4    # "data":[B
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .local v1, "cpuTimesMs":[J
    nop

    .line 124
    :try_start_62
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/KernelSingleUidTimeReader;->computeDelta(I[J)[J

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 116
    .end local v1    # "cpuTimesMs":[J
    :catch_68
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/Exception;
    iget v5, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mReadErrorCounter:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mReadErrorCounter:I

    const/4 v2, 0x5

    if-lt v5, v2, :cond_73

    .line 118
    iput-boolean v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    .line 121
    :cond_73
    monitor-exit p0

    return-object v1

    .line 125
    .end local v0    # "procFile":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_75
    move-exception v0

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_75

    throw v0
.end method

.method public removeUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 227
    monitor-enter p0

    .line 228
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 229
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public removeUidsInRange(II)V
    .registers 7
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .line 233
    if-ge p2, p1, :cond_3

    .line 234
    return-void

    .line 236
    :cond_3
    monitor-enter p0

    .line 237
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 240
    .local v0, "startIdx":I
    iget-object v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 241
    .local v1, "endIdx":I
    iget-object v2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->removeAtRange(II)V

    .line 242
    .end local v0    # "startIdx":I
    .end local v1    # "endIdx":I
    monitor-exit p0

    .line 243
    return-void

    .line 242
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public setAllUidsCpuTimesMs(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[J>;)V"
        }
    .end annotation

    .line 215
    .local p1, "allUidsCpuTimesMs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[J>;"
    monitor-enter p0

    .line 216
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 217
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_28

    .line 218
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 219
    .local v1, "cpuTimesMs":[J
    if-eqz v1, :cond_25

    .line 220
    iget-object v2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    .end local v1    # "cpuTimesMs":[J
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 223
    .end local v0    # "i":I
    :cond_28
    monitor-exit p0

    .line 224
    return-void

    .line 223
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public setSingleUidCpuTimesAvailable(Z)V
    .registers 2
    .param p1, "singleUidCpuTimesAvailable"    # Z

    .line 311
    iput-boolean p1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    .line 312
    return-void
.end method

.method public singleUidCpuTimesAvailable()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    return v0
.end method
