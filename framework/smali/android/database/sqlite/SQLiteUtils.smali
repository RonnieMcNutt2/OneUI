.class public Landroid/database/sqlite/SQLiteUtils;
.super Ljava/lang/Object;
.source "SQLiteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteUtils$ReportRunnable;
    }
.end annotation


# static fields
.field public static final DB_SIZE_CHECK_PERIOD:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SQLiteUtils"

.field private static final hexArray:[C

.field private static final mLock:Ljava/lang/Object;

.field private static volatile sIssueTrackerOn:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const/4 v0, -0x1

    sput v0, Landroid/database/sqlite/SQLiteUtils;->sIssueTrackerOn:I

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteUtils;->mLock:Ljava/lang/Object;

    .line 143
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteUtils;->hexArray:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAbnormalDBSize(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 14
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "dbPath"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_7

    .line 116
    return-void

    .line 120
    :cond_7
    :try_start_7
    invoke-static {p1}, Landroid/database/sqlite/SQLiteUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_b5

    .line 121
    .local v1, "dbSize":J
    const-wide/32 v3, 0x3e800000

    cmp-long v3, v1, v3

    const-string v4, "MB"

    const-string v5, "\' size: "

    const-string v6, "Abnormal database file size has been detected from \'"

    const-string v7, "SQLiteUtils"

    const-wide/16 v8, 0x400

    if-lez v3, :cond_64

    .line 122
    :try_start_1c
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-1GB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, "mark":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_b3

    .line 124
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long v10, v1, v8

    div-long/2addr v10, v8

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteUtils;->reportAbnormalDBSize(Landroid/content/Context;J)V

    .line 127
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    goto :goto_b3

    .line 129
    .end local v3    # "mark":Ljava/io/File;
    :cond_64
    const-wide/32 v10, 0x1f400000

    cmp-long v3, v1, v10

    if-lez v3, :cond_b3

    .line 130
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-500MB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v3    # "mark":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_b4

    .line 132
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long v10, v1, v8

    div-long/2addr v10, v8

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteUtils;->reportAbnormalDBSize(Landroid/content/Context;J)V

    .line 135
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_b2} :catch_b5

    goto :goto_b4

    .line 129
    .end local v3    # "mark":Ljava/io/File;
    :cond_b3
    :goto_b3
    nop

    .line 140
    .end local v1    # "dbSize":J
    :cond_b4
    :goto_b4
    goto :goto_b6

    .line 138
    :catch_b5
    move-exception v1

    .line 141
    :goto_b6
    return-void
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getHexString([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .line 145
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 146
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_24

    .line 147
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 148
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Landroid/database/sqlite/SQLiteUtils;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    .line 149
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 146
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 151
    .end local v1    # "j":I
    :cond_24
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static isIssueTrackerOn(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    sget v0, Landroid/database/sqlite/SQLiteUtils;->sIssueTrackerOn:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_25

    .line 60
    sget-object v0, Landroid/database/sqlite/SQLiteUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_9
    sget v3, Landroid/database/sqlite/SQLiteUtils;->sIssueTrackerOn:I

    if-gez v3, :cond_20

    .line 63
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 65
    .local v3, "context":Landroid/content/Context;
    if-eqz v3, :cond_1e

    const-string v4, "com.salab.issuetracker"

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 66
    sput v1, Landroid/database/sqlite/SQLiteUtils;->sIssueTrackerOn:I

    goto :goto_20

    .line 68
    :cond_1e
    sput v2, Landroid/database/sqlite/SQLiteUtils;->sIssueTrackerOn:I

    .line 71
    .end local v3    # "context":Landroid/content/Context;
    :cond_20
    :goto_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_22

    throw v1

    .line 73
    :cond_25
    :goto_25
    sget v0, Landroid/database/sqlite/SQLiteUtils;->sIssueTrackerOn:I

    if-lez v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    return v1
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 45
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_f

    .line 46
    const-string v2, "SQLiteUtils"

    const-string v3, "The PackageManager is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v0

    .line 50
    :cond_f
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_14

    .line 51
    const/4 v0, 0x1

    return v0

    .line 52
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_14
    move-exception v1

    .line 55
    return v0
.end method

.method private static reportAbnormalDBSize(Landroid/content/Context;J)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbSize"    # J

    .line 109
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/database/sqlite/SQLiteUtils$ReportRunnable;

    invoke-direct {v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteUtils$ReportRunnable;-><init>(Landroid/content/Context;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 110
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method
