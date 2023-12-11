.class public final Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
.super Ljava/lang/Object;
.source "SQLiteSlowQueryCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteSlowQueryCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlowQueryParams"
.end annotation


# instance fields
.field public mCpn:Ljava/lang/String;

.field public mCurrentRows:J

.field public mDbn:Ljava/lang/String;

.field public mDbs:J

.field public mHashedDbn:Ljava/lang/String;

.field public mHiddenSql:Ljava/lang/String;

.field public mLat:J

.field public mMpn:Ljava/lang/String;

.field public mPackets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPgc:J

.field public mSql:Ljava/lang/String;

.field public mStartTime:J

.field public mTotalRows:J

.field public mVer:J

.field public mWas:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;JJ)V
    .registers 11
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "executionTime"    # J
    .param p6, "sql"    # Ljava/lang/String;
    .param p7, "currentRows"    # J
    .param p9, "totalRows"    # J

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mDbn:Ljava/lang/String;

    .line 485
    iput-wide p4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mLat:J

    .line 486
    iput-object p6, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    .line 487
    iput-wide p7, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mCurrentRows:J

    .line 488
    iput-wide p9, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mTotalRows:J

    .line 489
    iput-wide p2, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mStartTime:J

    .line 490
    return-void
.end method
