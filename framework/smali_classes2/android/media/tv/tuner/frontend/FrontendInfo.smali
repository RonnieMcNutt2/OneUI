.class public Landroid/media/tv/tuner/frontend/FrontendInfo;
.super Ljava/lang/Object;
.source "FrontendInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mAcquireRange:J

.field private final mExclusiveGroupId:I

.field private final mFrequencyRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrontendCap:Landroid/media/tv/tuner/frontend/FrontendCapabilities;

.field private final mId:I

.field private final mStatusCaps:[I

.field private final mSymbolRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I


# direct methods
.method private constructor <init>(IIJJIIJI[ILandroid/media/tv/tuner/frontend/FrontendCapabilities;)V
    .registers 24
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "minFrequency"    # J
    .param p5, "maxFrequency"    # J
    .param p7, "minSymbolRate"    # I
    .param p8, "maxSymbolRate"    # I
    .param p9, "acquireRange"    # J
    .param p11, "exclusiveGroupId"    # I
    .param p12, "statusCaps"    # [I
    .param p13, "frontendCap"    # Landroid/media/tv/tuner/frontend/FrontendCapabilities;

    .line 46
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    move v1, p1

    iput v1, v0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mId:I

    .line 48
    move v2, p2

    iput v2, v0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mType:I

    .line 50
    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-gez v3, :cond_14

    .line 51
    const-wide/32 v3, 0x7fffffff

    .end local p5    # "maxFrequency":J
    .local v3, "maxFrequency":J
    goto :goto_15

    .line 50
    .end local v3    # "maxFrequency":J
    .restart local p5    # "maxFrequency":J
    :cond_14
    move-wide v3, p5

    .line 53
    .end local p5    # "maxFrequency":J
    .restart local v3    # "maxFrequency":J
    :goto_15
    new-instance v5, Landroid/util/Range;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v5, v0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrequencyRange:Landroid/util/Range;

    .line 54
    new-instance v5, Landroid/util/Range;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v5, v0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mSymbolRateRange:Landroid/util/Range;

    .line 55
    move-wide/from16 v5, p9

    iput-wide v5, v0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mAcquireRange:J

    .line 56
    move/from16 v7, p11

    iput v7, v0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mExclusiveGroupId:I

    .line 57
    move-object/from16 v8, p12

    iput-object v8, v0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mStatusCaps:[I

    .line 58
    move-object/from16 v9, p13

    iput-object v9, v0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrontendCap:Landroid/media/tv/tuner/frontend/FrontendCapabilities;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 158
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 159
    return v0

    .line 161
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_58

    instance-of v2, p1, Landroid/media/tv/tuner/frontend/FrontendInfo;

    if-nez v2, :cond_c

    goto :goto_58

    .line 165
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 166
    .local v2, "info":Landroid/media/tv/tuner/frontend/FrontendInfo;
    iget v3, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mId:I

    invoke-virtual {v2}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getId()I

    move-result v4

    if-ne v3, v4, :cond_56

    iget v3, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mType:I

    invoke-virtual {v2}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getType()I

    move-result v4

    if-ne v3, v4, :cond_56

    iget-object v3, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrequencyRange:Landroid/util/Range;

    .line 167
    invoke-virtual {v2}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getFrequencyRangeLong()Landroid/util/Range;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mSymbolRateRange:Landroid/util/Range;

    .line 168
    invoke-virtual {v2}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getSymbolRateRange()Landroid/util/Range;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-wide v3, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mAcquireRange:J

    .line 169
    invoke-virtual {v2}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getAcquireRangeLong()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_56

    iget v3, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mExclusiveGroupId:I

    .line 170
    invoke-virtual {v2}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getExclusiveGroupId()I

    move-result v4

    if-ne v3, v4, :cond_56

    iget-object v3, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mStatusCaps:[I

    .line 171
    invoke-virtual {v2}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getStatusCapabilities()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_56

    goto :goto_57

    :cond_56
    move v0, v1

    .line 166
    :goto_57
    return v0

    .line 162
    .end local v2    # "info":Landroid/media/tv/tuner/frontend/FrontendInfo;
    :cond_58
    :goto_58
    return v1
.end method

.method public getAcquireRange()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-virtual {p0}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getAcquireRangeLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getAcquireRangeLong()J
    .registers 3

    .line 123
    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mAcquireRange:J

    return-wide v0
.end method

.method public getExclusiveGroupId()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mExclusiveGroupId:I

    return v0
.end method

.method public getFrequencyRange()Landroid/util/Range;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    new-instance v0, Landroid/util/Range;

    iget-object v1, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrequencyRange:Landroid/util/Range;

    .line 87
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrequencyRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 86
    return-object v0
.end method

.method public getFrequencyRangeLong()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrequencyRange:Landroid/util/Range;

    return-object v0
.end method

.method public getFrontendCapabilities()Landroid/media/tv/tuner/frontend/FrontendCapabilities;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrontendCap:Landroid/media/tv/tuner/frontend/FrontendCapabilities;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 68
    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mId:I

    return v0
.end method

.method public getStatusCapabilities()[I
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mStatusCaps:[I

    return-object v0
.end method

.method public getSymbolRateRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mSymbolRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mId:I

    return v0
.end method
