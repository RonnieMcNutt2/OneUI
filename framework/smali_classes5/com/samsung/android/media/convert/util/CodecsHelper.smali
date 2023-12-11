.class public Lcom/samsung/android/media/convert/util/CodecsHelper;
.super Ljava/lang/Object;
.source "CodecsHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .registers 5
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 341
    .local v0, "decoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 342
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 343
    return-object v0
.end method

.method public static createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .registers 4
    .param p0, "inputFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    invoke-static {p0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 327
    .local v0, "decoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 328
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 329
    return-object v0
.end method

.method public static createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .registers 5
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 314
    .local v0, "encoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 315
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 316
    return-object v0
.end method

.method public static createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 73
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 75
    return-object v0
.end method

.method public static createExtractor(Ljava/io/FileDescriptor;JJ)Landroid/media/MediaExtractor;
    .registers 12
    .param p0, "descriptor"    # Ljava/io/FileDescriptor;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 56
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 57
    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 58
    return-object v0
.end method

.method public static createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    .registers 3
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 42
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 43
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method public static createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 129
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 130
    return-object v0
.end method

.method public static createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .registers 2
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 116
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 117
    return-object v0
.end method

.method public static createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;
    .registers 6
    .param p0, "inputFormat"    # Landroid/media/MediaFormat;
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "decoder":Landroid/media/MediaCodec;
    invoke-static {p0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 358
    const-string v1, "createVideoDecoder"

    const-string v2, "SemVideoConverter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {v0, p0, p1, v1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_15} :catch_1f

    .line 367
    nop

    .line 368
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 370
    const-string v1, "createVideoDecoder - start"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-object v0

    .line 361
    :catch_1f
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 363
    if-eqz v0, :cond_28

    .line 364
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 365
    :cond_28
    const/4 v0, 0x0

    .line 366
    new-instance v2, Ljava/io/IOException;

    const-string v3, "createVideoDecode configure error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I
    .registers 3
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .line 99
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 100
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 101
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 102
    return v0

    .line 99
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "index":I
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method public static getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I
    .registers 3
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .line 84
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 85
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 86
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 87
    return v0

    .line 84
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v0    # "index":I
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method public static getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 8
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 184
    .local v0, "codec":Landroid/media/MediaCodecInfo;
    if-nez v0, :cond_31

    .line 185
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    .line 186
    .local v1, "numCodecs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_31

    .line 187
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 188
    .local v3, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 189
    goto :goto_2e

    .line 191
    :cond_19
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "types":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1e
    array-length v6, v4

    if-ge v5, v6, :cond_2e

    .line 193
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 194
    move-object v0, v3

    .line 195
    goto :goto_2e

    .line 192
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 186
    .end local v3    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v4    # "types":[Ljava/lang/String;
    .end local v5    # "j":I
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 200
    .end local v1    # "numCodecs":I
    .end local v2    # "i":I
    :cond_31
    return-object v0
.end method

.method public static getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 8
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 155
    .local v0, "codec":Landroid/media/MediaCodecInfo;
    if-nez v0, :cond_31

    .line 156
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    .line 157
    .local v1, "numCodecs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_31

    .line 158
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 159
    .local v3, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_19

    .line 160
    goto :goto_2e

    .line 162
    :cond_19
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "types":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1e
    array-length v6, v4

    if-ge v5, v6, :cond_2e

    .line 164
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 165
    move-object v0, v3

    .line 166
    goto :goto_2e

    .line 163
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 157
    .end local v3    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v4    # "types":[Ljava/lang/String;
    .end local v5    # "j":I
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 171
    .end local v1    # "numCodecs":I
    .end local v2    # "i":I
    :cond_31
    return-object v0
.end method

.method public static getMediaCodec(Ljava/lang/String;ZZ)Landroid/media/MediaCodecInfo;
    .registers 11
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z
    .param p2, "preferSw"    # Z

    .line 469
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 470
    .local v0, "mcl":Landroid/media/MediaCodecList;
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 472
    .local v2, "infos":[Landroid/media/MediaCodecInfo;
    array-length v3, v2

    :goto_b
    if-ge v1, v3, :cond_34

    aget-object v4, v2, v1

    .line 473
    .local v4, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eq v5, p1, :cond_16

    .line 474
    goto :goto_31

    .line 477
    :cond_16
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v5

    if-eq v5, p2, :cond_1d

    .line 478
    goto :goto_31

    .line 481
    :cond_1d
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 482
    .local v5, "types":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_22
    array-length v7, v5

    if-ge v6, v7, :cond_31

    .line 483
    aget-object v7, v5, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 484
    return-object v4

    .line 482
    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 472
    .end local v4    # "info":Landroid/media/MediaCodecInfo;
    .end local v5    # "types":[Ljava/lang/String;
    .end local v6    # "j":I
    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 488
    :cond_34
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;
    .registers 2
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 140
    const-string/jumbo v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRemainedResourceCapacity()I
    .registers 4

    .line 438
    const/4 v0, -0x1

    .line 439
    .local v0, "capacity":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v1

    .line 442
    .local v1, "ResourceHelper":Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_start_7
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->getRemainedVideoCapacity()I

    move-result v2
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_b} :catch_15
    .catchall {:try_start_7 .. :try_end_b} :catchall_13

    move v0, v2

    .line 446
    if-eqz v1, :cond_1c

    .line 447
    :goto_e
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    .line 448
    const/4 v1, 0x0

    goto :goto_1c

    .line 446
    :catchall_13
    move-exception v2

    goto :goto_36

    .line 443
    :catch_15
    move-exception v2

    .line 444
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_13

    .line 446
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    if-eqz v1, :cond_1c

    .line 447
    goto :goto_e

    .line 452
    :cond_1c
    :goto_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRemainedResourceCapacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemVideoConverter"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return v0

    .line 446
    :goto_36
    if-eqz v1, :cond_3c

    .line 447
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    .line 448
    const/4 v1, 0x0

    .line 450
    :cond_3c
    throw v2
.end method

.method private static isAudioFormat(Landroid/media/MediaFormat;)Z
    .registers 3
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 137
    invoke-static {p0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;
    .registers 9
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    if-ge v1, v2, :cond_6c

    .line 278
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 279
    .local v2, "codec":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "codecName":Ljava/lang/String;
    if-eqz p1, :cond_45

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 281
    const-string v4, "OMX.SEC.naac.enc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    const-string v4, "OMX.SEC.aac.enc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 282
    :cond_30
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "types":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_35
    array-length v6, v4

    if-ge v5, v6, :cond_44

    .line 284
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 285
    move-object v0, v2

    .line 283
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 288
    .end local v4    # "types":[Ljava/lang/String;
    .end local v5    # "j":I
    :cond_44
    goto :goto_69

    .line 290
    :cond_45
    if-nez p1, :cond_69

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_69

    .line 291
    const-string v4, "OMX.SEC.aac.dec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 292
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 293
    .restart local v4    # "types":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_5a
    array-length v6, v4

    if-ge v5, v6, :cond_69

    .line 294
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 295
    move-object v0, v2

    .line 293
    :cond_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 277
    .end local v2    # "codec":Landroid/media/MediaCodecInfo;
    .end local v3    # "codecName":Ljava/lang/String;
    .end local v4    # "types":[Ljava/lang/String;
    .end local v5    # "j":I
    :cond_69
    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 302
    .end local v1    # "i":I
    :cond_6c
    return-object v0
.end method

.method public static isSupportOMX()Z
    .registers 5

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    const-string/jumbo v1, "video/avc"

    .line 459
    .local v1, "mimeType":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;ZZ)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSupportOMX getMediaCodec : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemVideoConverter"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "omx."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OMX."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    .line 465
    :cond_40
    return v2

    .line 463
    :cond_41
    :goto_41
    const/4 v2, 0x1

    return v2
.end method

.method public static isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "support":Z
    const-string v1, ""

    .line 246
    .local v1, "format":Ljava/lang/String;
    if-eqz p0, :cond_3d

    if-nez p1, :cond_8

    goto :goto_3d

    .line 250
    :cond_8
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 253
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_d
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 254
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 255
    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_28
    .catchall {:try_start_d .. :try_end_1e} :catchall_26

    if-eqz v3, :cond_21

    .line 256
    const/4 v0, 0x1

    .line 264
    :cond_21
    nop

    .line 265
    :try_start_22
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_32

    goto :goto_30

    .line 263
    :catchall_26
    move-exception v3

    goto :goto_35

    .line 259
    :catch_28
    move-exception v3

    .line 260
    .local v3, "e":Ljava/lang/Exception;
    :try_start_29
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    .line 264
    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 265
    :try_start_2d
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_32

    .line 266
    :goto_30
    const/4 v2, 0x0

    .line 269
    goto :goto_34

    .line 267
    :catch_32
    move-exception v3

    .line 270
    nop

    .line 271
    :goto_34
    return v0

    .line 264
    :goto_35
    nop

    .line 265
    :try_start_36
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3b

    .line 266
    const/4 v2, 0x0

    .line 269
    goto :goto_3c

    .line 267
    :catch_3b
    move-exception v4

    .line 270
    :goto_3c
    throw v3

    .line 247
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_3d
    :goto_3d
    const/4 v2, 0x0

    return v2
.end method

.method public static isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z
    .registers 3
    .param p0, "retriever"    # Landroid/media/MediaMetadataRetriever;

    .line 143
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "filetype":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/media/convert/core/Convert$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .registers 7
    .param p0, "filePath"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "support":Z
    const-string v1, ""

    .line 208
    .local v1, "format":Ljava/lang/String;
    if-nez p0, :cond_7

    .line 209
    const/4 v2, 0x0

    return v2

    .line 212
    :cond_7
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 213
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v3, 0x0

    .line 215
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_d
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 216
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 217
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 220
    const-string/jumbo v4, "video/mp4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_28} :catch_36
    .catchall {:try_start_d .. :try_end_28} :catchall_34

    if-eqz v4, :cond_2b

    .line 221
    const/4 v0, 0x1

    .line 229
    :cond_2b
    nop

    .line 230
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 231
    nop

    .line 232
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_40

    goto :goto_46

    .line 228
    :catchall_34
    move-exception v4

    goto :goto_4a

    .line 224
    :catch_36
    move-exception v4

    .line 225
    .local v4, "e":Ljava/lang/Exception;
    :try_start_37
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    .line 229
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_42

    .line 230
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_42

    .line 234
    :catch_40
    move-exception v4

    goto :goto_48

    .line 231
    :cond_42
    :goto_42
    nop

    .line 232
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_46} :catch_40

    .line 233
    :goto_46
    const/4 v2, 0x0

    .line 236
    goto :goto_49

    .line 237
    :goto_48
    nop

    .line 238
    :goto_49
    return v0

    .line 229
    :goto_4a
    if-eqz v3, :cond_52

    .line 230
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_52

    .line 234
    :catch_50
    move-exception v5

    goto :goto_58

    .line 231
    :cond_52
    :goto_52
    nop

    .line 232
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_56} :catch_50

    .line 233
    const/4 v2, 0x0

    .line 236
    nop

    .line 237
    :goto_58
    throw v4
.end method

.method private static isVideoFormat(Landroid/media/MediaFormat;)Z
    .registers 3
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 134
    invoke-static {p0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static scheduleAfter(ILjava/lang/Runnable;)V
    .registers 6
    .param p0, "milliSeconds"    # I
    .param p1, "schedulerCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 383
    nop

    .line 384
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 385
    .local v0, "sch":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    int-to-long v1, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 386
    return-void
.end method

.method public static suggestBitRate(III)I
    .registers 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "fps"    # I

    .line 399
    mul-int v0, p0, p1

    .line 400
    .local v0, "framesize":I
    const v1, 0x7e9000

    const/16 v2, 0x21

    if-lt v0, v1, :cond_13

    .line 401
    if-ge p2, v2, :cond_f

    .line 402
    const v1, 0xbb80

    return v1

    .line 404
    :cond_f
    const v1, 0x11940

    return v1

    .line 406
    :cond_13
    const v1, 0x24a680

    if-lt v0, v1, :cond_21

    .line 407
    if-ge p2, v2, :cond_1d

    .line 408
    const/16 v1, 0x4e20

    return v1

    .line 410
    :cond_1d
    const v1, 0x9c40

    return v1

    .line 412
    :cond_21
    const v1, 0x1fa400

    if-lt v0, v1, :cond_2e

    .line 413
    if-ge p2, v2, :cond_2b

    .line 414
    const/16 v1, 0x4268

    return v1

    .line 416
    :cond_2b
    const/16 v1, 0x6d60

    return v1

    .line 418
    :cond_2e
    const v1, 0xe1000

    if-lt v0, v1, :cond_3b

    .line 419
    if-ge p2, v2, :cond_38

    .line 420
    const/16 v1, 0x2ee0

    return v1

    .line 422
    :cond_38
    const/16 v1, 0x5dc0

    return v1

    .line 424
    :cond_3b
    const v1, 0x54600

    if-lt v0, v1, :cond_48

    .line 425
    if-ge p2, v2, :cond_45

    .line 426
    const/16 v1, 0xd79

    return v1

    .line 428
    :cond_45
    const/16 v1, 0x1af2

    return v1

    .line 431
    :cond_48
    if-ge p2, v2, :cond_4d

    .line 432
    const/16 v1, 0xc06

    return v1

    .line 434
    :cond_4d
    const/16 v1, 0x180c

    return v1
.end method
