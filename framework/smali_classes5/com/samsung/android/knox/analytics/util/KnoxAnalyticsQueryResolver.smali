.class public Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;
.super Ljava/lang/Object;
.source "KnoxAnalyticsQueryResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBulkEvents(Landroid/content/Context;JLandroid/os/Bundle;I)J
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "type"    # I

    .line 59
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "addBulkEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 62
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "id"

    invoke-virtual {p3, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 64
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "insertBulkEvents"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 66
    .local v2, "result":Landroid/os/Bundle;
    const-string/jumbo v3, "lastEventId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 68
    .local v3, "lastId":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addBulkEvents(): lastId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-wide v3
.end method

.method public static addEvent(Landroid/content/Context;JLjava/lang/String;I)J
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "type"    # I

    .line 29
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "addEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 32
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .local v2, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    const-string v3, "data"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {p4}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getUriFromType(I)Landroid/net/Uri;

    move-result-object v3

    .line 37
    .local v3, "uri":Landroid/net/Uri;
    const-wide/16 v4, -0x1

    const-string v6, "addEvent(): null ret uri"

    if-nez v3, :cond_2d

    .line 38
    invoke-static {v0, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-wide v4

    .line 42
    :cond_2d
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 43
    .local v7, "ret":Landroid/net/Uri;
    if-nez v7, :cond_37

    .line 44
    invoke-static {v0, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-wide v4

    .line 48
    :cond_37
    const-wide/16 v4, -0x1

    .line 50
    .local v4, "actualId":J
    :try_start_39
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3d} :catch_3f

    move-wide v4, v8

    .line 53
    goto :goto_5c

    .line 51
    :catch_3f
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addEvent(): error parsing return id - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :goto_5c
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addEvent(): actualId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-wide v4
.end method

.method public static addVersioningBlob(Landroid/content/Context;ILjava/lang/String;J)J
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "eventId"    # J

    .line 241
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "addVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 244
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v2, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v3, "data"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v3, "eventId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 250
    .local v3, "ret":Landroid/net/Uri;
    if-nez v3, :cond_38

    .line 251
    const-string v4, "addVersioningBlob(): null ret uri"

    invoke-static {v0, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-wide/16 v4, -0x1

    return-wide v4

    .line 255
    :cond_38
    const-wide/16 v4, -0x1

    .line 257
    .local v4, "actualId":J
    :try_start_3a
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3e} :catch_40

    move-wide v4, v6

    .line 260
    goto :goto_48

    .line 258
    :catch_40
    move-exception v0

    .line 259
    .local v0, "ex":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v7, "addVersioningBlob(): error parsing return id"

    invoke-static {v6, v7}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :goto_48
    return-wide v4
.end method

.method public static callDatabaseClean(Landroid/content/Context;J)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetDbSize"    # J

    .line 210
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "callDatabaseClean()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "targetDbSize"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 214
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "databaseClean"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 215
    .local v2, "result":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    move-result-object v3

    return-object v3
.end method

.method public static callNotifyVersioningCompleted(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 285
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "callNotifyVersioningCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "notifyVersioningCompleted"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 289
    return-void
.end method

.method private static convertEventToList(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getB2CFeatureByPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 369
    const-string v0, "feature_name"

    sget-object v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getB2CFeatureFeaturesList()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 371
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    :try_start_f
    sget-object v4, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    const-string/jumbo v6, "packageName"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_24} :catch_58

    .line 374
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_40

    :try_start_26
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_40

    .line 379
    :cond_2d
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 380
    .local v0, "columnFeature":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 381
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_3e

    .line 382
    if-eqz v3, :cond_3d

    :try_start_3a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_3d} :catch_58

    .line 381
    :cond_3d
    return-object v1

    .line 371
    .end local v0    # "columnFeature":I
    :catchall_3e
    move-exception v0

    goto :goto_4d

    .line 375
    :cond_40
    :goto_40
    :try_start_40
    const-string/jumbo v0, "getB2CFeatureFeaturesList(): empty cursor"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_3e

    .line 376
    nop

    .line 382
    if-eqz v3, :cond_4c

    :try_start_49
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_4c} :catch_58

    .line 376
    :cond_4c
    return-object v9

    .line 371
    :goto_4d
    if-eqz v3, :cond_57

    :try_start_4f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception v1

    :try_start_54
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    :cond_57
    :goto_57
    throw v0
    :try_end_58
    .catch Ljava/lang/IllegalStateException; {:try_start_54 .. :try_end_58} :catch_58

    .line 382
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_58
    move-exception v0

    .line 383
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getB2CFeatureFeaturesList(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-object v9
.end method

.method public static getB2CFeaturePackageList(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getB2CFeaturePackages()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 321
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    :try_start_c
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_13} :catch_61

    .line 322
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_46

    :try_start_15
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_46

    .line 327
    :cond_1c
    const-string/jumbo v0, "packageName"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, "columnPackage":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .local v3, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 333
    :cond_2f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    nop

    .end local v4    # "packageName":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_44

    if-nez v4, :cond_2f

    .line 336
    nop

    .line 337
    if-eqz v2, :cond_43

    :try_start_40
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_43} :catch_61

    .line 336
    :cond_43
    return-object v3

    .line 321
    .end local v0    # "columnPackage":I
    .end local v3    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_44
    move-exception v0

    goto :goto_56

    .line 323
    :cond_46
    :goto_46
    :try_start_46
    const-string/jumbo v3, "getB2CFeaturePackages(): empty cursor"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_44

    .line 337
    if-eqz v2, :cond_55

    :try_start_52
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_55} :catch_61

    .line 324
    :cond_55
    return-object v0

    .line 321
    :goto_56
    if-eqz v2, :cond_60

    :try_start_58
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v3

    :try_start_5d
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_60
    :goto_60
    throw v0
    :try_end_61
    .catch Ljava/lang/IllegalStateException; {:try_start_5d .. :try_end_61} :catch_61

    .line 337
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_61
    move-exception v0

    .line 338
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getB2CFeaturePackages(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getB2CFeaturesList(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getB2CFeatureFeaturesList()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 346
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    :try_start_c
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_13} :catch_60

    .line 347
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_45

    :try_start_15
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_45

    .line 352
    :cond_1c
    const-string v0, "feature_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 354
    .local v0, "columnFeature":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    .local v3, "featuresList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 358
    :cond_2e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "feature":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    nop

    .end local v4    # "feature":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_43

    if-nez v4, :cond_2e

    .line 361
    nop

    .line 362
    if-eqz v2, :cond_42

    :try_start_3f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_42} :catch_60

    .line 361
    :cond_42
    return-object v3

    .line 346
    .end local v0    # "columnFeature":I
    .end local v3    # "featuresList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_43
    move-exception v0

    goto :goto_55

    .line 348
    :cond_45
    :goto_45
    :try_start_45
    const-string/jumbo v3, "getB2CFeatureFeaturesList(): empty cursor"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_43

    .line 362
    if-eqz v2, :cond_54

    :try_start_51
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catch Ljava/lang/IllegalStateException; {:try_start_51 .. :try_end_54} :catch_60

    .line 349
    :cond_54
    return-object v0

    .line 346
    :goto_55
    if-eqz v2, :cond_5f

    :try_start_57
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v3

    :try_start_5c
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_5f
    :goto_5f
    throw v0
    :try_end_60
    .catch Ljava/lang/IllegalStateException; {:try_start_5c .. :try_end_60} :catch_60

    .line 362
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_60
    move-exception v0

    .line 363
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getB2CFeatureFeaturesList(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getDatabaseSize(Landroid/content/Context;)J
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 265
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getDatabaseSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 267
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    :try_start_c
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseSize;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_13} :catch_50

    .line 268
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_36

    :try_start_15
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_36

    .line 272
    :cond_1c
    const-wide/16 v3, -0x1

    .line 273
    .local v3, "res":J
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 274
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 275
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_34

    move-wide v3, v5

    .line 277
    :cond_2d
    nop

    .line 278
    if-eqz v2, :cond_33

    :try_start_30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_33} :catch_50

    .line 277
    :cond_33
    return-wide v3

    .line 267
    .end local v3    # "res":J
    :catchall_34
    move-exception v0

    goto :goto_45

    .line 269
    :cond_36
    :goto_36
    :try_start_36
    const-string/jumbo v3, "getDatabaseSize(): empty cursor"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_34

    .line 270
    nop

    .line 278
    if-eqz v2, :cond_42

    :try_start_3f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_42} :catch_50

    .line 270
    :cond_42
    const-wide/16 v3, -0x1

    return-wide v3

    .line 267
    :goto_45
    if-eqz v2, :cond_4f

    :try_start_47
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v3

    :try_start_4c
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_4f
    :goto_4f
    throw v0
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_50} :catch_50

    .line 278
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_50
    move-exception v0

    .line 279
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDatabaseSize(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    throw v0
.end method

.method public static getEventCount(Landroid/content/Context;)J
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 162
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getEventCount()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 164
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-wide/16 v2, -0x1

    :try_start_e
    sget-object v4, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "count"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6, v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_1d} :catch_4d

    .line 165
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_35

    :try_start_1f
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_26

    goto :goto_35

    .line 169
    :cond_26
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_33

    .line 171
    if-eqz v4, :cond_32

    :try_start_2f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_32} :catch_4d

    .line 170
    :cond_32
    return-wide v5

    .line 164
    :catchall_33
    move-exception v0

    goto :goto_42

    .line 166
    :cond_35
    :goto_35
    :try_start_35
    const-string/jumbo v5, "getEventCount(): empty cursor"

    invoke-static {v0, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_33

    .line 167
    nop

    .line 171
    if-eqz v4, :cond_41

    :try_start_3e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_41} :catch_4d

    .line 167
    :cond_41
    return-wide v2

    .line 164
    :goto_42
    if-eqz v4, :cond_4c

    :try_start_44
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v5

    :try_start_49
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_4c
    :goto_4c
    throw v0
    :try_end_4d
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_4d} :catch_4d

    .line 171
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_4d
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getEventCount(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-wide v2
.end method

.method public static getFeaturesBlacklist(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;",
            ">;"
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 180
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_d
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_13} :catch_73

    .line 181
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_58

    :try_start_15
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_58

    .line 186
    :cond_1c
    const-string v0, "feature"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, "columnFeature":I
    const-string v4, "event"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 189
    .local v4, "columnEvent":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .local v5, "featuresBlacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;>;"
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    :cond_34
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "feature":Ljava/lang/String;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->convertEventToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 195
    .local v7, "eventList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;

    invoke-direct {v8, v6, v7}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    nop

    .end local v6    # "feature":Ljava/lang/String;
    .end local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_4d
    .catchall {:try_start_15 .. :try_end_4d} :catchall_56

    if-nez v6, :cond_34

    .line 197
    nop

    .line 198
    if-eqz v3, :cond_55

    :try_start_52
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_55} :catch_73

    .line 197
    :cond_55
    return-object v5

    .line 180
    .end local v0    # "columnFeature":I
    .end local v4    # "columnEvent":I
    .end local v5    # "featuresBlacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;>;"
    :catchall_56
    move-exception v0

    goto :goto_68

    .line 182
    :cond_58
    :goto_58
    :try_start_58
    const-string/jumbo v4, "getFeaturesBlacklist(): empty cursor"

    invoke-static {v0, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_56

    .line 198
    if-eqz v3, :cond_67

    :try_start_64
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_67} :catch_73

    .line 183
    :cond_67
    return-object v0

    .line 180
    :goto_68
    if-eqz v3, :cond_72

    :try_start_6a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_72

    :catchall_6e
    move-exception v4

    :try_start_6f
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_72
    :goto_72
    throw v0
    :try_end_73
    .catch Ljava/lang/IllegalStateException; {:try_start_6f .. :try_end_73} :catch_73

    .line 198
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_73
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFeaturesBlacklist(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-object v2
.end method

.method public static getFeaturesWhitelist(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;",
            ">;"
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getFeaturesWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 294
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    :try_start_c
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_13} :catch_7b

    .line 295
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_60

    :try_start_15
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_60

    .line 300
    :cond_1c
    const-string v0, "feature"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, "columnFeature":I
    const-string v4, "enable_type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 303
    .local v4, "columnEnableType":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .local v5, "featuresWhitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 307
    :cond_34
    new-instance v6, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 308
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_42

    move-object v8, v3

    goto :goto_4a

    :cond_42
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_4a
    invoke-direct {v6, v7, v8}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    .local v6, "feature":Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    nop

    .end local v6    # "feature":Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_55
    .catchall {:try_start_15 .. :try_end_55} :catchall_5e

    if-nez v6, :cond_34

    .line 311
    nop

    .line 312
    if-eqz v2, :cond_5d

    :try_start_5a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catch Ljava/lang/IllegalStateException; {:try_start_5a .. :try_end_5d} :catch_7b

    .line 311
    :cond_5d
    return-object v5

    .line 294
    .end local v0    # "columnFeature":I
    .end local v4    # "columnEnableType":I
    .end local v5    # "featuresWhitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;>;"
    :catchall_5e
    move-exception v0

    goto :goto_70

    .line 296
    :cond_60
    :goto_60
    :try_start_60
    const-string/jumbo v3, "getFeaturesWhitelist(): empty cursor"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_5e

    .line 312
    if-eqz v2, :cond_6f

    :try_start_6c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catch Ljava/lang/IllegalStateException; {:try_start_6c .. :try_end_6f} :catch_7b

    .line 297
    :cond_6f
    return-object v0

    .line 294
    :goto_70
    if-eqz v2, :cond_7a

    :try_start_72
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_7a

    :catchall_76
    move-exception v3

    :try_start_77
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_7a
    :goto_7a
    throw v0
    :try_end_7b
    .catch Ljava/lang/IllegalStateException; {:try_start_77 .. :try_end_7b} :catch_7b

    .line 312
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_7b
    move-exception v0

    .line 313
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFeaturesWhitelist(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getLastEventId(Landroid/content/Context;)J
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 142
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getLastEventId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 144
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    :try_start_c
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "lastEventId"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_1c} :catch_58

    .line 145
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3e

    :try_start_1e
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_25

    goto :goto_3e

    .line 149
    :cond_25
    const-wide/16 v3, -0x1

    .line 150
    .local v3, "res":J
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 151
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 152
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_3c

    move-wide v3, v5

    .line 154
    :cond_35
    nop

    .line 155
    if-eqz v2, :cond_3b

    :try_start_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_3b} :catch_58

    .line 154
    :cond_3b
    return-wide v3

    .line 144
    .end local v3    # "res":J
    :catchall_3c
    move-exception v0

    goto :goto_4d

    .line 146
    :cond_3e
    :goto_3e
    :try_start_3e
    const-string/jumbo v3, "getLastEventId(): empty cursor"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_3c

    .line 147
    nop

    .line 155
    if-eqz v2, :cond_4a

    :try_start_47
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_4a} :catch_58

    .line 147
    :cond_4a
    const-wide/16 v3, -0x1

    return-wide v3

    .line 144
    :goto_4d
    if-eqz v2, :cond_57

    :try_start_4f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception v3

    :try_start_54
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_57
    :goto_57
    throw v0
    :try_end_58
    .catch Ljava/lang/IllegalStateException; {:try_start_54 .. :try_end_58} :catch_58

    .line 155
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_58
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLastEventId(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    throw v0
.end method

.method private static getUriFromType(I)Landroid/net/Uri;
    .registers 4
    .param p0, "type"    # I

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "uri":Landroid/net/Uri;
    packed-switch p0, :pswitch_data_14

    .line 135
    sget-object v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getUriFromType(): not URI associated with this log type"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 132
    :pswitch_d
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 133
    goto :goto_13

    .line 129
    :pswitch_10
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;->CONTENT_URI:Landroid/net/Uri;

    .line 130
    nop

    .line 138
    :goto_13
    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static getVersioningBlob(Landroid/content/Context;)[Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 219
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 221
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_d
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_13} :catch_91

    .line 222
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x2

    :try_start_14
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "-1"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, ""

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 223
    .local v4, "res":[Ljava/lang/String;
    if-eqz v3, :cond_78

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_29

    goto :goto_78

    .line 228
    :cond_29
    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 229
    const-string/jumbo v5, "id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 230
    const-string v5, "data"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getVersioningBlob() - id = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_14 .. :try_end_71} :catchall_85

    .line 233
    :cond_71
    nop

    .line 234
    if-eqz v3, :cond_77

    :try_start_74
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_77
    .catch Ljava/lang/IllegalStateException; {:try_start_74 .. :try_end_77} :catch_91

    .line 233
    :cond_77
    return-object v4

    .line 224
    :cond_78
    :goto_78
    :try_start_78
    const-string/jumbo v5, "getVersioningBlob(): empty cursor"

    invoke-static {v0, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_85

    .line 225
    nop

    .line 234
    if-eqz v3, :cond_84

    :try_start_81
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_84
    .catch Ljava/lang/IllegalStateException; {:try_start_81 .. :try_end_84} :catch_91

    .line 225
    :cond_84
    return-object v4

    .line 221
    .end local v4    # "res":[Ljava/lang/String;
    :catchall_85
    move-exception v0

    if-eqz v3, :cond_90

    :try_start_88
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception v4

    :try_start_8d
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_90
    :goto_90
    throw v0
    :try_end_91
    .catch Ljava/lang/IllegalStateException; {:try_start_8d .. :try_end_91} :catch_91

    .line 234
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_91
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getFeaturesBlacklist(): ERROR READING CONTENT PROVIDER! "

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-object v2
.end method

.method public static performCompressedEventsTransaction(Landroid/content/Context;Lcom/samsung/android/knox/analytics/model/EventList;)Landroid/os/Bundle;
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "events"    # Lcom/samsung/android/knox/analytics/model/EventList;

    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/model/EventList;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/ZipHandler;->deflate([B)Lcom/samsung/android/knox/analytics/util/ZipResult;

    move-result-object v0

    .line 103
    .local v0, "result":Lcom/samsung/android/knox/analytics/util/ZipResult;
    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 104
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "performCompressedEventsTransaction(): null input data"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-object v1

    .line 107
    :cond_14
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "content"

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getContent()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "length"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getOriginalLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "original_length"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/model/EventList;->getTotalEventsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bulk"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/model/EventList;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "plainEventsSize"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v3, "extras":Landroid/os/Bundle;
    const-string v4, "cv"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 118
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget-object v5, Lcom/samsung/android/knox/analytics/database/Contract$CompressedEvents;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "performCompressedEventsTransaction"

    invoke-virtual {v4, v5, v6, v1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public static queryEventChunk(Landroid/content/Context;)Lcom/samsung/android/knox/analytics/model/EventList;
    .registers 12
    .param p0, "ctx"    # Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 74
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    new-instance v0, Lcom/samsung/android/knox/analytics/model/EventList;

    invoke-direct {v0}, Lcom/samsung/android/knox/analytics/model/EventList;-><init>()V

    move-object v7, v0

    .line 75
    .local v7, "events":Lcom/samsung/android/knox/analytics/model/EventList;
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "chunkSizePlainEvents"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_7c

    :try_start_1c
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_23

    goto :goto_7c

    .line 80
    :cond_23
    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 81
    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 82
    .local v1, "id":I
    const-string/jumbo v2, "vid"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 83
    .local v2, "vid":I
    const-string v3, "bulk"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 84
    .local v3, "bulk":I
    const-string v4, "data"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_53
    .catchall {:try_start_1c .. :try_end_53} :catchall_70

    .line 86
    .local v4, "data":Ljava/lang/String;
    const/4 v5, 0x0

    .line 88
    .local v5, "event":Lcom/samsung/android/knox/analytics/model/Event;
    :try_start_54
    new-instance v8, Lcom/samsung/android/knox/analytics/model/Event;

    invoke-direct {v8, v1, v2, v3, v4}, Lcom/samsung/android/knox/analytics/model/Event;-><init>(IIILjava/lang/String;)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_59} :catch_5b
    .catchall {:try_start_54 .. :try_end_59} :catchall_70

    move-object v5, v8

    .line 91
    goto :goto_63

    .line 89
    :catch_5b
    move-exception v8

    .line 90
    .local v8, "e":Lorg/json/JSONException;
    :try_start_5c
    sget-object v9, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v10, "Could not parse JSON. Invalid format"

    invoke-static {v9, v10, v8}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_63
    if-nez v5, :cond_66

    .line 93
    goto :goto_23

    .line 95
    :cond_66
    invoke-virtual {v7, v5}, Lcom/samsung/android/knox/analytics/model/EventList;->put(Lcom/samsung/android/knox/analytics/model/Event;)V
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_70

    .line 96
    .end local v1    # "id":I
    .end local v2    # "vid":I
    .end local v3    # "bulk":I
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "event":Lcom/samsung/android/knox/analytics/model/Event;
    goto :goto_23

    .line 97
    :cond_6a
    if-eqz v0, :cond_6f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_6f
    return-object v7

    .line 75
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_70
    move-exception v1

    if-eqz v0, :cond_7b

    :try_start_73
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_7b

    :catchall_77
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7b
    :goto_7b
    throw v1

    .line 78
    :cond_7c
    :goto_7c
    nop

    .line 97
    if-eqz v0, :cond_82

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_82
    const/4 v1, 0x0

    return-object v1
.end method
