.class public Lcom/samsung/android/media/SemHEIFRegionDecoder;
.super Ljava/lang/Object;
.source "SemHEIFRegionDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "15.0"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemHEIFRegionDecoder"

.field private static mLibraryLoaded:Z


# instance fields
.field private mHeight:I

.field private mNativeBitmapRegionDecoder:J

.field private final mNativeLock:Ljava/lang/Object;

.field private mRecycled:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mLibraryLoaded:Z

    .line 58
    invoke-static {}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->loadLibrary()V

    .line 59
    return-void
.end method

.method private constructor <init>(J)V
    .registers 5
    .param p1, "decoder"    # J

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    .line 50
    iput v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    .line 54
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    .line 191
    iput-wide p1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    .line 192
    iput-boolean v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    .line 193
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 297
    iget-boolean v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_5

    .line 300
    return-void

    .line 298
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadLibrary()V
    .registers 3

    .line 62
    sget-boolean v0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mLibraryLoaded:Z

    if-nez v0, :cond_27

    .line 64
    :try_start_4
    const-string/jumbo v0, "heifregiondec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mLibraryLoaded:Z
    :try_end_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_d} :catch_e

    .line 68
    goto :goto_27

    .line 66
    :catch_e
    move-exception v0

    .line 67
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load the native library : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemHEIFRegionDecoder"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :cond_27
    :goto_27
    return-void
.end method

.method private static native nativeClean(J)V
.end method

.method private static native nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeNewInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;
.end method

.method private static native nativeNewInstance([BII)Lcom/samsung/android/media/SemHEIFRegionDecoder;
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Lcom/samsung/android/media/SemHEIFRegionDecoder;
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "instance":Lcom/samsung/android/media/SemHEIFRegionDecoder;
    if-eqz p0, :cond_1b

    .line 145
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 146
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_8
    invoke-static {v1, p1}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_11

    move-object v0, v2

    .line 147
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    .end local v1    # "fis":Ljava/io/FileInputStream;
    return-object v0

    .line 145
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_11
    move-exception v2

    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw v2

    .line 143
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_1b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "fd is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/samsung/android/media/SemHEIFRegionDecoder;
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 173
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 175
    .local v1, "buffer":[B
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "read":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_16

    .line 176
    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 178
    :cond_16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 179
    .local v2, "inBytes":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 181
    array-length v4, v2

    invoke-static {v2, v5, v4, p1}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->newInstance([BIIZ)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object v4

    return-object v4
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;
    .registers 3
    .param p0, "pathName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    if-eqz p0, :cond_7

    .line 87
    invoke-static {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeNewInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object v0

    return-object v0

    .line 84
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "pathName is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newInstance([BIIZ)Lcom/samsung/android/media/SemHEIFRegionDecoder;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    if-eqz p0, :cond_16

    .line 115
    or-int v0, p1, p2

    if-ltz v0, :cond_10

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_10

    .line 118
    invoke-static {p0, p1, p2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeNewInstance([BII)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object v0

    return-object v0

    .line 116
    :cond_10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 112
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;

    .line 206
    iget-object v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    const-string v1, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 208
    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lez v1, :cond_75

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_75

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_75

    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_75

    .line 212
    if-eqz p2, :cond_5c

    .line 213
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 214
    .local v1, "sample_size":I
    if-nez v1, :cond_27

    .line 215
    const/4 v1, 0x1

    .line 218
    :cond_27
    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 220
    .local v2, "tile_width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 221
    .local v3, "tile_height":I
    add-int v4, v2, v1

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    move v2, v4

    .line 222
    add-int v4, v3, v1

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    move v3, v4

    .line 224
    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5c

    .line 225
    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_51

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v3, :cond_5c

    .line 226
    :cond_51
    const-string v4, "SemHEIFRegionDecoder"

    const-string v5, "RegionDecode Input Bitmap error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object v4

    .line 232
    .end local v1    # "sample_size":I
    .end local v2    # "tile_width":I
    .end local v3    # "tile_height":I
    :cond_5c
    iget-wide v2, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v1, v6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v1, v7

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 210
    :cond_75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "rectangle is outside the image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/media/SemHEIFRegionDecoder;
    .end local p1    # "rect":Landroid/graphics/Rect;
    .end local p2    # "opt":Landroid/graphics/BitmapFactory$Options;
    throw v1

    .line 234
    .restart local p0    # "this":Lcom/samsung/android/media/SemHEIFRegionDecoder;
    .restart local p1    # "rect":Landroid/graphics/Rect;
    .restart local p2    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catchall_7e
    move-exception v1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_7e

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->recycle()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 307
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 308
    nop

    .line 309
    return-void

    .line 307
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 308
    throw v0
.end method

.method public getHeight()I
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_3
    const-string/jumbo v1, "getHeight called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 254
    iget v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    if-lez v1, :cond_f

    .line 255
    monitor-exit v0

    return v1

    .line 258
    :cond_f
    iget-wide v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeGetHeight(J)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    .line 259
    monitor-exit v0

    return v1

    .line 260
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getWidth()I
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    const-string/jumbo v1, "getWidth called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 241
    iget v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    if-lez v1, :cond_f

    .line 242
    monitor-exit v0

    return v1

    .line 245
    :cond_f
    iget-wide v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeGetWidth(J)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    .line 246
    monitor-exit v0

    return v1

    .line 247
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public final isRecycled()Z
    .registers 2

    .line 289
    iget-boolean v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    if-nez v1, :cond_f

    .line 276
    iget-wide v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeClean(J)V

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    .line 279
    :cond_f
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
