.class public Lcom/samsung/android/media/PhotoHdrCodec;
.super Ljava/lang/Object;
.source "PhotoHdrCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;,
        Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;,
        Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;
    }
.end annotation


# static fields
.field private static final HDR_GAINMAP_NAMESPACE:Ljava/lang/String; = "http://ns.adobe.com/hdr-gain-map/1.0/"

.field private static final HEX_ARRAY:[C

.field private static final MARKER:B = -0x1t

.field private static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_APP2:B = -0x1et

.field private static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final TAG:Ljava/lang/String; = "PhotoHdrCodec"

.field private static mLibraryLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/PhotoHdrCodec;->mLibraryLoaded:Z

    .line 65
    invoke-static {}, Lcom/samsung/android/media/PhotoHdrCodec;->loadLibrary()V

    .line 1322
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/PhotoHdrCodec;->HEX_ARRAY:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CalGainInfo(Ljava/lang/Float;)Ljava/lang/Float;
    .registers 6
    .param p0, "info"    # Ljava/lang/Float;

    .line 323
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide v3, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/media/PhotoHdrCodec;->baseLog(DD)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Lcom/samsung/android/media/PhotoHdrCodec;->basePow(DD)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static applyGainmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 16
    .param p0, "coverBitmap"    # Landroid/graphics/Bitmap;

    .line 280
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 281
    .local v0, "coverBuffer":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v9

    .line 282
    .local v9, "cs":Landroid/graphics/ColorSpace;
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setColorSpace(Landroid/graphics/ColorSpace;)V

    .line 283
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 284
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 283
    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 285
    invoke-virtual {p0, v9}, Landroid/graphics/Bitmap;->setColorSpace(Landroid/graphics/ColorSpace;)V

    .line 287
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x1

    add-int v7, v1, v2

    .line 288
    .local v7, "gainWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x1

    add-int v8, v1, v2

    .line 289
    .local v8, "gainHeight":I
    mul-int v1, v7, v8

    mul-int/lit8 v1, v1, 0x4

    new-array v10, v1, [I

    .line 291
    .local v10, "gainBuf":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gainWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gainHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "PhotoHdrCodec"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/high16 v12, 0x40400000    # 3.0f

    .line 295
    .local v12, "GAIN_MAX":F
    const-string/jumbo v1, "make gain e"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v1, v0

    move-object v4, v10

    move v5, v7

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/media/PhotoHdrCodec;->nativeCreatGainBuf([III[III)F

    move-result v1

    .line 299
    .local v1, "scale":F
    const/high16 v1, 0x40400000    # 3.0f

    .line 301
    const-string/jumbo v2, "make gain x"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v7, v8, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 305
    .local v2, "gainBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Gainmap;

    invoke-direct {v3, v2}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 306
    .local v3, "gainmap":Landroid/graphics/Gainmap;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRatioMax scale:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide v13, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v4, v5, v13, v14}, Lcom/samsung/android/media/PhotoHdrCodec;->baseLog(DD)F

    move-result v4

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v13, v14, v4, v5}, Lcom/samsung/android/media/PhotoHdrCodec;->basePow(DD)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 310
    .local v4, "gainMax":Ljava/lang/Float;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gainMax:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v3, v5, v13, v14}, Landroid/graphics/Gainmap;->setRatioMax(FFF)V

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 319
    return-object p0
.end method

.method private static baseLog(DD)F
    .registers 8
    .param p0, "x"    # D
    .param p2, "base"    # D

    .line 464
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 465
    .local v0, "ret":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    return v1
.end method

.method private static basePow(DD)F
    .registers 6
    .param p0, "base"    # D
    .param p2, "x"    # D

    .line 470
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 471
    .local v0, "ret":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    return v1
.end method

.method public static bytesToHex([BI)Ljava/lang/String;
    .registers 10
    .param p0, "bytes"    # [B
    .param p1, "limit"    # I

    .line 1329
    if-eqz p0, :cond_6e

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_6e

    .line 1333
    :cond_6
    move v0, p1

    .line 1334
    .local v0, "size":I
    :try_start_7
    array-length v1, p0

    if-ge v1, p1, :cond_c

    .line 1335
    array-length v1, p0

    move v0, v1

    .line 1336
    :cond_c
    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0xc

    new-array v1, v1, [C

    .line 1337
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "base":I
    :goto_14
    if-ge v2, v0, :cond_35

    .line 1338
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    .line 1339
    .local v4, "v":I
    sget-object v5, Lcom/samsung/android/media/PhotoHdrCodec;->HEX_ARRAY:[C

    ushr-int/lit8 v6, v4, 0x4

    aget-char v6, v5, v6

    aput-char v6, v1, v3

    .line 1340
    add-int/lit8 v6, v3, 0x1

    and-int/lit8 v7, v4, 0xf

    aget-char v5, v5, v7

    aput-char v5, v1, v6

    .line 1341
    add-int/lit8 v5, v3, 0x2

    const/16 v6, 0x20

    aput-char v6, v1, v5

    .line 1337
    .end local v4    # "v":I
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x3

    goto :goto_14

    .line 1343
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

    .line 1344
    .end local v0    # "size":I
    .end local v1    # "hexChars":[C
    :catch_58
    move-exception v0

    .line 1347
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

    .line 1330
    :cond_6e
    :goto_6e
    const-string v0, "0:null"

    return-object v0
.end method

.method private static checkEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 3
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 749
    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->isEnd(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static checkStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 3
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 743
    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->isStart(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/InputStream;

    .line 1354
    if-eqz p0, :cond_a

    .line 1356
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 1360
    goto :goto_a

    .line 1359
    :catch_6
    move-exception v0

    goto :goto_a

    .line 1357
    :catch_8
    move-exception v0

    .line 1358
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 1362
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static createGainInfo(Landroid/graphics/Bitmap;F)Landroid/graphics/Gainmap;
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "GainMax"    # F

    .line 351
    new-instance v0, Landroid/graphics/Gainmap;

    invoke-direct {v0, p0}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 352
    .local v0, "gainmap":Landroid/graphics/Gainmap;
    invoke-virtual {v0, p1, p1, p1}, Landroid/graphics/Gainmap;->setRatioMax(FFF)V

    .line 353
    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 16
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 371
    sget-boolean v0, Lcom/samsung/android/media/PhotoHdrCodec;->mLibraryLoaded:Z

    const-string v1, "PhotoHdrCodec"

    if-nez v0, :cond_b

    .line 372
    const-string v0, "decodeByteArray - mLibraryLoaded is false"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_b
    const/4 v0, 0x0

    if-nez p0, :cond_f

    .line 377
    return-object v0

    .line 379
    :cond_f
    or-int v2, p1, p2

    if-ltz v2, :cond_dd

    array-length v2, p0

    add-int v3, p1, p2

    if-lt v2, v3, :cond_dd

    .line 383
    if-eqz p3, :cond_21

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v2, :cond_21

    .line 384
    const/4 v2, 0x1

    iput v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 386
    :cond_21
    const-string v2, "decodeByteArray e"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/16 v2, 0xc

    .line 389
    .local v2, "CHECK_SIZE":I
    :try_start_28
    new-array v3, v2, [B

    .line 390
    .local v3, "header":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 391
    .local v4, "bin":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 392
    invoke-static {v4}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 394
    const/4 v6, 0x0

    .line 395
    .local v6, "coverBitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 396
    .local v7, "gainBitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 397
    .local v8, "gainmap":Landroid/graphics/Gainmap;
    const/4 v9, 0x0

    .line 399
    .local v9, "gainInfo":Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    const-string v10, "decode cover file e"

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/media/SemHEIFCodec;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v6, v10

    .line 401
    const-string v10, "decode cover file x"

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "opts.semInApplyPhotoHdr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p3, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  opts.semInCreateGainmap:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p3, Landroid/graphics/BitmapFactory$Options;->semInCreateGainmap:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-boolean v10, p3, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    if-eqz v10, :cond_d7

    .line 416
    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->hasGainmap([B)Z

    move-result v10

    if-nez v10, :cond_94

    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->hasGainmapOld([B)Z

    move-result v10

    if-eqz v10, :cond_7f

    goto :goto_94

    .line 448
    :cond_7f
    iget-boolean v5, p3, Landroid/graphics/BitmapFactory$Options;->semInCreateGainmap:Z

    if-eqz v5, :cond_d7

    .line 449
    const-string/jumbo v5, "nogain e"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {v6}, Lcom/samsung/android/media/PhotoHdrCodec;->applyGainmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v6, v5

    .line 451
    const-string v5, "decode nogain x"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 417
    :cond_94
    :goto_94
    invoke-static {v3}, Lcom/samsung/android/media/PhotoHdrCodec;->isJpegFormat([B)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 418
    const-string v10, "gain e"

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->parseGainBuf([B)[B

    move-result-object v10

    .line 420
    .local v10, "gain":[B
    invoke-static {v10}, Lcom/samsung/android/media/PhotoHdrCodec;->getGainmapInfo([B)Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;

    move-result-object v11

    move-object v9, v11

    .line 422
    const-string v11, "decode gain file e"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    array-length v11, v10

    invoke-static {v10, v5, v11, p3}, Lcom/samsung/android/media/SemHEIFCodec;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 424
    .end local v7    # "gainBitmap":Landroid/graphics/Bitmap;
    .local v5, "gainBitmap":Landroid/graphics/Bitmap;
    const-string v7, "decode gain file x"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {v5, v9}, Lcom/samsung/android/media/PhotoHdrCodec;->setGainInfo(Landroid/graphics/Bitmap;Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;)Landroid/graphics/Gainmap;

    move-result-object v7

    .line 441
    .end local v8    # "gainmap":Landroid/graphics/Gainmap;
    .local v7, "gainmap":Landroid/graphics/Gainmap;
    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 442
    .end local v10    # "gain":[B
    move-object v8, v7

    move-object v7, v5

    goto :goto_d2

    .line 443
    .end local v5    # "gainBitmap":Landroid/graphics/Bitmap;
    .local v7, "gainBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "gainmap":Landroid/graphics/Gainmap;
    :cond_c1
    const-string/jumbo v5, "heif e"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {v6}, Lcom/samsung/android/media/PhotoHdrCodec;->applyGainmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 445
    .end local v6    # "coverBitmap":Landroid/graphics/Bitmap;
    .local v5, "coverBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v6, "heif x"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 447
    .end local v5    # "coverBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "coverBitmap":Landroid/graphics/Bitmap;
    :goto_d2
    const-string v5, "decode file x"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_d7} :catch_d8

    .line 456
    :cond_d7
    :goto_d7
    return-object v6

    .line 457
    .end local v3    # "header":[B
    .end local v4    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v6    # "coverBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "gainBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "gainmap":Landroid/graphics/Gainmap;
    .end local v9    # "gainInfo":Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    :catch_d8
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0

    .line 380
    .end local v2    # "CHECK_SIZE":I
    :cond_dd
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 186
    sget-boolean v0, Lcom/samsung/android/media/PhotoHdrCodec;->mLibraryLoaded:Z

    const-string v1, "PhotoHdrCodec"

    if-nez v0, :cond_b

    .line 187
    const-string v0, "decodeFile - mLibraryLoaded is false"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_b
    const-string v0, "decodeFile e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x0

    if-nez p0, :cond_14

    .line 192
    return-object v0

    .line 194
    :cond_14
    if-eqz p1, :cond_1d

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v2, :cond_1d

    .line 195
    const/4 v2, 0x1

    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 198
    :cond_1d
    const/4 v2, 0x0

    .line 199
    .local v2, "fin":Ljava/io/FileInputStream;
    const/16 v3, 0xc

    .line 202
    .local v3, "CHECK_SIZE":I
    :try_start_20
    new-array v4, v3, [B

    .line 203
    .local v4, "header":[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 204
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 206
    const/4 v6, 0x0

    .line 207
    .local v6, "coverBitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 208
    .local v7, "gainBitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 209
    .local v8, "gainmap":Landroid/graphics/Gainmap;
    const/4 v9, 0x0

    .line 211
    .local v9, "gainInfo":Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    const-string v10, "decode cover file e"

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {p0, p1}, Lcom/samsung/android/media/SemHEIFCodec;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v6, v10

    .line 213
    const-string v10, "decode cover file x"

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "opts.semInApplyPhotoHdr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p1, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  opts.semInCreateGainmap:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p1, Landroid/graphics/BitmapFactory$Options;->semInCreateGainmap:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-boolean v10, p1, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    if-eqz v10, :cond_e9

    .line 227
    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->hasGainmap(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8a

    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->hasGainmapOld(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_75

    goto :goto_8a

    .line 260
    :cond_75
    iget-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->semInCreateGainmap:Z

    if-eqz v5, :cond_e9

    .line 261
    const-string/jumbo v5, "nogain e"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {v6}, Lcom/samsung/android/media/PhotoHdrCodec;->applyGainmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v6, v5

    .line 263
    const-string v5, "decode nogain x"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e9

    .line 228
    :cond_8a
    :goto_8a
    invoke-static {v4}, Lcom/samsung/android/media/PhotoHdrCodec;->isJpegFormat([B)Z

    move-result v10

    if-eqz v10, :cond_d3

    .line 229
    const-string v10, "gain e"

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {p0}, Lcom/samsung/android/media/PhotoHdrCodec;->parseGainBuf(Ljava/lang/String;)[B

    move-result-object v10

    .line 231
    .local v10, "gain":[B
    invoke-static {v10}, Lcom/samsung/android/media/PhotoHdrCodec;->getGainmapInfo([B)Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;

    move-result-object v11

    move-object v9, v11

    .line 233
    const-string v11, "decode gain file e"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    array-length v11, v10

    invoke-static {v10, v5, v11, p1}, Lcom/samsung/android/media/SemHEIFCodec;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 235
    .end local v7    # "gainBitmap":Landroid/graphics/Bitmap;
    .local v5, "gainBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decode gain file x, gain:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "gain.length"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v11, v10

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {v5, v9}, Lcom/samsung/android/media/PhotoHdrCodec;->setGainInfo(Landroid/graphics/Bitmap;Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;)Landroid/graphics/Gainmap;

    move-result-object v7

    .line 253
    .end local v8    # "gainmap":Landroid/graphics/Gainmap;
    .local v7, "gainmap":Landroid/graphics/Gainmap;
    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 254
    .end local v10    # "gain":[B
    move-object v8, v7

    move-object v7, v5

    goto :goto_e4

    .line 255
    .end local v5    # "gainBitmap":Landroid/graphics/Bitmap;
    .local v7, "gainBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "gainmap":Landroid/graphics/Gainmap;
    :cond_d3
    const-string/jumbo v5, "heif e"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {v6}, Lcom/samsung/android/media/PhotoHdrCodec;->applyGainmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 257
    .end local v6    # "coverBitmap":Landroid/graphics/Bitmap;
    .local v5, "coverBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v6, "heif x"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 259
    .end local v5    # "coverBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "coverBitmap":Landroid/graphics/Bitmap;
    :goto_e4
    const-string v5, "decode file x"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_e9} :catch_f0
    .catchall {:try_start_20 .. :try_end_e9} :catchall_ee

    .line 270
    :cond_e9
    :goto_e9
    nop

    .line 274
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 270
    return-object v6

    .line 274
    .end local v4    # "header":[B
    .end local v6    # "coverBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "gainBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "gainmap":Landroid/graphics/Gainmap;
    .end local v9    # "gainInfo":Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    :catchall_ee
    move-exception v0

    goto :goto_f9

    .line 271
    :catch_f0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/Exception;
    :try_start_f1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_ee

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 275
    nop

    .line 276
    return-object v0

    .line 274
    :goto_f9
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 275
    throw v0
.end method

.method private static getAttributeAllValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    nop

    :cond_1
    const-string v0, ":Item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "concat":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 677
    invoke-static {p0, v0}, Lcom/samsung/android/media/PhotoHdrCodec;->checkStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 679
    const-string v1, ":Semantic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "concat3":Ljava/lang/String;
    const-string v2, ":Length"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, "concat4":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 684
    .local v3, "e3":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, "e4":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PhotoHdrCodec"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string v5, "RecoveryMap"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 689
    const/4 v5, 0x1

    return v5

    .line 690
    :cond_4a
    const-string v5, "Primary"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 691
    nop

    .line 698
    .end local v0    # "concat":Ljava/lang/String;
    .end local v1    # "concat3":Ljava/lang/String;
    .end local v2    # "concat4":Ljava/lang/String;
    .end local v3    # "e3":Ljava/lang/String;
    .end local v4    # "e4":Ljava/lang/String;
    :cond_50
    const-string v0, ":Directory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/media/PhotoHdrCodec;->checkEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    const/4 v0, 0x0

    return v0
.end method

.method private static getAttributeAllValues2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    .registers 33
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 708
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 710
    .local v3, "gainInfo":Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    :goto_7
    const-string v4, ":Description"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 712
    .local v4, "concat":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 713
    invoke-static {v0, v4}, Lcom/samsung/android/media/PhotoHdrCodec;->checkStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 714
    const-string v5, ":Version"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, "concat1":Ljava/lang/String;
    const-string v6, ":GainMapMin"

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 716
    .local v6, "concat2":Ljava/lang/String;
    const-string v7, ":GainMapMax"

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 717
    .local v7, "concat3":Ljava/lang/String;
    const-string v8, ":Gamma"

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 718
    .local v8, "concat4":Ljava/lang/String;
    const-string v9, ":OffsetSDR"

    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 719
    .local v9, "concat5":Ljava/lang/String;
    const-string v10, ":OffsetHDR"

    invoke-virtual {v2, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 720
    .local v10, "concat6":Ljava/lang/String;
    const-string v11, ":HDRCapacityMin"

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 721
    .local v11, "concat7":Ljava/lang/String;
    const-string v12, ":HDRCapacityMax"

    invoke-virtual {v2, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 722
    .local v12, "concat8":Ljava/lang/String;
    const-string v13, ":BaseRendition"

    invoke-virtual {v2, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 723
    .local v13, "concat9":Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 724
    .local v14, "e1":Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 725
    .local v15, "e2":Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, "e3":Ljava/lang/String;
    move-object/from16 v16, v3

    .end local v3    # "gainInfo":Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    .local v16, "gainInfo":Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    invoke-static {v0, v8}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "e4":Ljava/lang/String;
    move-object/from16 v17, v4

    .end local v4    # "concat":Ljava/lang/String;
    .local v17, "concat":Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, "e5":Ljava/lang/String;
    move-object/from16 v18, v5

    .end local v5    # "concat1":Ljava/lang/String;
    .local v18, "concat1":Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 729
    .local v5, "e6":Ljava/lang/String;
    move-object/from16 v19, v6

    .end local v6    # "concat2":Ljava/lang/String;
    .local v19, "concat2":Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 730
    .local v6, "e7":Ljava/lang/String;
    move-object/from16 v20, v7

    .end local v7    # "concat3":Ljava/lang/String;
    .local v20, "concat3":Ljava/lang/String;
    invoke-static {v0, v12}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 731
    .local v7, "e8":Ljava/lang/String;
    move-object/from16 v21, v8

    .end local v8    # "concat4":Ljava/lang/String;
    .local v21, "concat4":Ljava/lang/String;
    invoke-static {v0, v13}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 732
    .local v8, "e9":Ljava/lang/String;
    new-instance v29, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v26

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    move-object/from16 v22, v29

    invoke-direct/range {v22 .. v28}, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;-><init>(FFFFFF)V

    move-object/from16 v16, v29

    .line 734
    move-object/from16 v22, v9

    .end local v9    # "concat5":Ljava/lang/String;
    .local v22, "concat5":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v23, v10

    .end local v10    # "concat6":Ljava/lang/String;
    .local v23, "concat6":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PhotoHdrCodec"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v16

    goto :goto_fc

    .line 713
    .end local v2    # "e3":Ljava/lang/String;
    .end local v5    # "e6":Ljava/lang/String;
    .end local v6    # "e7":Ljava/lang/String;
    .end local v7    # "e8":Ljava/lang/String;
    .end local v8    # "e9":Ljava/lang/String;
    .end local v11    # "concat7":Ljava/lang/String;
    .end local v12    # "concat8":Ljava/lang/String;
    .end local v13    # "concat9":Ljava/lang/String;
    .end local v14    # "e1":Ljava/lang/String;
    .end local v15    # "e2":Ljava/lang/String;
    .end local v16    # "gainInfo":Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    .end local v17    # "concat":Ljava/lang/String;
    .end local v18    # "concat1":Ljava/lang/String;
    .end local v19    # "concat2":Ljava/lang/String;
    .end local v20    # "concat3":Ljava/lang/String;
    .end local v21    # "concat4":Ljava/lang/String;
    .end local v22    # "concat5":Ljava/lang/String;
    .end local v23    # "concat6":Ljava/lang/String;
    .local v3, "gainInfo":Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    .local v4, "concat":Ljava/lang/String;
    :cond_f8
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 736
    .end local v4    # "concat":Ljava/lang/String;
    :goto_fc
    const-string v2, ":RDF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/media/PhotoHdrCodec;->checkEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_109

    .line 737
    return-object v3

    .line 736
    :cond_109
    move-object/from16 v2, p2

    goto/16 :goto_7
.end method

.method private static getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "str"    # Ljava/lang/String;

    .line 764
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 765
    .local v0, "attributeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1c

    .line 766
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 767
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 769
    :cond_16
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 772
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getGainBuf(Ljava/io/DataInputStream;Ljava/lang/String;)[B
    .registers 29
    .param p0, "in"    # Ljava/io/DataInputStream;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1178
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 1179
    .local v2, "ASCII":Ljava/nio/charset/Charset;
    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_366

    .line 1180
    .local v3, "IDENTIFIER_MPF":[B
    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 1181
    .local v4, "IDENTIFIER_XMP_APP1":[B
    const-string/jumbo v5, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 1182
    .local v5, "IDENTIFIER_XMP_EXT_APP1":[B
    const/4 v6, 0x0

    .line 1183
    .local v6, "gainBuf":[B
    const/4 v7, 0x0

    .line 1184
    .local v7, "xmpExt":[B
    const-wide/16 v8, 0x0

    .line 1186
    .local v8, "MPFOffset":J
    const/4 v10, 0x0

    .line 1189
    .local v10, "bytesRead":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    move v12, v11

    .local v12, "marker":B
    const-string v13, "Invalid marker: "

    const/4 v14, -0x1

    if-ne v11, v14, :cond_33c

    .line 1192
    add-int/lit8 v10, v10, 0x1

    .line 1193
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    const/16 v15, -0x28

    if-ne v11, v15, :cond_31b

    .line 1196
    add-int/lit8 v10, v10, 0x1

    .line 1198
    :goto_39
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    .line 1199
    .end local v12    # "marker":B
    .local v11, "marker":B
    if-ne v11, v14, :cond_2ee

    .line 1202
    add-int/lit8 v10, v10, 0x1

    .line 1203
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v12

    .line 1204
    .end local v11    # "marker":B
    .restart local v12    # "marker":B
    add-int/lit8 v10, v10, 0x1

    .line 1206
    const/16 v11, -0x27

    if-eq v12, v11, :cond_2e5

    const/16 v11, -0x26

    if-ne v12, v11, :cond_59

    .line 1207
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v19, v6

    move-wide/from16 v17, v8

    goto/16 :goto_2ed

    .line 1209
    :cond_59
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    .line 1210
    .local v11, "length":I
    add-int/lit8 v10, v10, 0x2

    .line 1211
    const-string v13, "Invalid length"

    if-ltz v11, :cond_2dc

    .line 1214
    const-string v15, ", bytesRead:"

    const-string/jumbo v14, "marker:"

    move-wide/from16 v17, v8

    .end local v8    # "MPFOffset":J
    .local v17, "MPFOffset":J
    const-string v8, "PhotoHdrCodec"

    packed-switch v12, :pswitch_data_35e

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v19, v6

    move/from16 v21, v11

    move-object/from16 v20, v13

    .end local v3    # "IDENTIFIER_MPF":[B
    .end local v4    # "IDENTIFIER_XMP_APP1":[B
    .end local v6    # "gainBuf":[B
    .end local v11    # "length":I
    .local v19, "gainBuf":[B
    .local v21, "length":I
    .local v23, "IDENTIFIER_MPF":[B
    .local v24, "IDENTIFIER_XMP_APP1":[B
    goto/16 :goto_28a

    .line 1252
    .end local v19    # "gainBuf":[B
    .end local v21    # "length":I
    .end local v23    # "IDENTIFIER_MPF":[B
    .end local v24    # "IDENTIFIER_XMP_APP1":[B
    .restart local v3    # "IDENTIFIER_MPF":[B
    .restart local v4    # "IDENTIFIER_XMP_APP1":[B
    .restart local v6    # "gainBuf":[B
    .restart local v11    # "length":I
    :pswitch_7d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v19, v6

    .end local v6    # "gainBuf":[B
    .restart local v19    # "gainBuf":[B
    and-int/lit16 v6, v12, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    move v6, v10

    .line 1254
    .local v6, "start":I
    new-array v9, v11, [B

    .line 1255
    .local v9, "bytes":[B
    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1256
    add-int/2addr v10, v11

    .line 1258
    move-object/from16 v20, v13

    const-string v13, "gain"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_166

    .line 1259
    invoke-static {v9, v3}, Lcom/samsung/android/media/PhotoHdrCodec;->startsWith([B[B)Z

    move-result v13

    if-eqz v13, :cond_15f

    .line 1260
    array-length v13, v3

    add-int/2addr v13, v6

    int-to-long v13, v13

    .line 1261
    .end local v17    # "MPFOffset":J
    .local v13, "MPFOffset":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v6

    .end local v6    # "start":I
    .local v21, "start":I
    const-string v6, "gainJpeg, MPFOffset:"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    array-length v6, v3

    array-length v15, v9

    invoke-static {v9, v6, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 1264
    .local v6, "mpfBuf":[B
    invoke-static {v6}, Lcom/samsung/android/media/PhotoHdrCodec;->getGainFromMPF([B)Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;

    move-result-object v15

    .line 1265
    .local v15, "gain":Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;
    if-nez v15, :cond_e1

    .line 1266
    const/4 v8, 0x0

    return-object v8

    .line 1267
    :cond_e1
    move-object/from16 v16, v6

    .end local v6    # "mpfBuf":[B
    .local v16, "mpfBuf":[B
    invoke-virtual {v15}, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->getLength()I

    move-result v6

    new-array v6, v6, [B

    .line 1268
    .end local v19    # "gainBuf":[B
    .local v6, "gainBuf":[B
    move-object/from16 v22, v9

    .end local v9    # "bytes":[B
    .local v22, "bytes":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v17, v13

    .end local v13    # "MPFOffset":J
    .restart local v17    # "MPFOffset":J
    const-string v13, "gainJpeg, bytesRead:"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, ", length: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, "IDENTIFIER_MPF.length:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v14, v3

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", skip"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1270
    invoke-virtual {v15}, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->getOffset()I

    move-result v14

    sub-int/2addr v14, v11

    move/from16 v23, v10

    .end local v10    # "bytesRead":I
    .local v23, "bytesRead":I
    array-length v10, v3

    add-int/2addr v14, v10

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1268
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-virtual {v15}, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->getOffset()I

    move-result v9

    sub-int/2addr v9, v11

    array-length v10, v3

    add-int/2addr v9, v10

    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 1272
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gainJpeg, getOffset:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v15}, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->getOffset()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1273
    invoke-virtual {v15}, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;->getLength()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1272
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->read([B)I

    .line 1276
    return-object v6

    .line 1259
    .end local v15    # "gain":Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;
    .end local v16    # "mpfBuf":[B
    .end local v21    # "start":I
    .end local v22    # "bytes":[B
    .end local v23    # "bytesRead":I
    .local v6, "start":I
    .restart local v9    # "bytes":[B
    .restart local v10    # "bytesRead":I
    .restart local v19    # "gainBuf":[B
    :cond_15f
    move/from16 v21, v6

    move-object/from16 v22, v9

    move/from16 v23, v10

    .end local v6    # "start":I
    .end local v9    # "bytes":[B
    .end local v10    # "bytesRead":I
    .restart local v21    # "start":I
    .restart local v22    # "bytes":[B
    .restart local v23    # "bytesRead":I
    goto :goto_16c

    .line 1258
    .end local v21    # "start":I
    .end local v22    # "bytes":[B
    .end local v23    # "bytesRead":I
    .restart local v6    # "start":I
    .restart local v9    # "bytes":[B
    .restart local v10    # "bytesRead":I
    :cond_166
    move/from16 v21, v6

    move-object/from16 v22, v9

    move/from16 v23, v10

    .line 1279
    .end local v6    # "start":I
    .end local v9    # "bytes":[B
    .end local v10    # "bytesRead":I
    .restart local v21    # "start":I
    .restart local v22    # "bytes":[B
    .restart local v23    # "bytesRead":I
    :goto_16c
    const/4 v11, 0x0

    .line 1280
    move-object/from16 v24, v4

    move/from16 v10, v23

    move-object/from16 v23, v3

    goto/16 :goto_28a

    .line 1216
    .end local v19    # "gainBuf":[B
    .end local v21    # "start":I
    .end local v22    # "bytes":[B
    .end local v23    # "bytesRead":I
    .local v6, "gainBuf":[B
    .restart local v10    # "bytesRead":I
    :pswitch_175
    move-object/from16 v19, v6

    move-object/from16 v20, v13

    .end local v6    # "gainBuf":[B
    .restart local v19    # "gainBuf":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v9, v12, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", length:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    move v6, v10

    .line 1218
    .local v6, "start":I
    new-array v9, v11, [B

    .line 1219
    .restart local v9    # "bytes":[B
    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1220
    add-int/2addr v10, v11

    .line 1222
    const-string/jumbo v13, "xmp"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_27f

    .line 1223
    invoke-static {v9, v4}, Lcom/samsung/android/media/PhotoHdrCodec;->startsWith([B[B)Z

    move-result v13

    if-eqz v13, :cond_1f0

    .line 1224
    array-length v13, v4

    add-int/2addr v13, v6

    move/from16 v22, v10

    move/from16 v21, v11

    .end local v10    # "bytesRead":I
    .end local v11    # "length":I
    .local v21, "length":I
    .local v22, "bytesRead":I
    int-to-long v10, v13

    .line 1225
    .local v10, "offset":J
    array-length v13, v4

    array-length v1, v9

    invoke-static {v9, v13, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1226
    .local v1, "value":[B
    new-instance v13, Lcom/samsung/android/media/XmpInterface;

    invoke-direct {v13, v1}, Lcom/samsung/android/media/XmpInterface;-><init>([B)V

    .line 1227
    .local v13, "xi":Lcom/samsung/android/media/XmpInterface;
    move-object/from16 v23, v3

    .end local v3    # "IDENTIFIER_MPF":[B
    .local v23, "IDENTIFIER_MPF":[B
    invoke-virtual {v13}, Lcom/samsung/android/media/XmpInterface;->getHdrgmVersion()Ljava/lang/String;

    move-result-object v3

    .line 1228
    .local v3, "ver":Ljava/lang/String;
    move-object/from16 v24, v4

    .end local v4    # "IDENTIFIER_XMP_APP1":[B
    .restart local v24    # "IDENTIFIER_XMP_APP1":[B
    invoke-virtual {v13}, Lcom/samsung/android/media/XmpInterface;->getNameHasExtendedXmp()Ljava/lang/String;

    move-result-object v4

    .line 1229
    .local v4, "ext":Ljava/lang/String;
    if-eqz v3, :cond_1e6

    move-wide/from16 v25, v10

    .end local v10    # "offset":J
    .local v25, "offset":J
    const-string v10, "1.0"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e8

    .line 1230
    return-object v1

    .line 1229
    .end local v25    # "offset":J
    .restart local v10    # "offset":J
    :cond_1e6
    move-wide/from16 v25, v10

    .line 1231
    .end local v10    # "offset":J
    .restart local v25    # "offset":J
    :cond_1e8
    if-eqz v4, :cond_1ee

    .line 1232
    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 1234
    .end local v1    # "value":[B
    .end local v3    # "ver":Ljava/lang/String;
    .end local v4    # "ext":Ljava/lang/String;
    .end local v13    # "xi":Lcom/samsung/android/media/XmpInterface;
    .end local v25    # "offset":J
    :cond_1ee
    goto/16 :goto_287

    .end local v21    # "length":I
    .end local v22    # "bytesRead":I
    .end local v23    # "IDENTIFIER_MPF":[B
    .end local v24    # "IDENTIFIER_XMP_APP1":[B
    .local v3, "IDENTIFIER_MPF":[B
    .local v4, "IDENTIFIER_XMP_APP1":[B
    .local v10, "bytesRead":I
    .restart local v11    # "length":I
    :cond_1f0
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v22, v10

    move/from16 v21, v11

    .end local v3    # "IDENTIFIER_MPF":[B
    .end local v4    # "IDENTIFIER_XMP_APP1":[B
    .end local v10    # "bytesRead":I
    .end local v11    # "length":I
    .restart local v21    # "length":I
    .restart local v22    # "bytesRead":I
    .restart local v23    # "IDENTIFIER_MPF":[B
    .restart local v24    # "IDENTIFIER_XMP_APP1":[B
    invoke-static {v9, v5}, Lcom/samsung/android/media/PhotoHdrCodec;->startsWith([B[B)Z

    move-result v1

    if-eqz v1, :cond_1ee

    .line 1235
    if-eqz v7, :cond_287

    .line 1236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xmpExt:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v7, v3}, Lcom/samsung/android/media/PhotoHdrCodec;->bytesToHex([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    array-length v1, v5

    add-int/2addr v1, v6

    int-to-long v10, v1

    .line 1238
    .local v10, "offset":J
    array-length v1, v5

    array-length v4, v9

    invoke-static {v9, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1239
    .restart local v1    # "value":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ext:"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, v3}, Lcom/samsung/android/media/PhotoHdrCodec;->bytesToHex([BI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ", valueleng:"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v13, v1

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-static {v1, v7}, Lcom/samsung/android/media/PhotoHdrCodec;->startsWith([B[B)Z

    move-result v4

    if-eqz v4, :cond_287

    .line 1241
    array-length v4, v7

    add-int/lit8 v4, v4, 0x8

    array-length v13, v1

    invoke-static {v1, v4, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 1242
    .local v4, "extXmp":[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "extXmp:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v4, v3}, Lcom/samsung/android/media/PhotoHdrCodec;->bytesToHex([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-object v4

    .line 1222
    .end local v1    # "value":[B
    .end local v21    # "length":I
    .end local v22    # "bytesRead":I
    .end local v23    # "IDENTIFIER_MPF":[B
    .end local v24    # "IDENTIFIER_XMP_APP1":[B
    .restart local v3    # "IDENTIFIER_MPF":[B
    .local v4, "IDENTIFIER_XMP_APP1":[B
    .local v10, "bytesRead":I
    .restart local v11    # "length":I
    :cond_27f
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v22, v10

    move/from16 v21, v11

    .line 1248
    .end local v3    # "IDENTIFIER_MPF":[B
    .end local v4    # "IDENTIFIER_XMP_APP1":[B
    .end local v10    # "bytesRead":I
    .end local v11    # "length":I
    .restart local v21    # "length":I
    .restart local v22    # "bytesRead":I
    .restart local v23    # "IDENTIFIER_MPF":[B
    .restart local v24    # "IDENTIFIER_XMP_APP1":[B
    :cond_287
    :goto_287
    const/4 v11, 0x0

    .line 1249
    .end local v21    # "length":I
    .restart local v11    # "length":I
    move/from16 v10, v22

    .line 1286
    .end local v6    # "start":I
    .end local v9    # "bytes":[B
    .end local v22    # "bytesRead":I
    .restart local v10    # "bytesRead":I
    :goto_28a
    if-ltz v11, :cond_2d4

    .line 1289
    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v1

    if-ne v1, v11, :cond_2cc

    .line 1292
    add-int/2addr v10, v11

    .line 1293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v3, v12, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", length"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    .end local v11    # "length":I
    move-object/from16 v1, p1

    move-wide/from16 v8, v17

    move-object/from16 v6, v19

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    const/4 v14, -0x1

    goto/16 :goto_39

    .line 1290
    .restart local v11    # "length":I
    :cond_2cc
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid JPEG segment"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1287
    :cond_2d4
    new-instance v1, Ljava/io/IOException;

    move-object/from16 v3, v20

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1212
    .end local v17    # "MPFOffset":J
    .end local v19    # "gainBuf":[B
    .end local v23    # "IDENTIFIER_MPF":[B
    .end local v24    # "IDENTIFIER_XMP_APP1":[B
    .restart local v3    # "IDENTIFIER_MPF":[B
    .restart local v4    # "IDENTIFIER_XMP_APP1":[B
    .local v6, "gainBuf":[B
    .restart local v8    # "MPFOffset":J
    :cond_2dc
    move-object/from16 v23, v3

    move-object v3, v13

    .end local v3    # "IDENTIFIER_MPF":[B
    .restart local v23    # "IDENTIFIER_MPF":[B
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1206
    .end local v11    # "length":I
    .end local v23    # "IDENTIFIER_MPF":[B
    .restart local v3    # "IDENTIFIER_MPF":[B
    :cond_2e5
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v19, v6

    move-wide/from16 v17, v8

    .line 1295
    .end local v3    # "IDENTIFIER_MPF":[B
    .end local v4    # "IDENTIFIER_XMP_APP1":[B
    .end local v6    # "gainBuf":[B
    .end local v8    # "MPFOffset":J
    .restart local v17    # "MPFOffset":J
    .restart local v19    # "gainBuf":[B
    .restart local v23    # "IDENTIFIER_MPF":[B
    .restart local v24    # "IDENTIFIER_XMP_APP1":[B
    :goto_2ed
    return-object v19

    .line 1200
    .end local v12    # "marker":B
    .end local v17    # "MPFOffset":J
    .end local v19    # "gainBuf":[B
    .end local v23    # "IDENTIFIER_MPF":[B
    .end local v24    # "IDENTIFIER_XMP_APP1":[B
    .restart local v3    # "IDENTIFIER_MPF":[B
    .restart local v4    # "IDENTIFIER_XMP_APP1":[B
    .restart local v6    # "gainBuf":[B
    .restart local v8    # "MPFOffset":J
    .local v11, "marker":B
    :cond_2ee
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .end local v3    # "IDENTIFIER_MPF":[B
    .end local v4    # "IDENTIFIER_XMP_APP1":[B
    .restart local v23    # "IDENTIFIER_MPF":[B
    .restart local v24    # "IDENTIFIER_XMP_APP1":[B
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid marker:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, v11, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tesRead:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1194
    .end local v11    # "marker":B
    .end local v23    # "IDENTIFIER_MPF":[B
    .end local v24    # "IDENTIFIER_XMP_APP1":[B
    .restart local v3    # "IDENTIFIER_MPF":[B
    .restart local v4    # "IDENTIFIER_XMP_APP1":[B
    .restart local v12    # "marker":B
    :cond_31b
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .end local v3    # "IDENTIFIER_MPF":[B
    .end local v4    # "IDENTIFIER_XMP_APP1":[B
    .restart local v23    # "IDENTIFIER_MPF":[B
    .restart local v24    # "IDENTIFIER_XMP_APP1":[B
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, v12, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1190
    .end local v23    # "IDENTIFIER_MPF":[B
    .end local v24    # "IDENTIFIER_XMP_APP1":[B
    .restart local v3    # "IDENTIFIER_MPF":[B
    .restart local v4    # "IDENTIFIER_XMP_APP1":[B
    :cond_33c
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .end local v3    # "IDENTIFIER_MPF":[B
    .end local v4    # "IDENTIFIER_XMP_APP1":[B
    .restart local v23    # "IDENTIFIER_MPF":[B
    .restart local v24    # "IDENTIFIER_XMP_APP1":[B
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, v12, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_35e
    .packed-switch -0x1f
        :pswitch_175
        :pswitch_7d
    .end packed-switch

    :array_366
    .array-data 1
        0x4dt
        0x50t
        0x46t
        0x0t
    .end array-data
.end method

.method private static getGainFromMPF([B)Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;
    .registers 25
    .param p0, "mpfBuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    move-object/from16 v0, p0

    const-string/jumbo v1, "getGainFromMPF e "

    const-string v2, "PhotoHdrCodec"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/16 v1, 0x4949

    .line 1013
    .local v1, "ALIGN_II":S
    const/16 v3, 0x4d4d

    .line 1014
    .local v3, "ALIGN_MM":S
    const/4 v4, 0x0

    .line 1015
    .local v4, "bytesRead":I
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 1017
    .local v5, "bOrder":Ljava/nio/ByteOrder;
    const/4 v6, 0x0

    .line 1019
    .local v6, "in":Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1021
    .local v7, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v8, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;

    invoke-direct {v8, v7}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v8

    .line 1027
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readShort()S

    move-result v8

    .line 1028
    .local v8, "order":S
    const/4 v9, 0x0

    if-ne v8, v1, :cond_4e

    .line 1030
    const/4 v10, 0x0

    .line 1031
    .local v10, "bigEndian":Z
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readShort()S

    move-result v11

    const/16 v12, 0x2a00

    if-eq v11, v12, :cond_45

    .line 1032
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ii order wrong"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return-object v9

    .line 1035
    :cond_45
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1036
    const-string/jumbo v11, "todo little endian"

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 1038
    .end local v10    # "bigEndian":Z
    :cond_4e
    if-ne v8, v3, :cond_2d2

    .line 1039
    const/4 v10, 0x1

    .line 1040
    .restart local v10    # "bigEndian":Z
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readShort()S

    move-result v11

    const/16 v12, 0x2a

    if-eq v11, v12, :cond_71

    .line 1041
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mm order wrong"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return-object v9

    .line 1044
    :cond_71
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 1045
    const-string v11, "big endian"

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :goto_78
    invoke-virtual {v6, v5}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 1053
    const/4 v11, 0x4

    add-int/2addr v4, v11

    .line 1055
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readInt()I

    move-result v12

    .line 1056
    .local v12, "firstIfdOffset":I
    const/16 v13, 0x8

    if-lt v12, v13, :cond_2af

    array-length v13, v0

    if-ge v12, v13, :cond_2af

    .line 1059
    add-int/2addr v4, v11

    .line 1061
    add-int/lit8 v12, v12, -0x8

    .line 1062
    if-lez v12, :cond_ad

    .line 1063
    invoke-virtual {v6, v12}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v13

    if-ne v13, v12, :cond_94

    goto :goto_ad

    .line 1064
    :cond_94
    new-instance v2, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1067
    :cond_ad
    :goto_ad
    add-int/2addr v4, v12

    .line 1069
    const/4 v13, 0x0

    .line 1070
    .local v13, "imgCount":I
    const/4 v14, 0x0

    .line 1072
    .local v14, "entryOffset":I
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readShort()S

    move-result v15

    .line 1073
    .local v15, "numberOfDirectoryEntry":S
    mul-int/lit8 v11, v15, 0xc

    array-length v9, v0

    sub-int/2addr v9, v4

    if-le v11, v9, :cond_bc

    .line 1074
    const/4 v2, 0x0

    return-object v2

    .line 1075
    :cond_bc
    const/4 v9, 0x0

    .line 1076
    .local v9, "numOfImage":I
    const/4 v11, 0x2

    add-int/2addr v4, v11

    .line 1077
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "i":S
    :goto_c3
    if-ge v11, v15, :cond_1cd

    .line 1078
    move/from16 v17, v1

    .end local v1    # "ALIGN_II":S
    .local v17, "ALIGN_II":S
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v1

    .line 1079
    .local v1, "tagNumber":I
    move/from16 v18, v3

    .end local v3    # "ALIGN_MM":S
    .local v18, "ALIGN_MM":S
    const v3, 0xb000

    move-object/from16 v19, v5

    .end local v5    # "bOrder":Ljava/nio/ByteOrder;
    .local v19, "bOrder":Ljava/nio/ByteOrder;
    const-string v5, ", count:"

    if-ne v1, v3, :cond_137

    .line 1080
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 1081
    .local v3, "dataType":I
    move-object/from16 v20, v7

    .end local v7    # "bin":Ljava/io/ByteArrayInputStream;
    .local v20, "bin":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readInt()I

    move-result v7

    .line 1082
    .local v7, "count":I
    move/from16 v21, v10

    move/from16 v22, v12

    const/4 v10, 0x4

    .end local v10    # "bigEndian":Z
    .end local v12    # "firstIfdOffset":I
    .local v21, "bigEndian":Z
    .local v22, "firstIfdOffset":I
    new-array v12, v10, [B

    const/4 v10, 0x0

    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readByte()B

    move-result v23

    aput-byte v23, v12, v10

    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readByte()B

    move-result v10

    const/16 v23, 0x1

    aput-byte v10, v12, v23

    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readByte()B

    move-result v10

    const/16 v16, 0x2

    aput-byte v10, v12, v16

    const/4 v10, 0x3

    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readByte()B

    move-result v23

    aput-byte v23, v12, v10

    move-object v10, v12

    .line 1083
    .local v10, "version":[B
    add-int/lit8 v4, v4, 0xc

    .line 1084
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v4

    .end local v4    # "bytesRead":I
    .local v23, "bytesRead":I
    const-string/jumbo v4, "version:: dataType:"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    .end local v3    # "dataType":I
    .end local v7    # "count":I
    .end local v10    # "version":[B
    move/from16 v4, v23

    goto/16 :goto_1bc

    .end local v20    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v21    # "bigEndian":Z
    .end local v22    # "firstIfdOffset":I
    .end local v23    # "bytesRead":I
    .restart local v4    # "bytesRead":I
    .local v7, "bin":Ljava/io/ByteArrayInputStream;
    .local v10, "bigEndian":Z
    .restart local v12    # "firstIfdOffset":I
    :cond_137
    move-object/from16 v20, v7

    move/from16 v21, v10

    move/from16 v22, v12

    const/16 v16, 0x2

    .end local v7    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v10    # "bigEndian":Z
    .end local v12    # "firstIfdOffset":I
    .restart local v20    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v21    # "bigEndian":Z
    .restart local v22    # "firstIfdOffset":I
    const v3, 0xb001

    if-ne v1, v3, :cond_17c

    .line 1087
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 1088
    .restart local v3    # "dataType":I
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readInt()I

    move-result v7

    .line 1089
    .local v7, "count":I
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readInt()I

    move-result v9

    .line 1090
    add-int/lit8 v4, v4, 0xc

    .line 1091
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "numOfImg:: dataType:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", numOfImage"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    .end local v3    # "dataType":I
    .end local v7    # "count":I
    goto :goto_1bc

    :cond_17c
    const v3, 0xb002

    if-ne v1, v3, :cond_1ba

    .line 1093
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 1094
    .restart local v3    # "dataType":I
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readInt()I

    move-result v7

    .line 1095
    .end local v13    # "imgCount":I
    .local v7, "imgCount":I
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readInt()I

    move-result v10

    .line 1096
    .end local v14    # "entryOffset":I
    .local v10, "entryOffset":I
    add-int/lit8 v4, v4, 0xc

    .line 1097
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entry:: dataType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", offset"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    .end local v3    # "dataType":I
    move v13, v7

    move v14, v10

    goto :goto_1bc

    .line 1099
    .end local v7    # "imgCount":I
    .end local v10    # "entryOffset":I
    .restart local v13    # "imgCount":I
    .restart local v14    # "entryOffset":I
    :cond_1ba
    add-int/lit8 v4, v4, 0xc

    .line 1077
    .end local v1    # "tagNumber":I
    :goto_1bc
    add-int/lit8 v1, v11, 0x1

    int-to-short v11, v1

    move/from16 v1, v17

    move/from16 v3, v18

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move/from16 v10, v21

    move/from16 v12, v22

    goto/16 :goto_c3

    .end local v17    # "ALIGN_II":S
    .end local v18    # "ALIGN_MM":S
    .end local v19    # "bOrder":Ljava/nio/ByteOrder;
    .end local v20    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v21    # "bigEndian":Z
    .end local v22    # "firstIfdOffset":I
    .local v1, "ALIGN_II":S
    .local v3, "ALIGN_MM":S
    .restart local v5    # "bOrder":Ljava/nio/ByteOrder;
    .local v7, "bin":Ljava/io/ByteArrayInputStream;
    .local v10, "bigEndian":Z
    .restart local v12    # "firstIfdOffset":I
    :cond_1cd
    move/from16 v17, v1

    move/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move/from16 v21, v10

    move/from16 v22, v12

    .line 1102
    .end local v1    # "ALIGN_II":S
    .end local v3    # "ALIGN_MM":S
    .end local v5    # "bOrder":Ljava/nio/ByteOrder;
    .end local v7    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v10    # "bigEndian":Z
    .end local v11    # "i":S
    .end local v12    # "firstIfdOffset":I
    .restart local v17    # "ALIGN_II":S
    .restart local v18    # "ALIGN_MM":S
    .restart local v19    # "bOrder":Ljava/nio/ByteOrder;
    .restart local v20    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v21    # "bigEndian":Z
    .restart local v22    # "firstIfdOffset":I
    sub-int/2addr v14, v4

    .line 1103
    invoke-virtual {v6, v14}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 1104
    add-int/2addr v4, v14

    .line 1106
    array-length v1, v0

    sub-int/2addr v1, v4

    if-le v13, v1, :cond_210

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "imgCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", bytesRead:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mpfBuf.length:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v1, 0x0

    return-object v1

    .line 1111
    :cond_210
    const/4 v1, 0x0

    .line 1112
    .local v1, "gainLength":I
    const/4 v3, 0x0

    .line 1113
    .local v3, "gainOffset":I
    const/4 v5, 0x0

    .local v5, "i":S
    :goto_213
    if-ge v5, v9, :cond_2a3

    .line 1114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "i:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readInt()I

    move-result v7

    .line 1116
    .local v7, "imgAttrib":I
    const/high16 v10, 0x30000

    if-ne v7, v10, :cond_265

    .line 1117
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readInt()I

    move-result v10

    .line 1118
    .local v10, "length":I
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    .line 1119
    .local v11, "offset":I
    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 1120
    add-int/lit8 v4, v4, 0x10

    .line 1121
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "primary:: length:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", offset:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    .end local v10    # "length":I
    .end local v11    # "offset":I
    const/4 v10, 0x4

    goto :goto_29c

    :cond_265
    if-nez v7, :cond_299

    .line 1124
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 1125
    .end local v1    # "gainLength":I
    .local v0, "gainLength":I
    invoke-virtual {v6}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    .line 1126
    .end local v3    # "gainOffset":I
    .local v1, "gainOffset":I
    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Lcom/samsung/android/media/PhotoHdrCodec$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 1127
    add-int/lit8 v4, v4, 0x10

    .line 1128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "undef gainmap:: gainLength:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ", gainOffset:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    move v1, v0

    goto :goto_29c

    .line 1130
    .end local v0    # "gainLength":I
    .local v1, "gainLength":I
    .restart local v3    # "gainOffset":I
    :cond_299
    const/4 v10, 0x4

    add-int/lit8 v4, v4, 0x10

    .line 1113
    .end local v7    # "imgAttrib":I
    :goto_29c
    add-int/lit8 v0, v5, 0x1

    int-to-short v5, v0

    move-object/from16 v0, p0

    goto/16 :goto_213

    .line 1133
    .end local v5    # "i":S
    :cond_2a3
    const-string/jumbo v0, "getGainFromMPF x "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    new-instance v0, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/media/PhotoHdrCodec$GainBuf;-><init>(II)V

    return-object v0

    .line 1056
    .end local v9    # "numOfImage":I
    .end local v13    # "imgCount":I
    .end local v14    # "entryOffset":I
    .end local v15    # "numberOfDirectoryEntry":S
    .end local v17    # "ALIGN_II":S
    .end local v18    # "ALIGN_MM":S
    .end local v19    # "bOrder":Ljava/nio/ByteOrder;
    .end local v20    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v21    # "bigEndian":Z
    .end local v22    # "firstIfdOffset":I
    .local v1, "ALIGN_II":S
    .local v3, "ALIGN_MM":S
    .local v5, "bOrder":Ljava/nio/ByteOrder;
    .local v7, "bin":Ljava/io/ByteArrayInputStream;
    .local v10, "bigEndian":Z
    .restart local v12    # "firstIfdOffset":I
    :cond_2af
    move/from16 v17, v1

    move/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move/from16 v21, v10

    .line 1057
    .end local v1    # "ALIGN_II":S
    .end local v3    # "ALIGN_MM":S
    .end local v5    # "bOrder":Ljava/nio/ByteOrder;
    .end local v7    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v10    # "bigEndian":Z
    .restart local v17    # "ALIGN_II":S
    .restart local v18    # "ALIGN_MM":S
    .restart local v19    # "bOrder":Ljava/nio/ByteOrder;
    .restart local v20    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v21    # "bigEndian":Z
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid first Ifd offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    .end local v12    # "firstIfdOffset":I
    .end local v17    # "ALIGN_II":S
    .end local v18    # "ALIGN_MM":S
    .end local v19    # "bOrder":Ljava/nio/ByteOrder;
    .end local v20    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v21    # "bigEndian":Z
    .restart local v1    # "ALIGN_II":S
    .restart local v3    # "ALIGN_MM":S
    .restart local v5    # "bOrder":Ljava/nio/ByteOrder;
    .restart local v7    # "bin":Ljava/io/ByteArrayInputStream;
    :cond_2d2
    move/from16 v17, v1

    .end local v1    # "ALIGN_II":S
    .restart local v17    # "ALIGN_II":S
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endian data is wrong"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGainmapInfo([B)Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    .registers 12
    .param p0, "bytes"    # [B

    .line 631
    const-string/jumbo v0, "rdf:RDF"

    const-string/jumbo v1, "x:xmpmeta"

    const-string/jumbo v2, "getGainmapInfo e "

    const-string v3, "PhotoHdrCodec"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v2, 0x0

    .line 634
    .local v2, "gainInfo":Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
    :try_start_f
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 635
    .local v4, "in":Ljava/io/InputStream;
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, v4}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 636
    .local v5, "exif":Landroid/media/ExifInterface;
    const-string v6, "Xmp"

    invoke-virtual {v5, v6}, Landroid/media/ExifInterface;->getAttributeBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 638
    .local v6, "buf":[B
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 640
    .local v7, "newPullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 641
    .local v8, "newPullParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 643
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 644
    invoke-static {v8, v1}, Lcom/samsung/android/media/PhotoHdrCodec;->checkStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3f

    .line 645
    const-string v0, "Couldn\'t find xmp metadata"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-object v10

    .line 649
    :cond_3f
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 650
    const-string/jumbo v9, "rdf:Description"

    invoke-static {v8, v9}, Lcom/samsung/android/media/PhotoHdrCodec;->checkStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 651
    const-string v9, "Description"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 652
    :cond_51
    invoke-static {v8, v0}, Lcom/samsung/android/media/PhotoHdrCodec;->checkStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 653
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string/jumbo v9, "rdf"

    const-string/jumbo v10, "hdrgm"

    invoke-static {v8, v9, v10}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeAllValues2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;

    move-result-object v9

    move-object v2, v9

    .line 655
    const-string v9, "PhotoHDR image:"

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 657
    :cond_6b
    const-string/jumbo v9, "xx"

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :goto_71
    invoke-static {v8, v1}, Lcom/samsung/android/media/PhotoHdrCodec;->checkEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_75} :catch_78

    if-eqz v9, :cond_3f

    .line 663
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "exif":Landroid/media/ExifInterface;
    .end local v6    # "buf":[B
    .end local v7    # "newPullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "newPullParser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_7c

    .line 661
    :catch_78
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 664
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7c
    const-string/jumbo v0, "getGainmapInfo x"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-object v2
.end method

.method public static hasGainmap(Ljava/lang/String;)Z
    .registers 11
    .param p0, "path"    # Ljava/lang/String;

    .line 775
    const-string/jumbo v0, "hasGainmap path e"

    const-string v1, "PhotoHdrCodec"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, "fin":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 779
    .local v2, "in":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 780
    .local v3, "extendedXmp":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_c
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 781
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    .line 782
    const-string/jumbo v5, "xmp"

    invoke-static {v2, v5}, Lcom/samsung/android/media/PhotoHdrCodec;->getGainBuf(Ljava/io/DataInputStream;Ljava/lang/String;)[B

    move-result-object v5

    .line 783
    .local v5, "xmpBuf":[B
    if-nez v5, :cond_2f

    .line 784
    const-string/jumbo v6, "no xmpBuf"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_94
    .catchall {:try_start_c .. :try_end_27} :catchall_92

    .line 785
    nop

    .line 803
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 804
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 785
    return v4

    .line 787
    :cond_2f
    :try_start_2f
    new-instance v6, Lcom/samsung/android/media/XmpInterface;

    invoke-direct {v6, v5}, Lcom/samsung/android/media/XmpInterface;-><init>([B)V

    .line 788
    .local v6, "xi":Lcom/samsung/android/media/XmpInterface;
    invoke-virtual {v6}, Lcom/samsung/android/media/XmpInterface;->getHdrgmVersion()Ljava/lang/String;

    move-result-object v7

    .line 789
    .local v7, "hdrgmVersion":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/samsung/android/media/XmpInterface;->getNameHasExtendedXmp()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 790
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hdrgm version:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", extendedXmp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const-string v8, "1.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_75

    .line 792
    const-string/jumbo v8, "hasGainmap true"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_6d} :catch_94
    .catchall {:try_start_2f .. :try_end_6d} :catchall_92

    .line 793
    nop

    .line 803
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 804
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 793
    return v9

    .line 794
    :cond_75
    :try_start_75
    const-string v8, "NO"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8a

    .line 795
    const-string v8, "To-do for Extended XMP"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_82} :catch_94
    .catchall {:try_start_75 .. :try_end_82} :catchall_92

    .line 796
    nop

    .line 803
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 804
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 796
    return v9

    .line 798
    :cond_8a
    nop

    .line 803
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 804
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 798
    return v4

    .line 803
    .end local v3    # "extendedXmp":Ljava/lang/String;
    .end local v5    # "xmpBuf":[B
    .end local v6    # "xi":Lcom/samsung/android/media/XmpInterface;
    .end local v7    # "hdrgmVersion":Ljava/lang/String;
    :catchall_92
    move-exception v1

    goto :goto_a6

    .line 800
    :catch_94
    move-exception v3

    .line 801
    .local v3, "e":Ljava/lang/Exception;
    :try_start_95
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_92

    .line 803
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 804
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 805
    nop

    .line 831
    const-string/jumbo v3, "hasGainmap false"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return v4

    .line 803
    :goto_a6
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 804
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 805
    throw v1
.end method

.method public static hasGainmap([B)Z
    .registers 11
    .param p0, "data"    # [B

    .line 836
    const-string/jumbo v0, "hasGainmap byte e"

    const-string v1, "PhotoHdrCodec"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, 0x0

    .line 838
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 841
    .local v2, "in":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 842
    .local v3, "extendedXmp":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_c
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v5

    .line 843
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    .line 844
    const-string/jumbo v5, "xmp"

    invoke-static {v2, v5}, Lcom/samsung/android/media/PhotoHdrCodec;->getGainBuf(Ljava/io/DataInputStream;Ljava/lang/String;)[B

    move-result-object v5

    .line 845
    .local v5, "xmpBuf":[B
    if-nez v5, :cond_2f

    .line 846
    const-string/jumbo v6, "no xmpBuf"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_94
    .catchall {:try_start_c .. :try_end_27} :catchall_92

    .line 847
    nop

    .line 865
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 866
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 847
    return v4

    .line 849
    :cond_2f
    :try_start_2f
    new-instance v6, Lcom/samsung/android/media/XmpInterface;

    invoke-direct {v6, v5}, Lcom/samsung/android/media/XmpInterface;-><init>([B)V

    .line 850
    .local v6, "xi":Lcom/samsung/android/media/XmpInterface;
    invoke-virtual {v6}, Lcom/samsung/android/media/XmpInterface;->getHdrgmVersion()Ljava/lang/String;

    move-result-object v7

    .line 851
    .local v7, "hdrgmVersion":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/samsung/android/media/XmpInterface;->getNameHasExtendedXmp()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 852
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hdrgm version:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", extendedXmp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string v8, "1.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_75

    .line 854
    const-string/jumbo v8, "hasGainmap true"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_6d} :catch_94
    .catchall {:try_start_2f .. :try_end_6d} :catchall_92

    .line 855
    nop

    .line 865
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 866
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 855
    return v9

    .line 856
    :cond_75
    :try_start_75
    const-string v8, "NO"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8a

    .line 857
    const-string v8, "To-do for Extended XMP"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_82} :catch_94
    .catchall {:try_start_75 .. :try_end_82} :catchall_92

    .line 858
    nop

    .line 865
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 866
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 858
    return v9

    .line 860
    :cond_8a
    nop

    .line 865
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 866
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 860
    return v4

    .line 865
    .end local v3    # "extendedXmp":Ljava/lang/String;
    .end local v5    # "xmpBuf":[B
    .end local v6    # "xi":Lcom/samsung/android/media/XmpInterface;
    .end local v7    # "hdrgmVersion":Ljava/lang/String;
    :catchall_92
    move-exception v1

    goto :goto_a6

    .line 862
    :catch_94
    move-exception v3

    .line 863
    .local v3, "e":Ljava/lang/Exception;
    :try_start_95
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_92

    .line 865
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 866
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 867
    nop

    .line 892
    const-string/jumbo v3, "hasGainmap false"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return v4

    .line 865
    :goto_a6
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 866
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 867
    throw v1
.end method

.method public static hasGainmapOld(Ljava/lang/String;)Z
    .registers 12
    .param p0, "path"    # Ljava/lang/String;

    .line 519
    const-string v0, "Container:Directory"

    const-string/jumbo v1, "x:xmpmeta"

    const-string/jumbo v2, "hasGainmap x"

    const-string/jumbo v3, "hasGainmap e"

    const-string v4, "PhotoHdrCodec"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v3, 0x0

    :try_start_11
    const-string/jumbo v5, "getExifInterface xmp e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 523
    .local v5, "exif":Landroid/media/ExifInterface;
    const-string v6, "Xmp"

    invoke-virtual {v5, v6}, Landroid/media/ExifInterface;->getAttributeBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 524
    .local v6, "buf":[B
    const-string/jumbo v7, "getExifInterface xmp x"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    if-nez v6, :cond_2b

    .line 526
    return v3

    .line 527
    :cond_2b
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 529
    .local v7, "newPullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 530
    .local v8, "newPullParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 532
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 533
    invoke-static {v8, v1}, Lcom/samsung/android/media/PhotoHdrCodec;->checkStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4b

    .line 534
    const-string v0, "Couldn\'t find xmp metadata"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return v3

    .line 537
    :cond_4b
    const/4 v9, 0x0

    .line 539
    .local v9, "ret":Z
    :cond_4c
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 540
    const-string/jumbo v10, "rdf:Description"

    invoke-static {v8, v10}, Lcom/samsung/android/media/PhotoHdrCodec;->checkStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 541
    const-string v10, "Description"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 542
    :cond_5e
    invoke-static {v8, v0}, Lcom/samsung/android/media/PhotoHdrCodec;->checkStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a2

    .line 543
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v0, "Container"

    const-string v1, "Item"

    invoke-static {v8, v0, v1}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeAllValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 545
    .end local v9    # "ret":Z
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PhotoHDR image:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v1, 0x1

    if-ne v0, v1, :cond_ae

    .line 547
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PhotoHDR return:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v1

    .line 559
    .end local v0    # "ret":Z
    .restart local v9    # "ret":Z
    :cond_a2
    const-string/jumbo v10, "xx"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :goto_a8
    invoke-static {v8, v1}, Lcom/samsung/android/media/PhotoHdrCodec;->checkEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_ac} :catch_af

    if-eqz v10, :cond_4c

    .line 565
    .end local v5    # "exif":Landroid/media/ExifInterface;
    .end local v6    # "buf":[B
    .end local v7    # "newPullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "newPullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "ret":Z
    :cond_ae
    goto :goto_b3

    .line 563
    :catch_af
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 566
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b3
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return v3
.end method

.method public static hasGainmapOld([B)Z
    .registers 13
    .param p0, "data"    # [B

    .line 575
    const-string v0, "Container:Directory"

    const-string/jumbo v1, "x:xmpmeta"

    const-string/jumbo v2, "hasGainmap x"

    const-string/jumbo v3, "hasGainmap e"

    const-string v4, "PhotoHdrCodec"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v3, 0x0

    :try_start_11
    const-string/jumbo v5, "getExifInterface xmp e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 579
    .local v5, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, v5}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 580
    .local v6, "exif":Landroid/media/ExifInterface;
    const-string v7, "Xmp"

    invoke-virtual {v6, v7}, Landroid/media/ExifInterface;->getAttributeBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 581
    .local v7, "buf":[B
    if-nez v7, :cond_2a

    .line 582
    return v3

    .line 583
    :cond_2a
    invoke-static {v5}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 584
    const-string/jumbo v8, "getExifInterface xmp x"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    .line 588
    .local v8, "newPullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 589
    .local v9, "newPullParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 591
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 592
    invoke-static {v9, v1}, Lcom/samsung/android/media/PhotoHdrCodec;->checkStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_53

    .line 593
    const-string v0, "Couldn\'t find xmp metadata"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return v3

    .line 596
    :cond_53
    const/4 v10, 0x0

    .line 598
    .local v10, "ret":Z
    :cond_54
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 599
    const-string/jumbo v11, "rdf:Description"

    invoke-static {v9, v11}, Lcom/samsung/android/media/PhotoHdrCodec;->checkStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_66

    .line 600
    const-string v11, "Description"

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 601
    :cond_66
    invoke-static {v9, v0}, Lcom/samsung/android/media/PhotoHdrCodec;->checkStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_aa

    .line 602
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v0, "Container"

    const-string v1, "Item"

    invoke-static {v9, v0, v1}, Lcom/samsung/android/media/PhotoHdrCodec;->getAttributeAllValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 604
    .end local v10    # "ret":Z
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PhotoHDR image:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b6

    .line 606
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PhotoHDR return:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return v1

    .line 619
    .end local v0    # "ret":Z
    .restart local v10    # "ret":Z
    :cond_aa
    const-string/jumbo v11, "xx"

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :goto_b0
    invoke-static {v9, v1}, Lcom/samsung/android/media/PhotoHdrCodec;->checkEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_b4} :catch_b7

    if-eqz v11, :cond_54

    .line 625
    .end local v5    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v6    # "exif":Landroid/media/ExifInterface;
    .end local v7    # "buf":[B
    .end local v8    # "newPullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "newPullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "ret":Z
    :cond_b6
    goto :goto_bb

    .line 623
    :catch_b7
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 626
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_bb
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return v3
.end method

.method private static isEnd(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 3
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 758
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static isHeicFormat([B)Z
    .registers 9
    .param p0, "inBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_42

    .line 479
    .local v1, "ftypSignature":[B
    new-array v2, v0, [B

    fill-array-data v2, :array_48

    .line 481
    .local v2, "heicSignature":[B
    new-array v3, v0, [B

    .line 482
    .local v3, "ftyp":[B
    new-array v0, v0, [B

    .line 484
    .local v0, "heic":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 485
    .local v4, "bin":Ljava/io/InputStream;
    const-wide/16 v5, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    .line 487
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    .line 489
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "PhotoHdrCodec"

    if-nez v5, :cond_2c

    .line 490
    const-string/jumbo v5, "header does not matched with ftyp"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return v6

    .line 493
    :cond_2c
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 494
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 495
    const-string/jumbo v5, "header does not matched with heic"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return v6

    .line 498
    :cond_3c
    invoke-static {v4}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 499
    const/4 v5, 0x1

    return v5

    nop

    :array_42
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_48
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data
.end method

.method public static isJpegFormat([B)Z
    .registers 5
    .param p0, "inBuffer"    # [B

    .line 506
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    .line 507
    .local v0, "jpegSignature":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 508
    aget-byte v2, p0, v1

    aget-byte v3, v0, v1

    if-eq v2, v3, :cond_12

    .line 509
    const/4 v2, 0x0

    return v2

    .line 507
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 512
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x1

    return v1

    nop

    :array_18
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data
.end method

.method private static isStart(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 3
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 755
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static loadLibrary()V
    .registers 3

    .line 69
    sget-boolean v0, Lcom/samsung/android/media/PhotoHdrCodec;->mLibraryLoaded:Z

    if-nez v0, :cond_26

    .line 72
    :try_start_4
    const-string v0, "DecPhotoHdr.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/media/PhotoHdrCodec;->mLibraryLoaded:Z
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_c} :catch_d

    .line 76
    goto :goto_26

    .line 74
    :catch_d
    move-exception v0

    .line 75
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

    const-string v2, "PhotoHdrCodec"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :cond_26
    :goto_26
    return-void
.end method

.method public static native nativeCreatGainBuf([III[III)F
.end method

.method public static parseGainBuf(Ljava/lang/String;)[B
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .line 955
    const-string/jumbo v0, "parseGainBuf path e "

    const-string v1, "PhotoHdrCodec"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v0, 0x0

    .line 957
    .local v0, "fin":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 960
    .local v2, "in":Ljava/io/DataInputStream;
    :try_start_a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 961
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 963
    const-string v3, "gain"

    invoke-static {v2, v3}, Lcom/samsung/android/media/PhotoHdrCodec;->getGainBuf(Ljava/io/DataInputStream;Ljava/lang/String;)[B

    move-result-object v3

    .line 965
    .local v3, "gainBuf":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gainBuf Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gainBuf, {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v3, v5}, Lcom/samsung/android/media/PhotoHdrCodec;->bytesToHex([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const-string/jumbo v4, "parseGainBuf x "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5c} :catch_66
    .catchall {:try_start_a .. :try_end_5c} :catchall_64

    .line 969
    nop

    .line 973
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 974
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 969
    return-object v3

    .line 973
    .end local v3    # "gainBuf":[B
    :catchall_64
    move-exception v1

    goto :goto_79

    .line 970
    :catch_66
    move-exception v3

    .line 971
    .local v3, "e":Ljava/lang/Exception;
    :try_start_67
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_64

    .line 973
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 974
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 975
    nop

    .line 976
    const-string/jumbo v3, "parseGainBuf fail "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v1, 0x0

    return-object v1

    .line 973
    :goto_79
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 974
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 975
    throw v1
.end method

.method public static parseGainBuf([B)[B
    .registers 7
    .param p0, "data"    # [B

    .line 983
    const-string/jumbo v0, "parseGainBuf byte e "

    const-string v1, "PhotoHdrCodec"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v0, 0x0

    .line 985
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 988
    .local v2, "in":Ljava/io/DataInputStream;
    :try_start_a
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v3

    .line 989
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 991
    const-string v3, "gain"

    invoke-static {v2, v3}, Lcom/samsung/android/media/PhotoHdrCodec;->getGainBuf(Ljava/io/DataInputStream;Ljava/lang/String;)[B

    move-result-object v3

    .line 993
    .local v3, "gainBuf":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gainBuf Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gainBuf, {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v3, v5}, Lcom/samsung/android/media/PhotoHdrCodec;->bytesToHex([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string/jumbo v4, "parseGainBuf x "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5c} :catch_66
    .catchall {:try_start_a .. :try_end_5c} :catchall_64

    .line 997
    nop

    .line 1001
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 1002
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 997
    return-object v3

    .line 1001
    .end local v3    # "gainBuf":[B
    :catchall_64
    move-exception v1

    goto :goto_79

    .line 998
    :catch_66
    move-exception v3

    .line 999
    .local v3, "e":Ljava/lang/Exception;
    :try_start_67
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_64

    .line 1001
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 1002
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 1003
    nop

    .line 1004
    const-string/jumbo v3, "parseGainBuf fail "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/4 v1, 0x0

    return-object v1

    .line 1001
    :goto_79
    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 1002
    invoke-static {v0}, Lcom/samsung/android/media/PhotoHdrCodec;->closeQuietly(Ljava/io/InputStream;)V

    .line 1003
    throw v1
.end method

.method public static setGainInfo(Landroid/graphics/Bitmap;Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;)Landroid/graphics/Gainmap;
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "gainInfo"    # Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;

    .line 326
    new-instance v0, Landroid/graphics/Gainmap;

    invoke-direct {v0, p0}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 327
    .local v0, "gainmap":Landroid/graphics/Gainmap;
    const/4 v1, 0x0

    .line 329
    .local v1, "value":F
    invoke-virtual {p1}, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->getGainMapMax()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->CalGainInfo(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 330
    invoke-virtual {v0, v1, v1, v1}, Landroid/graphics/Gainmap;->setRatioMax(FFF)V

    .line 332
    invoke-virtual {p1}, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->getGainMapMin()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->CalGainInfo(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 333
    invoke-virtual {v0, v1, v1, v1}, Landroid/graphics/Gainmap;->setRatioMin(FFF)V

    .line 335
    invoke-virtual {p1}, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->getHDRCapacityMax()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->CalGainInfo(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 336
    invoke-virtual {v0, v1}, Landroid/graphics/Gainmap;->setDisplayRatioForFullHdr(F)V

    .line 338
    invoke-virtual {p1}, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->getHDRCapacityMin()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/media/PhotoHdrCodec;->CalGainInfo(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 339
    invoke-virtual {v0, v1}, Landroid/graphics/Gainmap;->setMinDisplayRatioForHdrTransition(F)V

    .line 341
    invoke-virtual {p1}, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->getOffsetHDR()F

    move-result v1

    .line 342
    invoke-virtual {v0, v1, v1, v1}, Landroid/graphics/Gainmap;->setEpsilonHdr(FFF)V

    .line 344
    invoke-virtual {p1}, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->getOffsetSDR()F

    move-result v1

    .line 345
    invoke-virtual {v0, v1, v1, v1}, Landroid/graphics/Gainmap;->setEpsilonSdr(FFF)V

    .line 347
    return-object v0
.end method

.method public static startsWith([B[B)Z
    .registers 6
    .param p0, "src"    # [B
    .param p1, "prefix"    # [B

    .line 1302
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/samsung/android/media/PhotoHdrCodec;->bytesToHex([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoHdrCodec"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-static {p1, v0}, Lcom/samsung/android/media/PhotoHdrCodec;->bytesToHex([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    if-nez p1, :cond_18

    goto :goto_2d

    .line 1308
    :cond_18
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_1d

    .line 1309
    return v0

    .line 1311
    :cond_1d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    array-length v2, p1

    if-ge v1, v2, :cond_2b

    .line 1312
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_28

    .line 1313
    return v0

    .line 1311
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1316
    .end local v1    # "i":I
    :cond_2b
    const/4 v0, 0x1

    return v0

    .line 1306
    :cond_2d
    :goto_2d
    return v0
.end method
