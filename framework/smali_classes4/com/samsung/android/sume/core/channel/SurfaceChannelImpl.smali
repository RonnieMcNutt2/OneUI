.class public final Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;
.super Ljava/lang/Object;
.source "SurfaceChannelImpl.java"

# interfaces
.implements Lcom/samsung/android/sume/core/channel/BufferChannel;
.implements Lcom/samsung/android/sume/core/channel/SurfaceChannel;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final vendorSpecificColorFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/types/ColorFormat;",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field private bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private capacity:I

.field private final channelType:I

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final numberOfFrames:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

.field private processedFrames:I

.field private reader:Landroid/media/ImageReader;

.field private final receiveHandler:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private receiveThread:Landroid/os/HandlerThread;

.field private final sendHandler:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private writer:Landroid/media/ImageWriter;


# direct methods
.method public static synthetic $r8$lambda$AChjb6Bsau1pB6LfpZMxWbzpiII(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;Landroid/media/ImageReader;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageReceive(Landroid/media/ImageReader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gNhEsV8z6OPis_66wo-bN9h0PNM(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;Landroid/media/ImageReader;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageTransit(Landroid/media/ImageReader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mxNo79ZOgZeHfyzNLkHWUHVemPI(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writeToSurface(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->vendorSpecificColorFormat:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(ILcom/samsung/android/sume/core/channel/BufferChannel;)V
    .registers 5
    .param p1, "channelType"    # I
    .param p2, "bufferChannel"    # Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    .line 53
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->numberOfFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    iput v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->capacity:I

    .line 60
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 61
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->condition:Ljava/util/concurrent/locks/Condition;

    .line 64
    iput p1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    .line 66
    packed-switch p1, :pswitch_data_80

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not supported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_2e
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->sendHandler:Ljava/util/function/Consumer;

    .line 69
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveHandler:Ljava/util/function/Supplier;

    .line 73
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 74
    goto :goto_7e

    .line 83
    :pswitch_44
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->sendHandler:Ljava/util/function/Consumer;

    .line 84
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda13;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveHandler:Ljava/util/function/Supplier;

    .line 85
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda14;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 86
    goto :goto_7e

    .line 76
    :pswitch_5a
    if-eqz p2, :cond_5d

    const/4 v0, 0x1

    :cond_5d
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 77
    iput-object p2, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 78
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->sendHandler:Ljava/util/function/Consumer;

    .line 79
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveHandler:Ljava/util/function/Supplier;

    .line 80
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 81
    nop

    .line 90
    :goto_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x2
        :pswitch_5a
        :pswitch_44
        :pswitch_2e
    .end packed-switch
.end method

.method static synthetic lambda$new$2()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$new$3(Landroid/media/ImageReader;)V
    .registers 3
    .param p0, "imageReader"    # Landroid/media/ImageReader;

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$onImageReceive$4(Landroid/hardware/HardwareBuffer;I)Z
    .registers 3
    .param p0, "hwBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p1, "e"    # I

    .line 163
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$onImageReceive$5(Landroid/hardware/HardwareBuffer;Ljava/util/Map$Entry;)Z
    .registers 4
    .param p0, "hwBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p1, "colorFormatEntry"    # Ljava/util/Map$Entry;

    .line 163
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/HardwareBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    return v0
.end method

.method private onImageReceive(Landroid/media/ImageReader;)V
    .registers 8
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 157
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    .line 159
    .local v0, "image":Landroid/media/Image;
    invoke-virtual {v0}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 160
    .local v1, "hwBuffer":Landroid/hardware/HardwareBuffer;
    if-eqz v1, :cond_b9

    .line 161
    iget-object v2, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v3, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne v2, v3, :cond_3d

    .line 162
    sget-object v2, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->vendorSpecificColorFormat:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/HardwareBuffer;)V

    .line 163
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda4;-><init>()V

    .line 164
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda5;-><init>()V

    .line 166
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v2, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 168
    :cond_3d
    sget-object v2, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fmt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], usage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8:Lcom/samsung/android/sume/core/types/DataType;

    .line 171
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/sume/core/format/Shape;->rectOf(II)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    .line 170
    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    const-class v3, Ljava/nio/ByteBuffer;

    .line 173
    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    .line 175
    .local v2, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "timestampNs"

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    iget v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "block-id"

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 179
    .end local v2    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_b9
    sget-object v2, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received image="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", # of processed frames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 181
    return-void
.end method

.method private onImageTransit(Landroid/media/ImageReader;)V
    .registers 6
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    if-nez v0, :cond_a

    .line 146
    const-string/jumbo v0, "writer is given"

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->waitUntilSignaled(Ljava/lang/String;)V

    .line 149
    :cond_a
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 150
    .local v0, "image":Landroid/media/Image;
    sget-object v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received image="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", # of processed frames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    invoke-virtual {v1, v0}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->signal()V

    .line 154
    return-void
.end method

.method private signal()V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 132
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 134
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 135
    nop

    .line 136
    return-void

    .line 134
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 135
    throw v0
.end method

.method private waitUntilSignaled(Ljava/lang/String;)V
    .registers 5
    .param p1, "waitMessage"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 119
    :try_start_5
    sget-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wait until "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_3a} :catch_3d
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    goto :goto_41

    .line 125
    :catchall_3b
    move-exception v0

    goto :goto_48

    .line 122
    :catch_3d
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    .line 125
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_41
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 126
    nop

    .line 127
    return-void

    .line 125
    :goto_48
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 126
    throw v0
.end method

.method private writeToSurface(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 9
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 184
    sget-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeToSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    if-nez v1, :cond_23

    .line 187
    const-string/jumbo v1, "writer given"

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->waitUntilSignaled(Ljava/lang/String;)V

    .line 189
    :cond_23
    const-string/jumbo v1, "timestampNs"

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 190
    .local v1, "timestampNs":J
    iget-object v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    invoke-virtual {v3}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v3

    .line 191
    .local v3, "image":Landroid/media/Image;
    invoke-virtual {v3, v1, v2}, Landroid/media/Image;->setTimestamp(J)V

    .line 193
    invoke-virtual {v3}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->copyFromBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Landroid/hardware/HardwareBuffer;)V

    .line 194
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 196
    iget-object v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    invoke-virtual {v4, v3}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "send image="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", # of processed frames: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    if-eqz v0, :cond_7

    .line 222
    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V

    .line 224
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_e

    .line 225
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 226
    :cond_e
    return-void
.end method

.method public close()V
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    if-eqz v0, :cond_7

    .line 213
    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->close()V

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_e

    .line 216
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 217
    :cond_e
    return-void
.end method

.method public configure(III)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 94
    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "surface-receive-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    .line 97
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->capacity:I

    add-int/2addr v2, v0

    :cond_21
    move v0, v2

    .line 101
    .local v0, "maxImages":I
    invoke-static {p1, p2, p3, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->reader:Landroid/media/ImageReader;

    .line 103
    iget-object v2, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 104
    return-void
.end method

.method public configure(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 108
    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 110
    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->capacity:I

    add-int/2addr v2, v0

    :cond_14
    move v0, v2

    .line 112
    .local v0, "maxImages":I
    invoke-static {p1, v0}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->signal()V

    .line 114
    return-void
.end method

.method public getNumberOfFrames()I
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->numberOfFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 3

    .line 140
    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->reader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public isClosedForReceive()Z
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isClosedForSend()Z
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$com-samsung-android-sume-core-channel-SurfaceChannelImpl(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 2
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->signal()V

    return-void
.end method

.method synthetic lambda$new$1$com-samsung-android-sume-core-channel-SurfaceChannelImpl()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 70
    const-string/jumbo v0, "receive buffer"

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->waitUntilSignaled(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveHandler:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public bridge synthetic receive()Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 3
    .param p1, "data"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 202
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->sendHandler:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public bridge synthetic send(Ljava/lang/Object;)V
    .registers 2

    .line 36
    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method

.method public setCapacity(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 250
    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 251
    iput p1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->capacity:I

    .line 252
    return-void
.end method

.method public setNumberOfFrames(I)V
    .registers 3
    .param p1, "numberOfFrames"    # I

    .line 245
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->numberOfFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 246
    return-void
.end method
