.class public final Landroid/database/sqlite/SQLiteUserDataRecovery;
.super Ljava/lang/Object;
.source "SQLiteUserDataRecovery.java"


# static fields
.field private static final RECOVERY_POSTFIX:Ljava/lang/String; = "-recover"

.field private static final SQLITE_UDR_DUPLICATE:I = 0x300

.field public static final TAG:Ljava/lang/String; = "SQLiteUDR"


# instance fields
.field private isWorking:Z

.field private mDbDump:Landroid/database/sqlite/SQLiteDump;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDump;)V
    .registers 3
    .param p1, "dump"    # Landroid/database/sqlite/SQLiteDump;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    .line 40
    sget-object v0, Landroid/database/sqlite/SQLiteDump;->sDummyDbDump:Landroid/database/sqlite/SQLiteDump;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    .line 46
    iput-object p1, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    .line 47
    return-void
.end method

.method private doRecoveryInner(Ljava/lang/String;[BLjava/lang/String;)Z
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "password"    # [B
    .param p3, "locale"    # Ljava/lang/String;

    .line 50
    const-string v0, "SQLiteUDR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-recover"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "recoverPath":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_16
    invoke-static {p1, v1, p2, p3}, Landroid/database/sqlite/SQLiteUserDataRecovery;->nativeDoRecovery(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I

    move-result v3

    .line 53
    .local v3, "rc":I
    const/4 v4, 0x1

    if-nez v3, :cond_4b

    .line 55
    iget-object v5, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@ Back up corrupted DB File : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {v5, v0, v4}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {p1}, Landroid/database/DefaultDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    .line 58
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v4, "recoverdb":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v5, "db":Ljava/io/File;
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0

    .line 61
    .end local v4    # "recoverdb":Ljava/io/File;
    .end local v5    # "db":Ljava/io/File;
    :cond_4b
    const/16 v5, 0x300

    if-ne v3, v5, :cond_5b

    .line 62
    iget-object v5, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Another udr is worked."

    aput-object v7, v6, v2

    invoke-virtual {v5, v0, v6}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_5a} :catch_5c

    .line 63
    return v4

    .line 65
    :cond_5b
    return v2

    .line 67
    .end local v3    # "rc":I
    :catch_5c
    move-exception v3

    .line 68
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 69
    iget-object v4, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v5, "Failed to recover database."

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 72
    :cond_72
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabaseFile(Ljava/lang/String;)Z

    .line 74
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    return v2
.end method

.method public static isDbUdrRecovered(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 99
    if-eqz p0, :cond_f

    .line 100
    const-string v0, ":memory:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 101
    invoke-static {p0}, Landroid/database/sqlite/SQLiteUserDataRecovery;->nativeIsDbUdrRecovered(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 103
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static native nativeDoRecovery(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
.end method

.method private static native nativeIsDbUdrRecovered(Ljava/lang/String;)Z
.end method


# virtual methods
.method public doRecovery(Ljava/lang/String;[BLjava/lang/String;)Z
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "password"    # [B
    .param p3, "locale"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    if-eqz p1, :cond_35

    const-string v1, ":memory:"

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_35

    .line 82
    :cond_c
    iget-object v1, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_f
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    if-eqz v2, :cond_15

    .line 84
    monitor-exit v1

    return v0

    .line 86
    :cond_15
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    .line 87
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_32

    .line 90
    :try_start_19
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteUserDataRecovery;->doRecoveryInner(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_27

    .line 92
    iget-object v2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_20
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    .line 94
    monitor-exit v2

    .line 90
    return v1

    .line 94
    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    throw v0

    .line 92
    :catchall_27
    move-exception v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_2b
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    .line 94
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    .line 95
    throw v1

    .line 94
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0

    .line 87
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 80
    :cond_35
    :goto_35
    return v0
.end method
