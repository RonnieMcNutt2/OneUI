.class public Lcom/samsung/android/media/SemBitmapRegionDecoder;
.super Ljava/lang/Object;
.source "SemBitmapRegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemBitmapRegionDecoder"

.field private static mLibraryLoaded:Z


# instance fields
.field private mCreatedGainBitmap:Landroid/graphics/Bitmap;

.field private mGainBuf:[B

.field private mGainRD:Lcom/samsung/android/media/SemHEIFRegionDecoder;

.field private mHasGainmap:Z

.field private mHeight:I

.field private mIsCreatedGainmap:Z

.field private mNativeBitmapRegionDecoder:J

.field private final mNativeLock:Ljava/lang/Object;

.field private mRecycled:Z

.field private mRegionDecoder:Lcom/samsung/android/media/SemHEIFRegionDecoder;

.field private mWholeBitmap:Landroid/graphics/Bitmap;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mLibraryLoaded:Z

    .line 67
    invoke-static {}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->loadLibrary()V

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainBuf:[B

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWidth:I

    .line 55
    iput v1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHeight:I

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHasGainmap:Z

    .line 58
    iput-boolean v1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mIsCreatedGainmap:Z

    .line 59
    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mCreatedGainBitmap:Landroid/graphics/Bitmap;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWholeBitmap:Landroid/graphics/Bitmap;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    .line 286
    iput-boolean v1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRecycled:Z

    .line 287
    return-void
.end method

.method private constructor <init>(J)V
    .registers 5
    .param p1, "decoder"    # J

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainBuf:[B

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWidth:I

    .line 55
    iput v1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHeight:I

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHasGainmap:Z

    .line 58
    iput-boolean v1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mIsCreatedGainmap:Z

    .line 59
    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mCreatedGainBitmap:Landroid/graphics/Bitmap;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWholeBitmap:Landroid/graphics/Bitmap;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    .line 278
    iput-wide p1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    .line 279
    iput-boolean v1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRecycled:Z

    .line 280
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 449
    iget-boolean v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_5

    .line 452
    return-void

    .line 450
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static closeQuietly(Ljava/io/InputStream;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/InputStream;

    .line 113
    if-eqz p0, :cond_a

    .line 115
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 119
    goto :goto_a

    .line 118
    :catch_6
    move-exception v0

    goto :goto_a

    .line 116
    :catch_8
    move-exception v0

    .line 117
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 121
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method private static getGainmap(Ljava/lang/String;)[B
    .registers 7
    .param p0, "pathName"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "gain":[B
    const/16 v1, 0xc

    .line 125
    .local v1, "CHECK_SIZE":I
    const/4 v2, 0x0

    .line 128
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_4
    new-array v3, v1, [B

    .line 129
    .local v3, "header":[B
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 130
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 132
    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->hasGainmap(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->hasGainmapOld(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 133
    :cond_1c
    invoke-static {v3}, Lcom/samsung/android/media/PhotoHdrCodec;->isJpegFormat([B)Z

    move-result v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_43
    .catchall {:try_start_4 .. :try_end_20} :catchall_41

    const-string v5, "SemBitmapRegionDecoder"

    if-eqz v4, :cond_2f

    .line 134
    :try_start_24
    const-string v4, "gain e"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->parseGainBuf(Ljava/lang/String;)[B

    move-result-object v4

    move-object v0, v4

    goto :goto_3c

    .line 137
    :cond_2f
    const-string/jumbo v4, "heif e"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    .line 140
    const-string/jumbo v4, "heif x"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3c} :catch_43
    .catchall {:try_start_24 .. :try_end_3c} :catchall_41

    .line 143
    :cond_3c
    :goto_3c
    nop

    .line 147
    invoke-static {v2}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->closeQuietly(Ljava/io/InputStream;)V

    .line 143
    return-object v0

    .line 147
    .end local v3    # "header":[B
    :catchall_41
    move-exception v3

    goto :goto_4d

    .line 144
    :catch_43
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/Exception;
    :try_start_44
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_41

    .line 147
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->closeQuietly(Ljava/io/InputStream;)V

    .line 148
    nop

    .line 149
    const/4 v3, 0x0

    return-object v3

    .line 147
    :goto_4d
    invoke-static {v2}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->closeQuietly(Ljava/io/InputStream;)V

    .line 148
    throw v3
.end method

.method private static getGainmap([B)[B
    .registers 7
    .param p0, "data"    # [B

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "gain":[B
    const/16 v1, 0xc

    .line 154
    .local v1, "CHECK_SIZE":I
    const/4 v2, 0x0

    .line 157
    .local v2, "bin":Ljava/io/ByteArrayInputStream;
    :try_start_4
    new-array v3, v1, [B

    .line 158
    .local v3, "header":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v4

    .line 159
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 161
    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->hasGainmap([B)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->hasGainmapOld([B)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 162
    :cond_1c
    invoke-static {v3}, Lcom/samsung/android/media/PhotoHdrCodec;->isJpegFormat([B)Z

    move-result v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_43
    .catchall {:try_start_4 .. :try_end_20} :catchall_41

    const-string v5, "SemBitmapRegionDecoder"

    if-eqz v4, :cond_2f

    .line 163
    :try_start_24
    const-string v4, "gain e"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->parseGainBuf([B)[B

    move-result-object v4

    move-object v0, v4

    goto :goto_3c

    .line 166
    :cond_2f
    const-string/jumbo v4, "heif e"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    .line 169
    const-string/jumbo v4, "heif x"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3c} :catch_43
    .catchall {:try_start_24 .. :try_end_3c} :catchall_41

    .line 172
    :cond_3c
    :goto_3c
    nop

    .line 176
    invoke-static {v2}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->closeQuietly(Ljava/io/InputStream;)V

    .line 172
    return-object v0

    .line 176
    .end local v3    # "header":[B
    :catchall_41
    move-exception v3

    goto :goto_4d

    .line 173
    :catch_43
    move-exception v3

    .line 174
    .local v3, "e":Ljava/lang/Exception;
    :try_start_44
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_41

    .line 176
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->closeQuietly(Ljava/io/InputStream;)V

    .line 177
    nop

    .line 178
    const/4 v3, 0x0

    return-object v3

    .line 176
    :goto_4d
    invoke-static {v2}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->closeQuietly(Ljava/io/InputStream;)V

    .line 177
    throw v3
.end method

.method private static loadLibrary()V
    .registers 3

    .line 71
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mLibraryLoaded:Z

    if-nez v0, :cond_21

    .line 74
    const/4 v0, 0x1

    :try_start_5
    sput-boolean v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mLibraryLoaded:Z
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_7} :catch_8

    .line 77
    goto :goto_21

    .line 75
    :catch_8
    move-exception v0

    .line 76
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

    const-string v2, "SemBitmapRegionDecoder"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :cond_21
    :goto_21
    return-void
.end method

.method public static newInstance(Ljava/io/FileDescriptor;)Lcom/samsung/android/media/SemBitmapRegionDecoder;
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "instance":Lcom/samsung/android/media/SemBitmapRegionDecoder;
    if-eqz p0, :cond_1b

    .line 236
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 237
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_8
    invoke-static {v1}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->newInstance(Ljava/io/InputStream;)Lcom/samsung/android/media/SemBitmapRegionDecoder;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_11

    move-object v0, v2

    .line 238
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 240
    .end local v1    # "fis":Ljava/io/FileInputStream;
    return-object v0

    .line 236
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

    .line 234
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_1b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "fd is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/samsung/android/media/SemBitmapRegionDecoder;
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    if-eqz p0, :cond_25

    .line 259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 260
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 262
    .local v1, "buffer":[B
    :goto_b
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "read":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_18

    .line 263
    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b

    .line 265
    :cond_18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 266
    .local v2, "inBytes":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 268
    array-length v4, v2

    invoke-static {v2, v5, v4}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->newInstance([BII)Lcom/samsung/android/media/SemBitmapRegionDecoder;

    move-result-object v4

    return-object v4

    .line 257
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "inBytes":[B
    .end local v3    # "read":I
    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "inputStream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemBitmapRegionDecoder;
    .registers 5
    .param p0, "pathName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    if-eqz p0, :cond_35

    .line 95
    const-string/jumbo v0, "newInstance file e"

    const-string v1, "SemBitmapRegionDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;-><init>()V

    .line 97
    .local v0, "rd":Lcom/samsung/android/media/SemBitmapRegionDecoder;
    invoke-static {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->newInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    .line 98
    if-nez v2, :cond_19

    .line 99
    const/4 v1, 0x0

    return-object v1

    .line 101
    :cond_19
    invoke-static {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->getGainmap(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainBuf:[B

    .line 102
    if-eqz v2, :cond_34

    .line 103
    const-string/jumbo v2, "mGainBuf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHasGainmap:Z

    .line 105
    iget-object v1, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainBuf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->newInstance([BIIZ)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    .line 109
    :cond_34
    return-object v0

    .line 93
    .end local v0    # "rd":Lcom/samsung/android/media/SemBitmapRegionDecoder;
    :cond_35
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "pathName is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newInstance([BII)Lcom/samsung/android/media/SemBitmapRegionDecoder;
    .registers 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    if-eqz p0, :cond_44

    .line 200
    or-int v0, p1, p2

    if-ltz v0, :cond_3e

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_3e

    .line 203
    const-string/jumbo v0, "newInstance byteArray e"

    const-string v1, "SemBitmapRegionDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;-><init>()V

    .line 205
    .local v0, "rd":Lcom/samsung/android/media/SemBitmapRegionDecoder;
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->newInstance([BIIZ)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    .line 206
    if-nez v3, :cond_23

    .line 207
    const/4 v1, 0x0

    return-object v1

    .line 209
    :cond_23
    invoke-static {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->getGainmap([B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainBuf:[B

    .line 210
    if-eqz v3, :cond_3d

    .line 211
    const-string/jumbo v3, "mGainBuf"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHasGainmap:Z

    .line 213
    iget-object v1, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainBuf:[B

    array-length v3, v1

    invoke-static {v1, v2, v3, v2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->newInstance([BIIZ)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    .line 216
    :cond_3d
    return-object v0

    .line 201
    .end local v0    # "rd":Lcom/samsung/android/media/SemBitmapRegionDecoder;
    :cond_3e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 197
    :cond_44
    new-instance v0, Ljava/io/IOException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;

    .line 300
    const-string v0, "decode regioin:e"

    const-string v1, "SemBitmapRegionDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v0, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 303
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_267

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_267

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_267

    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_267

    .line 307
    const/4 v0, 0x1

    if-eqz p2, :cond_5a

    .line 308
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 309
    .local v2, "sample_size":I
    if-nez v2, :cond_2c

    .line 310
    const/4 v2, 0x1

    .line 313
    :cond_2c
    iput v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 315
    .local v3, "tile_width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 316
    .local v4, "tile_height":I
    add-int v5, v3, v2

    sub-int/2addr v5, v0

    div-int/2addr v5, v2

    .line 317
    .end local v3    # "tile_width":I
    .local v5, "tile_width":I
    add-int v3, v4, v2

    sub-int/2addr v3, v0

    div-int/2addr v3, v2

    .line 319
    .end local v4    # "tile_height":I
    .local v3, "tile_height":I
    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5a

    .line 320
    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v5, :cond_52

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v3, :cond_5a

    .line 321
    :cond_52
    const-string v0, "RegionDecode Input Bitmap error"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 327
    .end local v2    # "sample_size":I
    .end local v3    # "tile_height":I
    .end local v5    # "tile_width":I
    :cond_5a
    if-eqz p2, :cond_81

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "opt.semInApplyPhotoHdr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  opt.semInCreateGainmap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->semInCreateGainmap:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_81
    iget-object v2, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 332
    .local v2, "coverBitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 333
    .local v3, "gainBitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_261

    iget-boolean v4, p2, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    if-eqz v4, :cond_261

    .line 334
    const-string/jumbo v4, "semInApplyPhotoHdr"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-boolean v4, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHasGainmap:Z

    const-string/jumbo v5, "samplesize:"

    if-eqz v4, :cond_13e

    iget-object v4, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    if-eqz v4, :cond_13e

    .line 336
    const-string/jumbo v0, "mHasGainmap && mGainRD!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "rect.left:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",rect.top:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", rect.right:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", rect.bottom:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    invoke-virtual {v5}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    invoke-virtual {v6}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->getHeight()I

    move-result v6

    div-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    invoke-virtual {v7}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    invoke-virtual {v8}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->getHeight()I

    move-result v8

    div-int/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 339
    .local v0, "gainRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    invoke-virtual {v4, v0, p2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 340
    iget-object v4, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainBuf:[B

    invoke-static {v4}, Lcom/samsung/android/media/PhotoHdrCodec;->getGainmapInfo([B)Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;

    move-result-object v4

    .line 341
    .local v4, "gainInfo":Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    invoke-static {v3, v4}, Lcom/samsung/android/media/PhotoHdrCodec;->setGainInfo(Landroid/graphics/Bitmap;Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;)Landroid/graphics/Gainmap;

    move-result-object v5

    .line 342
    .local v5, "gainmap":Landroid/graphics/Gainmap;
    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 344
    .end local v0    # "gainRect":Landroid/graphics/Rect;
    .end local v4    # "gainInfo":Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    .end local v5    # "gainmap":Landroid/graphics/Gainmap;
    :cond_13c
    goto/16 :goto_261

    :cond_13e
    iget-boolean v4, p2, Landroid/graphics/BitmapFactory$Options;->semInCreateGainmap:Z

    if-eqz v4, :cond_13c

    .line 345
    const-string/jumbo v4, "semInCreateGainmap"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v4, 0x0

    .line 347
    .local v4, "wholeGainmap":Landroid/graphics/Gainmap;
    const/4 v6, 0x0

    .line 348
    .local v6, "wholeBitmap":Landroid/graphics/Bitmap;
    iget-boolean v7, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mIsCreatedGainmap:Z

    const/4 v8, 0x0

    if-nez v7, :cond_1c7

    .line 349
    const-string v7, "!mIsCreatedGainmap"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getWidth():"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->getWidth()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->getHeight()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v7, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    invoke-virtual {v10}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    invoke-virtual {v11}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getHeight()I

    move-result v11

    invoke-direct {v7, v8, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 353
    .local v7, "wholeRect":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    invoke-virtual {v10, v7, p2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 356
    invoke-static {v6}, Lcom/samsung/android/media/PhotoHdrCodec;->applyGainmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWholeBitmap:Landroid/graphics/Bitmap;

    .line 357
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mWholeBitmap "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWholeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWholeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput-boolean v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mIsCreatedGainmap:Z

    .line 367
    .end local v7    # "wholeRect":Landroid/graphics/Rect;
    :cond_1c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "rect.top:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", rect.left:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", (rect.right-rect.left):"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", (rect.bottom-rect.top):"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_21a

    .line 371
    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 372
    :cond_21a
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_220

    .line 373
    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 374
    :cond_220
    iget-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWholeBitmap:Landroid/graphics/Bitmap;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v5, v7

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v7, v9

    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget v10, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v9, v10

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget v11, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    iget v11, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v10, v11

    invoke-static {v0, v5, v7, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasgainmap:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Gainmap;->getRatioMax()[F

    move-result-object v5

    aget v5, v5, v8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v4    # "wholeGainmap":Landroid/graphics/Gainmap;
    .end local v6    # "wholeBitmap":Landroid/graphics/Bitmap;
    :cond_261
    :goto_261
    const-string v0, "decode regioin:x"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-object v2

    .line 305
    .end local v2    # "coverBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "gainBitmap":Landroid/graphics/Bitmap;
    :cond_267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rectangle is outside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->recycle()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 462
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 463
    nop

    .line 464
    return-void

    .line 462
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 463
    throw v0
.end method

.method public getHeight()I
    .registers 2

    .line 407
    const-string/jumbo v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 408
    iget v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHeight:I

    if-lez v0, :cond_b

    .line 409
    return v0

    .line 412
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHeight:I

    .line 413
    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 393
    const-string/jumbo v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 394
    iget v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWidth:I

    if-lez v0, :cond_b

    .line 395
    return v0

    .line 398
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWidth:I

    .line 399
    return v0
.end method

.method public final isRecycled()Z
    .registers 2

    .line 441
    iget-boolean v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .registers 2

    .line 427
    iget-boolean v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_c

    .line 429
    iget-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/SemHEIFRegionDecoder;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->recycle()V

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRecycled:Z

    .line 432
    :cond_c
    return-void
.end method
