.class public Lcom/samsung/android/media/imagecrop/SemImageCrop;
.super Ljava/lang/Object;
.source "SemImageCrop.java"


# static fields
.field private static final DEFAULT_HEADER_SIZE:I = 0x20

.field private static final HEX_ARRAY:[C

.field public static final IMAGE_FILE_FORMAT_HEIC:I = 0x2

.field public static final IMAGE_FILE_FORMAT_JPEG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemImageCrop"

.field private static hasHevcEncoder:Z

.field private static instance:Lcom/samsung/android/media/imagecrop/SemImageCrop;

.field private static isSupport:Z

.field private static isSupportHeifCapture:Z


# instance fields
.field private mNativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupportHeifCapture:Z

    .line 260
    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/imagecrop/SemImageCrop;->HEX_ARRAY:[C

    .line 288
    :try_start_b
    const-string/jumbo v1, "semimagecrop_jni.media.samsung"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 289
    sput-boolean v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupport:Z
    :try_end_13
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_b .. :try_end_13} :catch_14

    .line 293
    goto :goto_1b

    .line 290
    :catch_14
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 292
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupport:Z

    .line 294
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_1b
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "video/hevc"

    invoke-static {v0}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->hasCodec(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->hasHevcEncoder:Z

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->nativeSetup()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->mNativeHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemImageCrop"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method private static bytesToHex([BI)Ljava/lang/String;
    .registers 10
    .param p0, "bytes"    # [B
    .param p1, "limit"    # I

    .line 265
    if-eqz p0, :cond_6e

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_6e

    .line 269
    :cond_6
    move v0, p1

    .line 270
    .local v0, "size":I
    :try_start_7
    array-length v1, p0

    if-ge v1, p1, :cond_c

    .line 271
    array-length v1, p0

    move v0, v1

    .line 272
    :cond_c
    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0xc

    new-array v1, v1, [C

    .line 273
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "base":I
    :goto_14
    if-ge v2, v0, :cond_35

    .line 274
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    .line 275
    .local v4, "v":I
    sget-object v5, Lcom/samsung/android/media/imagecrop/SemImageCrop;->HEX_ARRAY:[C

    ushr-int/lit8 v6, v4, 0x4

    aget-char v6, v5, v6

    aput-char v6, v1, v3

    .line 276
    add-int/lit8 v6, v3, 0x1

    and-int/lit8 v7, v4, 0xf

    aget-char v5, v5, v7

    aput-char v5, v1, v6

    .line 277
    add-int/lit8 v5, v3, 0x2

    const/16 v6, 0x20

    aput-char v6, v1, v5

    .line 273
    .end local v4    # "v":I
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x3

    goto :goto_14

    .line 279
    .end local v2    # "i":I
    .end local v3    # "base":I
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_57} :catch_58

    return-object v2

    .line 280
    .end local v0    # "size":I
    .end local v1    # "hexChars":[C
    :catch_58
    move-exception v0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :cond_6e
    :goto_6e
    const-string v0, "0:null"

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/media/imagecrop/SemImageCrop;
    .registers 2

    .line 60
    sget-boolean v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupport:Z

    if-eqz v0, :cond_10

    .line 61
    sget-object v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->instance:Lcom/samsung/android/media/imagecrop/SemImageCrop;

    if-nez v0, :cond_18

    .line 62
    new-instance v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;

    invoke-direct {v0}, Lcom/samsung/android/media/imagecrop/SemImageCrop;-><init>()V

    sput-object v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->instance:Lcom/samsung/android/media/imagecrop/SemImageCrop;

    goto :goto_18

    .line 65
    :cond_10
    const-string v0, "SemImageCrop"

    const-string/jumbo v1, "is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_18
    :goto_18
    sget-object v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->instance:Lcom/samsung/android/media/imagecrop/SemImageCrop;

    return-object v0
.end method

.method private static hasCodec(Ljava/lang/String;)Z
    .registers 7
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 241
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    .line 242
    .local v0, "numCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2a

    .line 243
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 245
    .local v2, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-nez v3, :cond_12

    .line 246
    goto :goto_27

    .line 249
    :cond_12
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "types":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_17
    array-length v5, v3

    if-ge v4, v5, :cond_27

    .line 251
    aget-object v5, v3, v4

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 252
    const/4 v5, 0x1

    return v5

    .line 250
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 242
    .end local v2    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v3    # "types":[Ljava/lang/String;
    .end local v4    # "j":I
    :cond_27
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 256
    .end local v1    # "i":I
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method private static isHeicFormat(Ljava/nio/ByteBuffer;)Z
    .registers 9
    .param p0, "inBuffer"    # Ljava/nio/ByteBuffer;

    .line 198
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_3c

    .line 199
    .local v1, "ftypSignature":[B
    new-array v2, v0, [B

    fill-array-data v2, :array_42

    .line 201
    .local v2, "heicSignature":[B
    new-array v3, v0, [B

    .line 202
    .local v3, "ftyp":[B
    new-array v4, v0, [B

    .line 204
    .local v4, "heic":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 205
    const/4 v5, 0x4

    .line 207
    .local v5, "offset":I
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 208
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_21

    .line 209
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 210
    return v7

    .line 213
    :cond_21
    add-int/2addr v5, v0

    .line 214
    :goto_22
    const/16 v0, 0x1c

    if-gt v5, v0, :cond_37

    .line 215
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 216
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 217
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 218
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_34
    add-int/lit8 v5, v5, 0x4

    goto :goto_22

    .line 222
    :cond_37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 223
    return v7

    nop

    :array_3c
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_42
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data
.end method

.method private static isJpegFormat(Ljava/nio/ByteBuffer;)Z
    .registers 4
    .param p0, "inBuffer"    # Ljava/nio/ByteBuffer;

    .line 228
    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_18

    .line 230
    .local v1, "jpegSignature":[B
    new-array v0, v0, [B

    .line 232
    .local v0, "jpeg":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 233
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 236
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2

    nop

    :array_18
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data
.end method

.method private isValidRect(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 184
    iget v0, p1, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    if-ltz v0, :cond_20

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-ltz v0, :cond_20

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_20

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-gez v0, :cond_12

    goto :goto_20

    .line 186
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1

    .line 185
    :cond_20
    :goto_20
    return v1
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeProcess(Ljava/nio/ByteBuffer;ILcom/samsung/android/media/imagecrop/SemCroppedImageInfo;IIII)I
.end method

.method private native nativeSetup()V
.end method


# virtual methods
.method public crop(Ljava/io/FileDescriptor;Landroid/graphics/Rect;)Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 132
    const/4 v0, 0x0

    const-string v1, "SemImageCrop"

    if-nez p1, :cond_b

    .line 133
    const-string v2, "fd is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-object v0

    .line 136
    :cond_b
    if-nez p2, :cond_14

    .line 137
    const-string/jumbo v2, "rect is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v0

    .line 140
    :cond_14
    invoke-direct {p0, p2}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isValidRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 141
    const-string/jumbo v2, "rect is not valid, check rect properties has negative value or width/height is less than or equal to zero!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-object v0

    .line 145
    :cond_21
    const/4 v0, 0x0

    .line 146
    .local v0, "outInfo":Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;
    :try_start_22
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_70

    .line 147
    .local v2, "inStream":Ljava/io/FileInputStream;
    :try_start_27
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 148
    .local v3, "inChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/samsung/android/media/imagecrop/NativeBuffer;->allocNativeBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 150
    .local v4, "inBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 151
    .local v5, "readSize":I
    :goto_34
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 152
    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    add-int/2addr v5, v6

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "read : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 155
    :cond_57
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 157
    invoke-virtual {p0, v4, p2}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->crop(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;)Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;

    move-result-object v1

    move-object v0, v1

    .line 158
    invoke-static {v4}, Lcom/samsung/android/media/imagecrop/NativeBuffer;->freeNativeBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_62
    .catchall {:try_start_27 .. :try_end_62} :catchall_66

    .line 159
    .end local v3    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v4    # "inBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "readSize":I
    :try_start_62
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_70

    .line 161
    .end local v2    # "inStream":Ljava/io/FileInputStream;
    goto :goto_74

    .line 146
    .restart local v2    # "inStream":Ljava/io/FileInputStream;
    :catchall_66
    move-exception v1

    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v3

    :try_start_6c
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "outInfo":Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;
    .end local p0    # "this":Lcom/samsung/android/media/imagecrop/SemImageCrop;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "rect":Landroid/graphics/Rect;
    :goto_6f
    throw v1
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_70

    .line 159
    .end local v2    # "inStream":Ljava/io/FileInputStream;
    .restart local v0    # "outInfo":Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;
    .restart local p0    # "this":Lcom/samsung/android/media/imagecrop/SemImageCrop;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "rect":Landroid/graphics/Rect;
    :catch_70
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 162
    .end local v1    # "e":Ljava/io/IOException;
    :goto_74
    return-object v0
.end method

.method public crop(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;)Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;
    .registers 15
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 81
    const/4 v0, 0x0

    const-string v1, "SemImageCrop"

    if-nez p1, :cond_c

    .line 82
    const-string/jumbo v2, "in is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v0

    .line 85
    :cond_c
    if-nez p2, :cond_15

    .line 86
    const-string/jumbo v2, "rect is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object v0

    .line 89
    :cond_15
    invoke-direct {p0, p2}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isValidRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 90
    const-string/jumbo v2, "rect is not valid, check rect properties has negative value or width/height is less than or equal to zero!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-object v0

    .line 93
    :cond_22
    invoke-static {p1}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isHeicFormat(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 94
    sget-boolean v2, Lcom/samsung/android/media/imagecrop/SemImageCrop;->hasHevcEncoder:Z

    if-eqz v2, :cond_30

    sget-boolean v2, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupportHeifCapture:Z

    if-nez v2, :cond_8f

    .line 95
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "is heic format, but hevcEncoder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/media/imagecrop/SemImageCrop;->hasHevcEncoder:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", supportHeifCapture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupportHeifCapture:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v0

    .line 98
    :cond_56
    invoke-static {p1}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isJpegFormat(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 99
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 101
    .local v2, "header":[B
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "image format is not supported!, {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->bytesToHex([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-object v0

    .line 109
    .end local v2    # "header":[B
    :cond_8f
    new-instance v2, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;-><init>(I)V

    .line 110
    .local v2, "outInfo":Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    iget v8, p2, Landroid/graphics/Rect;->left:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->right:I

    iget v11, p2, Landroid/graphics/Rect;->bottom:I

    move-object v4, p0

    move-object v5, p1

    move-object v7, v2

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->nativeProcess(Ljava/nio/ByteBuffer;ILcom/samsung/android/media/imagecrop/SemCroppedImageInfo;IIII)I

    move-result v3

    .line 111
    .local v3, "outLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "outLength : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v2, v3}, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->reAllocInJavaBuffer(I)V

    .line 114
    invoke-virtual {v2}, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->getWidth()I

    move-result v4

    if-lez v4, :cond_d5

    invoke-virtual {v2}, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->getHeight()I

    move-result v4

    if-gtz v4, :cond_d4

    goto :goto_d5

    .line 119
    :cond_d4
    return-object v2

    .line 115
    :cond_d5
    :goto_d5
    const-string v4, "cropping is failed!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->nativeFinalize()V

    .line 179
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 180
    const-string v0, "SemImageCrop"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method public getSupportedFormat()[I
    .registers 3

    .line 171
    sget-boolean v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->hasHevcEncoder:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupportHeifCapture:Z

    if-nez v0, :cond_a

    goto :goto_10

    .line 173
    :cond_a
    const/4 v0, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0

    .line 172
    :cond_10
    :goto_10
    filled-new-array {v1}, [I

    move-result-object v0

    return-object v0
.end method
