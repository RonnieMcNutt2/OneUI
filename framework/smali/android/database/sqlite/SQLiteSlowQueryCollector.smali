.class public final Landroid/database/sqlite/SQLiteSlowQueryCollector;
.super Ljava/lang/Thread;
.source "SQLiteSlowQueryCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    }
.end annotation


# static fields
.field private static final COLLECT_SCHEMA_VERSION:I = 0x2

.field public static final COLLECT_THRESHOLD:I = 0xbb8

.field private static final COMPONENT_NAME:Ljava/lang/String; = "Database"

.field private static final FEATURE_NAME:Ljava/lang/String; = "SQUE"

.field private static final MAX_MESSAGE_COUNT:I = 0x4

.field private static final MAX_MESSAGE_SIZE:I = 0x3fe

.field private static final MAX_NAME_SIZE:I = 0xff

.field private static final MAX_QUERY_COUNT:I = 0xa

.field private static final SAMPLING_THRESHOLD:I = 0xa4cb80

.field private static final SLEEP_TIME_ADJUST_VALUE:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "SQLiteSlowQueryCollector"

.field private static sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLastCollectTime:J

.field private static sSqlHashList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sStartPoint:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNow:J

.field private mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

.field private mPid:I

.field private mPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private mSqlHash:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sLastCollectTime:J

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sStartPoint:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sSqlHashList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteConnectionPool;JILandroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p3, "now"    # J
    .param p5, "pid"    # I
    .param p6, "params"    # Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    .line 68
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 71
    iput-wide p3, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mNow:J

    .line 72
    iput p5, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPid:I

    .line 73
    iput-object p6, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    .line 74
    iget-object v0, p6, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSqlHash:I

    .line 75
    return-void
.end method

.method private checkDeviceStatus()Z
    .registers 12

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "send":Z
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 426
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_40

    .line 427
    .local v2, "lastWakeupAndSleepTime":[J
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    .line 428
    .local v3, "lastWakeupTime":J
    const/4 v5, 0x1

    aget-wide v5, v2, v5

    .line 431
    .local v5, "lastSleepTime":J
    cmp-long v7, v3, v5

    if-gtz v7, :cond_36

    .line 435
    const-wide/16 v7, 0x1f4

    add-long/2addr v5, v7

    .line 436
    iget-object v7, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v7, v7, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mStartTime:J

    cmp-long v7, v7, v3

    if-lez v7, :cond_3f

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v7, v7, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mStartTime:J

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v9, v9, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mLat:J

    add-long/2addr v7, v9

    cmp-long v7, v7, v5

    if-gez v7, :cond_3f

    .line 437
    const/4 v0, 0x1

    goto :goto_3f

    .line 439
    :cond_36
    iget-object v7, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v7, v7, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mStartTime:J

    cmp-long v7, v7, v3

    if-lez v7, :cond_3f

    .line 440
    const/4 v0, 0x1

    .line 442
    :cond_3f
    :goto_3f
    return v0

    :array_40
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private static checkSql(Ljava/lang/String;)Z
    .registers 4
    .param p0, "sql"    # Ljava/lang/String;

    .line 406
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    .line 407
    .local v0, "n":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    const/16 v2, 0x63

    if-ne v0, v2, :cond_f

    goto :goto_11

    .line 412
    :cond_f
    const/4 v1, 0x0

    return v1

    .line 410
    :cond_11
    :goto_11
    return v1
.end method

.method private getFileSize(Ljava/lang/String;)J
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 391
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1
.end method

.method private static isNeedCollect(JLandroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;)Z
    .registers 14
    .param p0, "now"    # J
    .param p2, "params"    # Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    .line 131
    iget-object v0, p2, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 132
    .local v0, "sqlLength":I
    const/16 v1, 0xff8

    const-string v2, ")"

    const-string v3, " ("

    const-string/jumbo v4, "ms-"

    const-string v5, "SQLiteSlowQueryCollector"

    const/4 v6, 0x0

    if-le v0, v1, :cond_53

    .line 134
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-eqz v1, :cond_52

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too long to send a sql, just leave a log. ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " ), "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v7, p2, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mLat:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mDbn:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_52
    return v6

    .line 144
    :cond_53
    iget-object v1, p2, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->checkSql(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 145
    return v6

    .line 148
    :cond_5c
    sget-wide v7, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sLastCollectTime:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_a2

    sub-long v7, p0, v7

    const-wide/32 v9, 0xa4cb80

    cmp-long v1, v7, v9

    if-gez v1, :cond_a2

    .line 149
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-eqz v1, :cond_a1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could send a sql during 3 hours. "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v7, p2, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mLat:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mDbn:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_a1
    return v6

    .line 157
    :cond_a2
    sget v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sStartPoint:I

    const/4 v2, 0x1

    if-lez v1, :cond_ad

    sub-int/2addr v1, v2

    sput v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sStartPoint:I

    if-lez v1, :cond_ad

    .line 158
    return v6

    .line 161
    :cond_ad
    return v2
.end method

.method private queryCollectorPhaseOne()Z
    .registers 15

    .line 201
    const-string v0, "PRAGMA page_count;"

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 202
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    if-eqz v1, :cond_1a4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_1a4

    .line 207
    :cond_13
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    sget-object v4, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sSqlHashList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 208
    iget v4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSqlHash:I

    sget-object v5, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sSqlHashList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_2d

    .line 210
    return v2

    .line 207
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 214
    .end local v3    # "i":I
    :cond_30
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->checkDeviceStatus()Z

    move-result v3

    if-nez v3, :cond_37

    .line 215
    return v2

    .line 223
    :cond_37
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "databaseFilePath":Ljava/lang/String;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->getFileSize(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mDbs:J

    .line 225
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 226
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-wal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->getFileSize(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mWas:J

    .line 229
    :cond_64
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "processName":Ljava/lang/String;
    move-object v5, v4

    .line 231
    .local v5, "clientName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 232
    .local v6, "pid":I
    iget v7, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPid:I

    if-eq v6, v7, :cond_9d

    .line 233
    iget-object v7, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 234
    .local v7, "am":Landroid/app/ActivityManager;
    invoke-virtual {v7}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 235
    .local v8, "processInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v8, :cond_9d

    .line 236
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_87
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 237
    .local v10, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v12, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPid:I

    if-ne v11, v12, :cond_9c

    .line 238
    iget-object v5, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 239
    goto :goto_9d

    .line 241
    .end local v10    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_9c
    goto :goto_87

    .line 245
    .end local v7    # "am":Landroid/app/ActivityManager;
    .end local v8    # "processInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_9d
    :goto_9d
    iget-object v7, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xff

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v4, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mMpn:Ljava/lang/String;

    .line 246
    iget-object v7, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mCpn:Ljava/lang/String;

    .line 247
    const/4 v7, 0x0

    .line 249
    .local v7, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_c0
    iget-object v8, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v0, v10, v11}, Landroid/database/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v8

    move-object v7, v8

    .line 250
    iget-object v8, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    invoke-virtual {v7, v0, v11, v11}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mPgc:J

    .line 251
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    const-string v8, "PRAGMA user_version;"

    invoke-virtual {v7, v8, v11, v11}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v12

    iput-wide v12, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mVer:J

    .line 252
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    const-string v8, "SELECT sqlite3_hide_consts(?);"

    new-array v12, v10, [Ljava/lang/String;

    iget-object v13, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    aput-object v13, v12, v2

    invoke-virtual {v7, v8, v12, v11}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mHiddenSql:Ljava/lang/String;
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_eb} :catch_14c
    .catchall {:try_start_c0 .. :try_end_eb} :catchall_14a

    .line 261
    if-eqz v7, :cond_f2

    .line 262
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V

    .line 266
    :cond_f2
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mHiddenSql:Ljava/lang/String;

    if-nez v0, :cond_f9

    .line 267
    return v2

    .line 269
    :cond_f9
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mHiddenSql:Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11c

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v12, v11, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mHiddenSql:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mHiddenSql:Ljava/lang/String;

    .line 273
    :cond_11c
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mDbn:Ljava/lang/String;

    .line 274
    .local v0, "databaseName":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_131

    .line 275
    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v10

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_131
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, "hashedDBName":Ljava/lang/String;
    iget-object v11, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mHashedDbn:Ljava/lang/String;

    .line 280
    return v10

    .line 261
    .end local v0    # "databaseName":Ljava/lang/String;
    .end local v8    # "hashedDBName":Ljava/lang/String;
    :catchall_14a
    move-exception v0

    goto :goto_19c

    .line 253
    :catch_14c
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    :try_start_14d
    sget-boolean v8, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-eqz v8, :cond_193

    .line 255
    const-string v8, "SQLiteSlowQueryCollector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to execute PRAGMA statements. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v10, v10, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mLat:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v10, v10, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mDbn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v10, v10, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_193
    .catchall {:try_start_14d .. :try_end_193} :catchall_14a

    .line 259
    :cond_193
    nop

    .line 261
    if-eqz v7, :cond_19b

    .line 262
    iget-object v8, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V

    .line 259
    :cond_19b
    return v2

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19c
    if-eqz v7, :cond_1a3

    .line 262
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v2, v7}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V

    .line 264
    :cond_1a3
    throw v0

    .line 203
    .end local v3    # "databaseFilePath":Ljava/lang/String;
    .end local v4    # "processName":Ljava/lang/String;
    .end local v5    # "clientName":Ljava/lang/String;
    .end local v6    # "pid":I
    .end local v7    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_1a4
    :goto_1a4
    return v2
.end method

.method private queryCollectorPhaseThree()Z
    .registers 2

    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method private queryCollectorPhaseTwo()Z
    .registers 14

    .line 289
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mPackets:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 292
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\"QCV\":2,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"MPN\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mMpn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"CPN\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mCpn:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"DBN\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mHashedDbn:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"DBS\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v3, v3, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mDbs:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"WAS\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v4, v4, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mWas:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"PGC\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v4, v4, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mPgc:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"VER\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v4, v4, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mVer:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"LAT\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v4, v4, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mLat:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"CRW\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v4, v4, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mCurrentRows:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"TRW\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v4, v4, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mTotalRows:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mHiddenSql:Ljava/lang/String;

    .line 305
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 307
    .local v3, "sqlLength":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int v4, v4, 0x3fe

    const-string v5, "\"SQL\":\"\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    const-string v5, "\""

    if-le v4, v3, :cond_18a

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"SQL\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mPackets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_268

    .line 326
    :cond_18a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\"PQM\":\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSqlHash:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mNow:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "magic":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int v7, v7, 0x3fe

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    const-string v8, "-0\",\"SQL\":\"\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    .line 329
    .local v7, "bufSize":I
    mul-int/lit8 v8, v7, 0x4

    if-ge v8, v3, :cond_21c

    .line 331
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-eqz v2, :cond_21a

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too long to send a sql, just leave a log. ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ), "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v5, v5, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mLat:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "ms-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mDbn:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "SQLiteSlowQueryCollector"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_21a
    const/4 v2, 0x0

    return v2

    .line 338
    :cond_21c
    const/4 v8, 0x0

    .line 339
    .local v8, "index":I
    const/4 v9, 0x0

    .line 340
    .local v9, "partial":I
    :goto_21e
    if-ge v8, v3, :cond_268

    if-ge v9, v2, :cond_268

    .line 342
    add-int v10, v8, v7

    if-ge v10, v3, :cond_22d

    .line 343
    add-int v10, v8, v7

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .local v10, "subSql":Ljava/lang/String;
    goto :goto_231

    .line 345
    .end local v10    # "subSql":Ljava/lang/String;
    :cond_22d
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 347
    .restart local v10    # "subSql":Ljava/lang/String;
    :goto_231
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\",\"SQL\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 350
    .local v11, "msg":Ljava/lang/String;
    iget-object v12, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v12, v12, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mPackets:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/2addr v8, v7

    .line 353
    nop

    .end local v10    # "subSql":Ljava/lang/String;
    .end local v11    # "msg":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 354
    goto :goto_21e

    .line 356
    .end local v4    # "magic":Ljava/lang/String;
    .end local v7    # "bufSize":I
    .end local v8    # "index":I
    .end local v9    # "partial":I
    :cond_268
    :goto_268
    const/4 v2, 0x1

    return v2
.end method

.method private queryCollectorPostProcess()V
    .registers 3

    .line 377
    sget-object v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sSqlHashList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_10

    .line 378
    sget-object v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sSqlHashList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 380
    :cond_10
    sget-object v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sSqlHashList:Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSqlHash:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mNow:J

    sput-wide v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sLastCollectTime:J

    .line 382
    return-void
.end method

.method public static sendSlowQueryLog(Landroid/database/sqlite/SQLiteConnectionPool;ILandroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;)V
    .registers 20
    .param p0, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "pid"    # I
    .param p2, "params"    # Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    .line 81
    move-object/from16 v8, p2

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 82
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_9

    .line 83
    return-void

    .line 86
    :cond_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getContext()Landroid/content/Context;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_bf

    move-object v9, v1

    .line 87
    .local v9, "context":Landroid/content/Context;
    const-string v10, ")"

    const-string v11, " ("

    const-string/jumbo v12, "ms-"

    const-string v13, "SQLiteSlowQueryCollector"

    if-nez v9, :cond_4e

    .line 88
    :try_start_19
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-eqz v1, :cond_4d

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not send a sql without the context. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mLat:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mDbn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_4d
    return-void

    .line 95
    :cond_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v14, v1

    .line 96
    .local v14, "now":J
    invoke-static {v14, v15, v8}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->isNeedCollect(JLandroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;)Z

    move-result v1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_57} :catch_bf

    if-nez v1, :cond_5a

    .line 97
    return-void

    .line 101
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_5a
    nop

    .line 103
    sget-object v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_66

    .line 104
    return-void

    .line 108
    :cond_66
    :try_start_66
    new-instance v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_68} :catch_7d

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, p0

    move-wide v4, v14

    move/from16 v6, p1

    move-object/from16 v16, v9

    move v9, v7

    .end local v9    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    move-object/from16 v7, p2

    :try_start_74
    invoke-direct/range {v1 .. v7}, Landroid/database/sqlite/SQLiteSlowQueryCollector;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteConnectionPool;JILandroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;)V

    .line 110
    .local v0, "collector":Landroid/database/sqlite/SQLiteSlowQueryCollector;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->start()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7a} :catch_7b

    .line 119
    .end local v0    # "collector":Landroid/database/sqlite/SQLiteSlowQueryCollector;
    goto :goto_8a

    .line 111
    :catch_7b
    move-exception v0

    goto :goto_81

    .end local v16    # "context":Landroid/content/Context;
    .restart local v9    # "context":Landroid/content/Context;
    :catch_7d
    move-exception v0

    move-object/from16 v16, v9

    move v9, v7

    .line 112
    .end local v9    # "context":Landroid/content/Context;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "context":Landroid/content/Context;
    :goto_81
    sget-object v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-nez v1, :cond_8b

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8a
    return-void

    .line 114
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_8b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start a thread for a sql. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mLat:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mDbn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    throw v0

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "now":J
    .end local v16    # "context":Landroid/content/Context;
    :catch_bf
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Exception;
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->queryCollectorPhaseOne()Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_32
    .catchall {:try_start_2 .. :try_end_6} :catchall_30

    if-nez v2, :cond_10

    .line 190
    iput-object v1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    .line 191
    sget-object v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 171
    return-void

    .line 174
    :cond_10
    :try_start_10
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->queryCollectorPhaseTwo()Z

    move-result v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_32
    .catchall {:try_start_10 .. :try_end_14} :catchall_30

    if-nez v2, :cond_1e

    .line 190
    iput-object v1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    .line 191
    sget-object v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 175
    return-void

    .line 178
    :cond_1e
    :try_start_1e
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->queryCollectorPhaseThree()Z

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_32
    .catchall {:try_start_1e .. :try_end_22} :catchall_30

    if-nez v2, :cond_2c

    .line 190
    iput-object v1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    .line 191
    sget-object v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 179
    return-void

    .line 182
    :cond_2c
    :try_start_2c
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->queryCollectorPostProcess()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_32
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_79

    .line 190
    :catchall_30
    move-exception v2

    goto :goto_82

    .line 183
    :catch_32
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    :try_start_33
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-eqz v3, :cond_79

    .line 185
    const-string v3, "SQLiteSlowQueryCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send a sql. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-wide v5, v5, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mLat:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mDbn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mParams:Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_33 .. :try_end_79} :catchall_30

    .line 190
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_79
    :goto_79
    iput-object v1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    .line 191
    sget-object v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    nop

    .line 193
    return-void

    .line 190
    :goto_82
    iput-object v1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    .line 191
    sget-object v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    throw v2
.end method
