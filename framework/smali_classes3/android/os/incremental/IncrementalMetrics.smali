.class public Landroid/os/incremental/IncrementalMetrics;
.super Ljava/lang/Object;
.source "IncrementalMetrics.java"


# instance fields
.field private final mData:Landroid/os/PersistableBundle;


# direct methods
.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "data"    # Landroid/os/PersistableBundle;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    .line 31
    return-void
.end method


# virtual methods
.method public getDataLoaderBindDelayMillis()J
    .registers 5

    .line 72
    iget-object v0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string v1, "dataLoaderBindDelayMillis"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataLoaderStatusCode()I
    .registers 4

    .line 58
    iget-object v0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string v1, "dataLoaderStatusCode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastReadErrorNumber()I
    .registers 4

    .line 114
    iget-object v0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "lastReadErrorNo"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastReadErrorUid()I
    .registers 4

    .line 100
    iget-object v0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "lastReadErrorUid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMillisSinceLastDataLoaderBind()J
    .registers 5

    .line 65
    iget-object v0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "millisSinceLastDataLoaderBind"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillisSinceLastReadError()J
    .registers 5

    .line 107
    iget-object v0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "millisSinceLastReadError"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillisSinceOldestPendingRead()J
    .registers 5

    .line 37
    iget-object v0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "millisSinceOldestPendingRead"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadLogsEnabled()Z
    .registers 4

    .line 44
    iget-object v0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "readLogsEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStorageHealthStatusCode()I
    .registers 4

    .line 51
    iget-object v0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "storageHealthStatusCode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTotalDelayedReads()I
    .registers 4

    .line 79
    iget-object v0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "totalDelayedReads"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTotalDelayedReadsDurationMillis()J
    .registers 5

    .line 93
    iget-object v0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "totalDelayedReadsMillis"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalFailedReads()I
    .registers 4

    .line 86
    iget-object v0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "totalFailedReads"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
