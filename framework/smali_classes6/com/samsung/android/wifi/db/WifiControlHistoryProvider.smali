.class public final Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;
.super Landroid/content/ContentProvider;
.source "WifiControlHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.server.wifi"

.field private static final CODE:I = 0x1

.field private static final DBG:Z

.field private static final PATH:Ljava/lang/String; = "control"

.field private static final TAG:Ljava/lang/String; = "WifiControlHistoryProvider"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 53
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mUriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .registers 1

    .line 366
    const-string v0, "content://com.samsung.server.wifi/control"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getContentUri(J)Landroid/net/Uri;
    .registers 5
    .param p1, "index"    # J

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.server.wifi/control/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private updateIfExist(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 301
    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "uniqueColName":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "WifiControlHistoryProvider"

    if-nez v1, :cond_15

    .line 303
    const-string v1, "unique value is not in the content"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-object v2

    .line 306
    :cond_15
    const/4 v1, 0x0

    .line 307
    .local v1, "id":I
    const/4 v4, 0x0

    .line 308
    .local v4, "updateValues":Landroid/content/ContentValues;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "selectionString":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 310
    .local v12, "uniqueValue":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v8, 0x0

    :try_start_4d
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v10

    iget-object v6, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    .line 312
    invoke-virtual {v6}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getDefaultSortOrder()Ljava/lang/String;

    move-result-object v11

    .line 311
    move-object v6, p0

    move-object v7, p1

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_5e} :catch_b3

    .line 313
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_82

    :try_start_60
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_82

    .line 314
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 315
    iget-object v7, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v7, v6, p2}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    move-object v4, v7

    .line 316
    iget-object v7, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getIdColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move v1, v7

    goto :goto_a2

    .line 311
    :catchall_80
    move-exception v7

    goto :goto_a8

    .line 318
    :cond_82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not existed in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_60 .. :try_end_a2} :catchall_80

    .line 320
    :goto_a2
    if-eqz v6, :cond_a7

    :try_start_a4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a4 .. :try_end_a7} :catch_b3

    .line 322
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_a7
    goto :goto_ca

    .line 311
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :goto_a8
    if-eqz v6, :cond_b2

    :try_start_aa
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b2

    :catchall_ae
    move-exception v8

    :try_start_af
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "uniqueColName":Ljava/lang/String;
    .end local v1    # "id":I
    .end local v4    # "updateValues":Landroid/content/ContentValues;
    .end local v5    # "selectionString":Ljava/lang/String;
    .end local v12    # "uniqueValue":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "values":Landroid/content/ContentValues;
    :cond_b2
    :goto_b2
    throw v7
    :try_end_b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_af .. :try_end_b3} :catch_b3

    .line 320
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "uniqueColName":Ljava/lang/String;
    .restart local v1    # "id":I
    .restart local v4    # "updateValues":Landroid/content/ContentValues;
    .restart local v5    # "selectionString":Ljava/lang/String;
    .restart local v12    # "uniqueValue":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "values":Landroid/content/ContentValues;
    :catch_b3
    move-exception v6

    .line 321
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_ca
    if-eqz v4, :cond_e1

    .line 324
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v4, v5, v2}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_db

    .line 325
    const-string v2, "Failed to update"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_db
    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 329
    :cond_e1
    return-object v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 351
    sget-boolean v0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->DBG:Z

    const-string v1, "WifiControlHistoryProvider"

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_20
    const/4 v0, 0x0

    .line 354
    .local v0, "count":I
    :try_start_21
    iget-object v2, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 355
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_21 .. :try_end_4f} :catch_53
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_21 .. :try_end_4f} :catch_53
    .catchall {:try_start_21 .. :try_end_4f} :catchall_51

    .line 360
    nop

    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    return v0

    :catchall_51
    move-exception v1

    goto :goto_6b

    .line 357
    :catch_53
    move-exception v2

    .line 358
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_54 .. :try_end_6a} :catchall_51

    .line 360
    nop

    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_6b
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 240
    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 272
    const-string v0, "Failed to insert - "

    sget-boolean v1, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->DBG:Z

    const-string v2, "WifiControlHistoryProvider"

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_22
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->updateIfExist(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 276
    .local v1, "insertedUri":Landroid/net/Uri;
    const/4 v3, 0x0

    if-nez v1, :cond_8c

    .line 278
    :try_start_29
    iget-object v4, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 279
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    .line 280
    invoke-virtual {v6, v3, p2}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6

    .line 279
    invoke-virtual {v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 281
    .local v5, "rowId":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_62

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserted at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->getContentUri(J)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 290
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "rowId":J
    goto :goto_8c

    .line 285
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "rowId":J
    :cond_62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_76} :catch_77

    .line 286
    return-object v3

    .line 288
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "rowId":J
    :catch_77
    move-exception v4

    .line 289
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_8c
    :goto_8c
    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 293
    return-object v1
.end method

.method public onCreate()Z
    .registers 5

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mContext:Landroid/content/Context;

    .line 232
    new-instance v0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    .line 233
    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.server.wifi"

    const-string v2, "control"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 23
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 247
    move-object/from16 v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    sget-boolean v0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->DBG:Z

    const-string v12, "WifiControlHistoryProvider"

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query table "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " where "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v13, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " arg length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    const-string v2, "null"

    if-eqz v11, :cond_57

    array-length v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_58

    :cond_57
    move-object v3, v2

    :goto_58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " projection length "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    if-eqz v10, :cond_69

    array-length v2, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sortOrder "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v14, p5

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v15, v0

    .line 255
    .local v15, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v0, v1, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 257
    iget-object v0, v1, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getProjectionMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 258
    const/16 v16, 0x0

    .line 260
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_9e
    iget-object v0, v1, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 261
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v15

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9e .. :try_end_b4} :catch_b7
    .catchall {:try_start_9e .. :try_end_b4} :catchall_b5

    .line 265
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0

    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catchall_b5
    move-exception v0

    goto :goto_cf

    .line 262
    :catch_b7
    move-exception v0

    .line 263
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_b8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catchall {:try_start_b8 .. :try_end_ce} :catchall_b5

    .line 265
    nop

    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_cf
    return-object v16
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 335
    sget-boolean v0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->DBG:Z

    const-string v1, "WifiControlHistoryProvider"

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_20
    const/4 v0, 0x0

    .line 338
    .local v0, "count":I
    :try_start_21
    iget-object v2, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 339
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_21 .. :try_end_4f} :catch_53
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_21 .. :try_end_4f} :catch_53
    .catchall {:try_start_21 .. :try_end_4f} :catchall_51

    .line 344
    nop

    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    return v0

    :catchall_51
    move-exception v1

    goto :goto_6b

    .line 341
    :catch_53
    move-exception v2

    .line 342
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_54 .. :try_end_6a} :catchall_51

    .line 344
    nop

    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_6b
    return v0
.end method
