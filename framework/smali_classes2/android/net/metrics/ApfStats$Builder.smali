.class public final Landroid/net/metrics/ApfStats$Builder;
.super Ljava/lang/Object;
.source "ApfStats.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/ApfStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDroppedRas:I

.field private mDurationMs:J

.field private mMatchingRas:I

.field private mMaxProgramSize:I

.field private mParseErrors:I

.field private mProgramUpdates:I

.field private mProgramUpdatesAll:I

.field private mProgramUpdatesAllowingMulticast:I

.field private mReceivedRas:I

.field private mZeroLifetimeRas:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/net/metrics/ApfStats;
    .registers 15

    .line 239
    new-instance v13, Landroid/net/metrics/ApfStats;

    iget-wide v1, p0, Landroid/net/metrics/ApfStats$Builder;->mDurationMs:J

    iget v3, p0, Landroid/net/metrics/ApfStats$Builder;->mReceivedRas:I

    iget v4, p0, Landroid/net/metrics/ApfStats$Builder;->mMatchingRas:I

    iget v5, p0, Landroid/net/metrics/ApfStats$Builder;->mDroppedRas:I

    iget v6, p0, Landroid/net/metrics/ApfStats$Builder;->mZeroLifetimeRas:I

    iget v7, p0, Landroid/net/metrics/ApfStats$Builder;->mParseErrors:I

    iget v8, p0, Landroid/net/metrics/ApfStats$Builder;->mProgramUpdates:I

    iget v9, p0, Landroid/net/metrics/ApfStats$Builder;->mProgramUpdatesAll:I

    iget v10, p0, Landroid/net/metrics/ApfStats$Builder;->mProgramUpdatesAllowingMulticast:I

    iget v11, p0, Landroid/net/metrics/ApfStats$Builder;->mMaxProgramSize:I

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/net/metrics/ApfStats;-><init>(JIIIIIIIIILandroid/net/metrics/ApfStats-IA;)V

    return-object v13
.end method

.method public setDroppedRas(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2
    .param p1, "droppedRas"    # I

    .line 176
    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mDroppedRas:I

    .line 177
    return-object p0
.end method

.method public setDurationMs(J)Landroid/net/metrics/ApfStats$Builder;
    .registers 3
    .param p1, "durationMs"    # J

    .line 149
    iput-wide p1, p0, Landroid/net/metrics/ApfStats$Builder;->mDurationMs:J

    .line 150
    return-object p0
.end method

.method public setMatchingRas(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2
    .param p1, "matchingRas"    # I

    .line 167
    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mMatchingRas:I

    .line 168
    return-object p0
.end method

.method public setMaxProgramSize(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2
    .param p1, "maxProgramSize"    # I

    .line 230
    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mMaxProgramSize:I

    .line 231
    return-object p0
.end method

.method public setParseErrors(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2
    .param p1, "parseErrors"    # I

    .line 194
    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mParseErrors:I

    .line 195
    return-object p0
.end method

.method public setProgramUpdates(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2
    .param p1, "programUpdates"    # I

    .line 203
    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mProgramUpdates:I

    .line 204
    return-object p0
.end method

.method public setProgramUpdatesAll(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2
    .param p1, "programUpdatesAll"    # I

    .line 212
    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mProgramUpdatesAll:I

    .line 213
    return-object p0
.end method

.method public setProgramUpdatesAllowingMulticast(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2
    .param p1, "programUpdatesAllowingMulticast"    # I

    .line 221
    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mProgramUpdatesAllowingMulticast:I

    .line 222
    return-object p0
.end method

.method public setReceivedRas(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2
    .param p1, "receivedRas"    # I

    .line 158
    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mReceivedRas:I

    .line 159
    return-object p0
.end method

.method public setZeroLifetimeRas(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2
    .param p1, "zeroLifetimeRas"    # I

    .line 185
    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mZeroLifetimeRas:I

    .line 186
    return-object p0
.end method
