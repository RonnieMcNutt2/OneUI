.class public Landroid/database/sqlite/SQLiteDebug$DbStats;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbStats"
.end annotation


# instance fields
.field public final arePoolStats:Z

.field public final cacheHits:I

.field public final cacheMisses:I

.field public final cacheSize:I

.field public dbName:Ljava/lang/String;

.field public dbSize:J

.field public lookaside:I

.field public pageSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJIIIIZ)V
    .registers 15
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "pageCount"    # J
    .param p4, "pageSize"    # J
    .param p6, "lookaside"    # I
    .param p7, "hits"    # I
    .param p8, "misses"    # I
    .param p9, "cachesize"    # I
    .param p10, "arePoolStats"    # Z

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    .line 200
    const-wide/16 v0, 0x400

    div-long v2, p4, v0

    iput-wide v2, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    .line 201
    mul-long v2, p2, p4

    div-long/2addr v2, v0

    iput-wide v2, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    .line 202
    iput p6, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    .line 203
    iput p7, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    .line 204
    iput p8, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    .line 205
    iput p9, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    .line 206
    iput-boolean p10, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->arePoolStats:Z

    .line 207
    return-void
.end method
