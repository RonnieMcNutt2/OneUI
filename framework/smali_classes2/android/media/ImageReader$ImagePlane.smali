.class public Landroid/media/ImageReader$ImagePlane;
.super Landroid/media/Image$Plane;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagePlane"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mPixelStride:I

.field private final mRowStride:I


# direct methods
.method private constructor <init>(IILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "rowStride"    # I
    .param p2, "pixelStride"    # I
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1450
    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 1451
    iput p1, p0, Landroid/media/ImageReader$ImagePlane;->mRowStride:I

    .line 1452
    iput p2, p0, Landroid/media/ImageReader$ImagePlane;->mPixelStride:I

    .line 1453
    iput-object p3, p0, Landroid/media/ImageReader$ImagePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 1459
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1460
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1464
    iget-object v0, p0, Landroid/media/ImageReader$ImagePlane;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPixelStride()I
    .registers 2

    .line 1469
    iget v0, p0, Landroid/media/ImageReader$ImagePlane;->mPixelStride:I

    return v0
.end method

.method public getRowStride()I
    .registers 2

    .line 1474
    iget v0, p0, Landroid/media/ImageReader$ImagePlane;->mRowStride:I

    return v0
.end method
