.class public Lcom/samsung/android/sume/core/UniExifInterface;
.super Landroid/media/ExifInterface;
.source "UniExifInterface.java"


# static fields
.field static final EXIF_PREFIX:[B

.field static final JPEG_POSTFIX:[B

.field static final JPEG_PREFIX:[B

.field private static final TAG:Ljava/lang/String;


# instance fields
.field originExifBuffer:Ljava/nio/ByteBuffer;

.field tempFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    const-class v0, Lcom/samsung/android/sume/core/UniExifInterface;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/UniExifInterface;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_20

    sput-object v1, Lcom/samsung/android/sume/core/UniExifInterface;->JPEG_PREFIX:[B

    .line 26
    new-array v1, v0, [B

    fill-array-data v1, :array_26

    sput-object v1, Lcom/samsung/android/sume/core/UniExifInterface;->EXIF_PREFIX:[B

    .line 27
    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/samsung/android/sume/core/UniExifInterface;->JPEG_POSTFIX:[B

    return-void

    nop

    :array_20
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_26
    .array-data 1
        -0x1t
        -0x1ft
    .end array-data

    nop

    :array_2c
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/File;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    .registers 3
    .param p1, "exifBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "tempFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/UniExifInterface;-><init>(Ljava/io/File;)V

    .line 54
    iput-object p2, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {p2}, Ljava/io/File;->deleteOnExit()V

    .line 57
    return-void
.end method

.method private static isJpegPrefix(Ljava/nio/ByteBuffer;)Z
    .registers 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v0, v1

    .line 76
    .local v0, "prefix":[B
    sget-object v1, Lcom/samsung/android/sume/core/UniExifInterface;->JPEG_PREFIX:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public static of(Ljava/io/File;)Lcom/samsung/android/sume/core/UniExifInterface;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 161
    invoke-static {p0}, Lcom/samsung/android/sume/core/UniExifInterface;->parseExif(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    .local v0, "exifBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/UniExifInterface$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/UniExifInterface$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/UniExifInterface;

    return-object v1
.end method

.method public static of(Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/UniExifInterface;
    .registers 3
    .param p0, "exifBuffer"    # Ljava/nio/ByteBuffer;

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "file":Ljava/io/File;
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/sume/core/UniExifInterface;->toJpegExifFile(Ljava/nio/ByteBuffer;)Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    .line 147
    new-instance v1, Lcom/samsung/android/sume/core/UniExifInterface;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sume/core/UniExifInterface;-><init>(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_c

    return-object v1

    .line 148
    :catch_c
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parseExif(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 166
    invoke-static {p0}, Lcom/samsung/android/sume/core/UniExifInterface;->parseJpegExif(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 167
    .local v0, "exifBuffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_a

    .line 168
    invoke-static {p0}, Lcom/samsung/android/sume/core/UniExifInterface;->parseHeifExif(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    :cond_a
    return-object v0
.end method

.method private static parseHeifExif(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 173
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/SemHEIFCodec;->getExifData(Ljava/lang/String;)[B

    move-result-object v0

    .line 174
    .local v0, "exifBuf":[B
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/UniExifInterface$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/UniExifInterface$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method private static parseJpegExif(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 19
    .param p0, "file"    # Ljava/io/File;

    .line 178
    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v2, p0

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_107

    move-object v3, v0

    .line 179
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x2

    :try_start_a
    new-array v4, v0, [B

    .line 180
    .local v4, "buffer":[B
    const-wide/16 v5, 0x0

    .line 181
    .local v5, "offset":J
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 182
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v0}, Ljava/io/FileInputStream;->read([BII)I

    .line 183
    const-wide/16 v8, 0x2

    add-long/2addr v5, v8

    .line 185
    :goto_1e
    invoke-virtual {v3, v4, v7, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    if-lez v10, :cond_f7

    .line 186
    add-long/2addr v5, v8

    .line 187
    new-instance v10, Landroid/util/Pair;

    aget-byte v11, v4, v7

    const/16 v12, 0xff

    and-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aget-byte v14, v4, v13

    and-int/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v10, v11, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .local v10, "markers":Landroid/util/Pair;
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-ne v11, v12, :cond_46

    goto :goto_47

    :cond_46
    move v13, v7

    :goto_47
    move v11, v13

    .line 189
    .local v11, "first":Z
    if-nez v11, :cond_57

    .line 190
    sget-object v0, Lcom/samsung/android/sume/core/UniExifInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "this is not valid markers"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_a .. :try_end_52} :catchall_fb

    .line 191
    nop

    .line 229
    :try_start_53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_107

    .line 191
    return-object v1

    .line 194
    :cond_57
    :try_start_57
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/16 v13, 0xd0

    if-gt v13, v12, :cond_70

    .line 195
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/16 v13, 0xd7

    if-lt v13, v12, :cond_70

    .line 196
    goto :goto_1e

    .line 203
    :cond_70
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/16 v13, 0xe1

    if-ne v12, v13, :cond_ef

    .line 204
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    .line 205
    .local v12, "byte_first":I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v13

    .line 206
    .local v13, "byte_second":I
    add-long/2addr v5, v8

    .line 207
    shl-int/lit8 v14, v12, 0x8

    or-int/2addr v14, v13

    .line 209
    .local v14, "length":I
    const/4 v15, 0x4

    new-array v0, v15, [B

    .line 210
    .local v0, "exifTag":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v16

    move/from16 v17, v16

    .line 211
    .local v17, "readBytes":I
    move/from16 v8, v17

    .end local v17    # "readBytes":I
    .local v8, "readBytes":I
    if-ge v8, v15, :cond_a1

    .line 212
    sget-object v7, Lcom/samsung/android/sume/core/UniExifInterface;->TAG:Ljava/lang/String;

    const-string v9, "Fail to read exif Tag"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_57 .. :try_end_9c} :catchall_fb

    .line 213
    nop

    .line 229
    :try_start_9d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a0} :catch_107

    .line 213
    return-object v1

    .line 215
    :cond_a1
    const-wide/16 v16, 0x4

    add-long v5, v5, v16

    .line 217
    :try_start_a5
    new-instance v9, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-direct {v9, v0, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v15, "Exif"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cd

    .line 218
    add-int/lit8 v9, v14, -0x2

    new-array v9, v9, [B

    .line 219
    .local v9, "exifbuffer":[B
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    sub-long v1, v5, v16

    invoke-virtual {v15, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 220
    array-length v1, v9

    invoke-virtual {v3, v9, v7, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 221
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_c9
    .catchall {:try_start_a5 .. :try_end_c9} :catchall_fb

    .line 229
    :try_start_c9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cc} :catch_107

    .line 221
    return-object v1

    .line 223
    .end local v9    # "exifbuffer":[B
    :cond_cd
    :try_start_cd
    sget-object v1, Lcom/samsung/android/sume/core/UniExifInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not exif "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    add-int/lit8 v1, v14, -0x6

    int-to-long v1, v1

    invoke-virtual {v3, v1, v2}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_eb
    .catchall {:try_start_cd .. :try_end_eb} :catchall_fb

    .line 225
    add-int/lit8 v1, v14, -0x6

    int-to-long v1, v1

    add-long/2addr v5, v1

    .line 228
    .end local v0    # "exifTag":[B
    .end local v8    # "readBytes":I
    .end local v10    # "markers":Landroid/util/Pair;
    .end local v11    # "first":Z
    .end local v12    # "byte_first":I
    .end local v13    # "byte_second":I
    .end local v14    # "length":I
    :cond_ef
    const/4 v0, 0x2

    move-object/from16 v2, p0

    const/4 v1, 0x0

    const-wide/16 v8, 0x2

    goto/16 :goto_1e

    .line 229
    .end local v4    # "buffer":[B
    .end local v5    # "offset":J
    :cond_f7
    :try_start_f7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_107

    .line 231
    .end local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_10b

    .line 178
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_fb
    move-exception v0

    move-object v1, v0

    :try_start_fd
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_101

    goto :goto_106

    :catchall_101
    move-exception v0

    move-object v2, v0

    :try_start_103
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "file":Ljava/io/File;
    :goto_106
    throw v1
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_107} :catch_107

    .line 229
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catch_107
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10b
    const/4 v1, 0x0

    return-object v1
.end method

.method private reset()V
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 63
    :cond_12
    return-void
.end method

.method private static toJpegExifFile(Ljava/nio/ByteBuffer;)Ljava/io/File;
    .registers 8
    .param p0, "exifBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "exifData":[B
    const/4 v1, 0x0

    .line 83
    .local v1, "tempJpegBuffer":[B
    invoke-static {p0}, Lcom/samsung/android/sume/core/UniExifInterface;->isJpegPrefix(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 84
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 85
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v1, v2, [B

    .line 86
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_53

    .line 88
    :cond_15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    new-array v1, v2, [B

    .line 91
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 93
    sget-object v2, Lcom/samsung/android/sume/core/UniExifInterface;->JPEG_PREFIX:[B

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    sget-object v2, Lcom/samsung/android/sume/core/UniExifInterface;->EXIF_PREFIX:[B

    invoke-static {v2, v3, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    array-length v2, v0

    add-int/2addr v2, v4

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v5, 0x4

    aput-byte v2, v1, v5

    .line 97
    array-length v2, v0

    add-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v5, 0x5

    aput-byte v2, v1, v5

    .line 99
    array-length v2, v0

    const/4 v5, 0x6

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    sget-object v2, Lcom/samsung/android/sume/core/UniExifInterface;->JPEG_POSTFIX:[B

    array-length v6, v0

    add-int/2addr v6, v5

    invoke-static {v2, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    :goto_53
    const/4 v2, 0x0

    .line 104
    .local v2, "newTempFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 106
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    const-string/jumbo v4, "temp.jpg"

    const-string/jumbo v5, "tmp"

    invoke-static {v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 107
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 108
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 109
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 111
    return-object v2
.end method


# virtual methods
.method public getOriginExifBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getTempFile()Ljava/io/File;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public toExifByteBuffer()Ljava/nio/ByteBuffer;
    .registers 7

    .line 115
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 118
    .local v1, "newJpegBuf":[B
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_f

    move-object v1, v2

    .line 121
    goto :goto_13

    .line 119
    :catch_f
    move-exception v2

    .line 120
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    .end local v2    # "e":Ljava/io/IOException;
    :goto_13
    const/4 v2, 0x0

    .line 124
    .local v2, "newExifBuf":[B
    const/4 v3, 0x0

    .line 126
    .local v3, "newExifByteBuffer":Ljava/nio/ByteBuffer;
    array-length v4, v1

    add-int/lit8 v4, v4, -0x8

    new-array v2, v4, [B

    .line 127
    const/4 v4, 0x6

    array-length v5, v2

    invoke-static {v1, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    array-length v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 130
    .end local v3    # "newExifByteBuffer":Ljava/nio/ByteBuffer;
    .local v0, "newExifByteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/sume/core/UniExifInterface;->reset()V

    .line 135
    return-object v0
.end method
