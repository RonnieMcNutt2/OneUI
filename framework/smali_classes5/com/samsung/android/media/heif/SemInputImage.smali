.class public Lcom/samsung/android/media/heif/SemInputImage;
.super Ljava/lang/Object;
.source "SemInputImage.java"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mColorFormat:I

.field private mFd:Ljava/io/FileDescriptor;

.field private final mHeight:I

.field private mIccProfile:Ljava/nio/ByteBuffer;

.field private mRotationDegree:I

.field private mSliceHeight:I

.field private mStride:I

.field private final mWidth:I


# direct methods
.method private constructor <init>(III)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mWidth:I

    .line 28
    iput p2, p0, Lcom/samsung/android/media/heif/SemInputImage;->mHeight:I

    .line 29
    iput p3, p0, Lcom/samsung/android/media/heif/SemInputImage;->mColorFormat:I

    .line 32
    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mStride:I

    .line 33
    iput p2, p0, Lcom/samsung/android/media/heif/SemInputImage;->mSliceHeight:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mRotationDegree:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;III)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I

    .line 46
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(III)V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mFd:Ljava/io/FileDescriptor;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;III)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I

    .line 74
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(III)V

    .line 75
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 76
    return-void
.end method

.method public constructor <init>([BIIIII)V
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "bufferLength"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "format"    # I

    .line 59
    invoke-direct {p0, p4, p5, p6}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(III)V

    .line 60
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 63
    return-void
.end method


# virtual methods
.method getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getColorFormat()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mColorFormat:I

    return v0
.end method

.method getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 113
    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mHeight:I

    return v0
.end method

.method public getIccProfile()Ljava/nio/ByteBuffer;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mIccProfile:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getRotationDegree()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mRotationDegree:I

    return v0
.end method

.method getSliceHeight()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mSliceHeight:I

    return v0
.end method

.method getStride()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mStride:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mWidth:I

    return v0
.end method

.method public setIccProfile(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 198
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mIccProfile:Ljava/nio/ByteBuffer;

    .line 199
    return-void
.end method

.method public setRotationDegree(I)V
    .registers 2
    .param p1, "rotationDegree"    # I

    .line 189
    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mRotationDegree:I

    .line 190
    return-void
.end method

.method public setSliceHeight(I)V
    .registers 2
    .param p1, "sliceHeight"    # I

    .line 180
    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mSliceHeight:I

    .line 181
    return-void
.end method

.method public setStride(I)V
    .registers 2
    .param p1, "stride"    # I

    .line 170
    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mStride:I

    .line 171
    return-void
.end method
