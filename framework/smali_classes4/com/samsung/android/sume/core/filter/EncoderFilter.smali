.class public Lcom/samsung/android/sume/core/filter/EncoderFilter;
.super Lcom/samsung/android/sume/core/filter/MediaCodecFilter;
.source "EncoderFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private orientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V
    .registers 3
    .param p1, "codecDescriptor"    # Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    .line 38
    return-void
.end method

.method private isReachedLastFrame(I)Z
    .registers 3
    .param p1, "processedFrames"    # I

    .line 251
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isReachedLastTimestamp(J)Z
    .registers 5
    .param p1, "timestampUs"    # J

    .line 255
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$configCodec$0(Lcom/samsung/android/sume/core/message/Message;)Landroid/util/Pair;
    .registers 4
    .param p0, "configData"    # Lcom/samsung/android/sume/core/message/Message;

    .line 63
    new-instance v0, Landroid/util/Pair;

    .line 64
    const-string/jumbo v1, "width"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 65
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-object v0
.end method


# virtual methods
.method protected configCodec(Lcom/samsung/android/sume/core/message/Message;)V
    .registers 19
    .param p1, "configData"    # Lcom/samsung/android/sume/core/message/Message;

    .line 42
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "i-frame-interval"

    const-string v3, "frame-rate"

    const-string/jumbo v4, "rotation-degrees"

    sget-object v5, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configCodec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 46
    .local v6, "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    const-string/jumbo v7, "mime"

    invoke-virtual {v2, v7}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 47
    .local v7, "mimeType":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3c

    .line 48
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v7

    .line 51
    :cond_3c
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getBitrate()I

    move-result v8

    .line 52
    .local v8, "bitrate":I
    const/4 v9, 0x0

    const-string v10, "bitrate"

    if-nez v8, :cond_77

    .line 53
    invoke-virtual {v2, v10}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 54
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v11

    cmpl-float v11, v11, v9

    if-eqz v11, :cond_74

    .line 55
    int-to-double v11, v8

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v13

    float-to-double v13, v13

    move-object/from16 v16, v10

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v9

    double-to-int v9, v9

    int-to-double v9, v9

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v11, v9

    double-to-int v8, v11

    goto :goto_79

    .line 54
    :cond_74
    move-object/from16 v16, v10

    goto :goto_79

    .line 52
    :cond_77
    move-object/from16 v16, v10

    .line 58
    :goto_79
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v9

    .line 61
    .local v9, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :try_start_7d
    invoke-virtual {v9}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v10

    if-eqz v10, :cond_f9

    .line 62
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getRectSize()Landroid/util/Pair;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/sume/core/filter/EncoderFilter$$ExternalSyntheticLambda0;

    invoke-direct {v11, v2}, Lcom/samsung/android/sume/core/filter/EncoderFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    .line 63
    invoke-virtual {v10, v11}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 68
    .local v10, "dimension":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 69
    .local v11, "width":I
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 71
    .local v12, "height":I
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_bd

    .line 72
    int-to-float v13, v11

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 73
    int-to-float v13, v12

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v12, v13

    .line 76
    :cond_bd
    invoke-static {v7, v11, v12}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v13

    .line 77
    .local v13, "mediaFormat":Landroid/media/MediaFormat;
    const-string v14, "color-format"

    const v15, 0x7f000789

    invoke-virtual {v13, v14, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v3, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {v2, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v13, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {v2, v4}, Lcom/samsung/android/sume/core/message/Message;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 83
    invoke-virtual {v2, v4}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    .line 84
    invoke-virtual {v13, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 86
    .end local v10    # "dimension":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v11    # "width":I
    .end local v12    # "height":I
    :cond_f8
    goto :goto_11e

    .end local v13    # "mediaFormat":Landroid/media/MediaFormat;
    :cond_f9
    invoke-virtual {v9}, Lcom/samsung/android/sume/core/types/MediaType;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_168

    .line 87
    const-string/jumbo v0, "sample-rate"

    invoke-virtual {v2, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    .local v0, "sampleRate":I
    const-string v3, "channel-count"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 89
    .local v3, "channelCount":I
    invoke-static {v7, v0, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    move-object v13, v4

    .line 90
    .end local v0    # "sampleRate":I
    .end local v3    # "channelCount":I
    .restart local v13    # "mediaFormat":Landroid/media/MediaFormat;
    nop

    .line 94
    :goto_11e
    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "media-format="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {v7}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    .line 99
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v13, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 101
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 102
    .local v0, "inputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    instance-of v3, v0, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-eqz v3, :cond_15f

    .line 103
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    iget-object v4, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/channel/SurfaceChannel;->configure(Landroid/view/Surface;)V

    .line 106
    :cond_15f
    iget-object v3, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->signalCodecFromReady()V

    .line 111
    .end local v0    # "inputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .end local v13    # "mediaFormat":Landroid/media/MediaFormat;
    goto :goto_186

    .line 91
    :cond_168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not supported type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v6    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "bitrate":I
    .end local v9    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    .end local p0    # "this":Lcom/samsung/android/sume/core/filter/EncoderFilter;
    .end local p1    # "configData":Lcom/samsung/android/sume/core/message/Message;
    throw v0
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_182} :catch_182

    .line 109
    .restart local v6    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "bitrate":I
    .restart local v9    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    .restart local p0    # "this":Lcom/samsung/android/sume/core/filter/EncoderFilter;
    .restart local p1    # "configData":Lcom/samsung/android/sume/core/message/Message;
    :catch_182
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :goto_186
    return-void
.end method

.method public run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .registers 28
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    .line 117
    move-object/from16 v1, p0

    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->awaitCodecToReady()V

    .line 120
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_359

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 126
    .local v2, "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v3

    .line 128
    .local v3, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 129
    .local v4, "inputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->sendChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 131
    .local v5, "outputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object v6, v0

    .line 132
    .local v6, "trackIndex":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v0, 0x0

    .line 133
    .local v0, "ready":Z
    instance-of v7, v4, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    iput-boolean v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    .line 134
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedOutputEos:Z

    .line 135
    iput v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[enc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "tag":Ljava/lang/String;
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move v10, v0

    .line 141
    .end local v0    # "ready":Z
    .local v9, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v10, "ready":Z
    :goto_67
    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    if-eqz v0, :cond_7a

    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedOutputEos:Z

    if-nez v0, :cond_70

    goto :goto_7a

    .line 244
    :cond_70
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->isRunInstant()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->release()V

    .line 247
    :cond_79
    return-object p2

    .line 142
    :cond_7a
    :goto_7a
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 143
    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    const-wide/16 v11, 0x2710

    const/4 v13, 0x1

    if-nez v0, :cond_13e

    if-eqz v10, :cond_13e

    .line 145
    invoke-interface {v4}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 146
    .local v14, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[bhko] buffer="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v11, v12}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    .line 149
    .local v7, "bufferIdx":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v11, "dequeue input buffer: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-ltz v7, :cond_13b

    .line 152
    const-string/jumbo v0, "reached-eos"

    invoke-interface {v14, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 153
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x4

    move-object/from16 v16, v0

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 154
    iput-boolean v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    goto :goto_13b

    .line 159
    :cond_e6
    const-wide/16 v11, 0x1e

    :try_start_e8
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_eb
    .catch Ljava/lang/InterruptedException; {:try_start_e8 .. :try_end_eb} :catch_ec

    .line 162
    goto :goto_f2

    .line 160
    :catch_ec
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 161
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 164
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_f2
    invoke-interface {v4}, Lcom/samsung/android/sume/core/channel/BufferChannel;->isClosedForReceive()Z

    move-result v0

    if-nez v0, :cond_133

    .line 167
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v7}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    const-class v11, Ljava/nio/ByteBuffer;

    invoke-interface {v14, v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 170
    .local v11, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 173
    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string/jumbo v15, "timestampUs"

    invoke-interface {v14, v15, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 174
    .local v23, "timeUs":J
    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/16 v18, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v19

    const/16 v22, 0x0

    move-object/from16 v16, v12

    move/from16 v17, v7

    move-wide/from16 v20, v23

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_13b

    .line 165
    .end local v0    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "data":Ljava/nio/ByteBuffer;
    .end local v23    # "timeUs":J
    :cond_133
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v11, "input channel is already closed"

    invoke-direct {v0, v11}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_13b
    :goto_13b
    invoke-interface {v14}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 180
    .end local v7    # "bufferIdx":I
    .end local v14    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_13e
    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "dequeue output buffer"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v11, 0x2710

    invoke-virtual {v7, v9, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    .line 182
    .local v7, "status":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "buffer st="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", info="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v11, -0x1

    if-ne v7, v11, :cond_1a2

    .line 185
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "retry dequeue output buffer"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v2

    move-object/from16 v16, v3

    const/4 v2, 0x0

    goto/16 :goto_353

    .line 186
    :cond_1a2
    const/4 v11, -0x2

    if-ne v7, v11, :cond_20e

    .line 187
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "track format = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v11, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v12, "media-type"

    invoke-interface {v11, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    .line 193
    .local v12, "mediaFormat":Landroid/media/MediaFormat;
    iget v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    if-eqz v13, :cond_1e1

    .line 194
    const-string/jumbo v14, "rotation-degrees"

    invoke-virtual {v12, v14, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 195
    :cond_1e1
    const-string/jumbo v13, "media-format"

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    const/4 v14, 0x3

    invoke-interface {v13, v14, v11}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    .line 198
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "now ready to start encode"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v11    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "mediaFormat":Landroid/media/MediaFormat;
    move-object v15, v2

    move-object/from16 v16, v3

    const/4 v2, 0x0

    goto/16 :goto_353

    :cond_20e
    if-ltz v7, :cond_34f

    .line 200
    iget-object v11, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v11, v7}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 202
    .local v11, "outputBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v3, v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/types/MediaType;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v12

    .line 203
    .local v12, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string/jumbo v15, "track-idx"

    invoke-interface {v12, v15, v14}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    const-string v14, "buffer-info"

    invoke-interface {v12, v14, v9}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "flag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget v14, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_256

    .line 208
    const/4 v10, 0x1

    .line 209
    const/4 v14, 0x0

    iput v14, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 210
    invoke-interface {v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 213
    :cond_256
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget v14, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v14, :cond_31f

    .line 215
    iget v14, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    add-int/2addr v14, v13

    iput v14, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    .line 217
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "# of encoded frames: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    move-object/from16 v16, v3

    .end local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v3    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    .local v15, "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .local v16, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    iget-wide v2, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "total # :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last ts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    instance-of v2, v4, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-eqz v2, :cond_30e

    .line 220
    iget v2, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->isReachedLastFrame(I)Z

    move-result v2

    if-nez v2, :cond_2fe

    iget-wide v2, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->isReachedLastTimestamp(J)Z

    move-result v2

    if-eqz v2, :cond_30e

    .line 221
    :cond_2fe
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 222
    iget-object v2, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v13, 0x7fffffffffffffffL

    invoke-virtual {v2, v13, v14}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 226
    :cond_30e
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 229
    invoke-interface {v5, v12}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    goto :goto_322

    .line 214
    .end local v15    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v16    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    .restart local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v3    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :cond_31f
    move-object v15, v2

    move-object/from16 v16, v3

    .line 232
    .end local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v3    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    .restart local v15    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v16    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :goto_322
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_348

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "encoder reached eos"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedOutputEos:Z

    .line 235
    instance-of v0, v4, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-nez v0, :cond_348

    .line 236
    invoke-interface {v5, v12}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 240
    :cond_348
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_353

    .line 199
    .end local v11    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v12    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .end local v15    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v16    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    .restart local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v3    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :cond_34f
    move-object v15, v2

    move-object/from16 v16, v3

    const/4 v2, 0x0

    .line 242
    .end local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v3    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    .end local v7    # "status":I
    .restart local v15    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v16    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :goto_353
    move v7, v2

    move-object v2, v15

    move-object/from16 v3, v16

    goto/16 :goto_67

    .line 121
    .end local v4    # "inputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .end local v5    # "outputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .end local v6    # "trackIndex":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v10    # "ready":Z
    .end local v15    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v16    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :cond_359
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 122
    new-instance v0, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;

    const-string/jumbo v2, "no media-codec given, might be released"

    invoke-direct {v0, v2}, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
