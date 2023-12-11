.class public final Landroid/database/sqlite/SQLiteGlobal;
.super Ljava/lang/Object;
.source "SQLiteGlobal.java"


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = -0x7d0

.field public static final SYNC_MODE_FULL:Ljava/lang/String; = "FULL"

.field private static final TAG:Ljava/lang/String; = "SQLiteGlobal"

.field static final WIPE_CHECK_FILE_SUFFIX:Ljava/lang/String; = "-wipecheck"

.field private static sDefaultPageSize:I

.field public static volatile sDefaultSyncMode:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static checkDbWipe()Z
    .registers 1

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public static clearRandArray(J)V
    .registers 2
    .param p0, "ptr"    # J

    .line 234
    invoke-static {p0, p1}, Landroid/database/sqlite/SQLiteGlobal;->nativeClearRandArray(J)V

    .line 235
    return-void
.end method

.method public static createRandArray()J
    .registers 2

    .line 215
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->nativeCreateRandArray()J

    move-result-wide v0

    return-wide v0
.end method

.method public static enableSQLiteDump(Z)V
    .registers 1
    .param p0, "enableLogDump"    # Z

    .line 242
    invoke-static {p0}, Landroid/database/sqlite/SQLiteGlobal;->nativeEnableSQLiteLogDump(Z)V

    .line 243
    return-void
.end method

.method public static getDefaultCacheSize()I
    .registers 1

    .line 174
    const/16 v0, -0x7d0

    return v0
.end method

.method public static getDefaultJournalMode()Ljava/lang/String;
    .registers 2

    .line 94
    nop

    .line 95
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "debug.sqlite.journalmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPageSize()I
    .registers 3

    .line 80
    sget-object v0, Landroid/database/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    sget v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    if-nez v1, :cond_14

    .line 84
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    sput v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    .line 86
    :cond_14
    const-string v1, "debug.sqlite.pagesize"

    sget v2, Landroid/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 87
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public static getDefaultSyncMode()Ljava/lang/String;
    .registers 3

    .line 113
    sget-object v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 114
    .local v0, "defaultMode":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 115
    return-object v0

    .line 117
    :cond_5
    nop

    .line 118
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    const-string v2, "debug.sqlite.syncmode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getIdleConnectionTimeout()I
    .registers 2

    .line 161
    nop

    .line 162
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 161
    const-string v1, "debug.sqlite.idle_connection_timeout"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getJournalSizeLimit()I
    .registers 2

    .line 103
    nop

    .line 104
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 103
    const-string v1, "debug.sqlite.journalsizelimit"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRandArray(J)[C
    .registers 3
    .param p0, "ptr"    # J

    .line 225
    invoke-static {p0, p1}, Landroid/database/sqlite/SQLiteGlobal;->nativeGetRandArray(J)[C

    move-result-object v0

    return-object v0
.end method

.method public static getSQLiteDumpLogs(Z)Ljava/lang/String;
    .registers 2
    .param p0, "reset"    # Z

    .line 238
    invoke-static {p0}, Landroid/database/sqlite/SQLiteGlobal;->nativeGetSQLiteDumpLogs(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWALAutoCheckpoint()I
    .registers 2

    .line 140
    nop

    .line 141
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 140
    const-string v1, "debug.sqlite.wal.autocheckpoint"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "value":I
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getWALConnectionPoolSize()I
    .registers 2

    .line 150
    nop

    .line 151
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 150
    const-string v1, "debug.sqlite.wal.poolsize"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 153
    .local v0, "value":I
    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getWALSyncMode()Ljava/lang/String;
    .registers 3

    .line 127
    sget-object v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 128
    .local v0, "defaultMode":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 129
    return-object v0

    .line 131
    :cond_5
    nop

    .line 132
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v2, "debug.sqlite.wal.syncmode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWALTruncateSize()J
    .registers 4

    .line 185
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->getTruncateSize()J

    move-result-wide v0

    .line 186
    .local v0, "setting":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_b

    .line 187
    return-wide v0

    .line 189
    :cond_b
    nop

    .line 190
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 189
    const-string v3, "debug.sqlite.wal.truncatesize"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method

.method public static isDeviceOnShutdown()Z
    .registers 2

    .line 201
    const-string/jumbo v0, "sys.powerctl"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    .line 205
    :cond_1d
    const/4 v1, 0x0

    return v1

    .line 203
    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    return v1
.end method

.method private static native nativeClearRandArray(J)V
.end method

.method private static native nativeCreateRandArray()J
.end method

.method private static native nativeEnableSQLiteLogDump(Z)V
.end method

.method private static native nativeGetRandArray(J)[C
.end method

.method private static native nativeGetSQLiteDumpLogs(Z)Ljava/lang/String;
.end method

.method private static native nativeReleaseMemory()I
.end method

.method public static releaseMemory()I
    .registers 1

    .line 73
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->nativeReleaseMemory()I

    move-result v0

    return v0
.end method
