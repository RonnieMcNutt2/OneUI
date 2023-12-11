.class public Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;
.super Landroid/content/ContentProvider;
.source "KnoxAnalyticsContentProvider.java"


# static fields
.field private static final B2C_FEATURE_PATH_ID:I = 0x7

.field private static final CLEANED_EVENTS_PATH_ID:I = 0x5

.field private static final DATABASE_SIZE_PATH_ID:I = 0x2

.field private static final EVENTS_PATH_ID:I = 0x1

.field private static final FEATURES_BLACKLIST_PATH_ID:I = 0x3

.field private static final FEATURES_WHITELIST_PATH_ID:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field private static final VERSIONING_PATH_ID:I = 0x4

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private volatile mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 30
    const-string v1, "events"

    const/4 v2, 0x1

    const-string v3, "com.samsung.android.knox.analytics.provider"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    const-string/jumbo v1, "size"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    const-string v1, "feature_blocklist"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    const-string/jumbo v1, "version"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    const-string v1, "cleaned_events"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    const-string v1, "features_whitelist"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    const-string/jumbo v1, "package_feature_b2c"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private deleteFromB2CFeatures(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 368
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFromB2CFeatures("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    .line 370
    .local v0, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteB2CFeatures([Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private deleteFromEvents(Ljava/lang/String;[Ljava/lang/String;I)J
    .registers 20
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "type"    # I

    .line 319
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "deleteFromEvents()"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_ad

    array-length v5, v2

    if-nez v5, :cond_14

    goto/16 :goto_ad

    .line 324
    :cond_14
    const/4 v5, 0x0

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 325
    const-string v5, "deleteFromEvents(): empty selectionArgs[0]"

    invoke-static {v0, v5}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-wide v3

    .line 328
    :cond_23
    const-wide/16 v6, 0x0

    .line 330
    .local v6, "numberOfEvents":J
    :try_start_25
    aget-object v8, v2, v5

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 332
    .local v8, "value":J
    array-length v10, v2

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v10, v11, :cond_47

    aget-object v10, v2, v12

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_47

    .line 333
    aget-object v10, v2, v12

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_46} :catch_91

    move-wide v6, v13

    .line 338
    :cond_47
    nop

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v15

    .line 341
    .local v15, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_b4

    :cond_53
    goto :goto_71

    :sswitch_54
    const-string v5, "deleteUntilTargetDbSize"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    move v5, v11

    goto :goto_72

    :sswitch_5e
    const-string v10, "deleteUpToId"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_53

    goto :goto_72

    :sswitch_67
    const-string v5, "deleteChunkBySize"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    move v5, v12

    goto :goto_72

    :goto_71
    const/4 v5, -0x1

    :goto_72
    packed-switch v5, :pswitch_data_c2

    .line 350
    const-string v10, "deleteFromEvents(): invalid selection"

    invoke-static {v0, v10}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-wide v3

    .line 348
    :pswitch_7b
    invoke-virtual {v15, v8, v9}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteUntilTargetDbSize(J)J

    move-result-wide v3

    return-wide v3

    .line 345
    :pswitch_80
    move-object v10, v15

    move-wide v11, v8

    move-wide v13, v6

    move-object v5, v15

    .end local v15    # "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    .local v5, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    move/from16 v15, p3

    invoke-virtual/range {v10 .. v15}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteEventChunk(JJI)J

    move-result-wide v3

    return-wide v3

    .line 343
    .end local v5    # "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    .restart local v15    # "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    :pswitch_8b
    move-object v5, v15

    .end local v15    # "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    .restart local v5    # "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteUpTo(J)J

    move-result-wide v3

    return-wide v3

    .line 335
    .end local v5    # "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    .end local v8    # "value":J
    :catch_91
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v8, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteFromEvents(): invalid number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v5, v2, v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-wide v3

    .line 321
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "numberOfEvents":J
    :cond_ad
    :goto_ad
    const-string v5, "deleteFromEvents(): no selectionArgs"

    invoke-static {v0, v5}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-wide v3

    nop

    :sswitch_data_b4
    .sparse-switch
        -0x2e2e60e6 -> :sswitch_67
        -0x2a299844 -> :sswitch_5e
        -0x10cc55d -> :sswitch_54
    .end sparse-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_80
        :pswitch_7b
    .end packed-switch
.end method

.method private deleteFromFeaturesBlacklist(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 356
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "deleteFromFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    .line 358
    .local v0, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteFeatureBlacklist()J

    move-result-wide v1

    return-wide v1
.end method

.method private deleteFromFeaturesWhitelist(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 362
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFromFeaturesWhitelist("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    .line 364
    .local v0, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteFeatureWhitelist([Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private deleteFromVersion(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 10
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 374
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "deleteFromVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-wide/16 v1, 0x0

    if-eqz p2, :cond_4e

    array-length v3, p2

    if-nez v3, :cond_f

    goto :goto_4e

    .line 379
    :cond_f
    const/4 v3, 0x0

    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 380
    const-string v3, "deleteFromVersion(): empty selectionArgs[0]"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-wide v1

    .line 385
    :cond_1e
    :try_start_1e
    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_28} :catch_32

    .line 389
    .local v0, "value":J
    nop

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v2

    .line 391
    .local v2, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteFromVersion(J)J

    move-result-wide v3

    return-wide v3

    .line 386
    .end local v0    # "value":J
    .end local v2    # "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    :catch_32
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteFromVersion(): invalid number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v3, p2, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-wide v1

    .line 376
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4e
    :goto_4e
    const-string v3, "deleteFromVersion(): no selectionArgs"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-wide v1
.end method

.method private getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    .line 210
    .local v0, "result":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    if-nez v0, :cond_1b

    .line 211
    monitor-enter p0

    .line 212
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-object v0, v1

    .line 213
    if-nez v0, :cond_16

    .line 214
    new-instance v1, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    .line 216
    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    .line 218
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method private getFinalChunkSize(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 240
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getFinalChunkSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "chunkSize":Ljava/lang/Integer;
    const-string v1, "chunk_size"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 243
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 245
    :cond_18
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v1

    .line 246
    .local v1, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCompressedEventsCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_27

    .line 247
    return-object v0

    .line 249
    :cond_27
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    if-nez v2, :cond_32

    goto :goto_3b

    .line 250
    :cond_32
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "query(): Selection argument must be null or multiples of 1000"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_3b
    :goto_3b
    return-object v0
.end method

.method private insertIntoB2CFeatures(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 8
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .line 288
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertIntoB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    .line 290
    .local v0, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addB2CFeatures(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 291
    .local v1, "affected":J
    const/4 v3, 0x0

    .line 292
    .local v3, "ret":Landroid/net/Uri;
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_19

    .line 293
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    .line 295
    :cond_19
    return-object v3
.end method

.method private insertIntoCleanedEvents(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 309
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertIntoCleanedEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    .line 311
    .local v0, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addCleanedEvent(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 312
    .local v1, "id":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_18

    .line 313
    const/4 v3, 0x0

    return-object v3

    .line 315
    :cond_18
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private insertIntoEvents(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    .line 258
    .local v0, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addEvent(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 259
    .local v1, "id":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_10

    .line 260
    const/4 v3, 0x0

    return-object v3

    .line 262
    :cond_10
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private insertIntoFeaturesBlacklist(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 8
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .line 266
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertIntoFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    .line 268
    .local v0, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addFeatureBlacklist(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 269
    .local v1, "affected":J
    const/4 v3, 0x0

    .line 270
    .local v3, "ret":Landroid/net/Uri;
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_19

    .line 271
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    .line 273
    :cond_19
    return-object v3
.end method

.method private insertIntoFeaturesWhitelist(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 8
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .line 277
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertIntoFeaturesWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    .line 279
    .local v0, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addFeatureWhitelist(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 280
    .local v1, "affected":J
    const/4 v3, 0x0

    .line 281
    .local v3, "ret":Landroid/net/Uri;
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_19

    .line 282
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    .line 284
    :cond_19
    return-object v3
.end method

.method private insertIntoVersion(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .line 299
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertIntoVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    .line 301
    .local v0, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addVersioningBlob(Landroid/content/ContentValues;)I

    move-result v1

    int-to-long v1, v1

    .line 302
    .local v1, "id":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_19

    .line 303
    const/4 v3, 0x0

    return-object v3

    .line 305
    :cond_19
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private queryEvents([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    .line 223
    .local v0, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    const/4 v1, 0x0

    if-eqz p1, :cond_4e

    array-length v2, p1

    if-lez v2, :cond_4e

    .line 224
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_58

    :cond_14
    goto :goto_34

    :sswitch_15
    const-string/jumbo v3, "lastEventId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v1

    goto :goto_35

    :sswitch_20
    const-string v3, "count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v4

    goto :goto_35

    :sswitch_2a
    const-string v3, "chunkSizePlainEvents"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x2

    goto :goto_35

    :goto_34
    const/4 v2, -0x1

    :goto_35
    packed-switch v2, :pswitch_data_66

    goto :goto_4e

    .line 230
    :pswitch_39
    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventChunk(Ljava/lang/Integer;Z)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 228
    :pswitch_44
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventCount()Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 226
    :pswitch_49
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getLastId()Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 235
    :cond_4e
    :goto_4e
    nop

    .line 236
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getFinalChunkSize(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 235
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventChunk(Ljava/lang/Integer;Z)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :sswitch_data_58
    .sparse-switch
        -0x6d71d6b -> :sswitch_2a
        0x5a7510f -> :sswitch_20
        0x1e424ddf -> :sswitch_15
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_49
        :pswitch_44
        :pswitch_39
    .end packed-switch
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_9c

    :cond_7
    goto :goto_33

    :sswitch_8
    const-string/jumbo v0, "performCompressedEventsTransaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_34

    :sswitch_13
    const-string/jumbo v0, "notifyVersioningCompleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_34

    :sswitch_1e
    const-string/jumbo v0, "insertBulkEvents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_34

    :sswitch_29
    const-string v0, "databaseClean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_34

    :goto_33
    const/4 v0, -0x1

    :goto_34
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_ae

    .line 191
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call(): invalid method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-object v1

    .line 178
    :pswitch_51
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addBulkEvents(Landroid/os/Bundle;)J

    move-result-wide v2

    .line 179
    .local v2, "lastId":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_79

    .line 180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 182
    .local v4, "token":J
    :try_start_63
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v6, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_74

    .line 184
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    goto :goto_79

    .line 184
    :catchall_74
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    throw v0

    .line 187
    .end local v4    # "token":J
    :cond_79
    :goto_79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "lastEventId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 189
    return-object v0

    .line 176
    .end local v0    # "result":Landroid/os/Bundle;
    .end local v2    # "lastId":J
    :pswitch_85
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->performCompressedEventsTransaction(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 173
    :pswitch_8e
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->notifyVersioningCompleted()V

    .line 174
    return-object v1

    .line 171
    :pswitch_96
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->callDatabaseClean(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_9c
    .sparse-switch
        -0x50df9672 -> :sswitch_29
        -0x3ff82b9c -> :sswitch_1e
        0x181ec758 -> :sswitch_13
        0x51f3f663 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_96
        :pswitch_8e
        :pswitch_85
        :pswitch_51
    .end packed-switch
.end method

.method callDatabaseClean(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 395
    const-string/jumbo v0, "targetDbSize"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 396
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "callDatabaseClean(): wrong extras!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    return-object v0

    .line 399
    :cond_12
    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "callDatabaseClean()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v1

    .line 401
    .local v1, "initialSize":J
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->cleanCompressedEventsTable(J)J

    move-result-wide v3

    .line 402
    .local v3, "deletedEventsCount":J
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v5

    .line 403
    .local v5, "finalSize":J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v0, "resultBundle":Landroid/os/Bundle;
    const-string v7, "deletedEventsCount"

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 405
    const-string v7, "deletedSizeBytes"

    sub-long v8, v1, v5

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 406
    return-object v0
.end method

.method public cleanCompressedEventsTable(J)J
    .registers 17
    .param p1, "targetDbSizeInBytes"    # J

    .line 411
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    .line 412
    .local v0, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v1

    .line 413
    .local v1, "currentSize":J
    const-wide/16 v3, 0x1

    .line 414
    .local v3, "nextChunkSize":J
    const-wide/16 v5, 0x0

    .line 415
    .local v5, "totalDeleted":J
    const/4 v7, 0x0

    .line 416
    .local v7, "iteration":I
    :goto_d
    cmp-long v8, v1, p1

    if-lez v8, :cond_6f

    .line 417
    add-int/lit8 v7, v7, 0x1

    .line 418
    long-to-int v8, v3

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getTotalCompressedEvents(I)I

    move-result v8

    .line 419
    .local v8, "currentEvents":I
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteCompressedEventChunk(J)J

    move-result-wide v9

    .line 420
    .local v9, "deletedRows":J
    sget-object v11, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IT="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " curS="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " tlDel="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " nxtCh="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " delRows="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-wide/16 v12, 0x0

    cmp-long v12, v9, v12

    if-nez v12, :cond_68

    .line 422
    const-string v12, "cleanCompressedEventsTable(): error deleting or db is empty"

    invoke-static {v11, v12}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    goto :goto_6f

    .line 425
    :cond_68
    int-to-long v11, v8

    add-long/2addr v5, v11

    .line 426
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v1

    .line 427
    .end local v8    # "currentEvents":I
    .end local v9    # "deletedRows":J
    goto :goto_d

    .line 428
    :cond_6f
    :goto_6f
    sget-object v8, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cleanCompressedEventsTable(): deletedEvents = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " iteration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-wide v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "delete()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "affectedRows":I
    sget-object v2, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_6a

    .line 151
    :pswitch_1d
    const-string v2, "delete(): no match for URI"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return v3

    .line 148
    :pswitch_23
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromB2CFeatures(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 149
    .end local v1    # "affectedRows":I
    .local v0, "affectedRows":I
    goto :goto_48

    .line 145
    .end local v0    # "affectedRows":I
    .restart local v1    # "affectedRows":I
    :pswitch_29
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromFeaturesWhitelist(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 146
    .end local v1    # "affectedRows":I
    .restart local v0    # "affectedRows":I
    goto :goto_48

    .line 142
    .end local v0    # "affectedRows":I
    .restart local v1    # "affectedRows":I
    :pswitch_2f
    invoke-direct {p0, p2, p3, v3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromEvents(Ljava/lang/String;[Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 143
    .end local v1    # "affectedRows":I
    .restart local v0    # "affectedRows":I
    goto :goto_48

    .line 139
    .end local v0    # "affectedRows":I
    .restart local v1    # "affectedRows":I
    :pswitch_35
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromVersion(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 140
    .end local v1    # "affectedRows":I
    .restart local v0    # "affectedRows":I
    goto :goto_48

    .line 136
    .end local v0    # "affectedRows":I
    .restart local v1    # "affectedRows":I
    :pswitch_3b
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromFeaturesBlacklist(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 137
    .end local v1    # "affectedRows":I
    .restart local v0    # "affectedRows":I
    goto :goto_48

    .line 133
    .end local v0    # "affectedRows":I
    .restart local v1    # "affectedRows":I
    :pswitch_41
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromEvents(Ljava/lang/String;[Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 134
    .end local v1    # "affectedRows":I
    .restart local v0    # "affectedRows":I
    nop

    .line 154
    :goto_48
    if-lez v0, :cond_68

    if-eqz p1, :cond_68

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 156
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-wide/16 v2, -0x1

    .line 158
    .local v2, "token":J
    :try_start_56
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v2, v4

    .line 159
    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_63

    .line 161
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    goto :goto_68

    .line 161
    :catchall_63
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    throw v4

    .line 164
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "token":J
    :cond_68
    :goto_68
    return v0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_41
        :pswitch_1d
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 204
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getType()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 50
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insert()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_b8

    .line 78
    :pswitch_12
    const-string v1, "delete(): no match for URI"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object v2

    .line 74
    :pswitch_18
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 75
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoB2CFeatures(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 76
    .local v1, "returnUri":Landroid/net/Uri;
    goto :goto_78

    .line 70
    .end local v1    # "returnUri":Landroid/net/Uri;
    :pswitch_28
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 71
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoFeaturesWhitelist(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 72
    .restart local v1    # "returnUri":Landroid/net/Uri;
    goto :goto_78

    .line 66
    .end local v1    # "returnUri":Landroid/net/Uri;
    :pswitch_38
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 67
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoCleanedEvents(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 68
    .restart local v1    # "returnUri":Landroid/net/Uri;
    goto :goto_78

    .line 62
    .end local v1    # "returnUri":Landroid/net/Uri;
    :pswitch_48
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 63
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoVersion(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 64
    .restart local v1    # "returnUri":Landroid/net/Uri;
    goto :goto_78

    .line 58
    .end local v1    # "returnUri":Landroid/net/Uri;
    :pswitch_58
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 59
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoFeaturesBlacklist(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 60
    .restart local v1    # "returnUri":Landroid/net/Uri;
    goto :goto_78

    .line 54
    .end local v1    # "returnUri":Landroid/net/Uri;
    :pswitch_68
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 55
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoEvents(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 56
    .restart local v1    # "returnUri":Landroid/net/Uri;
    nop

    .line 81
    :goto_78
    if-eqz v1, :cond_b6

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insert(): notifyChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-wide/16 v3, -0x1

    .line 85
    .local v3, "token":J
    :try_start_9d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v3, v5

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_ad
    .catchall {:try_start_9d .. :try_end_ad} :catchall_b1

    .line 88
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    goto :goto_b6

    .line 88
    :catchall_b1
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    throw v0

    .line 91
    .end local v3    # "token":J
    :cond_b6
    :goto_b6
    return-object v1

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_68
        :pswitch_12
        :pswitch_58
        :pswitch_48
        :pswitch_38
        :pswitch_28
        :pswitch_18
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 3

    .line 43
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "query()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v1

    .line 98
    .local v1, "databaseCryptoAdapter":Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    sget-object v2, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_92

    .line 121
    const-string/jumbo v2, "query(): no match for URI"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 118
    :pswitch_1d
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 119
    invoke-virtual {v1, p4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getB2CFeaturesCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 115
    :pswitch_2d
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 116
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getFeatureWhitelistCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 112
    :pswitch_3d
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 113
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getFinalChunkSize(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCleanedEventsCursor(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 109
    :pswitch_51
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 110
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getVersioningBlob()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 106
    :pswitch_61
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 107
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getFeatureBlacklistCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 103
    :pswitch_71
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 104
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_81
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 101
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->queryEvents([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_81
        :pswitch_71
        :pswitch_61
        :pswitch_51
        :pswitch_3d
        :pswitch_2d
        :pswitch_1d
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    return v0
.end method
