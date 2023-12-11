.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# static fields
.field private static final LIGHT_MEMINFO_COUNT:I = 0xe


# instance fields
.field final mInfos:[J

.field private final mLightInfos:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x22

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    .line 46
    const/16 v0, 0xe

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mLightInfos:[J

    .line 29
    return-void
.end method


# virtual methods
.method public getActiveFileSizeKb()J
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x1a

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getAvailableSize()J
    .registers 5

    .line 66
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x17

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachedSize()J
    .registers 5

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachedSizeKb()J
    .registers 8

    .line 172
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x13

    aget-wide v1, v0, v1

    .line 177
    .local v1, "kReclaimable":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_10

    .line 178
    const/16 v3, 0xa

    aget-wide v1, v0, v3

    .line 180
    :cond_10
    const/4 v3, 0x2

    aget-wide v3, v0, v3

    add-long/2addr v3, v1

    const/4 v5, 0x3

    aget-wide v5, v0, v5

    add-long/2addr v3, v5

    const/16 v5, 0xf

    aget-wide v5, v0, v5

    sub-long/2addr v3, v5

    return-wide v3
.end method

.method public getCachedSizeLegacy()J
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeSize()J
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeSizeKb()J
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getInactiveFileSizeKb()J
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x1b

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getKReclaimableSizeKb()J
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x13

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getKernelUsedSize()J
    .registers 5

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getKernelUsedSizeKb()J
    .registers 6

    .line 188
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x8

    aget-wide v1, v0, v1

    const/16 v3, 0xb

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/16 v3, 0x10

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/16 v3, 0x11

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    .line 190
    .local v1, "size":J
    invoke-static {}, Landroid/os/Debug;->isVmapStack()Z

    move-result v0

    if-nez v0, :cond_22

    .line 191
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0x12

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    .line 193
    :cond_22
    return-wide v1
.end method

.method public getKgslReclaimedSizeKb()J
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x1f

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getKgslSharedMemSizeKb()J
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x21

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getKgslShmemUsageSizeKb()J
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x1e

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getRawInfo()[J
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    return-object v0
.end method

.method public getRbinAllocedSize()J
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getRbinCachedSizeKb()J
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getRbinFreeSizeKb()J
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getRbinTotalSize()J
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getSReclaimableSizeKb()J
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xa

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSUnreclaimSizeKb()J
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xb

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSwapFreeSizeKb()J
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xd

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSwapTotalSizeKb()J
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xc

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSystemSizeKb()J
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x20

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTotalSize()J
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalSizeKb()J
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getZramTotalSizeKb()J
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xe

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public readLightMemInfo()V
    .registers 6

    .line 51
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 53
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mLightInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    const/16 v2, 0xe

    if-ge v1, v2, :cond_19

    .line 55
    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    iget-object v3, p0, Lcom/android/internal/util/MemInfoReader;->mLightInfos:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1e

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 57
    .end local v1    # "i":I
    :cond_19
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 58
    nop

    .line 59
    return-void

    .line 57
    :catchall_1e
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 58
    throw v1
.end method

.method public readMemInfo()V
    .registers 3

    .line 36
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 38
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 40
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 41
    nop

    .line 42
    return-void

    .line 40
    :catchall_e
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 41
    throw v1
.end method
