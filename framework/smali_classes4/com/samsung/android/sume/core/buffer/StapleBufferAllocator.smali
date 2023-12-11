.class Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;
.source "StapleBufferAllocator.java"


# direct methods
.method protected constructor <init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .registers 2
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    .line 13
    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;)V
    .registers 3
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "align"    # Lcom/samsung/android/sume/core/buffer/Align;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;)V

    .line 17
    return-void
.end method

.method private allocAsByteBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 6

    .line 78
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 79
    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->bytePerPixel()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/buffer/Align;->getDimension()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;Ljava/lang/Object;)V

    .line 78
    return-object v0
.end method

.method private allocAsNumber()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isScala()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 58
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isInt()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 59
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .local v0, "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_87

    .line 60
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isLong()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 61
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .restart local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_87

    .line 62
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_3f
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 63
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .restart local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_87

    .line 64
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_58
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isByte()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 65
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .restart local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_87

    .line 66
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_70
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isShort()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 67
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .line 74
    .restart local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_87
    return-object v0

    .line 69
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented alloc data-type yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented alloc yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method allocate()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isScala()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->allocAsNumber()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0

    .line 23
    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->allocAsByteBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method allocate(Lcom/samsung/android/sume/core/buffer/Align;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5
    .param p1, "align"    # Lcom/samsung/android/sume/core/buffer/Align;

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getDimension()I

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    goto :goto_21

    .line 30
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getAlignOfWidth()I

    move-result v0

    if-eqz v0, :cond_21

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getAlignOfWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getAlignOfHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/Align;->set(II)Lcom/samsung/android/sume/core/buffer/Align;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/Align;->adjustAlign()V

    .line 34
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->allocate()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method allocateShared()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 4

    .line 38
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v2}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->create(Lcom/samsung/android/sume/core/format/MediaFormat;)Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    return-object v0
.end method

.method wrap(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 46
    .local p1, "data":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_16

    .line 47
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .line 48
    .local v0, "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    const-string v1, "file-descriptor"

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1f

    .line 50
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_16
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;Ljava/lang/Object;)V

    .line 52
    .restart local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_1f
    return-object v0
.end method
