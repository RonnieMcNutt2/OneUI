.class public Lcom/samsung/android/transcode/info/ExportMediaInfo;
.super Ljava/lang/Object;
.source "ExportMediaInfo.java"


# instance fields
.field private final mFrameRate:I

.field private final mHeight:I

.field private final mIsHdr:Z

.field private final mVideoCodecType:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Z)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I
    .param p4, "videoCodecType"    # Ljava/lang/String;
    .param p5, "isHdr"    # Z

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mWidth:I

    .line 12
    iput p2, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mHeight:I

    .line 13
    iput p3, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mFrameRate:I

    .line 14
    iput-object p4, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mVideoCodecType:Ljava/lang/String;

    .line 15
    iput-boolean p5, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mIsHdr:Z

    .line 16
    return-void
.end method


# virtual methods
.method public getFrameRate()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mFrameRate:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mHeight:I

    return v0
.end method

.method public getVideoCodecType()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mVideoCodecType:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mWidth:I

    return v0
.end method

.method public isHdr()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mIsHdr:Z

    return v0
.end method
