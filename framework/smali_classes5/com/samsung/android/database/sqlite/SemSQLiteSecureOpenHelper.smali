.class public abstract Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
.super Ljava/lang/Object;
.source "SemSQLiteSecureOpenHelper.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsInitializing:Z

.field private final mMinimumSupportedVersion:I

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I

.field private mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-class v0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;IILandroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "minimumSupportedVersion"    # I
    .param p5, "openParamsBuilder"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    if-lt p3, v0, :cond_1a

    .line 170
    iput-object p1, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    .line 172
    iput p3, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    .line 173
    const/4 v0, 0x0

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mMinimumSupportedVersion:I

    .line 174
    invoke-direct {p0, p5}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->setOpenParamsBuilder(Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V

    .line 175
    return-void

    .line 168
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$OpenParams;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 128
    const/4 v4, 0x0

    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IILandroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .line 85
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IILandroid/database/DatabaseErrorHandler;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "minimumSupportedVersion"    # I
    .param p6, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 157
    new-instance v5, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IILandroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p3}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 160
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p6}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setErrorHandler(Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 108
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IILandroid/database/DatabaseErrorHandler;)V

    .line 109
    return-void
.end method

.method public static final changeDatabasePassword(Landroid/database/sqlite/SQLiteDatabase;[B)I
    .registers 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "newPassword"    # [B

    .line 676
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->changeDBPassword([B)I

    move-result v0

    return v0
.end method

.method public static final convertToPlainDatabase(Ljava/io/File;Ljava/io/File;[B)V
    .registers 3
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "destDbFile"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 643
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->convertToPlainDatabase(Ljava/io/File;Ljava/io/File;[B)V

    .line 644
    return-void
.end method

.method public static final convertToSecureDatabase(Ljava/io/File;Ljava/io/File;[B)V
    .registers 3
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "destDbFile"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 663
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->convertToSecureDatabase(Ljava/io/File;Ljava/io/File;[B)V

    .line 664
    return-void
.end method

.method private getDatabaseLocked(Z[B)Landroid/database/sqlite/SQLiteDatabase;
    .registers 10
    .param p1, "writable"    # Z
    .param p2, "password"    # [B

    .line 413
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 414
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 416
    iput-object v1, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1b

    .line 417
    :cond_e
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 419
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 423
    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_1a0

    .line 427
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 429
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_23
    iput-boolean v2, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 431
    if-eqz v0, :cond_31

    .line 432
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 433
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 435
    :cond_30
    const/4 v0, 0x0

    .line 438
    :cond_31
    iget-object v2, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    if-nez v2, :cond_3b

    .line 439
    invoke-static {v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->createSecureDatabase(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    goto :goto_5a

    .line 441
    :cond_3b
    iget-object v1, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 442
    .local v1, "filePath":Ljava/io/File;
    iget-object v2, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v2
    :try_end_47
    .catchall {:try_start_23 .. :try_end_47} :catchall_193

    .line 444
    .local v2, "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    :try_start_47
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;[BLandroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v0, v4

    .line 446
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->setFilePermissionsForDb(Ljava/lang/String;)V
    :try_end_59
    .catch Landroid/database/SQLException; {:try_start_47 .. :try_end_59} :catch_190
    .catchall {:try_start_47 .. :try_end_59} :catchall_193

    .line 449
    nop

    .line 452
    .end local v1    # "filePath":Ljava/io/File;
    .end local v2    # "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    :goto_5a
    :try_start_5a
    invoke-virtual {p0, v0}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 454
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 455
    .local v1, "version":I
    iget v2, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    if-eq v1, v2, :cond_160

    .line 456
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2
    :try_end_69
    .catchall {:try_start_5a .. :try_end_69} :catchall_193

    const-string v4, " to "

    if-nez v2, :cond_12d

    .line 461
    if-lez v1, :cond_bf

    :try_start_6f
    iget v2, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mMinimumSupportedVersion:I

    if-ge v1, v2, :cond_bf

    .line 462
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v2, "databaseFile":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->onBeforeDelete(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 464
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 465
    invoke-static {v2}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 466
    iput-boolean v3, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 467
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->getDatabaseLocked(Z[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_8e
    .catchall {:try_start_6f .. :try_end_8e} :catchall_193

    .line 503
    iput-boolean v3, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 504
    if-eqz v0, :cond_99

    iget-object v3, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v3, :cond_99

    .line 505
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 467
    :cond_99
    return-object v4

    .line 469
    :cond_9a
    :try_start_9a
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete obsolete database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .end local p1    # "writable":Z
    .end local p2    # "password":[B
    throw v4

    .line 473
    .end local v2    # "databaseFile":Ljava/io/File;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .restart local p1    # "writable":Z
    .restart local p2    # "password":[B
    :cond_bf
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_c2
    .catchall {:try_start_9a .. :try_end_c2} :catchall_193

    .line 475
    if-nez v1, :cond_c8

    .line 476
    :try_start_c4
    invoke-virtual {p0, v0}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_11b

    .line 478
    :cond_c8
    iget v2, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    if-le v1, v2, :cond_f4

    .line 479
    sget-object v2, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB version downgrading from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget v2, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_11b

    .line 482
    :cond_f4
    sget-object v2, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB version upgrading from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget v2, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 486
    :goto_11b
    iget v2, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 487
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_123
    .catchall {:try_start_c4 .. :try_end_123} :catchall_127

    .line 489
    :try_start_123
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 490
    goto :goto_160

    .line 489
    :catchall_127
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 490
    nop

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .end local p1    # "writable":Z
    .end local p2    # "password":[B
    throw v2

    .line 457
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .restart local p1    # "writable":Z
    .restart local p2    # "password":[B
    :cond_12d
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t upgrade read-only database from version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 458
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .end local p1    # "writable":Z
    .end local p2    # "password":[B
    throw v2

    .line 494
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .restart local p1    # "writable":Z
    .restart local p2    # "password":[B
    :cond_160
    :goto_160
    invoke-virtual {p0, v0}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 496
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_189

    .line 497
    sget-object v2, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in read-only mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_189
    iput-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_18b
    .catchall {:try_start_123 .. :try_end_18b} :catchall_193

    .line 501
    nop

    .line 503
    iput-boolean v3, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 504
    nop

    .line 501
    return-object v0

    .line 447
    .local v1, "filePath":Ljava/io/File;
    .local v2, "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    :catch_190
    move-exception v4

    .line 448
    .local v4, "ex":Landroid/database/SQLException;
    nop

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .end local p1    # "writable":Z
    .end local p2    # "password":[B
    :try_start_192
    throw v4
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_193

    .line 503
    .end local v1    # "filePath":Ljava/io/File;
    .end local v2    # "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .end local v4    # "ex":Landroid/database/SQLException;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .restart local p1    # "writable":Z
    .restart local p2    # "password":[B
    :catchall_193
    move-exception v1

    iput-boolean v3, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 504
    if-eqz v0, :cond_19f

    iget-object v2, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v2, :cond_19f

    .line 505
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 507
    :cond_19f
    throw v1

    .line 424
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1a0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getDatabase called recursively"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setFilePermissionsForDb(Ljava/lang/String;)V
    .registers 3
    .param p0, "dbPath"    # Ljava/lang/String;

    .line 511
    const/16 v0, 0x1b0

    .line 512
    .local v0, "perms":I
    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 513
    return-void
.end method

.method private setOpenParamsBuilder(Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V
    .registers 3
    .param p1, "openParamsBuilder"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 269
    iput-object p1, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 270
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 271
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    .line 519
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_19

    .line 521
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 522
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    .line 525
    .end local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    :cond_17
    monitor-exit p0

    return-void

    .line 519
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    .line 518
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p1, "password"    # [B

    .line 407
    monitor-enter p0

    .line 408
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->getDatabaseLocked(Z[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 409
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getWritableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p1, "password"    # [B

    .line 381
    monitor-enter p0

    .line 382
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->getDatabaseLocked(Z[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 383
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public onBeforeDelete(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 558
    return-void
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 544
    return-void
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 607
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t downgrade database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 624
    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public setCacheSize(I)V
    .registers 4
    .param p1, "cacheSizeByte"    # I

    .line 321
    if-ltz p1, :cond_26

    const/high16 v0, 0x800000

    if-gt p1, v0, :cond_26

    .line 326
    monitor-enter p0

    .line 327
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 328
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultPageSize()I

    move-result v1

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setCacheSize(I)V

    .line 330
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->semSetCacheSize(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 331
    monitor-exit p0

    .line 332
    return-void

    .line 331
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v0

    .line 322
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The cache size should not be negative value. Also, it should be less than soft heap size (8M)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIdleConnectionShrinkTimeout(J)V
    .registers 5
    .param p1, "idleConnectionTimeoutMs"    # J

    .line 287
    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_14

    .line 289
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shrink timeout setting cannot be changed after opening the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .end local p1    # "idleConnectionTimeoutMs":J
    throw v0

    .line 292
    .restart local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .restart local p1    # "idleConnectionTimeoutMs":J
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->semSetIdleConnectionShrinkTimeout(J)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 293
    monitor-exit p0

    .line 294
    return-void

    .line 293
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public setLookasideConfig(II)V
    .registers 5
    .param p1, "slotSize"    # I
    .param p2, "slotCount"    # I

    .line 240
    monitor-enter p0

    .line 241
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_14

    .line 242
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lookaside memory config cannot be changed after opening the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .end local p1    # "slotSize":I
    .end local p2    # "slotCount":I
    throw v0

    .line 245
    .restart local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .restart local p1    # "slotSize":I
    .restart local p2    # "slotCount":I
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setLookasideConfig(II)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 246
    monitor-exit p0

    .line 247
    return-void

    .line 246
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public setOpenParams(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V
    .registers 4
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 258
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    monitor-enter p0

    .line 260
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 261
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OpenParams cannot be set after opening the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .end local p1    # "openParams":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    throw v0

    .line 264
    .restart local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .restart local p1    # "openParams":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    :cond_17
    :goto_17
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->setOpenParamsBuilder(Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V

    .line 265
    monitor-exit p0

    .line 266
    return-void

    .line 265
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public setSeparateCacheModeEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 304
    monitor-enter p0

    .line 305
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_14

    .line 306
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Separate cache config cannot be changed after opening the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .end local p1    # "enabled":Z
    throw v0

    .line 309
    .restart local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .restart local p1    # "enabled":Z
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->semSetSeparateCacheModeEnabled(Z)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 310
    monitor-exit p0

    .line 311
    return-void

    .line 310
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public setUserDataRecoveryEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 350
    monitor-enter p0

    .line 351
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_14

    .line 352
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Database Recovery config cannot be changed after opening the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .end local p1    # "enabled":Z
    throw v0

    .line 355
    .restart local p0    # "this":Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    .restart local p1    # "enabled":Z
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setUserDataRecoveryEnabled(Z)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 356
    monitor-exit p0

    .line 357
    return-void

    .line 356
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 198
    monitor-enter p0

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->isWriteAheadLoggingEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_2d

    .line 200
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_28

    .line 201
    if-eqz p1, :cond_23

    .line 202
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    goto :goto_28

    .line 204
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 207
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setWriteAheadLoggingEnabled(Z)V

    .line 211
    :cond_2d
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 213
    const/16 v0, 0x400

    if-nez p1, :cond_3e

    .line 214
    iget-object v1, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    goto :goto_43

    .line 216
    :cond_3e
    iget-object v1, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 218
    :goto_43
    monitor-exit p0

    .line 219
    return-void

    .line 218
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_45

    throw v0
.end method
