.class public Lcom/samsung/android/transcode/util/CodecsHelper;
.super Ljava/lang/Object;
.source "CodecsHelper.java"


# static fields
.field private static final AUTHOR_SAMSUNG_CAMERA:I = 0x0

.field private static final AUTHOR_SAMSUNG_EDITOR:I = 0x8

.field private static final BITRATE_FRACTION_FRAMERATE:F = 0.8f

.field private static final BITRATE_FRACTION_HEVC:F = 0.85f

.field private static final BITRATE_MARGIN_FACTOR:F = 1.25f

.field private static final SEC_AAC_DECODER_OMX_NAMES:[Ljava/lang/String;

.field private static final SEC_AAC_ENCODER_OMX_NAMES:[Ljava/lang/String;

.field public static final sMediaExtractor:Landroid/media/MediaExtractor;

.field public static final sMetadataRetriever:Landroid/media/MediaMetadataRetriever;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    const-string v0, "OMX.SEC.aac.enc"

    const-string v1, "c2.sec.aac.encoder"

    const-string v2, "OMX.SEC.naac.enc"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->SEC_AAC_ENCODER_OMX_NAMES:[Ljava/lang/String;

    .line 33
    const-string v0, "OMX.SEC.aac.dec"

    const-string v1, "c2.sec.aac.decoder"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->SEC_AAC_DECODER_OMX_NAMES:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->sMediaExtractor:Landroid/media/MediaExtractor;

    .line 42
    sput-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->sMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-void
.end method

.method private constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "do not instatiate"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 303
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 304
    .local v0, "decoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 305
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 306
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

    .line 289
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 290
    .local v0, "decoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 291
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 292
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

    .line 277
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 278
    .local v0, "encoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 279
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 280
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

    .line 88
    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    .line 89
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 91
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

    .line 73
    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v6

    .line 74
    .local v6, "extractor":Landroid/media/MediaExtractor;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 75
    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 76
    return-object v6
.end method

.method public static createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    .registers 3
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    .line 59
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 60
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 61
    return-object v0
.end method

.method public static createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 147
    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    .line 148
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 149
    return-object v0
.end method

.method public static createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .registers 2
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    .line 133
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 134
    return-object v0
.end method

.method public static createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;Z)Landroid/media/MediaCodec;
    .registers 7
    .param p0, "inputFormat"    # Landroid/media/MediaFormat;
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "startFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 385
    .local v0, "decoder":Landroid/media/MediaCodec;
    const-string v1, "createVideoDecoder"

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_11
    invoke-virtual {v0, p0, p1, v1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_14} :catch_20

    .line 391
    nop

    .line 392
    if-eqz p2, :cond_1f

    .line 393
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 394
    const-string v1, "createVideoDecoder - start"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_1f
    return-object v0

    .line 388
    :catch_20
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 390
    new-instance v2, Ljava/io/IOException;

    const-string v3, "createVideoDecode configure error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static get360Bitrate(II)I
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 599
    mul-int v0, p0, p1

    .line 600
    .local v0, "frameSize":I
    const v1, 0xc8000

    if-gt v0, v1, :cond_a

    .line 601
    const/16 v1, 0x1f40

    return v1

    .line 602
    :cond_a
    const v1, 0x1c2000

    if-gt v0, v1, :cond_12

    .line 603
    const/16 v1, 0x32c8

    return v1

    .line 604
    :cond_12
    const/high16 v1, 0x320000

    if-gt v0, v1, :cond_19

    .line 605
    const/16 v1, 0x4650

    return v1

    .line 606
    :cond_19
    const v1, 0x3f4800

    if-gt v0, v1, :cond_21

    .line 607
    const/16 v1, 0x61a8

    return v1

    .line 608
    :cond_21
    nop

    .line 609
    const v1, 0x88b8

    return v1
.end method

.method public static getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I
    .registers 3
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .line 115
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 116
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 117
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 118
    return v0

    .line 115
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .end local v0    # "index":I
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method public static getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I
    .registers 3
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .line 100
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 101
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 102
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 103
    return v0

    .line 100
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "index":I
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method private static getCommonBitrate(II)I
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 503
    mul-int v0, p0, p1

    .line 504
    .local v0, "frameSize":I
    const/high16 v1, 0x21c0000

    if-lt v0, v1, :cond_a

    .line 505
    const v1, 0x13880

    return v1

    .line 506
    :cond_a
    const v1, 0x7e9000

    if-lt v0, v1, :cond_13

    .line 507
    const v1, 0x88b8

    return v1

    .line 508
    :cond_13
    const v1, 0x384000

    if-lt v0, v1, :cond_1b

    .line 509
    const/16 v1, 0x4650

    return v1

    .line 510
    :cond_1b
    const v1, 0x1fa400

    if-lt v0, v1, :cond_23

    .line 511
    const/16 v1, 0x32c8

    return v1

    .line 512
    :cond_23
    const v1, 0xe1000

    if-lt v0, v1, :cond_2b

    .line 513
    const/16 v1, 0x1f40

    return v1

    .line 514
    :cond_2b
    const v1, 0x54600

    const/16 v2, 0x1388

    if-lt v0, v1, :cond_33

    .line 515
    return v2

    .line 516
    :cond_33
    const v1, 0x12c00

    if-lt v0, v1, :cond_39

    .line 517
    return v2

    .line 518
    :cond_39
    const v1, 0x9c40

    if-lt v0, v1, :cond_41

    .line 519
    const/16 v1, 0x200

    return v1

    .line 521
    :cond_41
    const/16 v1, 0x118

    return v1
.end method

.method public static getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 193
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getHdrPlusBitrate(II)I
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 584
    mul-int v0, p0, p1

    .line 585
    .local v0, "frameSize":I
    const v1, 0xe1000

    if-gt v0, v1, :cond_a

    .line 586
    const/16 v1, 0x3a98

    return v1

    .line 587
    :cond_a
    const v1, 0x1fa400

    if-gt v0, v1, :cond_12

    .line 588
    const/16 v1, 0x61a8

    return v1

    .line 589
    :cond_12
    const v1, 0x2a3000

    if-gt v0, v1, :cond_1a

    .line 590
    const/16 v1, 0x7530

    return v1

    .line 591
    :cond_1a
    nop

    .line 592
    const v1, 0xd2f0

    return v1
.end method

.method public static getMediaCodec(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;
    .registers 7
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z

    .line 169
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 170
    .local v0, "codec":Landroid/media/MediaCodecInfo;
    if-nez v0, :cond_2c

    .line 171
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    .line 172
    .local v1, "numCodecs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_2c

    .line 173
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 174
    .local v3, "codecInfo":Landroid/media/MediaCodecInfo;
    if-eqz p1, :cond_19

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_19
    if-nez p1, :cond_22

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 175
    goto :goto_29

    .line 177
    :cond_22
    invoke-static {p0, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportCodec(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 178
    return-object v3

    .line 172
    .end local v3    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 182
    .end local v1    # "numCodecs":I
    .end local v2    # "i":I
    :cond_2c
    if-eqz v0, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMediaCodec : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_4b
    return-object v0
.end method

.method public static getMediaCodec(Ljava/lang/String;ZZ)Landroid/media/MediaCodecInfo;
    .registers 9
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z
    .param p2, "preferSw"    # Z

    .line 636
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 637
    .local v0, "mcl":Landroid/media/MediaCodecList;
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 639
    .local v2, "infos":[Landroid/media/MediaCodecInfo;
    array-length v3, v2

    :goto_b
    if-ge v1, v3, :cond_26

    aget-object v4, v2, v1

    .line 640
    .local v4, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-ne v5, p1, :cond_23

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v5

    if-eq v5, p2, :cond_1c

    .line 641
    goto :goto_23

    .line 643
    :cond_1c
    invoke-static {p0, v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportCodec(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 644
    return-object v4

    .line 639
    .end local v4    # "info":Landroid/media/MediaCodecInfo;
    :cond_23
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 647
    :cond_26
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;
    .registers 2
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 161
    const-string/jumbo v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSamsungVideoAvcBitrate(II)I
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 558
    mul-int v0, p0, p1

    .line 559
    .local v0, "frameSize":I
    const v1, 0x9c40

    if-gt v0, v1, :cond_a

    .line 560
    const/16 v1, 0x200

    return v1

    .line 561
    :cond_a
    const v1, 0x12c00

    const/16 v2, 0x1388

    if-gt v0, v1, :cond_12

    .line 562
    return v2

    .line 563
    :cond_12
    const v1, 0x4b000

    if-gt v0, v1, :cond_18

    .line 564
    return v2

    .line 565
    :cond_18
    const v1, 0x54600

    if-gt v0, v1, :cond_20

    .line 566
    const/16 v1, 0x1f40

    return v1

    .line 567
    :cond_20
    const v1, 0xe1000

    if-gt v0, v1, :cond_28

    .line 568
    const/16 v1, 0x2ee0

    return v1

    .line 569
    :cond_28
    const v1, 0x1fa400

    if-gt v0, v1, :cond_30

    .line 570
    const/16 v1, 0x4268

    return v1

    .line 571
    :cond_30
    const v1, 0x384000

    if-gt v0, v1, :cond_38

    .line 572
    const/16 v1, 0x61a8

    return v1

    .line 573
    :cond_38
    const v1, 0x7e9000

    const v2, 0xbb80

    if-gt v0, v1, :cond_41

    .line 574
    return v2

    .line 575
    :cond_41
    const/high16 v1, 0x21c0000

    if-gt v0, v1, :cond_49

    .line 577
    const v1, 0x13880

    return v1

    .line 579
    :cond_49
    return v2
.end method

.method public static getVideoEncodingBitRate(FJJIII)I
    .registers 15
    .param p0, "sizeFraction"    # F
    .param p1, "maxSizeKB"    # J
    .param p3, "timeDurationMs"    # J
    .param p5, "audioBitRate"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 353
    long-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44800000    # 1024.0f

    mul-float/2addr v0, v1

    long-to-float v1, p3

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 354
    .local v0, "bitRate":I
    add-int/lit8 v1, p5, 0x2

    sub-int/2addr v0, v1

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVideoEncodingBitRate maxSizeKB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sizeFraction :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitatre :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {p6, p7}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoMinBitrate(II)I

    move-result v1

    .line 359
    .local v1, "minBitRate":I
    invoke-static {p6, p7}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(II)I

    move-result v3

    .line 361
    .local v3, "maxBitRate":I
    if-ge v0, v1, :cond_64

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitrate("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is under min bitrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, "log":Ljava/lang/String;
    move v0, v1

    goto :goto_90

    .line 364
    .end local v4    # "log":Ljava/lang/String;
    :cond_64
    if-le v0, v3, :cond_7c

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "over max bitrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 366
    .restart local v4    # "log":Ljava/lang/String;
    move v0, v3

    goto :goto_90

    .line 368
    .end local v4    # "log":Ljava/lang/String;
    :cond_7c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selected bitrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 370
    .restart local v4    # "log":Ljava/lang/String;
    :goto_90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getVideoEncodingBitRate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return v0
.end method

.method public static getVideoMinBitrate(II)I
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 320
    mul-int v0, p0, p1

    div-int/lit16 v0, v0, 0x100

    .line 322
    .local v0, "numberOfMBs":I
    const/16 v1, 0x64

    if-ge v0, v1, :cond_b

    .line 323
    const/16 v1, 0x63

    .local v1, "minBitRate":I
    goto :goto_3a

    .line 324
    .end local v1    # "minBitRate":I
    :cond_b
    const/16 v2, 0x3e8

    if-le v0, v1, :cond_14

    if-gt v0, v2, :cond_14

    .line 325
    const/16 v1, 0x96

    .restart local v1    # "minBitRate":I
    goto :goto_3a

    .line 326
    .end local v1    # "minBitRate":I
    :cond_14
    const/16 v1, 0x4b0

    if-le v0, v2, :cond_1d

    if-gt v0, v1, :cond_1d

    .line 327
    const/16 v1, 0x15e

    .restart local v1    # "minBitRate":I
    goto :goto_3a

    .line 328
    .end local v1    # "minBitRate":I
    :cond_1d
    const/16 v2, 0x546

    if-le v0, v1, :cond_26

    if-gt v0, v2, :cond_26

    .line 329
    const/16 v1, 0x190

    .restart local v1    # "minBitRate":I
    goto :goto_3a

    .line 330
    .end local v1    # "minBitRate":I
    :cond_26
    const/16 v1, 0xe10

    if-le v0, v2, :cond_2f

    if-gt v0, v1, :cond_2f

    .line 331
    const/16 v1, 0x4b0

    .restart local v1    # "minBitRate":I
    goto :goto_3a

    .line 332
    .end local v1    # "minBitRate":I
    :cond_2f
    if-le v0, v1, :cond_38

    const/16 v1, 0x1fa4

    if-gt v0, v1, :cond_38

    .line 333
    const/16 v1, 0x960

    .restart local v1    # "minBitRate":I
    goto :goto_3a

    .line 335
    .end local v1    # "minBitRate":I
    :cond_38
    const/16 v1, 0x251c

    .line 337
    .restart local v1    # "minBitRate":I
    :goto_3a
    return v1
.end method

.method public static is10bitVideo(Landroid/media/MediaMetadataRetriever;)Z
    .registers 3
    .param p0, "retriever"    # Landroid/media/MediaMetadataRetriever;

    .line 616
    :try_start_0
    const-string v0, "10"

    const/16 v1, 0x404

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 618
    :catch_d
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private static isAudioFormat(Landroid/media/MediaFormat;)Z
    .registers 3
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 157
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHevcFormat(Landroid/media/MediaFormat;)Z
    .registers 3
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 165
    const-string/jumbo v0, "video/hevc"

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isHighBitrateMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z
    .registers 6
    .param p0, "sourceInfo"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isHighBitrateMode. codecType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitrate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", framerate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string/jumbo v0, "video/hevc"

    iget-object v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_58

    .line 542
    return v2

    .line 545
    :cond_58
    iget v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    iget v3, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getSamsungVideoAvcBitrate(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 546
    .local v0, "bitrate":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHighBitrateMode. [1] expected original bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget v3, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_a3

    .line 549
    const v3, 0x3f4ccccd    # 0.8f

    int-to-float v4, v0

    mul-float/2addr v4, v3

    iget v3, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    int-to-float v3, v3

    mul-float/2addr v4, v3

    const/high16 v3, 0x41f00000    # 30.0f

    div-float/2addr v4, v3

    float-to-int v0, v4

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHighBitrateMode. [2] over 60fps case. bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_a3
    int-to-float v3, v0

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHighBitrateMode. [3] check condition. bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    if-ge v0, v1, :cond_c4

    const/4 v2, 0x1

    :cond_c4
    return v2
.end method

.method private static isSamsungAACCodec(Landroid/media/MediaCodecInfo;Z)Z
    .registers 4
    .param p0, "codec"    # Landroid/media/MediaCodecInfo;
    .param p1, "isEncoder"    # Z

    .line 259
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "name":Ljava/lang/String;
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/samsung/android/transcode/util/CodecsHelper;->SEC_AAC_ENCODER_OMX_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    :cond_18
    if-nez p1, :cond_2e

    .line 261
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, Lcom/samsung/android/transcode/util/CodecsHelper;->SEC_AAC_DECODER_OMX_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_2c
    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 260
    :goto_2f
    return v1
.end method

.method static isSamsungAuthor(I)Z
    .registers 2
    .param p0, "author"    # I

    .line 499
    if-eqz p0, :cond_9

    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private static isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z

    .line 247
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 249
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 250
    .local v1, "codec":Landroid/media/MediaCodecInfo;
    invoke-static {v1, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSamsungAACCodec(Landroid/media/MediaCodecInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {p0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportCodec(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 251
    return-object v1

    .line 248
    .end local v1    # "codec":Landroid/media/MediaCodecInfo;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 255
    .end local v0    # "i":I
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method static isSupportCodec(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 265
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "types":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    return v1
.end method

.method public static isSupportOMX()Z
    .registers 5

    .line 625
    const-string/jumbo v0, "video/avc"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;ZZ)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 627
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSupportOMX getMediaCodec : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 628
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 627
    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 631
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 630
    return v1
.end method

.method public static isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 228
    if-eqz p0, :cond_34

    if-nez p1, :cond_5

    goto :goto_34

    .line 232
    :cond_5
    const/4 v0, 0x0

    .line 233
    .local v0, "support":Z
    :try_start_6
    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_2f

    .line 234
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_a
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 235
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "format":Ljava/lang/String;
    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_23

    if-eqz v3, :cond_1d

    .line 237
    const/4 v0, 0x1

    .line 239
    .end local v2    # "format":Ljava/lang/String;
    :cond_1d
    if-eqz v1, :cond_22

    :try_start_1f
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_2f

    .line 241
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_22
    goto :goto_33

    .line 233
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_23
    move-exception v2

    if-eqz v1, :cond_2e

    :try_start_26
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v3

    :try_start_2b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "support":Z
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_2e
    :goto_2e
    throw v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 239
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "support":Z
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_2f
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_33
    return v0

    .line 229
    .end local v0    # "support":Z
    :cond_34
    :goto_34
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .registers 6
    .param p0, "filePath"    # Ljava/lang/String;

    .line 207
    if-nez p0, :cond_4

    .line 208
    const/4 v0, 0x0

    return v0

    .line 211
    :cond_4
    const/4 v0, 0x0

    .line 212
    .local v0, "support":Z
    :try_start_5
    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_45

    .line 213
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_9
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_39

    .line 214
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 215
    nop

    .line 216
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "format":Ljava/lang/String;
    const-string/jumbo v4, "video/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_2f

    if-eqz v4, :cond_26

    .line 218
    const/4 v0, 0x1

    .line 220
    .end local v3    # "format":Ljava/lang/String;
    :cond_26
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_39

    .end local v2    # "fis":Ljava/io/FileInputStream;
    if-eqz v1, :cond_2e

    :try_start_2b
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_45

    .line 222
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_2e
    goto :goto_49

    .line 212
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_2f
    move-exception v3

    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v4

    :try_start_35
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "support":Z
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "filePath":Ljava/lang/String;
    :goto_38
    throw v3
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "support":Z
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p0    # "filePath":Ljava/lang/String;
    :catchall_39
    move-exception v2

    if-eqz v1, :cond_44

    :try_start_3c
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v3

    :try_start_41
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "support":Z
    .end local p0    # "filePath":Ljava/lang/String;
    :cond_44
    :goto_44
    throw v2
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_45

    .line 220
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "support":Z
    .restart local p0    # "filePath":Ljava/lang/String;
    :catch_45
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_49
    return v0
.end method

.method private static isVideoFormat(Landroid/media/MediaFormat;)Z
    .registers 3
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 153
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static keepOriginalBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z
    .registers 6
    .param p0, "outputInfo"    # Lcom/samsung/android/transcode/info/ExportMediaInfo;
    .param p1, "sourceInfo"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "keepOriginalBitrate. exportInfo: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 527
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getVideoCodecType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getFrameRate()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "], sourceInfo: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getVideoCodecType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 532
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getFrameRate()I

    move-result v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    if-ne v0, v1, :cond_9d

    .line 533
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getWidth()I

    move-result v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    if-ne v0, v1, :cond_9d

    .line 534
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getHeight()I

    move-result v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    if-ne v0, v1, :cond_9d

    const/4 v0, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v0, 0x0

    .line 531
    :goto_9e
    return v0
.end method

.method static synthetic lambda$isSupportCodec$0(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .line 266
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isSupportOMX$1(Landroid/media/MediaCodecInfo;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "info"    # Landroid/media/MediaCodecInfo;

    .line 631
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "omx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static newMediaExtractor()Landroid/media/MediaExtractor;
    .registers 1

    .line 45
    sget-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->sMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_5

    goto :goto_a

    :cond_5
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    :goto_a
    return-object v0
.end method

.method private static newMetadataRetriever()Landroid/media/MediaMetadataRetriever;
    .registers 1

    .line 49
    sget-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->sMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_5

    goto :goto_a

    :cond_5
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :goto_a
    return-object v0
.end method

.method public static scheduleAfter(ILjava/lang/Runnable;)V
    .registers 6
    .param p0, "ms"    # I
    .param p1, "schedulerCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 407
    nop

    .line 408
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 409
    .local v0, "sch":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    int-to-long v1, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 410
    return-void
.end method

.method public static suggestBitRate(II)I
    .registers 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 421
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getCommonBitrate(II)I

    move-result v0

    return v0
.end method

.method public static suggestBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I
    .registers 14
    .param p0, "outputInfo"    # Lcom/samsung/android/transcode/info/ExportMediaInfo;
    .param p1, "sourceInfo"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 436
    if-eqz p0, :cond_142

    if-nez p1, :cond_6

    goto/16 :goto_142

    .line 440
    :cond_6
    const/4 v0, 0x0

    .line 441
    .local v0, "isHighBitrateMode":Z
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getWidth()I

    move-result v1

    .line 442
    .local v1, "outputWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getHeight()I

    move-result v2

    .line 443
    .local v2, "outputHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->isHdr()Z

    move-result v3

    .line 444
    .local v3, "isHdr":Z
    iget-boolean v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    const v5, 0x3f59999a    # 0.85f

    const-string v6, "TranscodeLib"

    if-eqz v4, :cond_23

    .line 445
    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->get360Bitrate(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .local v4, "bitrate":I
    goto :goto_6b

    .line 446
    .end local v4    # "bitrate":I
    :cond_23
    if-eqz v3, :cond_2c

    .line 447
    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getHdrPlusBitrate(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .restart local v4    # "bitrate":I
    goto :goto_6b

    .line 448
    .end local v4    # "bitrate":I
    :cond_2c
    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSamsungAuthor(I)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 449
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->keepOriginalBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 450
    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    .line 451
    .restart local v4    # "bitrate":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[final] keepOriginalBitrate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return v4

    .line 454
    .end local v4    # "bitrate":I
    :cond_53
    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getSamsungVideoAvcBitrate(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .line 455
    .restart local v4    # "bitrate":I
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHighBitrateMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z

    move-result v0

    .line 456
    if-eqz v0, :cond_6b

    .line 457
    int-to-float v7, v4

    div-float/2addr v7, v5

    float-to-int v7, v7

    mul-int/lit8 v4, v7, 0x2

    goto :goto_6b

    .line 460
    .end local v4    # "bitrate":I
    :cond_65
    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getCommonBitrate(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .line 462
    .restart local v4    # "bitrate":I
    :cond_6b
    :goto_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[1] get from table. bitrate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isHighBitrateMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getFrameRate()I

    move-result v7

    .line 466
    .local v7, "outputFramerate":I
    const/16 v8, 0x3c

    if-lt v7, v8, :cond_b4

    .line 467
    const v8, 0x3f4ccccd    # 0.8f

    int-to-float v9, v4

    mul-float/2addr v9, v8

    int-to-float v8, v7

    mul-float/2addr v9, v8

    const/high16 v8, 0x41f00000    # 30.0f

    div-float/2addr v9, v8

    float-to-int v4, v9

    .line 468
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[2] over 60fps case. bitrate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_b4
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getVideoCodecType()Ljava/lang/String;

    move-result-object v8

    .line 473
    .local v8, "outputVideoCodecType":Ljava/lang/String;
    const-string/jumbo v9, "video/hevc"

    if-nez v3, :cond_e1

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e1

    const v10, 0x4c4b400

    if-eq v4, v10, :cond_e1

    .line 476
    int-to-float v10, v4

    mul-float/2addr v10, v5

    float-to-int v4, v10

    .line 477
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[3] normal hevc case. bitrate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_e1
    iget v10, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    if-eqz v10, :cond_12a

    .line 481
    iget v10, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    .line 482
    .local v10, "originalBitrate":I
    iget v11, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    invoke-static {v11}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSamsungAuthor(I)Z

    move-result v11

    if-eqz v11, :cond_104

    iget-object v11, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_104

    .line 483
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_101

    .line 484
    int-to-float v9, v10

    mul-float/2addr v9, v5

    float-to-int v10, v9

    goto :goto_104

    .line 486
    :cond_101
    int-to-float v9, v10

    div-float/2addr v9, v5

    float-to-int v10, v9

    .line 489
    :cond_104
    :goto_104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[4] sourceBitrate : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", originalBitrate: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 494
    .end local v10    # "originalBitrate":I
    :cond_12a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "suggestBitRate. bitrate: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return v4

    .line 437
    .end local v0    # "isHighBitrateMode":Z
    .end local v1    # "outputWidth":I
    .end local v2    # "outputHeight":I
    .end local v3    # "isHdr":Z
    .end local v4    # "bitrate":I
    .end local v7    # "outputFramerate":I
    .end local v8    # "outputVideoCodecType":Ljava/lang/String;
    :cond_142
    :goto_142
    const/4 v0, -0x1

    return v0
.end method
