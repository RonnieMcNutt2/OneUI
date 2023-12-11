.class public final Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "IptvFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/IptvFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBitrate:J

.field private mContentUrl:Ljava/lang/String;

.field private mDstIpAddress:[B

.field private mDstPort:I

.field private mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

.field private mIgmp:I

.field private mProtocol:I

.field private mSrcIpAddress:[B

.field private mSrcPort:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_28

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mSrcIpAddress:[B

    .line 188
    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mDstIpAddress:[B

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mSrcPort:I

    .line 190
    iput v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mDstPort:I

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

    .line 192
    iput v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mProtocol:I

    .line 193
    iput v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mIgmp:I

    .line 194
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mBitrate:J

    .line 195
    const-string v0, ""

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mContentUrl:Ljava/lang/String;

    .line 198
    return-void

    nop

    :array_28
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/IptvFrontendSettings;
    .registers 14

    .line 304
    new-instance v12, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;

    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mSrcIpAddress:[B

    iget-object v2, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mDstIpAddress:[B

    iget v3, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mSrcPort:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mDstPort:I

    iget-object v5, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

    iget v6, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mProtocol:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mIgmp:I

    iget-wide v8, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mBitrate:J

    iget-object v10, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mContentUrl:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;-><init>([B[BIILandroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;IIJLjava/lang/String;Landroid/media/tv/tuner/frontend/IptvFrontendSettings-IA;)V

    return-object v12
.end method

.method public setBitrate(J)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .registers 3
    .param p1, "bitrate"    # J

    .line 284
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mBitrate:J

    .line 285
    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .registers 2
    .param p1, "contentUrl"    # Ljava/lang/String;

    .line 295
    iput-object p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mContentUrl:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public setDstIpAddress([B)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .registers 2
    .param p1, "dstIpAddress"    # [B

    .line 218
    iput-object p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mDstIpAddress:[B

    .line 219
    return-object p0
.end method

.method public setDstPort(I)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .registers 2
    .param p1, "dstPort"    # I

    .line 240
    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mDstPort:I

    .line 241
    return-object p0
.end method

.method public setFec(Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .registers 2
    .param p1, "fec"    # Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

    .line 251
    iput-object p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

    .line 252
    return-object p0
.end method

.method public setIgmp(I)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .registers 2
    .param p1, "igmp"    # I

    .line 273
    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mIgmp:I

    .line 274
    return-object p0
.end method

.method public setProtocol(I)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .registers 2
    .param p1, "protocol"    # I

    .line 262
    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mProtocol:I

    .line 263
    return-object p0
.end method

.method public setSrcIpAddress([B)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .registers 2
    .param p1, "srcIpAddress"    # [B

    .line 207
    iput-object p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mSrcIpAddress:[B

    .line 208
    return-object p0
.end method

.method public setSrcPort(I)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .registers 2
    .param p1, "srcPort"    # I

    .line 229
    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mSrcPort:I

    .line 230
    return-object p0
.end method
