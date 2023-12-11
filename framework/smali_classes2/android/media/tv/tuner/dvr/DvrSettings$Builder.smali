.class public final Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
.super Ljava/lang/Object;
.source "DvrSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/dvr/DvrSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDataFormat:I

.field private mHighThreshold:J

.field private mLowThreshold:J

.field private mPacketSize:J

.field private mStatusMask:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/dvr/DvrSettings;
    .registers 12

    .line 194
    new-instance v10, Landroid/media/tv/tuner/dvr/DvrSettings;

    iget v1, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mStatusMask:I

    iget-wide v2, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mLowThreshold:J

    iget-wide v4, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mHighThreshold:J

    iget-wide v6, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mPacketSize:J

    iget v8, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mDataFormat:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/dvr/DvrSettings;-><init>(IJJJILandroid/media/tv/tuner/dvr/DvrSettings-IA;)V

    return-object v10
.end method

.method public setDataFormat(I)Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
    .registers 2
    .param p1, "dataFormat"    # I

    .line 185
    iput p1, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mDataFormat:I

    .line 186
    return-object p0
.end method

.method public setHighThreshold(J)Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
    .registers 3
    .param p1, "highThreshold"    # J

    .line 167
    iput-wide p1, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mHighThreshold:J

    .line 168
    return-object p0
.end method

.method public setLowThreshold(J)Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
    .registers 3
    .param p1, "lowThreshold"    # J

    .line 158
    iput-wide p1, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mLowThreshold:J

    .line 159
    return-object p0
.end method

.method public setPacketSize(J)Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
    .registers 3
    .param p1, "packetSize"    # J

    .line 176
    iput-wide p1, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mPacketSize:J

    .line 177
    return-object p0
.end method

.method public setStatusMask(I)Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
    .registers 2
    .param p1, "statusMask"    # I

    .line 149
    iput p1, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mStatusMask:I

    .line 150
    return-object p0
.end method
