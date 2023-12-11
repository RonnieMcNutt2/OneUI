.class public Lcom/samsung/android/media/SemBitmapFactory;
.super Ljava/lang/Object;
.source "SemBitmapFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemBitmapFactory"

.field private static mLibraryLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    .line 42
    invoke-static {}, Lcom/samsung/android/media/SemBitmapFactory;->loadLibrary()V

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 196
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const-string v1, "SemBitmapFactory"

    if-nez v0, :cond_b

    .line 197
    const-string v0, "decodeByteArray - mLibraryLoaded is false"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_b
    const-string v0, "decodeByteArray e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz p3, :cond_38

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "opts.semInApplyPhotoHdr:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p3, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  opts.semInCreateGainmap:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p3, Landroid/graphics/BitmapFactory$Options;->semInCreateGainmap:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 205
    :cond_38
    const-string/jumbo v0, "opts null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_3e
    if-nez p0, :cond_42

    .line 208
    const/4 v0, 0x0

    return-object v0

    .line 210
    :cond_42
    or-int v0, p1, p2

    if-ltz v0, :cond_6e

    array-length v0, p0

    add-int v2, p1, p2

    if-lt v0, v2, :cond_6e

    .line 214
    if-eqz p3, :cond_54

    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_54

    .line 215
    const/4 v0, 0x1

    iput v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 218
    :cond_54
    if-eqz p3, :cond_64

    iget-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    if-eqz v0, :cond_64

    .line 220
    const-string v0, "decodeByteArray opts.semInApplyPhotoHdr true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/media/PhotoHdrCodec;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 223
    :cond_64
    const-string v0, "decodeByteArray opts.semInApplyPhotoHdr decode x"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/media/SemHEIFCodec;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 211
    :cond_6e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 68
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const-string v1, "SemBitmapFactory"

    if-nez v0, :cond_b

    .line 69
    const-string v0, "decodeFile - mLibraryLoaded is false"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_b
    const-string v0, "decodeFile e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz p1, :cond_38

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "opts.semInApplyPhotoHdr:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  opts.semInCreateGainmap:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->semInCreateGainmap:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 76
    :cond_38
    const-string/jumbo v0, "opts null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_3e
    if-nez p0, :cond_42

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_42
    if-eqz p1, :cond_4b

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_4b

    .line 82
    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 85
    :cond_4b
    if-eqz p1, :cond_5b

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    if-eqz v0, :cond_5b

    .line 87
    const-string v0, "decodeFile opts.semInApplyPhotoHdr true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {p0, p1}, Lcom/samsung/android/media/PhotoHdrCodec;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 90
    :cond_5b
    const-string v0, "decodeFile opts.semInApplyPhotoHdr x"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {p0, p1}, Lcom/samsung/android/media/SemHEIFCodec;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 111
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    if-nez v0, :cond_b

    .line 112
    const-string v0, "SemBitmapFactory"

    const-string v1, "decodeFileDescriptor - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_b
    if-nez p0, :cond_f

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_f
    if-eqz p1, :cond_18

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_18

    .line 120
    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    :cond_18
    const/4 v0, 0x0

    .line 125
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_19
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_31

    .line 126
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1e
    invoke-static {v1, p1}, Lcom/samsung/android/media/SemBitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_27

    move-object v0, v2

    .line 127
    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_31

    .line 129
    .end local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_35

    .line 125
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_27
    move-exception v2

    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v3

    :try_start_2d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_30
    throw v2
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_31

    .line 127
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_31
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    :goto_35
    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 151
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    if-nez v0, :cond_b

    .line 152
    const-string v0, "SemBitmapFactory"

    const-string v1, "decodeStream - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_b
    const/4 v0, 0x0

    if-nez p0, :cond_f

    .line 157
    return-object v0

    .line 159
    :cond_f
    if-eqz p1, :cond_18

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v1, :cond_18

    .line 160
    const/4 v1, 0x1

    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 162
    :cond_18
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 166
    .local v2, "buffer":[B
    :goto_21
    :try_start_21
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_2e

    .line 167
    invoke-virtual {v1, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_21

    .line 169
    :cond_2e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 170
    .local v3, "inBytes":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 172
    array-length v5, v3

    invoke-static {v3, v6, v5, p1}, Lcom/samsung/android/media/SemBitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3a} :catch_3b

    return-object v0

    .line 173
    .end local v3    # "inBytes":[B
    .end local v4    # "read":I
    :catch_3b
    move-exception v3

    .line 174
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    return-object v0
.end method

.method public static decodeThumbnailByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 343
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    if-nez v0, :cond_b

    .line 344
    const-string v0, "SemBitmapFactory"

    const-string v1, "decodeThumbnailByteArray - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_b
    if-nez p0, :cond_f

    .line 349
    const/4 v0, 0x0

    return-object v0

    .line 351
    :cond_f
    or-int v0, p1, p2

    if-ltz v0, :cond_26

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_26

    .line 355
    if-eqz p3, :cond_21

    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_21

    .line 356
    const/4 v0, 0x1

    iput v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 359
    :cond_21
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/media/SemHEIFCodec;->getThumbnail([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    .local v0, "thumbBitmap":Landroid/graphics/Bitmap;
    return-object v0

    .line 352
    .end local v0    # "thumbBitmap":Landroid/graphics/Bitmap;
    :cond_26
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static decodeThumbnailFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 238
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    if-nez v0, :cond_b

    .line 239
    const-string v0, "SemBitmapFactory"

    const-string v1, "decodeThumbnailFile - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_b
    if-nez p0, :cond_f

    .line 244
    const/4 v0, 0x0

    return-object v0

    .line 246
    :cond_f
    if-eqz p1, :cond_18

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_18

    .line 247
    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 250
    :cond_18
    invoke-static {p0, p1}, Lcom/samsung/android/media/SemHEIFCodec;->getThumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    .local v0, "thumbBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static decodeThumbnailFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 265
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    if-nez v0, :cond_b

    .line 266
    const-string v0, "SemBitmapFactory"

    const-string v1, "decodeThumbnailFileDescriptor - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_b
    if-nez p0, :cond_f

    .line 271
    const/4 v0, 0x0

    return-object v0

    .line 273
    :cond_f
    if-eqz p1, :cond_18

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_18

    .line 274
    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 277
    :cond_18
    const/4 v0, 0x0

    .line 279
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_19
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_31

    .line 280
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1e
    invoke-static {v1, p1}, Lcom/samsung/android/media/SemBitmapFactory;->decodeThumbnailStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_27

    move-object v0, v2

    .line 281
    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_31

    .line 283
    .end local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_35

    .line 279
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_27
    move-exception v2

    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v3

    :try_start_2d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_30
    throw v2
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_31

    .line 281
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_31
    move-exception v1

    .line 282
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 285
    .end local v1    # "e":Ljava/io/IOException;
    :goto_35
    return-object v0
.end method

.method public static decodeThumbnailStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 301
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    if-nez v0, :cond_b

    .line 302
    const-string v0, "SemBitmapFactory"

    const-string v1, "decodeThumbnailStream - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_b
    const/4 v0, 0x0

    if-nez p0, :cond_f

    .line 307
    return-object v0

    .line 309
    :cond_f
    if-eqz p1, :cond_18

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v1, :cond_18

    .line 310
    const/4 v1, 0x1

    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 312
    :cond_18
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 313
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 316
    .local v2, "buffer":[B
    :goto_21
    :try_start_21
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_2e

    .line 317
    invoke-virtual {v1, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_21

    .line 319
    :cond_2e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 320
    .local v3, "inBytes":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 322
    array-length v5, v3

    invoke-static {v3, v6, v5, p1}, Lcom/samsung/android/media/SemBitmapFactory;->decodeThumbnailByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3a} :catch_3b

    return-object v0

    .line 323
    .end local v3    # "inBytes":[B
    .end local v4    # "read":I
    :catch_3b
    move-exception v3

    .line 324
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 325
    return-object v0
.end method

.method public static getExifDataByteArray([BII)[B
    .registers 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 449
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    if-nez v0, :cond_c

    .line 450
    const-string v0, "SemBitmapFactory"

    const-string/jumbo v1, "getExifDataByteArray - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_c
    if-nez p0, :cond_10

    .line 455
    const/4 v0, 0x0

    return-object v0

    .line 457
    :cond_10
    or-int v0, p1, p2

    if-ltz v0, :cond_1e

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_1e

    .line 461
    invoke-static {p0, p1, p2}, Lcom/samsung/android/media/SemHEIFCodec;->getExifData([BII)[B

    move-result-object v0

    .line 462
    .local v0, "exifData":[B
    return-object v0

    .line 458
    .end local v0    # "exifData":[B
    :cond_1e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static getExifDataFile(Ljava/lang/String;)[B
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 370
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    if-nez v0, :cond_c

    .line 371
    const-string v0, "SemBitmapFactory"

    const-string/jumbo v1, "getExifDataFile - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_c
    if-nez p0, :cond_10

    .line 376
    const/4 v0, 0x0

    return-object v0

    .line 378
    :cond_10
    invoke-static {p0}, Lcom/samsung/android/media/SemHEIFCodec;->getExifData(Ljava/lang/String;)[B

    move-result-object v0

    .line 379
    .local v0, "exifData":[B
    return-object v0
.end method

.method public static getExifDataFileDescriptor(Ljava/io/FileDescriptor;)[B
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 389
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    if-nez v0, :cond_c

    .line 390
    const-string v0, "SemBitmapFactory"

    const-string/jumbo v1, "getExifDataFileDescriptor - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_c
    const/4 v0, 0x0

    if-nez p0, :cond_10

    .line 395
    return-object v0

    .line 397
    :cond_10
    :try_start_10
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_27

    .line 398
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_15
    invoke-static {v1}, Lcom/samsung/android/media/SemBitmapFactory;->getExifDataStream(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_1d

    .line 399
    :try_start_19
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_27

    .line 398
    return-object v2

    .line 397
    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v3

    :try_start_23
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    :goto_26
    throw v2
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_27

    .line 399
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    :catch_27
    move-exception v1

    .line 400
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 403
    .end local v1    # "e":Ljava/io/IOException;
    return-object v0
.end method

.method public static getExifDataStream(Ljava/io/InputStream;)[B
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;

    .line 413
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    if-nez v0, :cond_c

    .line 414
    const-string v0, "SemBitmapFactory"

    const-string/jumbo v1, "getExifDataStream - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_c
    const/4 v0, 0x0

    if-nez p0, :cond_10

    .line 419
    return-object v0

    .line 421
    :cond_10
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 422
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 425
    .local v2, "buffer":[B
    :goto_19
    :try_start_19
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_26

    .line 426
    invoke-virtual {v1, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_19

    .line 428
    :cond_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 429
    .local v3, "inBytes":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 431
    array-length v5, v3

    invoke-static {v3, v6, v5}, Lcom/samsung/android/media/SemBitmapFactory;->getExifDataByteArray([BII)[B

    move-result-object v0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_32} :catch_33

    return-object v0

    .line 432
    .end local v3    # "inBytes":[B
    .end local v4    # "read":I
    :catch_33
    move-exception v3

    .line 433
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 434
    return-object v0
.end method

.method private static loadLibrary()V
    .registers 3

    .line 46
    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    if-nez v0, :cond_21

    .line 49
    const/4 v0, 0x1

    :try_start_5
    sput-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_7} :catch_8

    .line 52
    goto :goto_21

    .line 50
    :catch_8
    move-exception v0

    .line 51
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

    const-string v2, "SemBitmapFactory"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :cond_21
    :goto_21
    return-void
.end method
