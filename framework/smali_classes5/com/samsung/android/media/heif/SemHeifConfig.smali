.class public Lcom/samsung/android/media/heif/SemHeifConfig;
.super Ljava/lang/Object;
.source "SemHeifConfig.java"


# instance fields
.field private mCameraInfoBuffer:Ljava/nio/ByteBuffer;

.field private mExifBuffer:Ljava/nio/ByteBuffer;

.field private final mMaster:Lcom/samsung/android/media/heif/SemInputImage;

.field private mThumb:Lcom/samsung/android/media/heif/SemInputImage;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/heif/SemInputImage;)V
    .registers 2
    .param p1, "master"    # Lcom/samsung/android/media/heif/SemInputImage;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mMaster:Lcom/samsung/android/media/heif/SemInputImage;

    .line 21
    return-void
.end method


# virtual methods
.method public getCameraInfo()Ljava/nio/ByteBuffer;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mCameraInfoBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getExifData()Ljava/nio/ByteBuffer;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getMasterImage()Lcom/samsung/android/media/heif/SemInputImage;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mMaster:Lcom/samsung/android/media/heif/SemInputImage;

    return-object v0
.end method

.method public getThumbnailImage()Lcom/samsung/android/media/heif/SemInputImage;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mThumb:Lcom/samsung/android/media/heif/SemInputImage;

    return-object v0
.end method

.method public setCameraInfo(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "info"    # Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 66
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mCameraInfoBuffer:Ljava/nio/ByteBuffer;

    goto :goto_16

    .line 68
    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mCameraInfoBuffer:Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 71
    :goto_16
    return-void
.end method

.method public setExifData(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "exifBuffer"    # Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 52
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    goto :goto_16

    .line 54
    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 57
    :goto_16
    return-void
.end method

.method public setExifData([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 40
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 43
    return-void
.end method

.method public setThumbnailImage(Lcom/samsung/android/media/heif/SemInputImage;)V
    .registers 2
    .param p1, "image"    # Lcom/samsung/android/media/heif/SemInputImage;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mThumb:Lcom/samsung/android/media/heif/SemInputImage;

    .line 30
    return-void
.end method
