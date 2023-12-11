.class final Lcom/samsung/android/media/heif/CaptureSourceInternal;
.super Ljava/lang/Object;
.source "CaptureSourceInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/heif/CaptureSourceInternal$Parser;
    }
.end annotation


# static fields
.field public static final KEY_CAMERA_INFO:Ljava/lang/String; = "camera-info"

.field public static final KEY_CAMERA_INFO_SIZE:Ljava/lang/String; = "camera-info-size"


# instance fields
.field private msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/samsung/android/media/heif/jni/AMessageJNI;

    invoke-direct {v0}, Lcom/samsung/android/media/heif/jni/AMessageJNI;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    .line 21
    return-void
.end method


# virtual methods
.method public getColorFormat()I
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "color-format"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getImageRole()I
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "image-role"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMsg()Lcom/samsung/android/media/heif/jni/AMessageJNI;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    return-object v0
.end method

.method public getRotationDegree()I
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "rotation-degrees"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSliceHeight()I
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "slice-height"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStride()I
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "stride"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setCameraInfo(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "info"    # Ljava/nio/ByteBuffer;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "camera-info"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "camera-info-size"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public setColorFormat(I)V
    .registers 4
    .param p1, "colorFormat"    # I

    .line 63
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "color-format"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public setExifData(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "exifBuffer"    # Ljava/nio/ByteBuffer;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "exif-buffer"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "exif-buffer-size"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public setHeight(I)V
    .registers 4
    .param p1, "height"    # I

    .line 47
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public setIccProfile(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "iccBuffer"    # Ljava/nio/ByteBuffer;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "icc-buffer"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "icc-buffer-size"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public setId(I)V
    .registers 4
    .param p1, "id"    # I

    .line 39
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public setImageRole(I)V
    .registers 4
    .param p1, "role"    # I

    .line 71
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "image-role"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public setInputByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 35
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "input-buffer"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 36
    return-void

    .line 33
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytebuffer must allocate direct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "input-fd"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setFileDescriptor(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 29
    return-void
.end method

.method public setRotationDegree(I)V
    .registers 4
    .param p1, "rotationDegree"    # I

    .line 59
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "rotation-degrees"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public setSliceHeight(I)V
    .registers 4
    .param p1, "sliceHeight"    # I

    .line 55
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "slice-height"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public setStride(I)V
    .registers 4
    .param p1, "stride"    # I

    .line 51
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "stride"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public setThumbnail(Lcom/samsung/android/media/heif/CaptureSourceInternal;)V
    .registers 5
    .param p1, "thumb"    # Lcom/samsung/android/media/heif/CaptureSourceInternal;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "thumbnail"

    iget-object v2, p1, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setMessage(Ljava/lang/String;Lcom/samsung/android/media/heif/jni/AMessageJNI;)V

    .line 68
    return-void
.end method

.method public setWidth(I)V
    .registers 4
    .param p1, "width"    # I

    .line 43
    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 44
    return-void
.end method
