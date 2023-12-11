.class public final Landroid/hardware/HardwareBuffer;
.super Ljava/lang/Object;
.source "HardwareBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/HardwareBuffer$Usage;,
        Landroid/hardware/HardwareBuffer$Format;
    }
.end annotation


# static fields
.field public static final BLOB:I = 0x21

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DS_24UI8:I = 0x32

.field public static final DS_FP32UI8:I = 0x34

.field public static final D_16:I = 0x30

.field public static final D_24:I = 0x31

.field public static final D_FP32:I = 0x33

.field public static final RGBA_1010102:I = 0x2b

.field public static final RGBA_8888:I = 0x1

.field public static final RGBA_FP16:I = 0x16

.field public static final RGBX_8888:I = 0x2

.field public static final RGB_565:I = 0x4

.field public static final RGB_888:I = 0x3

.field public static final S_UI8:I = 0x35

.field public static final USAGE_COMPOSER_OVERLAY:J = 0x800L

.field public static final USAGE_CPU_READ_OFTEN:J = 0x3L

.field public static final USAGE_CPU_READ_RARELY:J = 0x2L

.field public static final USAGE_CPU_WRITE_OFTEN:J = 0x30L

.field public static final USAGE_CPU_WRITE_RARELY:J = 0x20L

.field public static final USAGE_FRONT_BUFFER:J = 0x100000000L

.field public static final USAGE_GPU_COLOR_OUTPUT:J = 0x200L

.field public static final USAGE_GPU_CUBE_MAP:J = 0x2000000L

.field public static final USAGE_GPU_DATA_BUFFER:J = 0x1000000L

.field public static final USAGE_GPU_MIPMAP_COMPLETE:J = 0x4000000L

.field public static final USAGE_GPU_SAMPLED_IMAGE:J = 0x100L

.field public static final USAGE_PROTECTED_CONTENT:J = 0x4000L

.field public static final USAGE_SENSOR_DIRECT_DATA:J = 0x800000L

.field public static final USAGE_VIDEO_ENCODE:J = 0x10000L

.field public static final YCBCR_420_888:I = 0x23

.field public static final YCBCR_P010:I = 0x36


# instance fields
.field private mCleaner:Ljava/lang/Runnable;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mNativeObject:J


# direct methods
.method static bridge synthetic -$$Nest$smnReadHardwareBufferFromParcel(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/hardware/HardwareBuffer;->nReadHardwareBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 399
    new-instance v0, Landroid/hardware/HardwareBuffer$1;

    invoke-direct {v0}, Landroid/hardware/HardwareBuffer$1;-><init>()V

    sput-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 14
    .param p1, "nativeObject"    # J

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 260
    iput-wide p1, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    .line 261
    invoke-static {p1, p2}, Landroid/hardware/HardwareBuffer;->nEstimateSize(J)J

    move-result-wide v7

    .line 262
    .local v7, "bufferSize":J
    const-class v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 263
    .local v9, "loader":Ljava/lang/ClassLoader;
    new-instance v10, Llibcore/util/NativeAllocationRegistry;

    .line 264
    invoke-static {}, Landroid/hardware/HardwareBuffer;->nGetNativeFinalizer()J

    move-result-wide v3

    move-object v1, v10

    move-object v2, v9

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    .line 265
    .local v1, "registry":Llibcore/util/NativeAllocationRegistry;
    iget-wide v2, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-virtual {v1, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/HardwareBuffer;->mCleaner:Ljava/lang/Runnable;

    .line 266
    const-string v2, "HardwareBuffer.close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method synthetic constructor <init>(JLandroid/hardware/HardwareBuffer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/HardwareBuffer;-><init>(J)V

    return-void
.end method

.method private checkClosed(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 339
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 343
    return-void

    .line 340
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This HardwareBuffer has been closed and its "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be obtained."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(IIIIJ)Landroid/hardware/HardwareBuffer;
    .registers 10
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "layers"    # I
    .param p4, "usage"    # J

    .line 191
    if-lez p0, :cond_60

    .line 194
    if-lez p1, :cond_47

    .line 197
    if-lez p3, :cond_2e

    .line 200
    const/16 v0, 0x21

    if-ne p2, v0, :cond_16

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_16

    .line 201
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be 1 when using the BLOB format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_16
    :goto_16
    invoke-static/range {p0 .. p5}, Landroid/hardware/HardwareBuffer;->nCreateHardwareBuffer(IIIIJ)J

    move-result-wide v0

    .line 204
    .local v0, "nativeObject":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_26

    .line 209
    new-instance v2, Landroid/hardware/HardwareBuffer;

    invoke-direct {v2, v0, v1}, Landroid/hardware/HardwareBuffer;-><init>(J)V

    return-object v2

    .line 205
    :cond_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to create a HardwareBuffer, either the dimensions passed were too large, too many image layers were requested, or an invalid set of usage flags or invalid format was passed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    .end local v0    # "nativeObject":J
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid layer count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;
    .registers 4
    .param p0, "graphicBuffer"    # Landroid/graphics/GraphicBuffer;

    .line 250
    invoke-static {p0}, Landroid/hardware/HardwareBuffer;->nCreateFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)J

    move-result-wide v0

    .line 251
    .local v0, "nativeObject":J
    new-instance v2, Landroid/hardware/HardwareBuffer;

    invoke-direct {v2, v0, v1}, Landroid/hardware/HardwareBuffer;-><init>(J)V

    return-object v2
.end method

.method public static isSupported(IIIIJ)Z
    .registers 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "layers"    # I
    .param p4, "usage"    # J

    .line 226
    if-lez p0, :cond_4d

    .line 229
    if-lez p1, :cond_34

    .line 232
    if-lez p3, :cond_1b

    .line 235
    const/16 v0, 0x21

    if-ne p2, v0, :cond_16

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_16

    .line 236
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be 1 when using the BLOB format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_16
    :goto_16
    invoke-static/range {p0 .. p5}, Landroid/hardware/HardwareBuffer;->nIsSupported(IIIIJ)Z

    move-result v0

    return v0

    .line 233
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid layer count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nCreateFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)J
.end method

.method private static native nCreateHardwareBuffer(IIIIJ)J
.end method

.method private static native nEstimateSize(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFormat(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetHeight(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetId(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLayers(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetNativeFinalizer()J
.end method

.method private static native nGetUsage(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetWidth(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nIsSupported(IIIIJ)Z
.end method

.method private static native nReadHardwareBufferFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nWriteHardwareBufferToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 354
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 355
    iget-object v0, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 356
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    .line 357
    iget-object v0, p0, Landroid/hardware/HardwareBuffer;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/HardwareBuffer;->mCleaner:Ljava/lang/Runnable;

    .line 360
    :cond_17
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 273
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    .line 275
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 276
    nop

    .line 277
    return-void

    .line 275
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 276
    throw v0
.end method

.method public getFormat()I
    .registers 3

    .line 300
    const-string v0, "format"

    invoke-direct {p0, v0}, Landroid/hardware/HardwareBuffer;->checkClosed(Ljava/lang/String;)V

    .line 301
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetFormat(J)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 3

    .line 291
    const-string v0, "height"

    invoke-direct {p0, v0}, Landroid/hardware/HardwareBuffer;->checkClosed(Ljava/lang/String;)V

    .line 292
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetHeight(J)I

    move-result v0

    return v0
.end method

.method public getId()J
    .registers 3

    .line 334
    const-string v0, "id"

    invoke-direct {p0, v0}, Landroid/hardware/HardwareBuffer;->checkClosed(Ljava/lang/String;)V

    .line 335
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayers()I
    .registers 3

    .line 308
    const-string/jumbo v0, "layer count"

    invoke-direct {p0, v0}, Landroid/hardware/HardwareBuffer;->checkClosed(Ljava/lang/String;)V

    .line 309
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetLayers(J)I

    move-result v0

    return v0
.end method

.method public getUsage()J
    .registers 3

    .line 316
    const-string/jumbo v0, "usage"

    invoke-direct {p0, v0}, Landroid/hardware/HardwareBuffer;->checkClosed(Ljava/lang/String;)V

    .line 317
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetUsage(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()I
    .registers 3

    .line 283
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0}, Landroid/hardware/HardwareBuffer;->checkClosed(Ljava/lang/String;)V

    .line 284
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetWidth(J)I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 5

    .line 372
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 392
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 396
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/hardware/HardwareBuffer;->nWriteHardwareBufferToParcel(JLandroid/os/Parcel;)V

    .line 397
    return-void

    .line 393
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This HardwareBuffer has been closed and cannot be written to a parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
