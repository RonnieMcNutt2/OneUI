.class public final Landroid/database/sqlite/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$CursorFactory;,
        Landroid/database/sqlite/SQLiteDatabase$OpenParams;,
        Landroid/database/sqlite/SQLiteDatabase$DatabaseOpenFlags;,
        Landroid/database/sqlite/SQLiteDatabase$CustomFunction;,
        Landroid/database/sqlite/SQLiteDatabase$SyncMode;,
        Landroid/database/sqlite/SQLiteDatabase$JournalMode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field public static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field private static final DEBUG_CLOSE_IDLE_CONNECTIONS:Z

.field public static final ENABLE_LEGACY_COMPATIBILITY_WAL:I = -0x80000000

.field public static final ENABLE_ROLLBACK_JOURNAL:I = 0x400

.field public static final ENABLE_WRITE_AHEAD_LOGGING:I = 0x20000000

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field public static final JOURNAL_MODE_DELETE:Ljava/lang/String; = "DELETE"

.field public static final JOURNAL_MODE_MEMORY:Ljava/lang/String; = "MEMORY"

.field public static final JOURNAL_MODE_OFF:Ljava/lang/String; = "OFF"

.field public static final JOURNAL_MODE_PERSIST:Ljava/lang/String; = "PERSIST"

.field public static final JOURNAL_MODE_TRUNCATE:Ljava/lang/String; = "TRUNCATE"

.field public static final JOURNAL_MODE_WAL:Ljava/lang/String; = "WAL"

.field public static final MAX_SQL_CACHE_SIZE:I = 0x64

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_FULLMUTEX:I = 0x100

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field public static final OPEN_SECURE:I = 0x200

.field public static final SEM_OPEN_SEPARATECACHE:I = 0x1000

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final SUPPORT_KNOX_SDP_SQLITE:Z = true

.field public static final SYNC_MODE_EXTRA:Ljava/lang/String; = "EXTRA"

.field public static final SYNC_MODE_FULL:Ljava/lang/String; = "FULL"

.field public static final SYNC_MODE_NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final SYNC_MODE_OFF:Ljava/lang/String; = "OFF"

.field private static final TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static final mSecureLock:Ljava/lang/Object;

.field private static sActiveDatabases:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sDbDirectories:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackgroundCheckpoint:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

.field private final mCloseGuardLocked:Ldalvik/system/CloseGuard;

.field private final mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

.field private mContext:Landroid/content/Context;

.field private mCorruptCode:I

.field private final mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field public mDbDump:Landroid/database/sqlite/SQLiteDump;

.field private final mDefaultErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private mHasAttachedDbsLocked:Z

.field private mInCorruptionHandling:Z

.field private mIntegrityErrorString:Ljava/lang/String;

.field private mIsDatabaseCorrupted:Z

.field private final mLock:Ljava/lang/Object;

.field private mPassword:[B

.field private mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

.field private final mThreadSession:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/database/sqlite/SQLiteSession;",
            ">;"
        }
    .end annotation
.end field

.field private udr:Landroid/database/sqlite/SQLiteUserDataRecovery;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 97
    nop

    .line 105
    nop

    .line 106
    const-string/jumbo v0, "persist.debug.sqlite.close_idle_connections"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->DEBUG_CLOSE_IDLE_CONNECTIONS:Z

    .line 111
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->sDbDirectories:Ljava/util/HashSet;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    .line 246
    const-string v1, ""

    const-string v2, " OR ROLLBACK "

    const-string v3, " OR ABORT "

    const-string v4, " OR FAIL "

    const-string v5, " OR IGNORE "

    const-string v6, " OR REPLACE "

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V
    .registers 32
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "openFlags"    # I
    .param p3, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p5, "lookasideSlotSize"    # I
    .param p6, "lookasideSlotCount"    # I
    .param p7, "idleConnectionTimeoutMs"    # J
    .param p9, "idleConnectionShrinkTimeoutMs"    # J
    .param p11, "journalMode"    # Ljava/lang/String;
    .param p12, "syncMode"    # Ljava/lang/String;
    .param p13, "cacheSize"    # I
    .param p14, "userDataRecovery"    # Z

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-wide/from16 v3, p9

    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 118
    new-instance v5, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 120
    invoke-static {v5}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v5

    iput-object v5, v0, Landroid/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    .line 130
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 135
    iput-boolean v5, v0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 138
    const/4 v6, 0x0

    iput-object v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    .line 139
    iput-object v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mPassword:[B

    .line 155
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 163
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v7

    iput-object v7, v0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    .line 187
    iput-object v6, v0, Landroid/database/sqlite/SQLiteDatabase;->udr:Landroid/database/sqlite/SQLiteUserDataRecovery;

    .line 528
    sget-object v7, Landroid/database/sqlite/SQLiteDump;->sDummyDbDump:Landroid/database/sqlite/SQLiteDump;

    iput-object v7, v0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    .line 1579
    iput-object v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    .line 3121
    iput v5, v0, Landroid/database/sqlite/SQLiteDatabase;->mCorruptCode:I

    .line 535
    move-object/from16 v6, p3

    iput-object v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 536
    iput-object v2, v0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 537
    new-instance v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    move/from16 v8, p2

    invoke-direct {v7, v1, v8}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;I)V

    iput-object v7, v0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 538
    move/from16 v9, p5

    iput v9, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    .line 539
    move/from16 v10, p6

    iput v10, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    .line 540
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v11

    if-nez v11, :cond_61

    iget-object v11, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v11, v11, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->useDumpCorruptByDefault:Z

    if-eqz v11, :cond_61

    .line 541
    new-instance v11, Landroid/database/sqlite/SQLiteDump;

    invoke-direct {v11, v1}, Landroid/database/sqlite/SQLiteDump;-><init>(Ljava/lang/String;)V

    iput-object v11, v0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    .line 543
    :cond_61
    new-instance v11, Landroid/database/DefaultDatabaseErrorHandler;

    iget-object v12, v0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    invoke-direct {v11, v12}, Landroid/database/DefaultDatabaseErrorHandler;-><init>(Landroid/database/sqlite/SQLiteDump;)V

    .line 544
    .local v11, "defaultErrorHandler":Landroid/database/DefaultDatabaseErrorHandler;
    if-nez v2, :cond_6c

    const/4 v13, 0x1

    goto :goto_6d

    :cond_6c
    move v13, v5

    :goto_6d
    invoke-virtual {v11, v13}, Landroid/database/DefaultDatabaseErrorHandler;->setDeleteDatabaseIfCorrupted(Z)V

    .line 545
    iput-object v11, v0, Landroid/database/sqlite/SQLiteDatabase;->mDefaultErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 548
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v13

    if-eqz v13, :cond_7c

    .line 549
    iput v5, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    .line 550
    iput v5, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    .line 552
    :cond_7c
    const-wide v13, 0x7fffffffffffffffL

    .line 554
    .local v13, "effectiveTimeoutMs":J
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v5

    const-wide/16 v15, 0x0

    if-nez v5, :cond_99

    .line 557
    cmp-long v5, p7, v15

    if-ltz v5, :cond_90

    .line 558
    move-wide/from16 v13, p7

    goto :goto_99

    .line 559
    :cond_90
    sget-boolean v5, Landroid/database/sqlite/SQLiteDatabase;->DEBUG_CLOSE_IDLE_CONNECTIONS:Z

    if-eqz v5, :cond_99

    .line 560
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getIdleConnectionTimeout()I

    move-result v5

    int-to-long v13, v5

    .line 563
    :cond_99
    :goto_99
    cmp-long v5, v3, v15

    if-ltz v5, :cond_9f

    .line 564
    iput-wide v3, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionShrinkTimeoutMs:J

    .line 566
    :cond_9f
    iput-wide v13, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    .line 567
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->isLegacyCompatibilityWalEnabled()Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 568
    iget v5, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v15, -0x80000000

    or-int/2addr v5, v15

    iput v5, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 570
    :cond_ae
    move-object/from16 v5, p11

    iput-object v5, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    .line 571
    move-object/from16 v15, p12

    iput-object v15, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->syncMode:Ljava/lang/String;

    .line 572
    move/from16 v12, p13

    iput v12, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    .line 573
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 575
    new-instance v1, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;-><init>()V

    iput-object v1, v0, Landroid/database/sqlite/SQLiteDatabase;->mBackgroundCheckpoint:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    .line 577
    :cond_cd
    if-eqz p14, :cond_de

    .line 578
    new-instance v1, Landroid/database/sqlite/SQLiteUserDataRecovery;

    iget-object v2, v0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteUserDataRecovery;-><init>(Landroid/database/sqlite/SQLiteDump;)V

    iput-object v1, v0, Landroid/database/sqlite/SQLiteDatabase;->udr:Landroid/database/sqlite/SQLiteUserDataRecovery;

    .line 579
    iget-object v1, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->setUserDataRecovery(Z)V

    .line 581
    :cond_de
    return-void
.end method

.method private beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V
    .registers 7
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p2, "exclusive"    # Z

    .line 968
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 970
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    .line 971
    if-eqz p2, :cond_b

    const/4 v1, 0x2

    goto :goto_c

    .line 972
    :cond_b
    const/4 v1, 0x1

    :goto_c
    nop

    .line 974
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v2

    .line 970
    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_16} :catch_1d
    .catchall {:try_start_3 .. :try_end_16} :catchall_1b

    .line 979
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 980
    nop

    .line 981
    return-void

    .line 979
    :catchall_1b
    move-exception v0

    goto :goto_27

    .line 975
    :catch_1d
    move-exception v0

    .line 976
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 977
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "transactionListener":Landroid/database/sqlite/SQLiteTransactionListener;
    .end local p2    # "exclusive":Z
    throw v0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_1b

    .line 979
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "transactionListener":Landroid/database/sqlite/SQLiteTransactionListener;
    .restart local p2    # "exclusive":Z
    :goto_27
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 980
    throw v0
.end method

.method private cleanCacheAndReOpen()V
    .registers 4

    .line 3592
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3593
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3595
    :cond_9
    const-string v0, "PRAGMA drop_db_fs_cache;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3598
    const/4 v0, 0x0

    .line 3599
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    .line 3600
    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_23

    .line 3601
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setCheckpointOnClose(Z)V

    .line 3602
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->reOpen()V

    .line 3604
    :cond_23
    return-void
.end method

.method private collectDbStats(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 3224
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3225
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_a

    .line 3226
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->collectDbStats(Ljava/util/ArrayList;)V

    .line 3228
    :cond_a
    monitor-exit v0

    .line 3229
    return-void

    .line 3228
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private static convertByte2HexString([B)Ljava/lang/String;
    .registers 5
    .param p0, "password"    # [B

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_28

    .line 1316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_28

    .line 1317
    aget-byte v2, p0, v1

    if-ltz v2, :cond_1a

    aget-byte v2, p0, v1

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1a

    .line 1318
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    :cond_1a
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1323
    .end local v1    # "i":I
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static convertToPlainDatabase(Ljava/io/File;Ljava/io/File;[B)V
    .registers 11
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "destDbFile"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1328
    if-eqz p0, :cond_d7

    if-eqz p1, :cond_d7

    if-eqz p2, :cond_d7

    .line 1333
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1334
    :try_start_9
    const-string v1, "SQLiteDatabase"

    const-string v2, "convertToPlainDatabase() start..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2a

    .line 1338
    const-string v1, "SQLiteDatabase"

    const-string v2, "convertToPlainDatabase() Destination file exists, so delete it"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 1341
    :cond_2a
    const/4 v1, 0x0

    .line 1342
    .local v1, "destDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_d4

    .line 1345
    .local v2, "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_36
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_ce

    .line 1347
    .local v3, "sourceDbVer":I
    :try_start_3a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_d4

    .line 1348
    nop

    .line 1354
    :try_start_3e
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const v6, 0x10000010

    invoke-static {v5, v4, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v1, v4

    .line 1356
    const-string v4, "attach database \'%s\' as secureDb key x\'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1357
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Landroid/database/sqlite/SQLiteDatabase;->convertByte2HexString([B)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1356
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1358
    const-string/jumbo v4, "secureDb"

    invoke-direct {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->exportDB(Ljava/lang/String;)V

    .line 1359
    const-string v4, "detach database secureDb"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    .line 1361
    .local v4, "destDbVer":I
    if-eq v4, v3, :cond_9d

    .line 1362
    const-string v5, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Note: sourceDb version was changed during conversion ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_3e .. :try_end_9d} :catchall_b3

    .line 1365
    :cond_9d
    if-eqz v1, :cond_a8

    :try_start_9f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 1366
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9f .. :try_end_a8} :catch_c1
    .catchall {:try_start_9f .. :try_end_a8} :catchall_d4

    .line 1373
    :cond_a8
    nop

    .line 1374
    :try_start_a9
    const-string v5, "SQLiteDatabase"

    const-string v6, "convertToPlainDatabase() finished"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    nop

    .end local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sourceDbVer":I
    .end local v4    # "destDbVer":I
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_d4

    .line 1376
    return-void

    .line 1365
    .restart local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sourceDbVer":I
    :catchall_b3
    move-exception v4

    if-eqz v1, :cond_bf

    :try_start_b6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 1366
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1368
    :cond_bf
    nop

    .end local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sourceDbVer":I
    .end local p0    # "sourceDbFile":Ljava/io/File;
    .end local p1    # "destDbFile":Ljava/io/File;
    .end local p2    # "password":[B
    throw v4
    :try_end_c1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b6 .. :try_end_c1} :catch_c1
    .catchall {:try_start_b6 .. :try_end_c1} :catchall_d4

    .line 1369
    .restart local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sourceDbVer":I
    .restart local p0    # "sourceDbFile":Ljava/io/File;
    .restart local p1    # "destDbFile":Ljava/io/File;
    .restart local p2    # "password":[B
    :catch_c1
    move-exception v4

    .line 1370
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_c2
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 1371
    const-string v5, "SQLiteDatabase"

    const-string v6, "convertToPlainDatabase() failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1372
    nop

    .end local p0    # "sourceDbFile":Ljava/io/File;
    .end local p1    # "destDbFile":Ljava/io/File;
    .end local p2    # "password":[B
    throw v4

    .line 1347
    .end local v3    # "sourceDbVer":I
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local p0    # "sourceDbFile":Ljava/io/File;
    .restart local p1    # "destDbFile":Ljava/io/File;
    .restart local p2    # "password":[B
    :catchall_ce
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1348
    nop

    .end local p0    # "sourceDbFile":Ljava/io/File;
    .end local p1    # "destDbFile":Ljava/io/File;
    .end local p2    # "password":[B
    throw v3

    .line 1375
    .end local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "sourceDbFile":Ljava/io/File;
    .restart local p1    # "destDbFile":Ljava/io/File;
    .restart local p2    # "password":[B
    :catchall_d4
    move-exception v1

    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_c2 .. :try_end_d6} :catchall_d4

    throw v1

    .line 1329
    :cond_d7
    const-string v0, "SQLiteDatabase"

    const-string v1, "convertToPlainDatabase() parameters should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "parameters should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertToSecureDatabase(Ljava/io/File;Ljava/io/File;[B)V
    .registers 11
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "destDbFile"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1380
    if-eqz p0, :cond_cf

    if-eqz p1, :cond_cf

    if-eqz p2, :cond_cf

    .line 1385
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1386
    :try_start_9
    const-string v1, "SQLiteDatabase"

    const-string v2, "convertToSecureDatabase() start..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2a

    .line 1390
    const-string v1, "SQLiteDatabase"

    const-string v2, "convertToSecureDatabase() Destination file exists, so delete it"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 1393
    :cond_2a
    const/4 v1, 0x0

    .line 1394
    .local v1, "destDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_cc

    .line 1397
    .local v2, "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_36
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_c6

    .line 1399
    .local v3, "sourceDbVer":I
    :try_start_3a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_cc

    .line 1400
    nop

    .line 1404
    :try_start_3e
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const v6, 0x10000010

    invoke-static {v5, v4, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v1, v4

    .line 1406
    const-string v4, "attach database \'%s\' as plainDb key \'\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1407
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1406
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1408
    const-string/jumbo v4, "plainDb"

    invoke-direct {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->exportDB(Ljava/lang/String;)V

    .line 1409
    const-string v4, "detach database plainDb"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    .line 1411
    .local v4, "destDbVer":I
    if-eq v4, v3, :cond_96

    .line 1412
    const-string v5, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Note: sourceDb version was changed during conversion ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_3e .. :try_end_96} :catchall_ab

    .line 1415
    :cond_96
    if-eqz v1, :cond_a1

    :try_start_98
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 1416
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_98 .. :try_end_a1} :catch_b9
    .catchall {:try_start_98 .. :try_end_a1} :catchall_cc

    .line 1423
    :cond_a1
    nop

    .line 1424
    .end local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sourceDbVer":I
    .end local v4    # "destDbVer":I
    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_cc

    .line 1425
    const-string v0, "SQLiteDatabase"

    const-string v1, "convertToSecureDatabase() finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    return-void

    .line 1415
    .restart local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sourceDbVer":I
    :catchall_ab
    move-exception v4

    if-eqz v1, :cond_b7

    :try_start_ae
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 1416
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1418
    :cond_b7
    nop

    .end local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sourceDbVer":I
    .end local p0    # "sourceDbFile":Ljava/io/File;
    .end local p1    # "destDbFile":Ljava/io/File;
    .end local p2    # "password":[B
    throw v4
    :try_end_b9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ae .. :try_end_b9} :catch_b9
    .catchall {:try_start_ae .. :try_end_b9} :catchall_cc

    .line 1419
    .restart local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sourceDbVer":I
    .restart local p0    # "sourceDbFile":Ljava/io/File;
    .restart local p1    # "destDbFile":Ljava/io/File;
    .restart local p2    # "password":[B
    :catch_b9
    move-exception v4

    .line 1420
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_ba
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 1421
    const-string v5, "SQLiteDatabase"

    const-string v6, "convertToSecureDatabase() failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1422
    nop

    .end local p0    # "sourceDbFile":Ljava/io/File;
    .end local p1    # "destDbFile":Ljava/io/File;
    .end local p2    # "password":[B
    throw v4

    .line 1399
    .end local v3    # "sourceDbVer":I
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local p0    # "sourceDbFile":Ljava/io/File;
    .restart local p1    # "destDbFile":Ljava/io/File;
    .restart local p2    # "password":[B
    :catchall_c6
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1400
    nop

    .end local p0    # "sourceDbFile":Ljava/io/File;
    .end local p1    # "destDbFile":Ljava/io/File;
    .end local p2    # "password":[B
    throw v3

    .line 1424
    .end local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "sourceDbFile":Ljava/io/File;
    .restart local p1    # "destDbFile":Ljava/io/File;
    .restart local p2    # "password":[B
    :catchall_cc
    move-exception v1

    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_ba .. :try_end_ce} :catchall_cc

    throw v1

    .line 1381
    :cond_cf
    const-string v0, "SQLiteDatabase"

    const-string v1, "convertToSecureDatabase() parameters should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "parameters should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p0, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1660
    const-string v0, ":memory:"

    const/high16 v1, 0x10000000

    invoke-static {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static createInMemory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p0, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 1676
    nop

    .line 1677
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v0

    .line 1676
    const-string v1, ":memory:"

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static createSecureDatabase(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[B)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .param p0, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p1, "password"    # [B

    .line 1691
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    const-string v2, ":memory:"

    invoke-static {v2, p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static deleteDatabase(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 1463
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static deleteDatabase(Ljava/io/File;Z)Z
    .registers 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "removeCheckFile"    # Z

    .line 1469
    if-eqz p0, :cond_103

    .line 1473
    const/4 v0, 0x0

    .line 1474
    .local v0, "deleted":Z
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1475
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1476
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1477
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1478
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-se"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1479
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-udr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1482
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wipecheck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1484
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1485
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_102

    .line 1486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-mj"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1487
    .local v2, "prefix":Ljava/lang/String;
    new-instance v3, Landroid/database/sqlite/SQLiteDatabase$1;

    invoke-direct {v3, v2}, Landroid/database/sqlite/SQLiteDatabase$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1493
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_102

    .line 1494
    array-length v4, v3

    const/4 v5, 0x0

    :goto_f6
    if-ge v5, v4, :cond_102

    aget-object v6, v3, v5

    .line 1495
    .local v6, "masterJournal":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    or-int/2addr v0, v7

    .line 1494
    .end local v6    # "masterJournal":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_f6

    .line 1499
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "files":[Ljava/io/File;
    :cond_102
    return v0

    .line 1470
    .end local v0    # "deleted":Z
    .end local v1    # "dir":Ljava/io/File;
    :cond_103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deleteDatabaseFile(Ljava/lang/String;)Z
    .registers 6
    .param p0, "file"    # Ljava/lang/String;

    .line 4148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4149
    .local v0, "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 4151
    .local v1, "ret":Z
    if-eqz v1, :cond_ad

    .line 4152
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-journal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4153
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-wal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4154
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-shm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4155
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-se"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4156
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-udr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4157
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-wipecheck"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4159
    :cond_ad
    return v1
.end method

.method private dispose(Z)V
    .registers 6
    .param p1, "finalized"    # Z

    .line 602
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_11

    .line 604
    if-eqz p1, :cond_c

    .line 605
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 607
    :cond_c
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 610
    :cond_11
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 611
    .local v1, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 615
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    .line 616
    .local v3, "sdpHelper":Landroid/database/sqlite/SQLiteSdpHelper;
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    .line 619
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_35

    .line 622
    if-eqz v3, :cond_20

    .line 623
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteSdpHelper;->unregisterListener()V

    .line 627
    :cond_20
    if-nez p1, :cond_34

    .line 628
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 629
    :try_start_25
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_31

    .line 632
    if-eqz v1, :cond_34

    .line 633
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->close()V

    goto :goto_34

    .line 630
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2

    .line 636
    :cond_34
    :goto_34
    return-void

    .line 619
    .end local v1    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local v3    # "sdpHelper":Landroid/database/sqlite/SQLiteSdpHelper;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method static dumpAll(Landroid/util/Printer;ZZ)V
    .registers 16
    .param p0, "printer"    # Landroid/util/Printer;
    .param p1, "verbose"    # Z
    .param p2, "isSystem"    # Z

    .line 3299
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3302
    .local v0, "directories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide/16 v1, 0x0

    .line 3303
    .local v1, "totalStatementsTimeInMs":J
    const-wide/16 v3, 0x0

    .line 3305
    .local v3, "totalStatementsCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabasePools()Ljava/util/ArrayList;

    move-result-object v5

    .line 3307
    .local v5, "activeConnectionPools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnectionPool;>;"
    new-instance v6, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 3309
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteConnectionPool;

    .line 3310
    .local v7, "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 3311
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v8, :cond_52

    .line 3312
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Attached db: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->hasAttachedDbsLocked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3313
    invoke-virtual {v7, p0, p1, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dump(Landroid/util/Printer;ZLandroid/util/ArraySet;)V

    .line 3314
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsTime()J

    move-result-wide v9

    add-long/2addr v1, v9

    .line 3315
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsCount()J

    move-result-wide v9

    add-long/2addr v3, v9

    .line 3317
    .end local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_52
    goto :goto_19

    .line 3319
    :cond_53
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_110

    .line 3323
    const-string v6, "Statements Executed per Database"

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3324
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_62
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, " :    "

    const-string v9, "  "

    if-eqz v7, :cond_97

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteConnectionPool;

    .line 3325
    .restart local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3326
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsCount()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3325
    invoke-interface {p0, v8}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3327
    .end local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    goto :goto_62

    .line 3328
    :cond_97
    const-string v6, ""

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3329
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Total Statements Executed for all Active Databases: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3333
    new-instance v7, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 3335
    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3336
    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3337
    const-string v6, "Statement Time per Database (ms)"

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3338
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fa

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteConnectionPool;

    .line 3339
    .restart local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3340
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3339
    invoke-interface {p0, v10}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3341
    .end local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    goto :goto_c9

    .line 3342
    :cond_fa
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total Statements Time for all Active Databases (ms): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3347
    :cond_110
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_136

    .line 3348
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 3349
    .local v6, "dirs":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 3350
    array-length v7, v6

    const/4 v8, 0x0

    :goto_127
    if-ge v8, v7, :cond_136

    aget-object v9, v6, v8

    .line 3351
    .local v9, "dir":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, p2}, Landroid/database/sqlite/SQLiteDatabase;->dumpDatabaseDirectory(Landroid/util/Printer;Ljava/io/File;Z)V

    .line 3350
    .end local v9    # "dir":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_127

    .line 3355
    .end local v6    # "dirs":[Ljava/lang/String;
    :cond_136
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getDbDirectories()Ljava/util/ArrayList;

    move-result-object v6

    .line 3356
    .local v6, "dbDirs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_162

    .line 3357
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_144
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_162

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3358
    .local v8, "dir":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "sqlite_dump"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    .local v9, "dumpDir":Ljava/io/File;
    :try_start_158
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Landroid/database/sqlite/SQLiteDatabase;->printCorruptionDumpFiles(Landroid/util/Printer;Ljava/lang/String;)V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15f} :catch_160

    .line 3363
    goto :goto_161

    .line 3361
    :catch_160
    move-exception v10

    .line 3364
    .end local v8    # "dir":Ljava/lang/String;
    .end local v9    # "dumpDir":Ljava/io/File;
    :goto_161
    goto :goto_144

    .line 3366
    :cond_162
    return-void
.end method

.method private static dumpDatabaseDirectory(Landroid/util/Printer;Ljava/io/File;Z)V
    .registers 12
    .param p0, "pw"    # Landroid/util/Printer;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "isSystem"    # Z

    .line 3377
    const-string v0, ""

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database files in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 3380
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_a3

    array-length v2, v1

    if-nez v2, :cond_30

    goto/16 :goto_a3

    .line 3384
    :cond_30
    new-instance v2, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 3386
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_3b
    if-ge v4, v2, :cond_a2

    aget-object v5, v1, v4

    .line 3387
    .local v5, "f":Ljava/io/File;
    if-eqz p2, :cond_66

    .line 3392
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3393
    .local v6, "name":Ljava/lang/String;
    const-string v7, ".db"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_66

    const-string v7, ".db-wal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_66

    .line 3394
    const-string v7, ".db-journal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_66

    .line 3395
    const-string v7, "-wipecheck"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_66

    .line 3396
    goto :goto_9f

    .line 3399
    .end local v6    # "name":Ljava/lang/String;
    :cond_66
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 3400
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/database/sqlite/SQLiteDatabase;->getFileTimestamps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 3401
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/database/sqlite/SQLiteUserDataRecovery;->isDbUdrRecovered(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_92

    const-string v7, " (R)"

    goto :goto_93

    :cond_92
    move-object v7, v0

    :goto_93
    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 3399
    const-string v7, "  %-40s %7db %s%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3386
    .end local v5    # "f":Ljava/io/File;
    :goto_9f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 3403
    :cond_a2
    return-void

    .line 3381
    :cond_a3
    :goto_a3
    const-string v0, "  [none]"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3382
    return-void
.end method

.method private exportDB(Ljava/lang/String;)V
    .registers 4
    .param p1, "attachedDB"    # Ljava/lang/String;

    .line 1638
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1639
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1641
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->exportDB(Ljava/lang/String;)V

    .line 1642
    monitor-exit v0

    .line 1643
    return-void

    .line 1642
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "tables"    # Ljava/lang/String;

    .line 1923
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1925
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1926
    .local v0, "spacepos":I
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1928
    .local v1, "commapos":I
    const/4 v2, 0x0

    if-lez v0, :cond_1e

    if-lt v0, v1, :cond_19

    if-gez v1, :cond_1e

    .line 1929
    :cond_19
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1930
    :cond_1e
    if-lez v1, :cond_29

    if-lt v1, v0, :cond_24

    if-gez v0, :cond_29

    .line 1931
    :cond_24
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1933
    :cond_29
    return-object p0

    .line 1935
    .end local v0    # "spacepos":I
    .end local v1    # "commapos":I
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid tables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getActiveDatabasePools()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteConnectionPool;",
            ">;"
        }
    .end annotation

    .line 3241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3242
    .local v0, "connectionPools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnectionPool;>;"
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 3243
    :try_start_8
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    .line 3244
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, v3, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2f

    .line 3245
    :try_start_21
    iget-object v5, v3, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v5, :cond_28

    .line 3246
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3248
    :cond_28
    monitor-exit v4

    .line 3249
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_12

    .line 3248
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2a
    move-exception v2

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    .end local v0    # "connectionPools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnectionPool;>;"
    :try_start_2c
    throw v2

    .line 3250
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0    # "connectionPools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnectionPool;>;"
    :cond_2d
    monitor-exit v1

    .line 3251
    return-object v0

    .line 3250
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_2f

    throw v2
.end method

.method private static getActiveDatabases()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    .line 3233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3234
    .local v0, "databases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDatabase;>;"
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 3235
    :try_start_8
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3236
    monitor-exit v1

    .line 3237
    return-object v0

    .line 3236
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v2
.end method

.method private getConnectionKey()[B
    .registers 3

    .line 3613
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3614
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_d

    .line 3615
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->getConnectionKey()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3617
    :cond_d
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPassword:[B

    monitor-exit v0

    return-object v1

    .line 3619
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private static getDbDirectories()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3369
    const/4 v0, 0x0

    .line 3370
    .local v0, "dbDirs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sDbDirectories:Ljava/util/HashSet;

    monitor-enter v1

    .line 3371
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Landroid/database/sqlite/SQLiteDatabase;->sDbDirectories:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 3372
    monitor-exit v1

    .line 3373
    return-object v0

    .line 3372
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v2
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .line 3215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3216
    .local v0, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    .line 3217
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->collectDbStats(Ljava/util/ArrayList;)V

    .line 3218
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_d

    .line 3219
    :cond_1d
    return-object v0
.end method

.method public static getFileTimestamps(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 4102
    :try_start_0
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-class v2, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 4101
    invoke-static {v0, v2, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 4103
    .local v0, "attr":Ljava/nio/file/attribute/BasicFileAttributes;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4104
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " atime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4105
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_46} :catch_47

    .line 4103
    return-object v1

    .line 4106
    .end local v0    # "attr":Ljava/nio/file/attribute/BasicFileAttributes;
    :catch_47
    move-exception v0

    .line 4107
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "[unable to obtain timestamp]"

    return-object v1
.end method

.method private static isMainThread()Z
    .registers 2

    .line 854
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 855
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private isReadOnlyLocked()Z
    .registers 3

    .line 2693
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method static synthetic lambda$dumpAll$0(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool;)I
    .registers 6
    .param p0, "a"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "b"    # Landroid/database/sqlite/SQLiteConnectionPool;

    .line 3308
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsCount()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsCount()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$dumpAll$1(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool;)I
    .registers 6
    .param p0, "a"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "b"    # Landroid/database/sqlite/SQLiteConnectionPool;

    .line 3334
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsTime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$dumpDatabaseDirectory$2(Ljava/io/File;Ljava/io/File;)I
    .registers 4
    .param p0, "a"    # Ljava/io/File;
    .param p1, "b"    # Ljava/io/File;

    .line 3384
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private open()V
    .registers 5

    .line 1538
    const-string v0, "SQLiteDatabase"

    :try_start_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1547
    goto :goto_21

    .line 1548
    :catch_6
    move-exception v1

    goto :goto_25

    .line 1539
    :catch_8
    move-exception v1

    .line 1540
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_9
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->isCorruptException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1541
    const-string v2, "Database corruption detected in open()"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1542
    move-object v2, v1

    check-cast v2, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 1543
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->openInner()V

    .line 1552
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :goto_21
    nop

    .line 1553
    return-void

    .line 1545
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_23
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v1
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_25} :catch_6

    .line 1549
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open database \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1550
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1551
    throw v1
.end method

.method public static openDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .param p0, "path"    # Ljava/io/File;
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 1159
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I

    .line 1144
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 20
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 1204
    new-instance v15, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v14}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V

    .line 1206
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase;->open()V

    .line 1207
    return-object v0
.end method

.method private static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 1165
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 20
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .param p2, "context"    # Landroid/content/Context;

    .line 1171
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "OpenParams cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1172
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmOpenFlags(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCursorFactory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmErrorHandler(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotCount(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmIdleConnectionTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J

    move-result-wide v9

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmIdleConnectionShrinkTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmJournalMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmSyncMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCacheSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v15

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmUserDataRecovery(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Z

    move-result v16

    move-object v2, v0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V

    .line 1178
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setContext(Landroid/content/Context;)V

    .line 1179
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase;->open()V

    .line 1180
    return-object v0
.end method

.method private openInner()V
    .registers 5

    .line 1595
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sDbDirectories:Ljava/util/HashSet;

    monitor-enter v0

    .line 1596
    :try_start_3
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sDbDirectories:Ljava/util/HashSet;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1597
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_53

    .line 1599
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1600
    nop

    .line 1601
    :try_start_1a
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->open(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 1602
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 1603
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_51

    .line 1607
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1608
    :try_start_2d
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    if-nez v1, :cond_38

    .line 1609
    new-instance v1, Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-direct {v1, p0}, Landroid/database/sqlite/SQLiteSdpHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    .line 1611
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_4c

    .line 1612
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSdpHelper;->registerListener()V

    .line 1616
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 1617
    :try_start_41
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    monitor-exit v1

    .line 1619
    return-void

    .line 1618
    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_49

    throw v0

    .line 1611
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1

    .line 1603
    :goto_4f
    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_51

    throw v0

    :catchall_51
    move-exception v0

    goto :goto_4f

    .line 1597
    :catchall_53
    move-exception v1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v1
.end method

.method private openInnerSecureDatabase([B)V
    .registers 6
    .param p1, "password"    # [B

    .line 1622
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sDbDirectories:Ljava/util/HashSet;

    monitor-enter v0

    .line 1623
    :try_start_3
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sDbDirectories:Ljava/util/HashSet;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1624
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_3c

    .line 1626
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1627
    nop

    .line 1628
    :try_start_1a
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {p0, v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->openSecure(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabaseConfiguration;[B)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 1629
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 1630
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_3a

    .line 1632
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1633
    :try_start_2d
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    monitor-exit v0

    .line 1635
    return-void

    .line 1634
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v1

    .line 1630
    :goto_38
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_3a

    throw v0

    :catchall_3a
    move-exception v0

    goto :goto_38

    .line 1624
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1215
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1223
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 1231
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openSecureDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$OpenParams;[BLandroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .param p2, "password"    # [B
    .param p3, "context"    # Landroid/content/Context;

    .line 1272
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;[BLandroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;
    .registers 24
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p4, "password"    # [B

    .line 1295
    move-object/from16 v0, p4

    const-string v1, "SQLiteDatabase"

    if-eqz v0, :cond_3b

    .line 1300
    array-length v2, v0

    if-eqz v2, :cond_2e

    .line 1305
    move/from16 v2, p2

    or-int/lit16 v15, v2, 0x300

    .line 1306
    .end local p2    # "flags":I
    .local v15, "flags":I
    new-instance v16, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v18, v15

    .end local v15    # "flags":I
    .local v18, "flags":I
    move/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V

    .line 1308
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase([B)V

    .line 1309
    return-object v1

    .line 1301
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v18    # "flags":I
    .restart local p2    # "flags":I
    :cond_2e
    move/from16 v2, p2

    const-string v3, "Could not open a secure database with empty password."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1296
    :cond_3b
    move/from16 v2, p2

    const-string v3, "Could not open a secure database with null password."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;[BLandroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 22
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .param p2, "password"    # [B
    .param p3, "context"    # Landroid/content/Context;

    .line 1246
    move-object/from16 v0, p2

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    const-string v2, "OpenParams cannot be null"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1247
    const-string v1, "SQLiteDatabase"

    if-eqz v0, :cond_61

    .line 1251
    array-length v2, v0

    if-eqz v2, :cond_54

    .line 1255
    new-instance v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmOpenFlags(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v2

    or-int/lit16 v2, v2, 0x100

    or-int/lit16 v5, v2, 0x200

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCursorFactory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmErrorHandler(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotCount(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmIdleConnectionTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J

    move-result-wide v10

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmIdleConnectionShrinkTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J

    move-result-wide v12

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmJournalMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmSyncMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCacheSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v16

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmUserDataRecovery(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Z

    move-result v17

    move-object v3, v1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v17}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V

    .line 1261
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setContext(Landroid/content/Context;)V

    .line 1262
    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase([B)V

    .line 1263
    return-object v1

    .line 1252
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_54
    move-object/from16 v2, p3

    const-string v3, "Could not open a secure database with empty password."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1248
    :cond_61
    move-object/from16 v2, p3

    const-string v3, "Could not open a secure database with null password."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private openSecureDatabase([B)V
    .registers 6
    .param p1, "password"    # [B

    .line 1558
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x0

    :try_start_3
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPassword:[B

    .line 1559
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openInnerSecureDatabase([B)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    .line 1569
    :goto_8
    :try_start_8
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPassword:[B
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_a} :catch_2f

    .line 1570
    goto :goto_27

    .line 1569
    :catchall_b
    move-exception v2

    goto :goto_2b

    .line 1560
    :catch_d
    move-exception v2

    .line 1561
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_e
    invoke-static {v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->isCorruptException(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1562
    const-string v3, "Database corruption detected in openSecureDatabase()"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1563
    move-object v3, v2

    check-cast v3, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 1564
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openInnerSecureDatabase([B)V

    goto :goto_8

    .line 1575
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :goto_27
    nop

    .line 1576
    return-void

    .line 1566
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_29
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "password":[B
    throw v2
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_b

    .line 1569
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "password":[B
    :goto_2b
    :try_start_2b
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPassword:[B

    .line 1570
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "password":[B
    throw v2
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 1571
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "password":[B
    :catch_2f
    move-exception v1

    .line 1572
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open database \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1573
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1574
    throw v1
.end method

.method public static printCorruptionDumpFiles(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 11
    .param p0, "printer"    # Landroid/util/Printer;
    .param p1, "dumpDir"    # Ljava/lang/String;

    .line 3271
    const-string v0, ""

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 3272
    return-void

    .line 3274
    :cond_e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 3275
    .local v1, "dumpFiles":[Ljava/io/File;
    if-nez v1, :cond_1a

    return-void

    .line 3277
    :cond_1a
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-ge v4, v2, :cond_5d

    aget-object v5, v1, v4

    .line 3278
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 3279
    :try_start_27
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v6
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_35} :catch_59

    .line 3280
    .local v6, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 3281
    .local v7, "line":Ljava/lang/String;
    :try_start_36
    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3282
    :goto_39
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    if-eqz v8, :cond_44

    .line 3283
    invoke-interface {p0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_39

    .line 3285
    :cond_44
    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_4d

    .line 3286
    .end local v7    # "line":Ljava/lang/String;
    if-eqz v6, :cond_4c

    :try_start_49
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_59

    .line 3288
    .end local v6    # "br":Ljava/io/BufferedReader;
    :cond_4c
    goto :goto_5a

    .line 3279
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catchall_4d
    move-exception v7

    if-eqz v6, :cond_58

    :try_start_50
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v8

    :try_start_55
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "dumpFiles":[Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local p0    # "printer":Landroid/util/Printer;
    .end local p1    # "dumpDir":Ljava/lang/String;
    :cond_58
    :goto_58
    throw v7
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_59} :catch_59

    .line 3286
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "dumpFiles":[Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local p0    # "printer":Landroid/util/Printer;
    .restart local p1    # "dumpDir":Ljava/lang/String;
    :catch_59
    move-exception v6

    .line 3277
    .end local v5    # "file":Ljava/io/File;
    :cond_5a
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 3291
    :cond_5d
    return-void
.end method

.method private releaseConnectionMemory()V
    .registers 3

    .line 643
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_12

    .line 645
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_12

    .line 646
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnectionMemory()V

    .line 649
    :cond_12
    monitor-exit v0

    .line 650
    return-void

    .line 649
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static releaseMemory()I
    .registers 2

    .line 659
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    .line 662
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v1}, Landroid/database/sqlite/SQLiteDatabase;->releaseConnectionMemory()V

    .line 663
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_8

    .line 664
    :cond_18
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->releaseMemory()I

    move-result v0

    return v0
.end method

.method public static renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .line 4119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4120
    .local v0, "fi":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4122
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 4123
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 4124
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4126
    :cond_45
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 4127
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 4128
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4130
    :cond_7d
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 4131
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 4132
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4134
    :cond_b5
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-se"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 4135
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 4136
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4138
    :cond_ed
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-udr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 4139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_125

    .line 4140
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4142
    :cond_125
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wipecheck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4143
    return-void
.end method

.method public static semBackupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .line 3040
    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 3044
    :cond_5
    invoke-static {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->nativeBackupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3041
    :cond_a
    :goto_a
    const-string v0, "SQLiteDatabase"

    const-string/jumbo v1, "path should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    const/4 v0, -0x1

    return v0
.end method

.method public static semBackupSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 5
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "password"    # [B

    .line 3062
    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    if-nez p2, :cond_7

    goto :goto_13

    .line 3066
    :cond_7
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3067
    :try_start_a
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->nativeBackupSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v1

    .line 3068
    .local v1, "rc":I
    monitor-exit v0

    return v1

    .line 3069
    .end local v1    # "rc":I
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_10

    throw v1

    .line 3063
    :cond_13
    :goto_13
    const-string v0, "SQLiteDatabase"

    const-string/jumbo v1, "path and password should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    const/4 v0, -0x1

    return v0
.end method

.method public static semDeleteAllDatabases(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 8
    .param p0, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 774
    const-string v0, "SQLiteDatabase"

    if-eqz p0, :cond_7d

    .line 777
    const/4 v1, 0x0

    .line 778
    .local v1, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 780
    .local v2, "path":Ljava/lang/String;
    :try_start_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 781
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 782
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 783
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 787
    :cond_19
    if-eqz v1, :cond_54

    .line 788
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 789
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@ Delete DB File : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 791
    nop

    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1f

    :cond_53
    goto :goto_72

    .line 794
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@ Failed to get attachedDbs, just delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_72} :catch_75

    .line 800
    :goto_72
    nop

    .line 801
    const/4 v0, 0x1

    return v0

    .line 797
    :catch_75
    move-exception v3

    .line 798
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "!@ semDeleteAllDatabase - Exception during deleting"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v0, 0x0

    return v0

    .line 775
    .end local v1    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SQLiteDatabase should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static semRestoreDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .line 3085
    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 3089
    :cond_5
    invoke-static {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->nativeRestoreDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3086
    :cond_a
    :goto_a
    const-string v0, "SQLiteDatabase"

    const-string/jumbo v1, "path should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    const/4 v0, -0x1

    return v0
.end method

.method public static semRestoreSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 5
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "password"    # [B

    .line 3108
    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    if-nez p2, :cond_7

    goto :goto_13

    .line 3112
    :cond_7
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3113
    :try_start_a
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->nativeRestoreSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v1

    .line 3114
    .local v1, "rc":I
    monitor-exit v0

    return v1

    .line 3115
    .end local v1    # "rc":I
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_10

    throw v1

    .line 3109
    :cond_13
    :goto_13
    const-string v0, "SQLiteDatabase"

    const-string/jumbo v1, "path and password should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    const/4 v0, -0x1

    return v0
.end method

.method private throwIfNotOpenLocked()V
    .registers 4

    .line 3628
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_5

    .line 3632
    return-void

    .line 3629
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wipeDetected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;

    .line 4089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB wipe detected: package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4090
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4093
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->getFileTimestamps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " checkfile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-wipecheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4094
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->getFileTimestamps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "STACKTRACE"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 4089
    const-string v2, "SQLiteDatabase"

    invoke-static {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->wtfAsSystemServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4096
    return-void
.end method

.method static wtfAsSystemServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stacktrace"    # Ljava/lang/Throwable;

    .line 4113
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4114
    invoke-static {p0, p1, p2}, Landroid/content/ContentResolver;->onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4115
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .registers 6
    .param p1, "throwIfUnsafe"    # Z
    .param p2, "sleepAfterYieldDelay"    # J

    .line 1108
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1110
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p1, v1}, Landroid/database/sqlite/SQLiteSession;->yieldTransaction(JZLandroid/os/CancellationSignal;)Z

    move-result v0
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_c} :catch_12
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 1115
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1110
    return v0

    .line 1115
    :catchall_10
    move-exception v0

    goto :goto_1c

    .line 1111
    :catch_12
    move-exception v0

    .line 1112
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 1113
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "throwIfUnsafe":Z
    .end local p2    # "sleepAfterYieldDelay":J
    throw v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_10

    .line 1115
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "throwIfUnsafe":Z
    .restart local p2    # "sleepAfterYieldDelay":J
    :goto_1c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1116
    throw v0
.end method


# virtual methods
.method public beginTransaction()V
    .registers 3

    .line 880
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 881
    return-void
.end method

.method public beginTransactionNonExclusive()V
    .registers 3

    .line 904
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 905
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 3
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .line 933
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 934
    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 3
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .line 962
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 963
    return-void
.end method

.method public changeDBPassword([B)I
    .registers 5
    .param p1, "newPassword"    # [B

    .line 1430
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1434
    if-eqz p1, :cond_3d

    .line 1439
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1441
    :try_start_b
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_e} :catch_2f
    .catchall {:try_start_b .. :try_end_e} :catchall_2d

    .line 1442
    :try_start_e
    const-string v1, "SQLiteDatabase"

    const-string v2, "changeDBPassword() start..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteSession;->changePassword([B)V

    .line 1444
    const-string v1, "SQLiteDatabase"

    const-string v2, "changeDBPassword() finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_2a

    .line 1446
    nop

    .line 1451
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1446
    const/4 v0, 0x0

    return v0

    .line 1445
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "newPassword":[B
    :try_start_2c
    throw v1
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2c .. :try_end_2d} :catch_2f
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 1451
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "newPassword":[B
    :catchall_2d
    move-exception v0

    goto :goto_39

    .line 1447
    :catch_2f
    move-exception v0

    .line 1448
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_30
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 1449
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "newPassword":[B
    throw v0
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2d

    .line 1451
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "newPassword":[B
    :goto_39
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1452
    throw v0

    .line 1435
    :cond_3d
    const-string v0, "SQLiteDatabase"

    const-string v1, "Could not use null password to a secure database."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not use null password to a secure database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1431
    :cond_4c
    const-string v0, "SQLiteDatabase"

    const-string v1, "changeDBPassword() DB is not open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DB is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeAndDiscardNonPrimaryConnections(ZZ)V
    .registers 5
    .param p1, "needDiscard"    # Z
    .param p2, "fixPoolSize"    # Z

    .line 3540
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3541
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 3542
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAndDiscardNonPrimaryConnections(ZZ)V

    .line 3543
    monitor-exit v0

    .line 3544
    return-void

    .line 3543
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .registers 4
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1954
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1956
    :try_start_3
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 1958
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1956
    return-object v0

    .line 1958
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1959
    throw v0
.end method

.method createSession()Landroid/database/sqlite/SQLiteSession;
    .registers 3

    .line 828
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 830
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 831
    .local v1, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 832
    new-instance v0, Landroid/database/sqlite/SQLiteSession;

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteSession;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;)V

    return-object v0

    .line 831
    .end local v1    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .line 2457
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2459
    :try_start_3
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2460
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_30

    :cond_2e
    const-string v2, ""

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_4c

    .line 2462
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v1
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_46

    .line 2464
    :try_start_3f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4c

    .line 2467
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2462
    return v1

    .line 2464
    :catchall_46
    move-exception v1

    :try_start_47
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2465
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "whereClause":Ljava/lang/String;
    .end local p3    # "whereArgs":[Ljava/lang/String;
    throw v1
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4c

    .line 2467
    .end local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "whereClause":Ljava/lang/String;
    .restart local p3    # "whereArgs":[Ljava/lang/String;
    :catchall_4c
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2468
    throw v0
.end method

.method public diagnoseError()Z
    .registers 7

    .line 3580
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->cleanCacheAndReOpen()V

    .line 3581
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getCorruptCode()I

    move-result v1

    const/16 v2, 0x40b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3582
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v2, "SQLiteDatabase"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "!@ Integrity Check for corrupted DB file gets OK as result"

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_23} :catch_25

    .line 3583
    return v3

    .line 3587
    :cond_24
    goto :goto_26

    .line 3585
    :catch_25
    move-exception v1

    .line 3588
    :goto_26
    return v0
.end method

.method public disableWriteAheadLogging()V
    .registers 6

    .line 2984
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2985
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2987
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2989
    .local v1, "oldFlags":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2991
    monitor-exit v0

    return-void

    .line 2996
    :cond_1a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2997
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_42

    .line 3000
    :try_start_2e
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 3001
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mBackgroundCheckpoint:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_38} :catch_3b
    .catchall {:try_start_2e .. :try_end_38} :catchall_42

    .line 3005
    nop

    .line 3006
    .end local v1    # "oldFlags":I
    :try_start_39
    monitor-exit v0

    .line 3007
    return-void

    .line 3002
    .restart local v1    # "oldFlags":I
    :catch_3b
    move-exception v2

    .line 3003
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 3004
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v2

    .line 3006
    .end local v1    # "oldFlags":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public doRecovery()Z
    .registers 7

    .line 4401
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    .line 4402
    .local v0, "isSecureDb":Z
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v2

    .line 4403
    .local v1, "isNoLocalized":Z
    :goto_12
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->udr:Landroid/database/sqlite/SQLiteUserDataRecovery;

    if-eqz v3, :cond_33

    .line 4404
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getConnectionKey()[B

    move-result-object v5

    goto :goto_23

    :cond_22
    move-object v5, v4

    .line 4405
    :goto_23
    if-eqz v1, :cond_26

    goto :goto_2e

    :cond_26
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4404
    :goto_2e
    invoke-virtual {v3, v2, v5, v4}, Landroid/database/sqlite/SQLiteUserDataRecovery;->doRecovery(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v2

    return v2

    .line 4407
    :cond_33
    return v2
.end method

.method public enableWriteAheadLogging()Z
    .registers 6

    .line 2933
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2934
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2936
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    .line 2938
    monitor-exit v0

    return v2

    .line 2941
    :cond_17
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    .line 2944
    monitor-exit v0

    return v3

    .line 2947
    :cond_20
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2948
    const-string v1, "SQLiteDatabase"

    const-string v2, "can\'t enable WAL for memory databases."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    monitor-exit v0

    return v3

    .line 2954
    :cond_31
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-eqz v1, :cond_63

    .line 2955
    const-string v1, "SQLiteDatabase"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 2956
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "this database: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " has attached databases. can\'t  enable WAL."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    :cond_61
    monitor-exit v0

    return v3

    .line 2962
    :cond_63
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_8a

    .line 2964
    :try_start_6c
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 2965
    new-instance v1, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mBackgroundCheckpoint:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_7a} :catch_7d
    .catchall {:try_start_6c .. :try_end_7a} :catchall_8a

    .line 2969
    nop

    .line 2970
    :try_start_7b
    monitor-exit v0

    .line 2971
    return v2

    .line 2966
    :catch_7d
    move-exception v1

    .line 2967
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2968
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v1

    .line 2970
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_8a
    move-exception v1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_7b .. :try_end_8c} :catchall_8a

    throw v1
.end method

.method public endTransaction()V
    .registers 3

    .line 988
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 990
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_b} :catch_12
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 995
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 996
    nop

    .line 997
    return-void

    .line 995
    :catchall_10
    move-exception v0

    goto :goto_1c

    .line 991
    :catch_12
    move-exception v0

    .line 992
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 993
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_10

    .line 995
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 996
    throw v0
.end method

.method public execPerConnectionSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1800
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    invoke-static {p2}, Landroid/database/DatabaseUtils;->deepCopyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 1806
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1807
    :try_start_a
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1809
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1810
    .local v1, "index":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_34

    .line 1812
    :try_start_20
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_27} :catch_2a
    .catchall {:try_start_20 .. :try_end_27} :catchall_34

    .line 1816
    nop

    .line 1817
    .end local v1    # "index":I
    :try_start_28
    monitor-exit v0

    .line 1818
    return-void

    .line 1813
    .restart local v1    # "index":I
    :catch_2a
    move-exception v2

    .line 1814
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1815
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    throw v2

    .line 1817
    .end local v1    # "index":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2574
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2575
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2627
    if-eqz p2, :cond_6

    .line 2630
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2631
    return-void

    .line 2628
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2635
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2637
    :try_start_3
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    .line 2638
    .local v0, "statementType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 2639
    const/4 v1, 0x0

    .line 2640
    .local v1, "disableWal":Z
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_52

    .line 2641
    :try_start_e
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-nez v3, :cond_1b

    .line 2642
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    .line 2643
    const/4 v1, 0x1

    .line 2644
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnectionPool;->disableIdleConnectionHandler()V

    .line 2646
    :cond_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_22

    .line 2647
    if-eqz v1, :cond_25

    .line 2648
    :try_start_1e
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_52

    goto :goto_25

    .line 2646
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_52

    .line 2652
    .end local v1    # "disableWal":Z
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    :cond_25
    :goto_25
    const/16 v1, 0x8

    :try_start_27
    new-instance v2, Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {v2, p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_48

    .line 2653
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v3
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_3e

    .line 2654
    :try_start_30
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_48

    .line 2657
    if-ne v0, v1, :cond_3a

    .line 2658
    :try_start_35
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptions()V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_52

    .line 2662
    :cond_3a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2653
    return v3

    .line 2652
    :catchall_3e
    move-exception v3

    :try_start_3f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v4

    :try_start_44
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "statementType":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    :goto_47
    throw v3
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_48

    .line 2657
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v0    # "statementType":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    :catchall_48
    move-exception v2

    if-ne v0, v1, :cond_50

    .line 2658
    :try_start_4b
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptions()V

    .line 2660
    :cond_50
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    throw v2
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_52

    .line 2662
    .end local v0    # "statementType":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    :catchall_52
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2663
    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 586
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 588
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 589
    nop

    .line 590
    return-void

    .line 588
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 589
    throw v0
.end method

.method public getAttachedDbs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 3413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3414
    .local v0, "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3415
    :try_start_8
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    const/4 v3, 0x0

    if-nez v2, :cond_f

    .line 3416
    monitor-exit v1

    return-object v3

    .line 3419
    :cond_f
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-nez v2, :cond_24

    .line 3429
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "main"

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3430
    monitor-exit v1

    return-object v0

    .line 3433
    :cond_24
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 3434
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_61

    .line 3438
    const/4 v1, 0x0

    .line 3440
    .local v1, "c":Landroid/database/Cursor;
    :try_start_29
    const-string/jumbo v2, "pragma database_list;"

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 3441
    :goto_31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 3447
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_54

    goto :goto_31

    .line 3450
    :cond_4a
    if-eqz v1, :cond_4f

    .line 3451
    :try_start_4c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5c

    .line 3454
    :cond_4f
    nop

    .line 3456
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3454
    return-object v0

    .line 3450
    :catchall_54
    move-exception v2

    if-eqz v1, :cond_5a

    .line 3451
    :try_start_57
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3453
    :cond_5a
    nop

    .end local v0    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v2
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_5c

    .line 3456
    .end local v1    # "c":Landroid/database/Cursor;
    .restart local v0    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_5c
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3457
    throw v1

    .line 3434
    :catchall_61
    move-exception v2

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v2
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 4373
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCorruptCode()I
    .registers 2

    .line 3125
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCorruptCode:I

    return v0
.end method

.method public getIntegrityErrorInfo()Ljava/lang/String;
    .registers 2

    .line 3532
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    return-object v0
.end method

.method getLabel()Ljava/lang/String;
    .registers 3

    .line 685
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 687
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public getMaxConnectionPoolSize()I
    .registers 3

    .line 4344
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4345
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->getMaxConnectionPoolSize()I

    move-result v1

    .line 4346
    .local v1, "poolSize":I
    monitor-exit v0

    .line 4347
    return v1

    .line 4346
    .end local v1    # "poolSize":I
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getMaximumSize()J
    .registers 5

    .line 1844
    const-string v0, "PRAGMA max_page_count;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1845
    .local v0, "pageCount":J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public getPageSize()J
    .registers 3

    .line 1873
    const-string v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 3

    .line 2735
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2736
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2737
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public getStatementCacheMissRate()D
    .registers 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2805
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2806
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2808
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->getStatementCacheMissRate()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2809
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getSyncedTables()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1125
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method getThreadDefaultConnectionFlags(Z)I
    .registers 4
    .param p1, "readOnly"    # Z

    .line 843
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    .line 844
    :cond_4
    const/4 v0, 0x2

    :goto_5
    nop

    .line 845
    .local v0, "flags":I
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 846
    or-int/lit8 v0, v0, 0x4

    .line 848
    :cond_e
    return v0
.end method

.method getThreadSession()Landroid/database/sqlite/SQLiteSession;
    .registers 2

    .line 823
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteSession;

    return-object v0
.end method

.method public getTotalPreparedStatements()I
    .registers 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3257
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 3259
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget v0, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatements:I

    return v0
.end method

.method public getTotalStatementCacheMisses()I
    .registers 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3265
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 3267
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget v0, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatementCacheMiss:I

    return v0
.end method

.method public getVersion()I
    .registers 3

    .line 1826
    const-string v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public hasAttachedDbsLocked()Z
    .registers 3

    .line 3205
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3206
    :try_start_3
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    monitor-exit v0

    return v1

    .line 3207
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public inTransaction()Z
    .registers 2

    .line 1023
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1025
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->hasTransaction()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 1027
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1025
    return v0

    .line 1027
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1028
    throw v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 2303
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_5} :catch_6

    return-wide v0

    .line 2304
    :catch_6
    move-exception v0

    .line 2305
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error inserting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteDatabase"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2306
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .registers 14
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "conflictAlgorithm"    # I

    .line 2402
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2404
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2405
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2406
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    const-string v1, " INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2408
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2411
    const/4 v1, 0x0

    .line 2412
    .local v1, "bindArgs":[Ljava/lang/Object;
    if-eqz p3, :cond_2f

    invoke-virtual {p3}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2413
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    .line 2414
    .local v2, "size":I
    :goto_30
    const/16 v3, 0x29

    if-lez v2, :cond_7c

    .line 2415
    new-array v4, v2, [Ljava/lang/Object;

    move-object v1, v4

    .line 2416
    const/4 v4, 0x0

    .line 2417
    .local v4, "i":I
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2418
    .local v6, "colName":Ljava/lang/String;
    if-lez v4, :cond_51

    const-string v7, ","

    goto :goto_53

    :cond_51
    const-string v7, ""

    :goto_53
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2419
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v4

    .line 2421
    .end local v6    # "colName":Ljava/lang/String;
    move v4, v7

    goto :goto_40

    .line 2422
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2423
    const-string v5, " VALUES ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2424
    const/4 v4, 0x0

    :goto_6c
    if-ge v4, v2, :cond_7b

    .line 2425
    if-lez v4, :cond_73

    const-string v5, ",?"

    goto :goto_75

    :cond_73
    const-string v5, "?"

    :goto_75
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2424
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 2427
    .end local v4    # "i":I
    :cond_7b
    goto :goto_85

    .line 2428
    :cond_7c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") VALUES (NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2430
    :goto_85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2432
    new-instance v3, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_a2

    .line 2434
    .local v3, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_91
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v4
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_9c

    .line 2436
    :try_start_95
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_a2

    .line 2439
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2434
    return-wide v4

    .line 2436
    :catchall_9c
    move-exception v4

    :try_start_9d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2437
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "nullColumnHack":Ljava/lang/String;
    .end local p3    # "initialValues":Landroid/content/ContentValues;
    .end local p4    # "conflictAlgorithm":I
    throw v4
    :try_end_a2
    .catchall {:try_start_9d .. :try_end_a2} :catchall_a2

    .line 2439
    .end local v0    # "sql":Ljava/lang/StringBuilder;
    .end local v1    # "bindArgs":[Ljava/lang/Object;
    .end local v2    # "size":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "nullColumnHack":Ljava/lang/String;
    .restart local p3    # "initialValues":Landroid/content/ContentValues;
    .restart local p4    # "conflictAlgorithm":I
    :catchall_a2
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2440
    throw v0
.end method

.method public isDatabaseIntegrityOk()Z
    .registers 2

    .line 3474
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v0

    return v0
.end method

.method public isDatabaseIntegrityOk(Z)Z
    .registers 13
    .param p1, "extraCheck"    # Z

    .line 3479
    const-string v0, " couldn\'t be retrieved. probably because the database is closed"

    const-string v1, "databaselist for: "

    const-string v2, "SQLiteDatabase"

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 3481
    const/4 v3, 0x0

    .line 3483
    .local v3, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v6

    move-object v3, v6

    .line 3484
    if-eqz v3, :cond_14

    .line 3494
    goto :goto_6e

    .line 3485
    :cond_14
    iget-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    new-array v7, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v6, v2, v7}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3487
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "extraCheck":Z
    throw v6
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_55} :catch_58
    .catchall {:try_start_c .. :try_end_55} :catchall_55

    .line 3522
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "extraCheck":Z
    :catchall_55
    move-exception v0

    goto/16 :goto_12f

    .line 3490
    .restart local v3    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_58
    move-exception v0

    .line 3492
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 3493
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v6, "main"

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3496
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_6e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_12a

    .line 3497
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;
    :try_end_7b
    .catchall {:try_start_59 .. :try_end_7b} :catchall_55

    .line 3498
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 3500
    .local v6, "prog":Landroid/database/sqlite/SQLiteStatement;
    const-string v7, "PRAGMA "

    if-nez p1, :cond_a1

    .line 3501
    :try_start_80
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".integrity_check(1);"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    move-object v6, v7

    goto :goto_c1

    .line 3503
    :cond_a1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".extra_integrity_check(1);"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    move-object v6, v7

    .line 3506
    :goto_c1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForIntegrityCheck()Ljava/lang/String;

    move-result-object v7

    .line 3507
    .local v7, "rslt":Ljava/lang/String;
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    .line 3508
    if-eqz v7, :cond_109

    const-string/jumbo v8, "ok"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_109

    .line 3510
    iput-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    .line 3511
    iget-object v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PRAGMA integrity_check on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " returned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v4

    invoke-virtual {v8, v2, v5}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ff
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_80 .. :try_end_ff} :catch_114
    .catchall {:try_start_80 .. :try_end_ff} :catchall_112

    .line 3512
    nop

    .line 3518
    if-eqz v6, :cond_105

    :try_start_102
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_55

    .line 3522
    :cond_105
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3512
    return v4

    .line 3518
    .end local v7    # "rslt":Ljava/lang/String;
    :cond_109
    if-eqz v6, :cond_10e

    :try_start_10b
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_55

    .line 3496
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "prog":Landroid/database/sqlite/SQLiteStatement;
    :cond_10e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6f

    .line 3518
    .restart local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "prog":Landroid/database/sqlite/SQLiteStatement;
    :catchall_112
    move-exception v2

    goto :goto_123

    .line 3514
    :catch_114
    move-exception v2

    .line 3515
    .local v2, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_115
    const-string v5, "false"

    iput-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;
    :try_end_119
    .catchall {:try_start_115 .. :try_end_119} :catchall_112

    .line 3516
    nop

    .line 3518
    if-eqz v6, :cond_11f

    :try_start_11c
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_55

    .line 3522
    :cond_11f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3516
    return v4

    .line 3518
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :goto_123
    if-eqz v6, :cond_128

    :try_start_125
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3519
    :cond_128
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "extraCheck":Z
    throw v2
    :try_end_12a
    .catchall {:try_start_125 .. :try_end_12a} :catchall_55

    .line 3522
    .end local v0    # "i":I
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "extraCheck":Z
    :cond_12a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3523
    nop

    .line 3524
    return v5

    .line 3522
    :goto_12f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3523
    throw v0
.end method

.method public isDbLockedByCurrentThread()Z
    .registers 2

    .line 1044
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1046
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->hasConnection()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 1048
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1046
    return v0

    .line 1048
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1049
    throw v0
.end method

.method public isDbLockedByOtherThreads()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1063
    const/4 v0, 0x0

    return v0
.end method

.method public isForcedReadOnlyDatabase()Z
    .registers 2

    .line 3187
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 3189
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->isForcedReadOnlyDatabase()Z

    move-result v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_b} :catch_14
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 3193
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3189
    return v0

    .line 3193
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3194
    throw v0

    .line 3190
    :catch_14
    move-exception v0

    .line 3193
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3194
    nop

    .line 3195
    const/4 v0, 0x0

    return v0
.end method

.method public isInMemoryDatabase()Z
    .registers 3

    .line 2703
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2704
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2705
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isOpen()Z
    .registers 3

    .line 2714
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2715
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 2716
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public isReadOnly()Z
    .registers 3

    .line 2687
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2688
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2689
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public isUdrEnabled()Z
    .registers 2

    .line 3200
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->udr:Landroid/database/sqlite/SQLiteUserDataRecovery;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .registers 4

    .line 3018
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3019
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 3021
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3023
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "deletedTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1898
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "foreignKey"    # Ljava/lang/String;
    .param p3, "updateTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1914
    return-void
.end method

.method public needUpgrade(I)Z
    .registers 3
    .param p1, "newVersion"    # I

    .line 2726
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected onAllReferencesReleased()V
    .registers 2

    .line 594
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->dispose(Z)V

    .line 595
    return-void
.end method

.method onCorruption()V
    .registers 9

    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "poolSize":I
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 703
    :try_start_4
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    if-eqz v2, :cond_11

    .line 704
    const-string v2, "SQLiteDatabase"

    const-string v3, "Database corruption is already handling."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    monitor-exit v1

    return-void

    .line 707
    :cond_11
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 708
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDump;->prepareDumpFile()V

    .line 709
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v4, "SQLiteDatabase"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDump;->getSQLiteDumpLogs(Z)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 711
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->dumpAllConnections(Landroid/database/sqlite/SQLiteDump;)V

    .line 712
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getMaxConnectionPoolSize()I

    move-result v3

    move v0, v3

    .line 713
    invoke-virtual {p0, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->closeAndDiscardNonPrimaryConnections(ZZ)V

    .line 715
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_b1

    .line 718
    :try_start_3f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v1

    const v3, 0x124fc

    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 719
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mDefaultErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v1, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 720
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    if-eqz v1, :cond_55

    .line 721
    invoke-interface {v1, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_55
    .catchall {:try_start_3f .. :try_end_55} :catchall_83

    .line 724
    :cond_55
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 725
    if-lez v0, :cond_65

    :try_start_5a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 726
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSize(I)V

    .line 728
    :cond_65
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v4, "SQLiteDatabase"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDump;->getSQLiteDumpLogs(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDump;->finishDump()V

    .line 730
    iput-boolean v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 731
    iput-boolean v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 732
    monitor-exit v1

    .line 733
    nop

    .line 734
    return-void

    .line 732
    :catchall_80
    move-exception v2

    monitor-exit v1
    :try_end_82
    .catchall {:try_start_5a .. :try_end_82} :catchall_80

    throw v2

    .line 724
    :catchall_83
    move-exception v1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 725
    if-lez v0, :cond_94

    :try_start_89
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 726
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSize(I)V

    .line 728
    :cond_94
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v5, "SQLiteDatabase"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteDump;->getSQLiteDumpLogs(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDump;->finishDump()V

    .line 730
    iput-boolean v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 731
    iput-boolean v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 732
    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_89 .. :try_end_ad} :catchall_ae

    .line 733
    throw v1

    .line 732
    :catchall_ae
    move-exception v1

    :try_start_af
    monitor-exit v3
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v1

    .line 715
    :catchall_b1
    move-exception v2

    :try_start_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v2
.end method

.method onCorruption(I)V
    .registers 11
    .param p1, "errorCode"    # I

    .line 3132
    const/4 v0, 0x0

    .line 3133
    .local v0, "poolSize":I
    const/4 v1, 0x0

    .line 3134
    .local v1, "waitCorruptionHandlingAndExit":Z
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3135
    :try_start_5
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_d

    .line 3136
    const/4 v1, 0x1

    goto :goto_38

    .line 3138
    :cond_d
    iput-boolean v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 3139
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDump;->prepareDumpFile()V

    .line 3140
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v6, "SQLiteDatabase"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteDump;->getSQLiteDumpLogs(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3141
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 3142
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteConnectionPool;->dumpAllConnections(Landroid/database/sqlite/SQLiteDump;)V

    .line 3143
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getMaxConnectionPoolSize()I

    move-result v3

    move v0, v3

    .line 3144
    invoke-virtual {p0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->closeAndDiscardNonPrimaryConnections(ZZ)V

    .line 3147
    :cond_38
    :goto_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_d4

    .line 3148
    if-eqz v1, :cond_60

    .line 3149
    const/4 v2, 0x0

    .line 3150
    .local v2, "tryCount":I
    const-string v3, "SQLiteDatabase"

    const-string v4, "Database corruption is already handling, wait."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    :cond_43
    const-wide/16 v3, 0x1f4

    :try_start_45
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_48} :catch_49

    .line 3156
    goto :goto_4d

    .line 3154
    :catch_49
    move-exception v3

    .line 3155
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3157
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_4d
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    if-nez v3, :cond_52

    .line 3158
    goto :goto_58

    .line 3160
    :cond_52
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x14

    if-lt v2, v3, :cond_43

    .line 3161
    :goto_58
    const-string v3, "SQLiteDatabase"

    const-string v4, "Exit onCorruption."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    return-void

    .line 3166
    .end local v2    # "tryCount":I
    :cond_60
    :try_start_60
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCorruptCode:I

    .line 3167
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mDefaultErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v2, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3168
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v2

    const v3, 0x124fc

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3169
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    if-eqz v2, :cond_78

    .line 3170
    invoke-interface {v2, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_78
    .catchall {:try_start_60 .. :try_end_78} :catchall_a6

    .line 3173
    :cond_78
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3174
    if-lez v0, :cond_88

    :try_start_7d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 3175
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSize(I)V

    .line 3177
    :cond_88
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 3178
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 3179
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v6, "SQLiteDatabase"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteDump;->getSQLiteDumpLogs(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3180
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDump;->finishDump()V

    .line 3181
    monitor-exit v2

    .line 3182
    nop

    .line 3183
    return-void

    .line 3181
    :catchall_a3
    move-exception v3

    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_7d .. :try_end_a5} :catchall_a3

    throw v3

    .line 3173
    :catchall_a6
    move-exception v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3174
    if-lez v0, :cond_b7

    :try_start_ac
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 3175
    iget-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSize(I)V

    .line 3177
    :cond_b7
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 3178
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 3179
    iget-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v7, "SQLiteDatabase"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteDump;->getSQLiteDumpLogs(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3180
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDump;->finishDump()V

    .line 3181
    monitor-exit v3
    :try_end_d0
    .catchall {:try_start_ac .. :try_end_d0} :catchall_d1

    .line 3182
    throw v2

    .line 3181
    :catchall_d1
    move-exception v2

    :try_start_d2
    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v2

    .line 3147
    :catchall_d4
    move-exception v3

    :try_start_d5
    monitor-exit v2
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw v3
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .line 2164
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .line 2202
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .line 1996
    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 23
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;
    .param p10, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2037
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 23
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;

    .line 2077
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 21
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;
    .param p11, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2120
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2122
    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    :try_start_f
    invoke-static/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2125
    .local v4, "sql":Ljava/lang/String;
    nop

    .line 2126
    invoke-static {p3}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2125
    move-object v2, p0

    move-object v3, p1

    move-object v5, p6

    move-object/from16 v7, p11

    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_25

    .line 2128
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2125
    return-object v0

    .line 2128
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_25
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2129
    throw v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 2217
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2235
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;

    .line 2253
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 8
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2274
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2276
    :try_start_3
    new-instance v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v0, p0, p2, p4, p5}, Landroid/database/sqlite/SQLiteDirectCursorDriver;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 2278
    .local v0, "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    if-eqz p1, :cond_c

    move-object v1, p1

    goto :goto_e

    :cond_c
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    :goto_e
    invoke-interface {v0, v1, p3}, Landroid/database/sqlite/SQLiteCursorDriver;->query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 2281
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2278
    return-object v1

    .line 2281
    .end local v0    # "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    :catchall_16
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2282
    throw v0
.end method

.method public reOpen()V
    .registers 3

    .line 3553
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3554
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 3555
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->reOpen()V

    .line 3556
    monitor-exit v0

    .line 3557
    return-void

    .line 3556
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public reopenReadWrite()V
    .registers 5

    .line 1515
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1516
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1518
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1519
    monitor-exit v0

    return-void

    .line 1523
    :cond_e
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 1524
    .local v1, "oldOpenFlags":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v3, v3, -0x2

    or-int/lit8 v3, v3, 0x0

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_2d

    .line 1527
    :try_start_1c
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_23} :catch_26
    .catchall {:try_start_1c .. :try_end_23} :catchall_2d

    .line 1531
    nop

    .line 1532
    .end local v1    # "oldOpenFlags":I
    :try_start_24
    monitor-exit v0

    .line 1533
    return-void

    .line 1528
    .restart local v1    # "oldOpenFlags":I
    :catch_26
    move-exception v2

    .line 1529
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 1530
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v2

    .line 1532
    .end local v1    # "oldOpenFlags":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .line 2350
    const/4 v0, 0x5

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_5} :catch_6

    return-wide v0

    .line 2352
    :catch_6
    move-exception v0

    .line 2353
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error inserting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteDatabase"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2354
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2377
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public semIsDatabaseCorrupted()Z
    .registers 3

    .line 755
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_3
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    monitor-exit v0

    return v1

    .line 757
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setAutomaticIndexEnabled(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 4184
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4185
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 4187
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    if-ne v1, p1, :cond_e

    .line 4188
    monitor-exit v0

    return-void

    .line 4191
    :cond_e
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean p1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_28

    .line 4193
    :try_start_12
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_19} :catch_1c
    .catchall {:try_start_12 .. :try_end_19} :catchall_28

    .line 4197
    nop

    .line 4198
    :try_start_1a
    monitor-exit v0

    .line 4199
    return-void

    .line 4194
    :catch_1c
    move-exception v1

    .line 4195
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    if-nez p1, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    iput-boolean v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    .line 4196
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "enable":Z
    throw v1

    .line 4198
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "enable":Z
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public setBusyTimeout(J)V
    .registers 8
    .param p1, "timeout"    # J

    .line 4262
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4263
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 4265
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_10

    .line 4266
    monitor-exit v0

    return-void

    .line 4269
    :cond_10
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    .line 4270
    .local v1, "busyTimeout":J
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-wide p1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_29

    .line 4272
    :try_start_18
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1f} :catch_22
    .catchall {:try_start_18 .. :try_end_1f} :catchall_29

    .line 4276
    nop

    .line 4277
    .end local v1    # "busyTimeout":J
    :try_start_20
    monitor-exit v0

    .line 4278
    return-void

    .line 4273
    .restart local v1    # "busyTimeout":J
    :catch_22
    move-exception v3

    .line 4274
    .local v3, "ex":Ljava/lang/RuntimeException;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-wide v1, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    .line 4275
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "timeout":J
    throw v3

    .line 4277
    .end local v1    # "busyTimeout":J
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "timeout":J
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setCacheSize(I)V
    .registers 6
    .param p1, "size"    # I

    .line 4300
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4301
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 4303
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    if-ne v1, p1, :cond_e

    .line 4304
    monitor-exit v0

    return-void

    .line 4307
    :cond_e
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    .line 4308
    .local v1, "cacheSize":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_27

    .line 4310
    :try_start_16
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1d} :catch_20
    .catchall {:try_start_16 .. :try_end_1d} :catchall_27

    .line 4314
    nop

    .line 4315
    .end local v1    # "cacheSize":I
    :try_start_1e
    monitor-exit v0

    .line 4316
    return-void

    .line 4311
    .restart local v1    # "cacheSize":I
    :catch_20
    move-exception v2

    .line 4312
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    .line 4313
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "size":I
    throw v2

    .line 4315
    .end local v1    # "cacheSize":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "size":I
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_27

    throw v1
.end method

.method public setCaseSensitiveLikeEnabled(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 4224
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4225
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 4227
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    if-ne v1, p1, :cond_e

    .line 4228
    monitor-exit v0

    return-void

    .line 4231
    :cond_e
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean p1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_28

    .line 4233
    :try_start_12
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_19} :catch_1c
    .catchall {:try_start_12 .. :try_end_19} :catchall_28

    .line 4237
    nop

    .line 4238
    :try_start_1a
    monitor-exit v0

    .line 4239
    return-void

    .line 4234
    :catch_1c
    move-exception v1

    .line 4235
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    if-nez p1, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    iput-boolean v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    .line 4236
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "enable":Z
    throw v1

    .line 4238
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "enable":Z
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public setCheckpointOnClose(Z)V
    .registers 4
    .param p1, "set"    # Z

    .line 3565
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3566
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 3567
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->setCheckpointOnClose(Z)V

    .line 3568
    monitor-exit v0

    .line 3569
    return-void

    .line 3568
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 4357
    if-nez p1, :cond_3

    .line 4358
    return-void

    .line 4361
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mContext:Landroid/content/Context;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a

    .line 4364
    goto :goto_e

    .line 4362
    :catch_a
    move-exception v0

    .line 4363
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mContext:Landroid/content/Context;

    .line 4365
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public setCustomAggregateFunction(Ljava/lang/String;Ljava/util/function/BinaryOperator;)V
    .registers 6
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BinaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1766
    .local p2, "aggregateFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1770
    :try_start_9
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1772
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_27

    .line 1774
    :try_start_13
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1a} :catch_1d
    .catchall {:try_start_13 .. :try_end_1a} :catchall_27

    .line 1778
    nop

    .line 1779
    :try_start_1b
    monitor-exit v0

    .line 1780
    return-void

    .line 1775
    :catch_1d
    move-exception v1

    .line 1776
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "functionName":Ljava/lang/String;
    .end local p2    # "aggregateFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/lang/String;>;"
    throw v1

    .line 1779
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "functionName":Ljava/lang/String;
    .restart local p2    # "aggregateFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/lang/String;>;"
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_27

    throw v1
.end method

.method public setCustomScalarFunction(Ljava/lang/String;Ljava/util/function/UnaryOperator;)V
    .registers 6
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1720
    .local p2, "scalarFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1724
    :try_start_9
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1726
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_27

    .line 1728
    :try_start_13
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1a} :catch_1d
    .catchall {:try_start_13 .. :try_end_1a} :catchall_27

    .line 1732
    nop

    .line 1733
    :try_start_1b
    monitor-exit v0

    .line 1734
    return-void

    .line 1729
    :catch_1d
    move-exception v1

    .line 1730
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "functionName":Ljava/lang/String;
    .end local p2    # "scalarFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/lang/String;>;"
    throw v1

    .line 1733
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "functionName":Ljava/lang/String;
    .restart local p2    # "scalarFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/lang/String;>;"
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_27

    throw v1
.end method

.method public setDatabaseIsCorrupted(Z)V
    .registers 4
    .param p1, "result"    # Z

    .line 738
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_3
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 740
    monitor-exit v0

    .line 741
    return-void

    .line 740
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 2842
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2843
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2845
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-ne v1, p1, :cond_e

    .line 2846
    monitor-exit v0

    return-void

    .line 2849
    :cond_e
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean p1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_28

    .line 2851
    :try_start_12
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_19} :catch_1c
    .catchall {:try_start_12 .. :try_end_19} :catchall_28

    .line 2855
    nop

    .line 2856
    :try_start_1a
    monitor-exit v0

    .line 2857
    return-void

    .line 2852
    :catch_1c
    move-exception v1

    .line 2853
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    if-nez p1, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    iput-boolean v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 2854
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "enable":Z
    throw v1

    .line 2856
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "enable":Z
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2751
    if-eqz p1, :cond_24

    .line 2755
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2756
    :try_start_5
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2758
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 2759
    .local v1, "oldLocale":Ljava/util/Locale;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_21

    .line 2761
    :try_start_10
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_17} :catch_1a
    .catchall {:try_start_10 .. :try_end_17} :catchall_21

    .line 2765
    nop

    .line 2766
    .end local v1    # "oldLocale":Ljava/util/Locale;
    :try_start_18
    monitor-exit v0

    .line 2767
    return-void

    .line 2762
    .restart local v1    # "oldLocale":Ljava/util/Locale;
    :catch_1a
    move-exception v2

    .line 2763
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 2764
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "locale":Ljava/util/Locale;
    throw v2

    .line 2766
    .end local v1    # "oldLocale":Ljava/util/Locale;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "locale":Ljava/util/Locale;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw v1

    .line 2752
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locale must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLockingEnabled(Z)V
    .registers 2
    .param p1, "lockingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 678
    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .registers 6
    .param p1, "cacheSize"    # I

    .line 2783
    const/16 v0, 0x64

    if-gt p1, v0, :cond_28

    if-ltz p1, :cond_28

    .line 2788
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2789
    :try_start_9
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2791
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 2792
    .local v1, "oldMaxSqlCacheSize":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_25

    .line 2794
    :try_start_14
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1b} :catch_1e
    .catchall {:try_start_14 .. :try_end_1b} :catchall_25

    .line 2798
    nop

    .line 2799
    .end local v1    # "oldMaxSqlCacheSize":I
    :try_start_1c
    monitor-exit v0

    .line 2800
    return-void

    .line 2795
    .restart local v1    # "oldMaxSqlCacheSize":I
    :catch_1e
    move-exception v2

    .line 2796
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 2797
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "cacheSize":I
    throw v2

    .line 2799
    .end local v1    # "oldMaxSqlCacheSize":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "cacheSize":I
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_25

    throw v1

    .line 2784
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expected value between 0 and 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaximumSize(J)J
    .registers 11
    .param p1, "numBytes"    # J

    .line 1856
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v0

    .line 1857
    .local v0, "pageSize":J
    div-long v2, p1, v0

    .line 1859
    .local v2, "numPages":J
    rem-long v4, p1, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    .line 1860
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 1862
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA max_page_count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 1864
    .local v4, "newPageCount":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public setPageSize(J)V
    .registers 5
    .param p1, "numBytes"    # J

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1885
    return-void
.end method

.method public setReserveSpace()V
    .registers 5

    .line 4382
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4383
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isMediaStoreDb:Z

    if-nez v1, :cond_d

    .line 4384
    monitor-exit v0

    return-void

    .line 4386
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_28

    .line 4388
    :try_start_e
    const-string v0, "PRAGMA wal_reserve_space=10"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 4391
    .local v0, "reservedSpace":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_22

    .line 4392
    const-string v2, "SQLiteDatabase"

    const-string v3, "Failed to set wal reserve size"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_22} :catch_23

    .line 4396
    .end local v0    # "reservedSpace":J
    :cond_22
    goto :goto_27

    .line 4394
    :catch_23
    move-exception v0

    .line 4395
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4397
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    return-void

    .line 4386
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public setSdpDatabase()V
    .registers 3

    .line 1585
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1586
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    if-nez v1, :cond_e

    .line 1587
    new-instance v1, Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-direct {v1, p0}, Landroid/database/sqlite/SQLiteSdpHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    .line 1589
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    .line 1590
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSdpHelper;->registerListener()V

    .line 1591
    return-void

    .line 1589
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public setTransactionSuccessful()V
    .registers 2

    .line 1009
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1011
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    .line 1013
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1014
    nop

    .line 1015
    return-void

    .line 1013
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1014
    throw v0
.end method

.method public setVersion(I)V
    .registers 4
    .param p1, "version"    # I

    .line 1835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1836
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDatabase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryWalBackgroundCheckpoint()V
    .registers 5

    .line 4321
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mBackgroundCheckpoint:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    if-nez v0, :cond_5

    .line 4322
    return-void

    .line 4324
    :cond_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_3b

    .line 4325
    :try_start_8
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->isConnectionAcquired()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_36

    .line 4328
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_38

    .line 4329
    :try_start_14
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mBackgroundCheckpoint:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;->tryBackgroundCheckpoint(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_35} :catch_3b

    .line 4332
    goto :goto_3c

    .line 4326
    :cond_36
    :goto_36
    :try_start_36
    monitor-exit v0

    return-void

    .line 4328
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3a
    throw v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3b} :catch_3b

    .line 4330
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catch_3b
    move-exception v0

    .line 4333
    :goto_3c
    return-void
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .line 2485
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 15
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "conflictAlgorithm"    # I

    .line 2504
    if-eqz p2, :cond_9e

    invoke-virtual {p2}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 2508
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2510
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2511
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2512
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v1, v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    .line 2518
    .local v1, "setValuesSize":I
    if-nez p4, :cond_2e

    move v2, v1

    goto :goto_30

    :cond_2e
    array-length v2, p4

    add-int/2addr v2, v1

    .line 2519
    .local v2, "bindArgsSize":I
    :goto_30
    new-array v3, v2, [Ljava/lang/Object;

    .line 2520
    .local v3, "bindArgs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 2521
    .local v4, "i":I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2522
    .local v6, "colName":Ljava/lang/String;
    if-lez v4, :cond_4c

    const-string v7, ","

    goto :goto_4e

    :cond_4c
    const-string v7, ""

    :goto_4e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v4

    .line 2525
    const-string v4, "=?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2526
    move v4, v7

    .end local v6    # "colName":Ljava/lang/String;
    goto :goto_3b

    .line 2527
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_63
    if-eqz p4, :cond_71

    .line 2528
    move v4, v1

    :goto_66
    if-ge v4, v2, :cond_71

    .line 2529
    sub-int v5, v4, v1

    aget-object v5, p4, v5

    aput-object v5, v3, v4

    .line 2528
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 2532
    :cond_71
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 2533
    const-string v5, " WHERE "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    :cond_7f
    new-instance v5, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_88
    .catchall {:try_start_b .. :try_end_88} :catchall_99

    .line 2539
    .local v5, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_88
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v6
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_93

    .line 2541
    :try_start_8c
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_99

    .line 2544
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2539
    return v6

    .line 2541
    :catchall_93
    move-exception v6

    :try_start_94
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2542
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "values":Landroid/content/ContentValues;
    .end local p3    # "whereClause":Ljava/lang/String;
    .end local p4    # "whereArgs":[Ljava/lang/String;
    .end local p5    # "conflictAlgorithm":I
    throw v6
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_99

    .line 2544
    .end local v0    # "sql":Ljava/lang/StringBuilder;
    .end local v1    # "setValuesSize":I
    .end local v2    # "bindArgsSize":I
    .end local v3    # "bindArgs":[Ljava/lang/Object;
    .end local v4    # "i":I
    .end local v5    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "values":Landroid/content/ContentValues;
    .restart local p3    # "whereClause":Ljava/lang/String;
    .restart local p4    # "whereArgs":[Ljava/lang/String;
    .restart local p5    # "conflictAlgorithm":I
    :catchall_99
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2545
    throw v0

    .line 2505
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .registers 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2677
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    .line 2678
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v1

    .line 2677
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    .line 2679
    return-void
.end method

.method public yieldIfContended()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1076
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .registers 4

    .line 1089
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .registers 4
    .param p1, "sleepAfterYieldDelay"    # J

    .line 1104
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
