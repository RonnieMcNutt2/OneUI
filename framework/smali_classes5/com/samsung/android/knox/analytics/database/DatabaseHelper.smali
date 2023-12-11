.class Lcom/samsung/android/knox/analytics/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final B2C_FEATURE_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE package_feature_b2c ( packageName TEXT PRIMARY KEY, feature_name TEXT)"

.field public static final B2C_FEATURE_FIELD_FEATURE:Ljava/lang/String; = "feature_name"

.field public static final B2C_FEATURE_FIELD_PACKAGE:Ljava/lang/String; = "packageName"

.field private static final B2C_FEATURE_QUERY:Ljava/lang/String; = "packageName = ?"

.field private static final B2C_FEATURE_TABLE:Ljava/lang/String; = "package_feature_b2c"

.field private static final CLEANED_EVENTS_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE cleaned_events ( id INTEGER PRIMARY KEY, vid INTEGER, data BLOB )"

.field private static final CLEANED_EVENTS_DELETE:Ljava/lang/String; = "id IN (SELECT id FROM cleaned_events ORDER BY + id LIMIT ?)"

.field static final CLEANED_EVENTS_TABLE:Ljava/lang/String; = "cleaned_events"

.field private static final COMPRESSED_EVENTS_ADD_BULK_COLUMN:Ljava/lang/String; = "ALTER TABLE compressed_events ADD bulk INTEGER DEFAULT 1000"

.field private static final COMPRESSED_EVENTS_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE compressed_events ( id INTEGER PRIMARY KEY, length INTEGER, original_length INTEGER, bulk INTEGER DEFAULT 1000, content BLOB )"

.field private static final COMPRESSED_EVENTS_DELETE:Ljava/lang/String; = "id IN (SELECT id FROM compressed_events ORDER BY + id LIMIT ?)"

.field private static final COMPRESSED_EVENTS_FIELD_BULK:Ljava/lang/String; = "bulk"

.field private static final COMPRESSED_EVENTS_FIELD_CONTENT:Ljava/lang/String; = "content"

.field private static final COMPRESSED_EVENTS_FIELD_ID:Ljava/lang/String; = "id"

.field private static final COMPRESSED_EVENTS_FIELD_LENGTH:Ljava/lang/String; = "length"

.field private static final COMPRESSED_EVENTS_FIELD_ORIGINAL_LENGTH:Ljava/lang/String; = "original_length"

.field private static final COMPRESSED_EVENTS_KEY_PLAIN_EVENTS_SIZE:Ljava/lang/String; = "plainEventsSize"

.field private static final COMPRESSED_EVENTS_TABLE:Ljava/lang/String; = "compressed_events"

.field private static final DATABASE_NAME:Ljava/lang/String; = "analytics.db"

.field private static final DATABASE_VERSION:I = 0x9

.field private static final EVENTS_ADD_BULK_COLUMN:Ljava/lang/String; = "ALTER TABLE events ADD bulk INTEGER DEFAULT 1"

.field private static final EVENTS_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE events ( id INTEGER PRIMARY KEY, vid INTEGER, bulk INTEGER DEFAULT 1, data BLOB )"

.field private static final EVENTS_DELETE:Ljava/lang/String; = "id IN (SELECT id FROM events ORDER BY + id LIMIT ?)"

.field private static final EVENTS_DELETE_UP_TO_ID:Ljava/lang/String; = "id <= ?"

.field static final EVENTS_FIELD_BULK:Ljava/lang/String; = "bulk"

.field static final EVENTS_FIELD_DATA:Ljava/lang/String; = "data"

.field static final EVENTS_FIELD_ID:Ljava/lang/String; = "id"

.field static final EVENTS_FIELD_VID:Ljava/lang/String; = "vid"

.field static final EVENTS_TABLE:Ljava/lang/String; = "events"

.field private static final FEATURES_BLACKLIST_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE feature_blocklist ( feature TEXT PRIMARY KEY, event TEXT NOT NULL)"

.field private static final FEATURES_BLACKLIST_FIELD_EVENT:Ljava/lang/String; = "event"

.field private static final FEATURES_BLACKLIST_FIELD_FEATURE:Ljava/lang/String; = "feature"

.field private static final FEATURES_BLACKLIST_LEGACY_TABLE:Ljava/lang/String; = "features_blacklist"

.field private static final FEATURES_BLACKLIST_TABLE:Ljava/lang/String; = "feature_blocklist"

.field private static final FEATURES_WHITELIST_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE features_whitelist ( feature TEXT PRIMARY KEY, enable_type INTEGER)"

.field private static final FEATURES_WHITELIST_DELETE:Ljava/lang/String; = "feature = ?"

.field public static final FEATURES_WHITELIST_FIELD_ENABLE:Ljava/lang/String; = "enable_type"

.field public static final FEATURES_WHITELIST_FIELD_FEATURE:Ljava/lang/String; = "feature"

.field private static final FEATURES_WHITELIST_TABLE:Ljava/lang/String; = "features_whitelist"

.field private static final LAST_EVENT_ID_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE internal_data ( last_event_id INTEGER )"

.field private static final LAST_EVENT_ID_FIELD:Ljava/lang/String; = "last_event_id"

.field private static final LAST_EVENT_ID_TABLE:Ljava/lang/String; = "internal_data"

.field private static final SYNTHETIC_KEY_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE synthetic_key ( row_id INTEGER)"

.field static final SYNTHETIC_KEY_TABLE:Ljava/lang/String; = "synthetic_key"

.field private static final SYNTHETIC_ROW_ID:Ljava/lang/String; = "row_id"

.field private static final TAG:Ljava/lang/String;

.field private static final VERSIONING_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE version ( id INTEGER PRIMARY KEY, data TEXT )"

.field private static final VERSIONING_DELETE_UP_TO_ID:Ljava/lang/String; = "id <= ?"

.field private static final VERSIONING_FIELD_DATA:Ljava/lang/String; = "data"

.field private static final VERSIONING_FIELD_ID:Ljava/lang/String; = "id"

.field private static final VERSIONING_TABLE:Ljava/lang/String; = "version"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    const/4 v0, 0x0

    const/16 v1, 0x9

    const-string v2, "analytics.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 125
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 127
    return-void
.end method

.method private getCurrentVersioningId()Landroid/database/Cursor;
    .registers 10

    .line 501
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 502
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "version"

    const-string/jumbo v0, "id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 506
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_23

    .line 507
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 509
    :cond_23
    return-object v0
.end method

.method private getTableAndWhereClauseFromType(I)[Ljava/lang/String;
    .registers 6
    .param p1, "type"    # I

    .line 246
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 247
    .local v0, "content":[Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_26

    .line 257
    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getTableAndWhereClauseFromType(): Unknown table"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 253
    :pswitch_11
    const-string v3, "events"

    aput-object v3, v0, v2

    .line 254
    const-string/jumbo v2, "id IN (SELECT id FROM events ORDER BY + id LIMIT ?)"

    aput-object v2, v0, v1

    .line 255
    goto :goto_25

    .line 249
    :pswitch_1b
    const-string v3, "cleaned_events"

    aput-object v3, v0, v2

    .line 250
    const-string/jumbo v2, "id IN (SELECT id FROM cleaned_events ORDER BY + id LIMIT ?)"

    aput-object v2, v0, v1

    .line 251
    nop

    .line 260
    :goto_25
    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_11
    .end packed-switch
.end method

.method private isContentValuesValid(Landroid/content/ContentValues;I)Z
    .registers 7
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "type"    # I

    .line 192
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_73

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 193
    const-string/jumbo v0, "vid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 194
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_73

    .line 199
    :cond_38
    const/4 v0, 0x1

    if-nez p2, :cond_4a

    .line 200
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_62

    .line 201
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Wrong fields! Invalid clean event"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return v2

    .line 204
    :cond_4a
    if-ne p2, v0, :cond_6b

    .line 205
    const-string v1, "bulk"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 206
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 207
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_62

    goto :goto_63

    .line 215
    :cond_62
    return v0

    .line 208
    :cond_63
    :goto_63
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Wrong fields! Invalid event"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return v2

    .line 212
    :cond_6b
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unknown table"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return v2

    .line 196
    :cond_73
    :goto_73
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Wrong fields! Missing id/vid/data"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return v2
.end method

.method private putLastIdDefaultValue(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 330
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "putLastIdDefaultValue()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 332
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "last_event_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string/jumbo v2, "internal_data"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 334
    .local v2, "id":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_2c

    .line 335
    const-string/jumbo v4, "putLastIdDefaultValue(): Error"

    invoke-static {v0, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_2c
    return-void
.end method

.method private updateLastId(J)V
    .registers 7
    .param p1, "id"    # J

    .line 322
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLastId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 324
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "last_event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 326
    const-string/jumbo v2, "internal_data"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 327
    return-void
.end method


# virtual methods
.method public addB2CFeatures(Landroid/content/ContentValues;)J
    .registers 5
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .line 744
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "addB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 746
    const-string v1, "feature_name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 747
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 748
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_32

    .line 752
    :cond_25
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 753
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "package_feature_b2c"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1

    .line 750
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_32
    :goto_32
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public addEvent(Landroid/content/ContentValues;I)J
    .registers 14
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "type"    # I

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->isContentValuesValid(Landroid/content/ContentValues;I)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_10

    .line 220
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "addEvent() : Invalid content values"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-wide v1

    .line 224
    :cond_10
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "addEvent()"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 226
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTableAndWhereClauseFromType(I)[Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "content":[Ljava/lang/String;
    if-eqz v4, :cond_5a

    array-length v5, v4

    if-lez v5, :cond_5a

    const/4 v5, 0x0

    aget-object v6, v4, v5

    if-eqz v6, :cond_5a

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_5a

    .line 232
    :cond_32
    const/4 v6, 0x1

    .line 233
    .local v6, "eventsAmount":I
    const/4 v7, 0x1

    if-ne p2, v7, :cond_40

    .line 234
    const-string v7, "bulk"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 236
    :cond_40
    aget-object v5, v4, v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 237
    .local v7, "lastId":J
    cmp-long v1, v7, v1

    if-nez v1, :cond_51

    .line 238
    const-string v1, "addEvent(): Couldn\'t add event"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    .line 240
    :cond_51
    int-to-long v0, v6

    add-long/2addr v0, v7

    const-wide/16 v9, 0x1

    sub-long/2addr v0, v9

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->updateLastId(J)V

    .line 242
    :goto_59
    return-wide v7

    .line 228
    .end local v6    # "eventsAmount":I
    .end local v7    # "lastId":J
    :cond_5a
    :goto_5a
    const-string v5, "addEvent(): Wrong log type"

    invoke-static {v0, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-wide v1
.end method

.method public addFeaturesBlacklist(Landroid/content/ContentValues;)J
    .registers 5
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .line 585
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "addFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v1, "feature"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 587
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 588
    const-string v1, "event"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 589
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 590
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_33

    goto :goto_3f

    .line 594
    :cond_33
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 595
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "feature_blocklist"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1

    .line 591
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3f
    :goto_3f
    const-string v1, "addFeaturesBlacklist(): invalid fields!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public addFeaturesWhitelist(Landroid/content/ContentValues;)J
    .registers 5
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .line 691
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "addFeaturesWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v1, "feature"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 693
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 694
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 695
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    goto :goto_49

    .line 699
    :cond_27
    const-string v0, "enable_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 700
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 702
    :cond_35
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 704
    :cond_3d
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 705
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "features_whitelist"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1

    .line 696
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_49
    :goto_49
    const-string v1, "addFeaturesWhitelist(): missing feature field!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public addVersioningBlob(Landroid/content/ContentValues;)I
    .registers 11
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .line 547
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "addVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v1, -0x1

    if-eqz p1, :cond_69

    .line 549
    const-string/jumbo v2, "id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 550
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 551
    const-string v3, "eventId"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 552
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2b

    goto :goto_69

    .line 556
    :cond_2b
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 557
    .local v2, "newVersioningId":Ljava/lang/Integer;
    if-nez v2, :cond_37

    .line 558
    const-string v3, "addVersioningBlob(): versioning id is null!"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return v1

    .line 561
    :cond_37
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 562
    .local v4, "eventId":Ljava/lang/Long;
    const-wide/16 v5, -0x1

    .line 563
    .local v5, "id":J
    if-eqz v4, :cond_4e

    .line 564
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 566
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v7, "version"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 569
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4e
    if-eqz v4, :cond_63

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_57

    goto :goto_63

    .line 573
    :cond_57
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->updateLastId(J)V

    .line 575
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 570
    :cond_63
    :goto_63
    const-string v3, "addVersioningBlob(): error"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return v1

    .line 553
    .end local v2    # "newVersioningId":Ljava/lang/Integer;
    .end local v4    # "eventId":Ljava/lang/Long;
    .end local v5    # "id":J
    :cond_69
    :goto_69
    const-string v2, "addVersioningBlob(): wrong fields!"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return v1
.end method

.method public deleteAllEvents()J
    .registers 4

    .line 473
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteAllEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 475
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "events"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public deleteB2CFeatures([Ljava/lang/String;)J
    .registers 5
    .param p1, "packageName"    # [Ljava/lang/String;

    .line 772
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 774
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_1d

    array-length v1, p1

    if-nez v1, :cond_11

    goto :goto_1d

    .line 777
    :cond_11
    const-string/jumbo v1, "package_feature_b2c"

    const-string/jumbo v2, "packageName = ?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 775
    :cond_1d
    :goto_1d
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method deleteCompressedEventChunk(J)J
    .registers 7
    .param p1, "size"    # J

    .line 647
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteCompressedEventChunk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_2a

    .line 649
    const-string v3, "deleteCompressedEventChunk(): invalid number"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    return-wide v1

    .line 652
    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 653
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "compressed_events"

    const-string/jumbo v3, "id IN (SELECT id FROM compressed_events ORDER BY + id LIMIT ?)"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public deleteEventChunk(JI)J
    .registers 9
    .param p1, "size"    # J
    .param p3, "type"    # I

    .line 441
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteEventChunk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-wide/16 v1, 0x1

    cmp-long v1, p1, v1

    if-gez v1, :cond_2c

    .line 443
    const-string v1, "deleteEventChunk(): invalid number"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-wide/16 v0, 0x0

    return-wide v0

    .line 446
    :cond_2c
    invoke-direct {p0, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTableAndWhereClauseFromType(I)[Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "content":[Ljava/lang/String;
    if-eqz v1, :cond_66

    array-length v2, v1

    if-lez v2, :cond_66

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_66

    const/4 v3, 0x1

    aget-object v4, v1, v3

    if-eqz v4, :cond_66

    aget-object v4, v1, v2

    .line 448
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_66

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_66

    .line 452
    :cond_50
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 453
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    aget-object v2, v1, v2

    aget-object v3, v1, v3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    return-wide v2

    .line 449
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_66
    :goto_66
    const-string v2, "deleteEventChunk(): Wrong log type"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public deleteEventsUpToSyntheticId()V
    .registers 7

    .line 457
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 458
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getSyntheticRowId()I

    move-result v1

    .line 459
    .local v1, "synId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 460
    sget-object v2, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "deleteEventsUpToSyntheticId(): No legacy content"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void

    .line 463
    :cond_13
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "events"

    const-string/jumbo v4, "id <= ?"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 464
    .local v2, "rows":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_64

    .line 465
    sget-object v3, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteEventsUpToSyntheticId(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " events, up to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "have been deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 467
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "row_id"

    const-string v5, "-1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string/jumbo v4, "synthetic_key"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 470
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_64
    return-void
.end method

.method public deleteFeatureWhitelist(Ljava/lang/String;)J
    .registers 6
    .param p1, "feature"    # Ljava/lang/String;

    .line 735
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeatureWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 737
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_22

    .line 740
    :cond_14
    const-string v1, "feature = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "features_whitelist"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 738
    :cond_22
    :goto_22
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public deleteFeaturesBlacklist()J
    .registers 4

    .line 610
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 612
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "feature_blocklist"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public deleteFeaturesWhitelist([Ljava/lang/String;)J
    .registers 9
    .param p1, "features"    # [Ljava/lang/String;

    .line 720
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeaturesWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-wide/16 v0, 0x0

    .line 722
    .local v0, "rows":J
    if-eqz p1, :cond_1e

    array-length v2, p1

    if-nez v2, :cond_f

    goto :goto_1e

    .line 728
    :cond_f
    array-length v2, p1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1d

    aget-object v4, p1, v3

    .line 729
    .local v4, "feature":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeatureWhitelist(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 728
    .end local v4    # "feature":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 731
    :cond_1d
    return-wide v0

    .line 723
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 724
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "features_whitelist"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    .line 725
    return-wide v0
.end method

.method public deleteFromVersion(J)J
    .registers 7
    .param p1, "versioningBlobId"    # J

    .line 579
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteFromVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 581
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "version"

    const-string/jumbo v3, "id <= ?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public deleteUpTo(J)J
    .registers 7
    .param p1, "id"    # J

    .line 479
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUpTo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 481
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "events"

    const-string/jumbo v3, "id <= ?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public getB2CFeatures([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .param p1, "packageName"    # [Ljava/lang/String;

    .line 757
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 759
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 760
    .local v1, "selection":Ljava/lang/String;
    if-eqz p1, :cond_15

    array-length v2, p1

    if-lez v2, :cond_15

    .line 761
    const-string/jumbo v1, "packageName = ?"

    .line 763
    :cond_15
    const-string/jumbo v3, "package_feature_b2c"

    const-string/jumbo v2, "packageName"

    const-string v4, "feature_name"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v5, v1

    move-object v6, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 765
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_36

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_36

    .line 766
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 768
    :cond_36
    return-object v2
.end method

.method public getCleanedEventsCursor(Ljava/lang/Integer;)Landroid/database/Cursor;
    .registers 13
    .param p1, "size"    # Ljava/lang/Integer;

    .line 523
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCleanedEventsCursor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "limitParam":Ljava/lang/String;
    if-eqz p1, :cond_f

    .line 526
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 528
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 529
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "cleaned_events"

    const-string/jumbo v1, "vid"

    const-string v3, "data"

    const-string/jumbo v4, "id"

    filled-new-array {v4, v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move-object v9, v0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 532
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_37

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_37

    .line 533
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 535
    :cond_37
    return-object v1
.end method

.method getCompressedEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;
    .registers 14
    .param p1, "limit"    # Ljava/lang/Integer;

    .line 347
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCompressedEventChunk()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 349
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 350
    .local v2, "sLimit":Ljava/lang/String;
    if-eqz p1, :cond_15

    .line 351
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_16

    .line 350
    :cond_15
    move-object v11, v2

    .line 353
    .end local v2    # "sLimit":Ljava/lang/String;
    .local v11, "sLimit":Ljava/lang/String;
    :goto_16
    const-string v3, "compressed_events"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "id ASC"

    move-object v2, v1

    move-object v10, v11

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 355
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_30

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_2f

    goto :goto_30

    .line 362
    :cond_2f
    return-object v2

    .line 356
    :cond_30
    :goto_30
    const-string/jumbo v3, "getCompressedEventChunk(): There is no compressed data"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    if-eqz v2, :cond_3b

    .line 358
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompressedEventCountValue()J
    .registers 3

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "compressed_events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentDatabaseSizeCursor()Landroid/database/Cursor;
    .registers 4

    .line 491
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCurrentDatabaseSizeCursor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "databaseSize"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 493
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCurrentDatabaseSizeInBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 494
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2c

    .line 495
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 497
    :cond_2c
    return-object v0
.end method

.method public getCurrentDatabaseSizeInBytes()J
    .registers 4

    .line 485
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCurrentDatabaseSizeInBytes()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "analytics.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 487
    .local v0, "dbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1
.end method

.method public getCurrentVersioningIdInternal()I
    .registers 4

    .line 513
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCurrentVersioningId()Landroid/database/Cursor;

    move-result-object v0

    .line 514
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, -0x1

    .line 515
    .local v1, "id":I
    if-eqz v0, :cond_26

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_26

    .line 516
    const-string/jumbo v2, "id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    move v1, v2

    goto :goto_26

    .line 513
    .end local v1    # "id":I
    :catchall_1a
    move-exception v1

    if-eqz v0, :cond_25

    :try_start_1d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    throw v1

    .line 518
    .restart local v1    # "id":I
    :cond_26
    :goto_26
    nop

    .line 519
    if-eqz v0, :cond_2c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 518
    :cond_2c
    return v1
.end method

.method public getEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;
    .registers 16
    .param p1, "size"    # Ljava/lang/Integer;

    .line 264
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getEventChunk()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 267
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "events"

    const-string/jumbo v1, "id"

    const-string/jumbo v11, "vid"

    const-string v12, "bulk"

    const-string v13, "data"

    filled-new-array {v1, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 271
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_2a

    .line 272
    return-object v2

    .line 275
    :cond_2a
    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array {v1, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 281
    .local v3, "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v4, 0x0

    .line 282
    .local v4, "amountOfEvents":I
    if-eqz v2, :cond_82

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_82

    .line 283
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 284
    .local v1, "idColumnIndex":I
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 285
    .local v5, "vidColumnIndex":I
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 286
    .local v6, "bulkColumnIndex":I
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 288
    .local v7, "dataColumnIndex":I
    :goto_4d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_82

    .line 289
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 290
    .local v8, "eventsToAdd":I
    add-int v9, v4, v8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v9, v10, :cond_60

    .line 291
    goto :goto_82

    .line 294
    :cond_60
    nop

    .line 295
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 296
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 297
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 298
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v9

    .line 294
    invoke-virtual {v3, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 300
    add-int/2addr v4, v8

    .line 301
    .end local v8    # "eventsToAdd":I
    goto :goto_4d

    .line 303
    .end local v1    # "idColumnIndex":I
    .end local v5    # "vidColumnIndex":I
    .end local v6    # "bulkColumnIndex":I
    .end local v7    # "dataColumnIndex":I
    :cond_82
    :goto_82
    if-eqz v2, :cond_87

    .line 304
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_87
    return-object v3
.end method

.method public getEventCount()Landroid/database/Cursor;
    .registers 4

    .line 340
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getEventCount()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "count"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 342
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCountValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 343
    return-object v0
.end method

.method public getEventCountCursor()Landroid/database/Cursor;
    .registers 11

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 386
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "events"

    const-string v0, "bulk"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 387
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_21

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_20

    goto :goto_21

    .line 393
    :cond_20
    return-object v0

    .line 388
    :cond_21
    :goto_21
    if-eqz v0, :cond_26

    .line 389
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_26
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEventCountValue()J
    .registers 5

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "eventCount":I
    const/4 v1, 0x0

    .line 369
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCountCursor()Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 370
    if-eqz v1, :cond_24

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_10

    goto :goto_24

    .line 373
    :cond_10
    :goto_10
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 374
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_2b

    add-int/2addr v0, v2

    goto :goto_10

    .line 377
    :cond_1d
    if-eqz v1, :cond_22

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_22
    int-to-long v2, v0

    return-wide v2

    .line 371
    :cond_24
    :goto_24
    int-to-long v2, v0

    .line 377
    if-eqz v1, :cond_2a

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_2a
    return-wide v2

    .line 377
    :catchall_2b
    move-exception v2

    if-eqz v1, :cond_31

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_31
    throw v2
.end method

.method public getFeaturesBlacklist()Landroid/database/Cursor;
    .registers 11

    .line 599
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 601
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "feature_blocklist"

    const-string v1, "feature"

    const-string v2, "event"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 603
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2b

    .line 604
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 606
    :cond_2b
    return-object v1
.end method

.method public getFeaturesWhitelist()Landroid/database/Cursor;
    .registers 11

    .line 709
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getFeaturesWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 711
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "features_whitelist"

    const-string v1, "feature"

    const-string v2, "enable_type"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 713
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2b

    .line 714
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 716
    :cond_2b
    return-object v1
.end method

.method public getLastId()Landroid/database/Cursor;
    .registers 11

    .line 310
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getLastId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 312
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v3, "internal_data"

    const-string/jumbo v1, "last_event_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 315
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2b

    .line 316
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 318
    :cond_2b
    return-object v1
.end method

.method getSyntheticRowId()I
    .registers 11

    .line 617
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 618
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "synthetic_key"

    const-string/jumbo v9, "row_id"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 620
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_4b

    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_21

    goto :goto_4b

    .line 624
    :cond_21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 625
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 626
    .local v1, "synRowId":I
    sget-object v2, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSyntheticRowId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_5b

    .line 627
    if-eqz v0, :cond_4a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 628
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_4a
    return v1

    .line 621
    .end local v1    # "synRowId":I
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_4b
    :goto_4b
    :try_start_4b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSyntheticRowId(): Key is deleted or it is not generated yet."

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_5b

    .line 622
    nop

    .line 627
    if-eqz v0, :cond_59

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_59
    const/4 v1, -0x1

    return v1

    .line 618
    :catchall_5b
    move-exception v1

    if-eqz v0, :cond_66

    :try_start_5e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_66
    :goto_66
    throw v1
.end method

.method public getTotalCompressedEvent(Ljava/lang/Integer;)I
    .registers 6
    .param p1, "limit"    # Ljava/lang/Integer;

    .line 401
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getTotalCompressedEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_12

    goto :goto_34

    .line 406
    :cond_12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTotalCompressedEventCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 407
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 408
    .local v2, "totalCompressedEvents":I
    if-nez v1, :cond_1e

    .line 409
    return v2

    .line 412
    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 413
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2f

    add-int/2addr v2, v3

    goto :goto_1e

    .line 416
    :cond_2a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 417
    nop

    .line 418
    return v2

    .line 416
    :catchall_2f
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 417
    throw v0

    .line 403
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "totalCompressedEvents":I
    :cond_34
    :goto_34
    return v0
.end method

.method public getTotalCompressedEventCursor()Landroid/database/Cursor;
    .registers 2

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTotalCompressedEventCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTotalCompressedEventCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .param p1, "limit"    # Ljava/lang/String;

    .line 426
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTotalCompressedEventCursor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 428
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "compressed_events"

    const-string v2, "bulk"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move-object v10, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 430
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_40

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_3f

    goto :goto_40

    .line 437
    :cond_3f
    return-object v2

    .line 431
    :cond_40
    :goto_40
    const-string/jumbo v3, "getTotalCompressedEventCursor(): There is no compressed events"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-eqz v2, :cond_4b

    .line 433
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_4b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersioningBlob()Landroid/database/Cursor;
    .registers 10

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 540
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "version"

    const-string v0, "data"

    const-string/jumbo v2, "id"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 543
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    const-string v0, "PRAGMA journal_mode = OFF;"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 133
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_f

    .line 134
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_f
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 140
    const-string v0, "CREATE TABLE events ( id INTEGER PRIMARY KEY, vid INTEGER, bulk INTEGER DEFAULT 1, data BLOB )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string v0, "CREATE TABLE version ( id INTEGER PRIMARY KEY, data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    const-string v0, "CREATE TABLE feature_blocklist ( feature TEXT PRIMARY KEY, event TEXT NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    const-string v0, "CREATE TABLE internal_data ( last_event_id INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string v0, "CREATE TABLE cleaned_events ( id INTEGER PRIMARY KEY, vid INTEGER, data BLOB )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    const-string v0, "CREATE TABLE synthetic_key ( row_id INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    const-string v0, "CREATE TABLE compressed_events ( id INTEGER PRIMARY KEY, length INTEGER, original_length INTEGER, bulk INTEGER DEFAULT 1000, content BLOB )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    const-string v0, "CREATE TABLE features_whitelist ( feature TEXT PRIMARY KEY, enable_type INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    const-string v0, "CREATE TABLE package_feature_b2c ( packageName TEXT PRIMARY KEY, feature_name TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->putLastIdDefaultValue(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 150
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 154
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "oldVersion=%d, newVersion=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x2

    const-string v1, "CREATE TABLE feature_blocklist ( feature TEXT PRIMARY KEY, event TEXT NOT NULL)"

    if-ge p2, v0, :cond_39

    .line 157
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-string v0, "DROP TABLE IF EXISTS version"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const-string v0, "DROP TABLE IF EXISTS feature_blocklist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string v0, "CREATE TABLE events ( id INTEGER PRIMARY KEY, vid INTEGER, bulk INTEGER DEFAULT 1, data BLOB )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const-string v0, "CREATE TABLE version ( id INTEGER PRIMARY KEY, data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    :cond_39
    const/4 v0, 0x3

    if-ge p2, v0, :cond_44

    .line 165
    const-string v0, "CREATE TABLE internal_data ( last_event_id INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->putLastIdDefaultValue(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    :cond_44
    const/4 v0, 0x4

    if-ge p2, v0, :cond_4c

    .line 169
    const-string v0, "CREATE TABLE cleaned_events ( id INTEGER PRIMARY KEY, vid INTEGER, data BLOB )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    :cond_4c
    const/4 v0, 0x5

    if-ge p2, v0, :cond_54

    .line 172
    const-string v0, "CREATE TABLE synthetic_key ( row_id INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    :cond_54
    const/4 v0, 0x6

    if-ge p2, v0, :cond_5c

    .line 175
    const-string v0, "CREATE TABLE compressed_events ( id INTEGER PRIMARY KEY, length INTEGER, original_length INTEGER, bulk INTEGER DEFAULT 1000, content BLOB )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    :cond_5c
    const/4 v0, 0x7

    if-ge p2, v0, :cond_69

    .line 178
    const-string v0, "CREATE TABLE features_whitelist ( feature TEXT PRIMARY KEY, enable_type INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v0, "CREATE TABLE package_feature_b2c ( packageName TEXT PRIMARY KEY, feature_name TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    :cond_69
    const/16 v0, 0x8

    if-ge p2, v0, :cond_77

    .line 182
    const-string v0, "ALTER TABLE events ADD bulk INTEGER DEFAULT 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    const-string v0, "ALTER TABLE compressed_events ADD bulk INTEGER DEFAULT 1000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    :cond_77
    const/16 v0, 0x9

    if-ge p2, v0, :cond_83

    .line 186
    const-string v0, "DROP TABLE IF EXISTS features_blacklist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    :cond_83
    return-void
.end method

.method performCompressedEventsTransaction(Landroid/content/ContentValues;)Z
    .registers 10
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 657
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "performCompressedEventsTransaction()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v1, "content"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_bb

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bb

    .line 660
    const-string/jumbo v1, "length"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_bb

    .line 661
    const-string/jumbo v1, "original_length"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_bb

    .line 662
    const-string/jumbo v1, "plainEventsSize"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 663
    const-string v2, "bulk"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 664
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5e

    goto :goto_bb

    .line 668
    :cond_5e
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 669
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 670
    .local v2, "plainEventsSize":I
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 673
    :try_start_70
    const-string v1, "compressed_events"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_9e

    .line 676
    const-string v1, "events"

    const-string/jumbo v4, "id IN (SELECT id FROM events ORDER BY + id LIMIT ?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_96

    .line 679
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 680
    const/4 v1, 0x1

    .local v1, "result":Z
    goto :goto_b2

    .line 677
    .end local v1    # "result":Z
    :cond_96
    new-instance v1, Landroid/database/SQLException;

    const-string v3, "Transaction Failure. Not possible to delete plain-text events."

    invoke-direct {v1, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "plainEventsSize":I
    .end local p0    # "this":Lcom/samsung/android/knox/analytics/database/DatabaseHelper;
    .end local p1    # "values":Landroid/content/ContentValues;
    throw v1

    .line 674
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "plainEventsSize":I
    .restart local p0    # "this":Lcom/samsung/android/knox/analytics/database/DatabaseHelper;
    .restart local p1    # "values":Landroid/content/ContentValues;
    :cond_9e
    new-instance v1, Landroid/database/SQLException;

    const-string v3, "Transaction Failure. Not possible to insert compressed events."

    invoke-direct {v1, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "plainEventsSize":I
    .end local p0    # "this":Lcom/samsung/android/knox/analytics/database/DatabaseHelper;
    .end local p1    # "values":Landroid/content/ContentValues;
    throw v1
    :try_end_a6
    .catch Landroid/database/SQLException; {:try_start_70 .. :try_end_a6} :catch_a8
    .catchall {:try_start_70 .. :try_end_a6} :catchall_a6

    .line 685
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "plainEventsSize":I
    .restart local p0    # "this":Lcom/samsung/android/knox/analytics/database/DatabaseHelper;
    .restart local p1    # "values":Landroid/content/ContentValues;
    :catchall_a6
    move-exception v1

    goto :goto_b7

    .line 681
    :catch_a8
    move-exception v1

    .line 682
    .local v1, "e":Landroid/database/SQLException;
    :try_start_a9
    sget-object v3, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "performCompressedEventsTransaction(): "

    invoke-static {v3, v4, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_a6

    .line 683
    const/4 v1, 0x0

    .line 685
    .local v1, "result":Z
    :goto_b2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 686
    nop

    .line 687
    return v1

    .line 685
    .end local v1    # "result":Z
    :goto_b7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 686
    throw v1

    .line 665
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "plainEventsSize":I
    :cond_bb
    :goto_bb
    const-string/jumbo v1, "performCompressedEventsTransaction(): wrong fields!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return v3
.end method

.method public setSyntheticRowId()V
    .registers 9

    .line 632
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSyntheticRowId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 634
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 635
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getLastId()Landroid/database/Cursor;

    move-result-object v3

    .line 636
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_5a

    :try_start_17
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1e

    goto :goto_5a

    .line 640
    :cond_1e
    const-string/jumbo v4, "row_id"

    const-string/jumbo v5, "last_event_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string/jumbo v4, "synthetic_key"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 642
    .local v4, "id":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSyntheticRowId(): Marked event id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_17 .. :try_end_52} :catchall_58

    .line 643
    .end local v4    # "id":J
    if-eqz v3, :cond_57

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 644
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_57
    return-void

    .line 635
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_58
    move-exception v0

    goto :goto_66

    .line 637
    :cond_5a
    :goto_5a
    :try_start_5a
    const-string/jumbo v4, "setSyntheticRowId(): There is no data in events table."

    invoke-static {v0, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_58

    .line 643
    if-eqz v3, :cond_65

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 638
    :cond_65
    return-void

    .line 635
    :goto_66
    if-eqz v3, :cond_70

    :try_start_68
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v4

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_70
    :goto_70
    throw v0
.end method
