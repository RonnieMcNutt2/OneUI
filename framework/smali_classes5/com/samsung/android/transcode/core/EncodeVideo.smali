.class public Lcom/samsung/android/transcode/core/EncodeVideo;
.super Lcom/samsung/android/transcode/core/EncodeBase;
.source "EncodeVideo.java"


# static fields
.field private static final NAL_START_CODE:[B

.field private static final UNKNOWN_AUDIO:Ljava/lang/String; = "audio/unknown"


# instance fields
.field private final mStopLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    return-void
.end method

.method private checkAudioTranscodeSection()V
    .registers 5

    .line 349
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v0, :cond_5d

    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_5d

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5d

    .line 350
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 351
    :goto_1c
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    if-gez v0, :cond_35

    .line 352
    const-string v0, "Advance audio..."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1c

    .line 355
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Transcode section: Current position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 356
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimAudioStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_5d
    return-void
.end method

.method private checkFormatV(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .registers 10
    .param p1, "formatV"    # Landroid/media/MediaFormat;

    .line 648
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 649
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 650
    .local v0, "filepath":Ljava/lang/String;
    :goto_13
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 651
    const-string/jumbo v2, "param-meta-author"

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 652
    const-string/jumbo v2, "param-meta-transcoding"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 653
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_53

    .line 654
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v3, "param-meta-recording-mode"

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set recording mode for NDE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_53
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v2, v2, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 659
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v2, v2, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    const-string/jumbo v3, "param-meta-brand-model-name"

    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_67
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v2

    const-string/jumbo v3, "level"

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 662
    const-string/jumbo v4, "video/hevc"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 663
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 664
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 663
    invoke-virtual {p1, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_cb

    .line 666
    :cond_87
    nop

    .line 667
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/16 v4, 0x500

    if-ne v2, v4, :cond_91

    const/16 v2, 0x200

    goto :goto_93

    .line 668
    :cond_91
    const/16 v2, 0x1000

    .line 666
    :goto_93
    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 669
    const-string v2, "csd-0"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 670
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 671
    .local v3, "csd":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_cb

    .line 672
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 673
    .local v5, "buffer":[B
    array-length v6, v5

    invoke-virtual {v3, v5, v1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 674
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/4 v7, 0x7

    if-ne v6, v4, :cond_b8

    .line 675
    const/16 v4, 0x1f

    aput-byte v4, v5, v7

    goto :goto_bc

    .line 677
    :cond_b8
    const/16 v4, 0x29

    aput-byte v4, v5, v7

    .line 679
    :goto_bc
    array-length v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 680
    .local v4, "csdTemp":Ljava/nio/ByteBuffer;
    array-length v6, v5

    invoke-virtual {v4, v5, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 681
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 682
    invoke-virtual {p1, v2, v4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 686
    .end local v3    # "csd":Ljava/nio/ByteBuffer;
    .end local v4    # "csdTemp":Ljava/nio/ByteBuffer;
    .end local v5    # "buffer":[B
    :cond_cb
    :goto_cb
    return-object p1
.end method

.method private checkTrimAudioStartPos()V
    .registers 18

    .line 609
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 610
    .local v1, "prevVideoStartTime":J
    iget-wide v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_1c

    .line 611
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v7, v8, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 612
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 614
    :cond_1c
    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    const-string v7, "TranscodeLib"

    if-eqz v3, :cond_d5

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v3, v8, v1

    if-eqz v3, :cond_d5

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v3, v8, v5

    if-lez v3, :cond_d5

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkTrimAudfioStartPos prev : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ~ "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/transcode/util/SEFHelper;->getConvertedTime(J)J

    move-result-wide v9

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/transcode/util/SEFHelper;->getConvertedTime(J)J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 617
    .local v9, "diffUs":J
    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    sub-long/2addr v11, v9

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    .line 618
    .local v11, "endMs":J
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v15, 0x1

    if-eq v3, v15, :cond_a9

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v15, 0x2

    if-eq v3, v15, :cond_a9

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v15, 0xc

    if-eq v3, v15, :cond_a9

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v15, 0x15

    if-eq v3, v15, :cond_a9

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v15, 0x13

    if-ne v3, v15, :cond_82

    goto :goto_a9

    .line 624
    :cond_82
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSuperSlow()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 625
    mul-long/2addr v13, v11

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v13

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_b2

    .line 626
    :cond_92
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v15, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    invoke-virtual {v0, v3, v15}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(II)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 627
    mul-long/2addr v13, v11

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v13

    const-wide/16 v15, 0x2

    div-long/2addr v13, v15

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_b2

    .line 623
    :cond_a9
    :goto_a9
    mul-long/2addr v13, v11

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v13

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 629
    :cond_b2
    :goto_b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkTrimAudfioStartPos after : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .end local v9    # "diffUs":J
    .end local v11    # "endMs":J
    goto :goto_ed

    .line 631
    :cond_d5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Video  section: Current position: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :goto_ed
    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v3, :cond_14c

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v3, v8, v5

    if-eqz v3, :cond_14c

    .line 635
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v5, v6, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 636
    :goto_fe
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_124

    .line 637
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_11c

    .line 640
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_fe

    .line 638
    :cond_11c
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid File!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 642
    :cond_124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio Transcode section: Current position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 643
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTrimAudioStartUs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 642
    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_14c
    return-void
.end method

.method private checkTrimVideoStartPointChanged()V
    .registers 12

    .line 325
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    const/4 v2, 0x1

    if-eqz v0, :cond_67

    .line 326
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRewritable:Z

    if-eqz v0, :cond_70

    .line 327
    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 328
    .local v3, "prevVideoStartTime":J
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 330
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    .line 333
    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 334
    .local v5, "prevEndTime":J
    iget-wide v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    iget-wide v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v9, v3, v9

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change end time for rewrite mode prev : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " new : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    .line 338
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 339
    const-string v0, "Abandon Rewrite. Switch to Rewrite mode."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .end local v3    # "prevVideoStartTime":J
    .end local v5    # "prevEndTime":J
    goto :goto_70

    .line 342
    :cond_67
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    .line 343
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 344
    const-string v0, "Start point has not been updated!"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_70
    :goto_70
    return-void
.end method

.method private checkVideoCodec(IIZ)Z
    .registers 10
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "isRewrite"    # Z

    .line 1132
    const/4 v0, 0x0

    .line 1134
    .local v0, "error":I
    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-nez p3, :cond_4e

    .line 1135
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v5, v5, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-static {v3, v4, v5, p1, p2}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedResolution(Landroid/media/MediaFormat;IIII)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 1137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSupportedResolution  Error appear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    return v1

    .line 1141
    :cond_2e
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v3}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedCodecType(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 1142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSupportedCodecType video  Error appear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    return v1

    .line 1147
    :cond_4e
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    if-lez v3, :cond_a1

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    if-gtz v3, :cond_5b

    goto :goto_a1

    .line 1153
    :cond_5b
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 1154
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 1155
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_8f

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowFast()Z

    move-result v1

    if-eqz v1, :cond_8f

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    if-ne v1, p1, :cond_8f

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    if-ne v1, p2, :cond_8f

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 1157
    const-string/jumbo v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 1158
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 1159
    const-string v1, "Slowmotion Converting case  mSMConvert"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    return v3

    .line 1162
    :cond_8f
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v1, :cond_a0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 1163
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 1164
    const-string v1, "Slowmotion V2 transcoding case mSMEncode"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    :cond_a0
    return v3

    .line 1148
    :cond_a1
    :goto_a1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolution Error appear : width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    return v1
.end method

.method private createAudiosolution()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1508
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v0, :cond_10

    .line 1510
    :cond_8
    :try_start_8
    new-instance v0, Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/AudioSolution;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_f} :catch_11

    .line 1513
    nop

    .line 1515
    :cond_10
    return-void

    .line 1511
    :catch_11
    move-exception v0

    .line 1512
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a valid audio solution."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findAtom(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 25
    .param p0, "srcMediaPath"    # Ljava/lang/String;
    .param p1, "atomToHunt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1181
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1182
    .local v3, "ret":Z
    const/4 v4, 0x0

    const-string v5, "TranscodeLib"

    if-nez v1, :cond_10

    .line 1183
    const-string v0, "findAtom : filepath is null"

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    return v4

    .line 1186
    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 1187
    .local v6, "file":Ljava/io/File;
    const/4 v0, 0x4

    new-array v7, v0, [B

    .line 1188
    .local v7, "atomSizeBuf":[B
    new-array v8, v0, [B

    .line 1189
    .local v8, "atomNameBuf":[B
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 1190
    .local v9, "fileSize":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file size: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string/jumbo v0, "stbl"

    const-string/jumbo v11, "trak"

    const-string/jumbo v12, "mdia"

    const-string/jumbo v13, "minf"

    const-string/jumbo v14, "moov"

    filled-new-array {v12, v13, v14, v0, v11}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 1194
    .local v11, "parentContainer":[Ljava/lang/String;
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v12, "r"

    invoke-direct {v0, v6, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v0

    .line 1195
    .local v12, "fileObj":Ljava/io/RandomAccessFile;
    const-wide/16 v13, 0x0

    .line 1197
    .local v13, "filePointer":J
    :goto_54
    cmp-long v0, v13, v9

    if-gez v0, :cond_1c1

    .line 1199
    :try_start_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "filePointer: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_71} :catch_7a
    .catchall {:try_start_58 .. :try_end_71} :catchall_72

    .line 1203
    goto :goto_7e

    .line 1194
    .end local v13    # "filePointer":J
    :catchall_72
    move-exception v0

    move-object v1, v0

    move/from16 v17, v3

    move-object/from16 v18, v6

    goto/16 :goto_1b7

    .line 1201
    .restart local v13    # "filePointer":J
    :catch_7a
    move-exception v0

    .line 1202
    .local v0, "e1":Ljava/io/IOException;
    :try_start_7b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1204
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_7e
    array-length v0, v7

    invoke-virtual {v12, v7, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_1b1

    const-string v15, "file read is reached to end of the file"

    if-gez v0, :cond_8a

    .line 1205
    :try_start_87
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_72

    .line 1207
    :cond_8a
    :try_start_8a
    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 1210
    .local v18, "atomSize":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Atom Size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_9b
    .catchall {:try_start_8a .. :try_end_9b} :catchall_1b1

    move/from16 v17, v3

    move-wide/from16 v3, v18

    .end local v18    # "atomSize":J
    .local v3, "atomSize":J
    .local v17, "ret":Z
    :try_start_9f
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    array-length v0, v8

    const/4 v1, 0x0

    invoke-virtual {v12, v8, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_b0
    .catchall {:try_start_9f .. :try_end_b0} :catchall_1ac

    if-gez v0, :cond_bc

    .line 1212
    :try_start_b2
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b6

    goto :goto_bc

    .line 1194
    .end local v3    # "atomSize":J
    .end local v13    # "filePointer":J
    :catchall_b6
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v6

    goto/16 :goto_1b7

    .line 1215
    .restart local v3    # "atomSize":J
    .restart local v13    # "filePointer":J
    :cond_bc
    :goto_bc
    :try_start_bc
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 1216
    .local v0, "atomName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c6
    .catchall {:try_start_bc .. :try_end_c6} :catchall_1ac

    move-object/from16 v18, v6

    .end local v6    # "file":Ljava/io/File;
    .local v18, "file":Ljava/io/File;
    :try_start_c8
    const-string v6, "Atom Box: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-static {v11, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 1219
    .local v1, "tmpAtomPosition":I
    const-wide/16 v19, 0x8

    if-ltz v1, :cond_105

    .line 1220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found parent: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " move to : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    add-long v13, v13, v19

    goto/16 :goto_19e

    .line 1223
    :cond_105
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_125

    .line 1224
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const/4 v5, 0x1

    .line 1226
    .end local v17    # "ret":Z
    .local v5, "ret":Z
    move v3, v5

    goto/16 :goto_1c5

    .line 1228
    .end local v5    # "ret":Z
    .restart local v17    # "ret":Z
    :cond_125
    const-wide/16 v21, 0x1

    cmp-long v6, v3, v21

    if-nez v6, :cond_16a

    .line 1229
    move-object v6, v0

    move/from16 v21, v1

    .end local v0    # "atomName":Ljava/lang/String;
    .end local v1    # "tmpAtomPosition":I
    .local v6, "atomName":Ljava/lang/String;
    .local v21, "tmpAtomPosition":I
    add-long v0, v13, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1230
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 1231
    .local v0, "atomLargeSizeBuf":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_142

    .line 1232
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :cond_142
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 1235
    .local v1, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    move-wide/from16 v19, v15

    .line 1236
    .local v19, "atomLargeSize":J
    move-wide v15, v3

    move-wide/from16 v2, v19

    .end local v3    # "atomSize":J
    .end local v19    # "atomLargeSize":J
    .local v2, "atomLargeSize":J
    .local v15, "atomSize":J
    add-long/2addr v13, v2

    .line 1237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    .end local v0    # "atomLargeSizeBuf":[B
    .local v20, "atomLargeSizeBuf":[B
    const-string v0, "64bit: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    .end local v1    # "atomTmpLargeSize":Ljava/math/BigInteger;
    .end local v2    # "atomLargeSize":J
    .end local v20    # "atomLargeSizeBuf":[B
    goto :goto_19e

    .end local v6    # "atomName":Ljava/lang/String;
    .end local v15    # "atomSize":J
    .end local v21    # "tmpAtomPosition":I
    .local v0, "atomName":Ljava/lang/String;
    .local v1, "tmpAtomPosition":I
    .restart local v3    # "atomSize":J
    :cond_16a
    move-object v6, v0

    move/from16 v21, v1

    move-wide v15, v3

    .end local v0    # "atomName":Ljava/lang/String;
    .end local v1    # "tmpAtomPosition":I
    .end local v3    # "atomSize":J
    .restart local v6    # "atomName":Ljava/lang/String;
    .restart local v15    # "atomSize":J
    .restart local v21    # "tmpAtomPosition":I
    const-wide/16 v0, 0x0

    cmp-long v0, v15, v0

    if-nez v0, :cond_17b

    .line 1239
    const-string v0, "filePointer does not go forward. Exit."

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const/4 v3, 0x0

    .line 1241
    .end local v17    # "ret":Z
    .local v3, "ret":Z
    goto :goto_1c5

    .line 1243
    .end local v3    # "ret":Z
    .restart local v17    # "ret":Z
    :cond_17b
    add-long/2addr v13, v15

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "move: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " atomsize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide v1, v15

    .end local v15    # "atomSize":J
    .local v1, "atomSize":J
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19e
    .catchall {:try_start_c8 .. :try_end_19e} :catchall_1a9

    .line 1248
    .end local v1    # "atomSize":J
    .end local v6    # "atomName":Ljava/lang/String;
    .end local v21    # "tmpAtomPosition":I
    :goto_19e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v6, v18

    const/4 v4, 0x0

    goto/16 :goto_54

    .line 1194
    .end local v13    # "filePointer":J
    :catchall_1a9
    move-exception v0

    move-object v1, v0

    goto :goto_1b7

    .end local v18    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :catchall_1ac
    move-exception v0

    move-object/from16 v18, v6

    move-object v1, v0

    .end local v6    # "file":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    goto :goto_1b7

    .end local v17    # "ret":Z
    .end local v18    # "file":Ljava/io/File;
    .restart local v3    # "ret":Z
    .restart local v6    # "file":Ljava/io/File;
    :catchall_1b1
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v6

    move-object v1, v0

    .end local v3    # "ret":Z
    .end local v6    # "file":Ljava/io/File;
    .restart local v17    # "ret":Z
    .restart local v18    # "file":Ljava/io/File;
    :goto_1b7
    :try_start_1b7
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1ba
    .catchall {:try_start_1b7 .. :try_end_1ba} :catchall_1bb

    goto :goto_1c0

    :catchall_1bb
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c0
    throw v1

    .line 1197
    .end local v17    # "ret":Z
    .end local v18    # "file":Ljava/io/File;
    .restart local v3    # "ret":Z
    .restart local v6    # "file":Ljava/io/File;
    .restart local v13    # "filePointer":J
    :cond_1c1
    move/from16 v17, v3

    move-object/from16 v18, v6

    .line 1249
    .end local v6    # "file":Ljava/io/File;
    .end local v13    # "filePointer":J
    .restart local v18    # "file":Ljava/io/File;
    :goto_1c5
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 1250
    .end local v12    # "fileObj":Ljava/io/RandomAccessFile;
    return v3
.end method

.method private static findNalStartCode([BI)I
    .registers 5
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 1431
    array-length v0, p0

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 1432
    .local v0, "endIndex":I
    move v1, p1

    .local v1, "i":I
    :goto_6
    if-gt v1, v0, :cond_12

    .line 1433
    invoke-static {p0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1434
    return v1

    .line 1432
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1437
    .end local v1    # "i":I
    :cond_12
    const/4 v1, -0x1

    return v1
.end method

.method public static getMaxEncodingDuration(IIII)I
    .registers 12
    .param p0, "maxSizeKB"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "audioCodecType"    # I

    .line 1040
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoMinBitrate(II)I

    move-result v0

    .line 1046
    .local v0, "minBitRate":I
    int-to-float v1, p0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    .line 1049
    .local v1, "outFileSize":J
    const/4 v3, 0x1

    if-ne p3, v3, :cond_11

    .line 1050
    const/16 v3, 0x8

    .local v3, "audioBitRate":I
    goto :goto_20

    .line 1052
    .end local v3    # "audioBitRate":I
    :cond_11
    const/16 v3, 0x3e8

    if-ge p0, v3, :cond_1e

    const/16 v3, 0xc8

    if-ge p1, v3, :cond_1e

    if-ge p2, v3, :cond_1e

    .line 1053
    const/16 v3, 0x40

    .restart local v3    # "audioBitRate":I
    goto :goto_20

    .line 1055
    .end local v3    # "audioBitRate":I
    :cond_1e
    const/16 v3, 0x80

    .line 1058
    .restart local v3    # "audioBitRate":I
    :goto_20
    const-wide/16 v4, 0x8

    mul-long/2addr v4, v1

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    add-int v6, v0, v3

    int-to-long v6, v6

    div-long/2addr v4, v6

    .line 1060
    .local v4, "expectedDurationInMs":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " minBitRate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " audiocodec "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maxdur "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TranscodeLib"

    invoke-static {v7, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    return v6
.end method

.method private getVideoSampleSize(Landroid/media/MediaFormat;)I
    .registers 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 1518
    const-string/jumbo v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1519
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 1520
    .local v0, "width":I
    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 1521
    .local v1, "height":I
    const v2, 0x3f99999a    # 1.2f

    int-to-float v3, v0

    mul-float/2addr v3, v2

    int-to-float v2, v1

    mul-float/2addr v3, v2

    float-to-int v2, v3

    return v2

    .line 1523
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public static insertUuidFor360Video(Ljava/lang/String;Ljava/lang/String;)V
    .registers 53
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outputFilePath"    # Ljava/lang/String;

    .line 1262
    const-string/jumbo v0, "uuid"

    const-string/jumbo v1, "trak"

    const-string/jumbo v2, "moov"

    const-string/jumbo v3, "insertUuidFor360Video"

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    new-instance v3, Ljava/io/File;

    move-object/from16 v5, p0

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v3, "inputFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v6, "outputFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 1266
    .local v8, "size":J
    :try_start_23
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string/jumbo v11, "r"

    invoke-direct {v10, v3, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2b} :catch_2c7

    .line 1267
    .local v10, "inputRAF":Ljava/io/RandomAccessFile;
    :try_start_2b
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v12, "rws"

    invoke-direct {v11, v6, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_2b3

    .line 1268
    .local v11, "outputRAF":Ljava/io/RandomAccessFile;
    const-wide/16 v12, 0x0

    .line 1269
    .local v12, "filePointer":J
    const/4 v14, 0x3

    :try_start_36
    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/16 v16, 0x1

    aput-object v1, v14, v16

    const/4 v15, 0x2

    aput-object v0, v14, v15
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_29e

    .line 1270
    .local v14, "parentContainer":[Ljava/lang/String;
    const/4 v15, 0x4

    move-object/from16 v19, v3

    .end local v3    # "inputFile":Ljava/io/File;
    .local v19, "inputFile":Ljava/io/File;
    :try_start_45
    new-array v3, v15, [B

    .line 1271
    .local v3, "atomSizeBuf":[B
    new-array v5, v15, [B

    .line 1272
    .local v5, "atomNameBuf":[B
    :goto_49
    cmp-long v20, v12, v8

    if-gez v20, :cond_286

    .line 1273
    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1274
    array-length v15, v3

    const/4 v7, 0x0

    invoke-virtual {v10, v3, v7, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v15
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_297

    const-string/jumbo v7, "inputfile read is reached to end of the file"

    if-gez v15, :cond_67

    .line 1275
    :try_start_5b
    invoke-static {v4, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_67

    .line 1266
    .end local v3    # "atomSizeBuf":[B
    .end local v5    # "atomNameBuf":[B
    .end local v12    # "filePointer":J
    .end local v14    # "parentContainer":[Ljava/lang/String;
    :catchall_5f
    move-exception v0

    move-object v1, v0

    move-object/from16 v36, v6

    move-wide/from16 v29, v8

    goto/16 :goto_2a6

    .line 1277
    .restart local v3    # "atomSizeBuf":[B
    .restart local v5    # "atomNameBuf":[B
    .restart local v12    # "filePointer":J
    .restart local v14    # "parentContainer":[Ljava/lang/String;
    :cond_67
    :goto_67
    :try_start_67
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v21

    move-wide/from16 v23, v21

    .line 1280
    .local v23, "atomSize":J
    array-length v15, v5

    move-object/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "atomSizeBuf":[B
    .local v21, "atomSizeBuf":[B
    invoke-virtual {v10, v5, v3, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v15
    :try_end_75
    .catchall {:try_start_67 .. :try_end_75} :catchall_297

    if-gez v15, :cond_7a

    .line 1281
    :try_start_77
    invoke-static {v4, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_5f

    .line 1284
    :cond_7a
    :try_start_7a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 1285
    .local v3, "atomName":Ljava/lang/String;
    invoke-static {v14, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v15
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_297

    .line 1286
    .local v15, "tmpAtomPosition":I
    move-object/from16 v22, v5

    .end local v5    # "atomNameBuf":[B
    .local v22, "atomNameBuf":[B
    const-string v5, "64bit: "

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x1

    move-wide/from16 v29, v8

    .end local v8    # "size":J
    .local v29, "size":J
    const-wide/16 v31, 0x8

    if-ltz v15, :cond_220

    .line 1287
    :try_start_91
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_206

    .line 1288
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v33

    .line 1289
    .local v33, "outputFileSize":J
    const-wide/16 v35, 0x0

    .line 1290
    .local v35, "outputFilePointer":J
    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v2, v8, v17

    aput-object v1, v8, v16

    .line 1291
    .local v8, "outParentContainer":[Ljava/lang/String;
    move-object/from16 v37, v0

    const/4 v9, 0x4

    new-array v0, v9, [B

    .line 1292
    .local v0, "outputAtomSizeBuf":[B
    move-object/from16 v38, v1

    new-array v1, v9, [B

    move-object v9, v14

    move/from16 v39, v15

    move-wide/from16 v14, v35

    .line 1293
    .end local v15    # "tmpAtomPosition":I
    .end local v35    # "outputFilePointer":J
    .local v1, "outputAtomNameBuf":[B
    .local v9, "parentContainer":[Ljava/lang/String;
    .local v14, "outputFilePointer":J
    .local v39, "tmpAtomPosition":I
    :goto_b4
    cmp-long v35, v14, v33

    if-gez v35, :cond_1f5

    .line 1294
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1296
    move-object/from16 v35, v3

    .end local v3    # "atomName":Ljava/lang/String;
    .local v35, "atomName":Ljava/lang/String;
    array-length v3, v0
    :try_end_be
    .catchall {:try_start_91 .. :try_end_be} :catchall_21a

    move-object/from16 v36, v6

    const/4 v6, 0x0

    .end local v6    # "outputFile":Ljava/io/File;
    .local v36, "outputFile":Ljava/io/File;
    :try_start_c1
    invoke-virtual {v11, v0, v6, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3
    :try_end_c5
    .catchall {:try_start_c1 .. :try_end_c5} :catchall_267

    const-string/jumbo v6, "outputFile read is reached to end of the file"

    if-gez v3, :cond_cd

    .line 1297
    :try_start_ca
    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :cond_cd
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v40

    .line 1300
    .local v40, "outputAtomSize":J
    array-length v3, v1

    move-object/from16 v42, v0

    const/4 v0, 0x0

    .end local v0    # "outputAtomSizeBuf":[B
    .local v42, "outputAtomSizeBuf":[B
    invoke-virtual {v11, v1, v0, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-gez v3, :cond_de

    .line 1301
    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :cond_de
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1305
    .local v0, "outputAtomName":Ljava/lang/String;
    invoke-static {v8, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_e7
    .catchall {:try_start_ca .. :try_end_e7} :catchall_267

    .line 1306
    .local v3, "tmp":I
    const-string/jumbo v6, "outputfile read is reached to end of the file"

    if-ltz v3, :cond_196

    .line 1307
    :try_start_ec
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    const-wide/16 v44, 0xff

    if-eqz v43, :cond_12f

    .line 1308
    move-object/from16 v46, v0

    move-object/from16 v43, v1

    move-wide/from16 v0, v23

    .end local v1    # "outputAtomNameBuf":[B
    .end local v23    # "atomSize":J
    .local v0, "atomSize":J
    .local v43, "outputAtomNameBuf":[B
    .local v46, "outputAtomName":Ljava/lang/String;
    add-long v23, v40, v0

    .line 1310
    .local v23, "l":J
    move-object/from16 v47, v2

    const/4 v6, 0x4

    new-array v2, v6, [B

    .line 1311
    .local v2, "b":[B
    const/4 v6, 0x3

    .local v6, "i":I
    :goto_102
    if-ltz v6, :cond_119

    .line 1312
    move-object/from16 v48, v8

    move-object/from16 v49, v9

    .end local v8    # "outParentContainer":[Ljava/lang/String;
    .end local v9    # "parentContainer":[Ljava/lang/String;
    .local v48, "outParentContainer":[Ljava/lang/String;
    .local v49, "parentContainer":[Ljava/lang/String;
    and-long v8, v23, v44

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 1313
    const/16 v8, 0x8

    shr-long v23, v23, v8

    .line 1311
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v8, v48

    move-object/from16 v9, v49

    goto :goto_102

    .end local v48    # "outParentContainer":[Ljava/lang/String;
    .end local v49    # "parentContainer":[Ljava/lang/String;
    .restart local v8    # "outParentContainer":[Ljava/lang/String;
    .restart local v9    # "parentContainer":[Ljava/lang/String;
    :cond_119
    move-object/from16 v48, v8

    move-object/from16 v49, v9

    .line 1315
    .end local v6    # "i":I
    .end local v8    # "outParentContainer":[Ljava/lang/String;
    .end local v9    # "parentContainer":[Ljava/lang/String;
    .restart local v48    # "outParentContainer":[Ljava/lang/String;
    .restart local v49    # "parentContainer":[Ljava/lang/String;
    move-wide v8, v14

    .line 1316
    .local v8, "position":J
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1317
    array-length v6, v2

    move/from16 v50, v3

    const/4 v3, 0x0

    .end local v3    # "tmp":I
    .local v50, "tmp":I
    invoke-virtual {v11, v2, v3, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1318
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1319
    add-long v14, v14, v31

    .line 1320
    .end local v2    # "b":[B
    .end local v8    # "position":J
    .end local v23    # "l":J
    goto/16 :goto_1e3

    .line 1321
    .end local v43    # "outputAtomNameBuf":[B
    .end local v46    # "outputAtomName":Ljava/lang/String;
    .end local v48    # "outParentContainer":[Ljava/lang/String;
    .end local v49    # "parentContainer":[Ljava/lang/String;
    .end local v50    # "tmp":I
    .local v0, "outputAtomName":Ljava/lang/String;
    .restart local v1    # "outputAtomNameBuf":[B
    .restart local v3    # "tmp":I
    .local v8, "outParentContainer":[Ljava/lang/String;
    .restart local v9    # "parentContainer":[Ljava/lang/String;
    .local v23, "atomSize":J
    :cond_12f
    move-object/from16 v46, v0

    move-object/from16 v43, v1

    move-object/from16 v47, v2

    move/from16 v50, v3

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-wide/from16 v0, v23

    .end local v1    # "outputAtomNameBuf":[B
    .end local v3    # "tmp":I
    .end local v8    # "outParentContainer":[Ljava/lang/String;
    .end local v9    # "parentContainer":[Ljava/lang/String;
    .end local v23    # "atomSize":J
    .local v0, "atomSize":J
    .restart local v43    # "outputAtomNameBuf":[B
    .restart local v46    # "outputAtomName":Ljava/lang/String;
    .restart local v48    # "outParentContainer":[Ljava/lang/String;
    .restart local v49    # "parentContainer":[Ljava/lang/String;
    .restart local v50    # "tmp":I
    add-long v23, v40, v0

    .line 1323
    .local v23, "l":J
    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 1324
    .local v3, "b":[B
    const/4 v5, 0x3

    .local v5, "i":I
    :goto_143
    if-ltz v5, :cond_152

    .line 1325
    and-long v8, v23, v44

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 1326
    const/16 v8, 0x8

    shr-long v23, v23, v8

    .line 1324
    add-int/lit8 v5, v5, -0x1

    goto :goto_143

    .line 1328
    .end local v5    # "i":I
    :cond_152
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1329
    array-length v5, v3

    const/4 v8, 0x0

    invoke-virtual {v11, v3, v8, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1330
    add-long v8, v14, v40

    .line 1331
    .local v8, "positionAudio":J
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1332
    move-object v5, v3

    .end local v3    # "b":[B
    .local v5, "b":[B
    sub-long v2, v33, v8

    .line 1333
    .local v2, "audioSize":J
    move-object/from16 v18, v5

    .end local v5    # "b":[B
    .local v18, "b":[B
    long-to-int v5, v2

    new-array v5, v5, [B

    .line 1334
    .local v5, "dataAudio":[B
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1335
    move-wide/from16 v25, v2

    .end local v2    # "audioSize":J
    .local v25, "audioSize":J
    array-length v2, v5

    const/4 v3, 0x0

    invoke-virtual {v11, v5, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    if-gez v2, :cond_177

    .line 1336
    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    :cond_177
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1339
    long-to-int v2, v0

    new-array v2, v2, [B

    .line 1340
    .local v2, "dataUuid":[B
    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1341
    array-length v3, v2

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-gez v3, :cond_18b

    .line 1342
    invoke-static {v4, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    :cond_18b
    array-length v3, v2

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v6, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1345
    array-length v3, v5

    invoke-virtual {v11, v5, v6, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1346
    goto/16 :goto_216

    .line 1349
    .end local v2    # "dataUuid":[B
    .end local v5    # "dataAudio":[B
    .end local v18    # "b":[B
    .end local v25    # "audioSize":J
    .end local v43    # "outputAtomNameBuf":[B
    .end local v46    # "outputAtomName":Ljava/lang/String;
    .end local v48    # "outParentContainer":[Ljava/lang/String;
    .end local v49    # "parentContainer":[Ljava/lang/String;
    .end local v50    # "tmp":I
    .local v0, "outputAtomName":Ljava/lang/String;
    .restart local v1    # "outputAtomNameBuf":[B
    .local v3, "tmp":I
    .local v8, "outParentContainer":[Ljava/lang/String;
    .restart local v9    # "parentContainer":[Ljava/lang/String;
    .local v23, "atomSize":J
    :cond_196
    move-object/from16 v46, v0

    move-object/from16 v43, v1

    move-object/from16 v47, v2

    move/from16 v50, v3

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-wide/from16 v0, v23

    .end local v1    # "outputAtomNameBuf":[B
    .end local v3    # "tmp":I
    .end local v8    # "outParentContainer":[Ljava/lang/String;
    .end local v9    # "parentContainer":[Ljava/lang/String;
    .end local v23    # "atomSize":J
    .local v0, "atomSize":J
    .restart local v43    # "outputAtomNameBuf":[B
    .restart local v46    # "outputAtomName":Ljava/lang/String;
    .restart local v48    # "outParentContainer":[Ljava/lang/String;
    .restart local v49    # "parentContainer":[Ljava/lang/String;
    .restart local v50    # "tmp":I
    cmp-long v2, v40, v27

    if-nez v2, :cond_1dc

    .line 1350
    add-long v2, v14, v31

    invoke-virtual {v11, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1351
    const/16 v2, 0x8

    new-array v3, v2, [B

    move-object v2, v3

    .line 1352
    .local v2, "outputAtomLargeSizeBuf":[B
    array-length v3, v2

    const/4 v8, 0x0

    invoke-virtual {v11, v2, v8, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-gez v3, :cond_1bd

    .line 1354
    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    :cond_1bd
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 1358
    .local v3, "outputAtomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    .line 1359
    .local v8, "outputAtomLargeSize":J
    add-long/2addr v14, v8

    .line 1360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    .end local v2    # "outputAtomLargeSizeBuf":[B
    .end local v3    # "outputAtomTmpLargeSize":Ljava/math/BigInteger;
    .end local v8    # "outputAtomLargeSize":J
    goto :goto_1e3

    :cond_1dc
    cmp-long v2, v40, v25

    if-nez v2, :cond_1e1

    .line 1362
    goto :goto_216

    .line 1364
    :cond_1e1
    add-long v14, v14, v40

    .line 1367
    .end local v40    # "outputAtomSize":J
    .end local v46    # "outputAtomName":Ljava/lang/String;
    .end local v50    # "tmp":I
    :goto_1e3
    move-wide/from16 v23, v0

    move-object/from16 v3, v35

    move-object/from16 v6, v36

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v47

    move-object/from16 v8, v48

    move-object/from16 v9, v49

    goto/16 :goto_b4

    .line 1293
    .end local v35    # "atomName":Ljava/lang/String;
    .end local v36    # "outputFile":Ljava/io/File;
    .end local v42    # "outputAtomSizeBuf":[B
    .end local v43    # "outputAtomNameBuf":[B
    .end local v48    # "outParentContainer":[Ljava/lang/String;
    .end local v49    # "parentContainer":[Ljava/lang/String;
    .local v0, "outputAtomSizeBuf":[B
    .restart local v1    # "outputAtomNameBuf":[B
    .local v3, "atomName":Ljava/lang/String;
    .local v6, "outputFile":Ljava/io/File;
    .local v8, "outParentContainer":[Ljava/lang/String;
    .restart local v9    # "parentContainer":[Ljava/lang/String;
    .restart local v23    # "atomSize":J
    :cond_1f5
    move-object/from16 v42, v0

    move-object/from16 v43, v1

    move-object/from16 v47, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-wide/from16 v0, v23

    .end local v1    # "outputAtomNameBuf":[B
    .end local v3    # "atomName":Ljava/lang/String;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "outParentContainer":[Ljava/lang/String;
    .end local v9    # "parentContainer":[Ljava/lang/String;
    .end local v23    # "atomSize":J
    .local v0, "atomSize":J
    .restart local v35    # "atomName":Ljava/lang/String;
    .restart local v36    # "outputFile":Ljava/io/File;
    .restart local v42    # "outputAtomSizeBuf":[B
    .restart local v43    # "outputAtomNameBuf":[B
    .restart local v48    # "outParentContainer":[Ljava/lang/String;
    .restart local v49    # "parentContainer":[Ljava/lang/String;
    goto :goto_216

    .line 1287
    .end local v0    # "atomSize":J
    .end local v33    # "outputFileSize":J
    .end local v35    # "atomName":Ljava/lang/String;
    .end local v36    # "outputFile":Ljava/io/File;
    .end local v39    # "tmpAtomPosition":I
    .end local v42    # "outputAtomSizeBuf":[B
    .end local v43    # "outputAtomNameBuf":[B
    .end local v48    # "outParentContainer":[Ljava/lang/String;
    .end local v49    # "parentContainer":[Ljava/lang/String;
    .restart local v3    # "atomName":Ljava/lang/String;
    .restart local v6    # "outputFile":Ljava/io/File;
    .local v14, "parentContainer":[Ljava/lang/String;
    .restart local v15    # "tmpAtomPosition":I
    .restart local v23    # "atomSize":J
    :cond_206
    move-object/from16 v37, v0

    move-object/from16 v38, v1

    move-object/from16 v47, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v6

    move-object/from16 v49, v14

    move/from16 v39, v15

    move-wide/from16 v0, v23

    .line 1369
    .end local v3    # "atomName":Ljava/lang/String;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v14    # "parentContainer":[Ljava/lang/String;
    .end local v15    # "tmpAtomPosition":I
    .end local v23    # "atomSize":J
    .restart local v0    # "atomSize":J
    .restart local v35    # "atomName":Ljava/lang/String;
    .restart local v36    # "outputFile":Ljava/io/File;
    .restart local v39    # "tmpAtomPosition":I
    .restart local v49    # "parentContainer":[Ljava/lang/String;
    :goto_216
    add-long v12, v12, v31

    const/4 v6, 0x0

    goto :goto_271

    .line 1266
    .end local v0    # "atomSize":J
    .end local v12    # "filePointer":J
    .end local v21    # "atomSizeBuf":[B
    .end local v22    # "atomNameBuf":[B
    .end local v35    # "atomName":Ljava/lang/String;
    .end local v36    # "outputFile":Ljava/io/File;
    .end local v39    # "tmpAtomPosition":I
    .end local v49    # "parentContainer":[Ljava/lang/String;
    .restart local v6    # "outputFile":Ljava/io/File;
    :catchall_21a
    move-exception v0

    move-object/from16 v36, v6

    move-object v1, v0

    .end local v6    # "outputFile":Ljava/io/File;
    .restart local v36    # "outputFile":Ljava/io/File;
    goto/16 :goto_2a6

    .line 1371
    .end local v36    # "outputFile":Ljava/io/File;
    .restart local v3    # "atomName":Ljava/lang/String;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v12    # "filePointer":J
    .restart local v14    # "parentContainer":[Ljava/lang/String;
    .restart local v15    # "tmpAtomPosition":I
    .restart local v21    # "atomSizeBuf":[B
    .restart local v22    # "atomNameBuf":[B
    .restart local v23    # "atomSize":J
    :cond_220
    move-object/from16 v37, v0

    move-object/from16 v38, v1

    move-object/from16 v47, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v6

    move-object/from16 v49, v14

    move/from16 v39, v15

    move-wide/from16 v0, v23

    .end local v3    # "atomName":Ljava/lang/String;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v14    # "parentContainer":[Ljava/lang/String;
    .end local v15    # "tmpAtomPosition":I
    .end local v23    # "atomSize":J
    .restart local v0    # "atomSize":J
    .restart local v35    # "atomName":Ljava/lang/String;
    .restart local v36    # "outputFile":Ljava/io/File;
    .restart local v39    # "tmpAtomPosition":I
    .restart local v49    # "parentContainer":[Ljava/lang/String;
    cmp-long v2, v0, v27

    if-nez v2, :cond_26a

    .line 1372
    add-long v2, v12, v31

    invoke-virtual {v10, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1373
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 1374
    .local v2, "atomLargeSizeBuf":[B
    array-length v3, v2

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-gez v3, :cond_248

    .line 1375
    invoke-static {v4, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    :cond_248
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 1378
    .local v3, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    .line 1379
    .local v7, "atomLargeSize":J
    add-long/2addr v12, v7

    .line 1380
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_266
    .catchall {:try_start_ec .. :try_end_266} :catchall_267

    .line 1381
    .end local v2    # "atomLargeSizeBuf":[B
    .end local v3    # "atomTmpLargeSize":Ljava/math/BigInteger;
    .end local v7    # "atomLargeSize":J
    goto :goto_271

    .line 1266
    .end local v0    # "atomSize":J
    .end local v12    # "filePointer":J
    .end local v21    # "atomSizeBuf":[B
    .end local v22    # "atomNameBuf":[B
    .end local v35    # "atomName":Ljava/lang/String;
    .end local v39    # "tmpAtomPosition":I
    .end local v49    # "parentContainer":[Ljava/lang/String;
    :catchall_267
    move-exception v0

    move-object v1, v0

    goto :goto_2a6

    .line 1381
    .restart local v0    # "atomSize":J
    .restart local v12    # "filePointer":J
    .restart local v21    # "atomSizeBuf":[B
    .restart local v22    # "atomNameBuf":[B
    .restart local v35    # "atomName":Ljava/lang/String;
    .restart local v39    # "tmpAtomPosition":I
    .restart local v49    # "parentContainer":[Ljava/lang/String;
    :cond_26a
    const/4 v6, 0x0

    cmp-long v2, v0, v25

    if-nez v2, :cond_270

    .line 1382
    goto :goto_290

    .line 1384
    :cond_270
    add-long/2addr v12, v0

    .line 1387
    .end local v0    # "atomSize":J
    .end local v35    # "atomName":Ljava/lang/String;
    .end local v39    # "tmpAtomPosition":I
    :goto_271
    move-object/from16 v7, p1

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move-wide/from16 v8, v29

    move-object/from16 v6, v36

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v47

    move-object/from16 v14, v49

    const/4 v15, 0x4

    goto/16 :goto_49

    .line 1272
    .end local v21    # "atomSizeBuf":[B
    .end local v22    # "atomNameBuf":[B
    .end local v29    # "size":J
    .end local v36    # "outputFile":Ljava/io/File;
    .end local v49    # "parentContainer":[Ljava/lang/String;
    .local v3, "atomSizeBuf":[B
    .local v5, "atomNameBuf":[B
    .restart local v6    # "outputFile":Ljava/io/File;
    .local v8, "size":J
    .restart local v14    # "parentContainer":[Ljava/lang/String;
    :cond_286
    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 v36, v6

    move-wide/from16 v29, v8

    move-object/from16 v49, v14

    .line 1388
    .end local v3    # "atomSizeBuf":[B
    .end local v5    # "atomNameBuf":[B
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .end local v12    # "filePointer":J
    .end local v14    # "parentContainer":[Ljava/lang/String;
    .restart local v29    # "size":J
    .restart local v36    # "outputFile":Ljava/io/File;
    :goto_290
    :try_start_290
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_293
    .catchall {:try_start_290 .. :try_end_293} :catchall_2b0

    .end local v11    # "outputRAF":Ljava/io/RandomAccessFile;
    :try_start_293
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_296
    .catch Ljava/io/IOException; {:try_start_293 .. :try_end_296} :catch_2c5

    .line 1390
    .end local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    goto :goto_2d1

    .line 1266
    .end local v29    # "size":J
    .end local v36    # "outputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    .restart local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .restart local v11    # "outputRAF":Ljava/io/RandomAccessFile;
    :catchall_297
    move-exception v0

    move-object/from16 v36, v6

    move-wide/from16 v29, v8

    move-object v1, v0

    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .restart local v29    # "size":J
    .restart local v36    # "outputFile":Ljava/io/File;
    goto :goto_2a6

    .end local v19    # "inputFile":Ljava/io/File;
    .end local v29    # "size":J
    .end local v36    # "outputFile":Ljava/io/File;
    .local v3, "inputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    :catchall_29e
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v36, v6

    move-wide/from16 v29, v8

    move-object v1, v0

    .end local v3    # "inputFile":Ljava/io/File;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .restart local v19    # "inputFile":Ljava/io/File;
    .restart local v29    # "size":J
    .restart local v36    # "outputFile":Ljava/io/File;
    :goto_2a6
    :try_start_2a6
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2a9
    .catchall {:try_start_2a6 .. :try_end_2a9} :catchall_2aa

    goto :goto_2af

    :catchall_2aa
    move-exception v0

    move-object v2, v0

    :try_start_2ac
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .end local v19    # "inputFile":Ljava/io/File;
    .end local v29    # "size":J
    .end local v36    # "outputFile":Ljava/io/File;
    .end local p0    # "inputFilePath":Ljava/lang/String;
    .end local p1    # "outputFilePath":Ljava/lang/String;
    :goto_2af
    throw v1
    :try_end_2b0
    .catchall {:try_start_2ac .. :try_end_2b0} :catchall_2b0

    .end local v11    # "outputRAF":Ljava/io/RandomAccessFile;
    .restart local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .restart local v19    # "inputFile":Ljava/io/File;
    .restart local v29    # "size":J
    .restart local v36    # "outputFile":Ljava/io/File;
    .restart local p0    # "inputFilePath":Ljava/lang/String;
    .restart local p1    # "outputFilePath":Ljava/lang/String;
    :catchall_2b0
    move-exception v0

    move-object v1, v0

    goto :goto_2bb

    .end local v19    # "inputFile":Ljava/io/File;
    .end local v29    # "size":J
    .end local v36    # "outputFile":Ljava/io/File;
    .restart local v3    # "inputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    :catchall_2b3
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v36, v6

    move-wide/from16 v29, v8

    move-object v1, v0

    .end local v3    # "inputFile":Ljava/io/File;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .restart local v19    # "inputFile":Ljava/io/File;
    .restart local v29    # "size":J
    .restart local v36    # "outputFile":Ljava/io/File;
    :goto_2bb
    :try_start_2bb
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2be
    .catchall {:try_start_2bb .. :try_end_2be} :catchall_2bf

    goto :goto_2c4

    :catchall_2bf
    move-exception v0

    move-object v2, v0

    :try_start_2c1
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v19    # "inputFile":Ljava/io/File;
    .end local v29    # "size":J
    .end local v36    # "outputFile":Ljava/io/File;
    .end local p0    # "inputFilePath":Ljava/lang/String;
    .end local p1    # "outputFilePath":Ljava/lang/String;
    :goto_2c4
    throw v1
    :try_end_2c5
    .catch Ljava/io/IOException; {:try_start_2c1 .. :try_end_2c5} :catch_2c5

    .line 1388
    .end local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .restart local v19    # "inputFile":Ljava/io/File;
    .restart local v29    # "size":J
    .restart local v36    # "outputFile":Ljava/io/File;
    .restart local p0    # "inputFilePath":Ljava/lang/String;
    .restart local p1    # "outputFilePath":Ljava/lang/String;
    :catch_2c5
    move-exception v0

    goto :goto_2ce

    .end local v19    # "inputFile":Ljava/io/File;
    .end local v29    # "size":J
    .end local v36    # "outputFile":Ljava/io/File;
    .restart local v3    # "inputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    :catch_2c7
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v36, v6

    move-wide/from16 v29, v8

    .line 1389
    .end local v3    # "inputFile":Ljava/io/File;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v19    # "inputFile":Ljava/io/File;
    .restart local v29    # "size":J
    .restart local v36    # "outputFile":Ljava/io/File;
    :goto_2ce
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1391
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2d1
    return-void
.end method

.method private static isNalStartCode([BI)Z
    .registers 6
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 1419
    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_9

    .line 1420
    return v2

    .line 1422
    :cond_9
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_a
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v3, v1

    if-ge v0, v3, :cond_1b

    .line 1423
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_18

    .line 1424
    return v2

    .line 1422
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1427
    .end local v0    # "j":I
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1258
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1254
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private releaseAudioObjects()V
    .registers 5

    .line 910
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_1a

    .line 912
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 913
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 914
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    .line 917
    goto :goto_1a

    .line 915
    :catch_14
    move-exception v0

    .line 916
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception in releasing output audio encoder."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_31

    .line 922
    :try_start_1e
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 923
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 924
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_2b

    .line 927
    goto :goto_31

    .line 925
    :catch_2b
    move-exception v0

    .line 926
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Exception in releasing input audio decoder."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_43

    .line 932
    :try_start_35
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 933
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_3d

    .line 936
    goto :goto_43

    .line 934
    :catch_3d
    move-exception v0

    .line 935
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Exception in releasing audio extractor."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    return-void
.end method

.method private releaseHandleObjects()V
    .registers 7

    .line 955
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_18

    .line 956
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCDestroy(J)V

    .line 957
    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    .line 958
    const-string v0, " SRC release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :cond_18
    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2c

    .line 962
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPDestroy(J)V

    .line 963
    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    .line 964
    const-string v0, " VSP release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :cond_2c
    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_40

    .line 968
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderDeInit(J)Z

    .line 969
    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    .line 970
    const-string v0, " NAAC release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :cond_40
    return-void
.end method

.method private releaseMuxer()V
    .registers 4

    .line 941
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1e

    .line 943
    :try_start_4
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_d

    .line 944
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 946
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 947
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    .line 950
    goto :goto_1e

    .line 948
    :catch_16
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TranscodeLib"

    const-string v2, "Exception in releasing muxer."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    return-void
.end method

.method private releaseSurfaceObjects()V
    .registers 5

    .line 890
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_15

    .line 892
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->release()V

    .line 893
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 896
    goto :goto_15

    .line 894
    :catch_f
    move-exception v0

    .line 895
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception in releasing outputSurface."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    if-eqz v0, :cond_27

    .line 901
    :try_start_19
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    .line 902
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_21

    .line 905
    goto :goto_27

    .line 903
    :catch_21
    move-exception v0

    .line 904
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Exception in releasing input surface."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_27
    :goto_27
    return-void
.end method

.method private releaseVideoObjects()V
    .registers 6

    .line 855
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_42

    .line 857
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 858
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 859
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 860
    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_26
    .catchall {:try_start_8 .. :try_end_19} :catchall_24

    .line 864
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    goto :goto_36

    :catchall_24
    move-exception v0

    goto :goto_37

    .line 861
    :catch_26
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/Exception;
    :try_start_27
    const-string v4, "Exception in releasing output video encoder."

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    .line 864
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    .line 865
    :goto_36
    goto :goto_42

    .line 864
    :goto_37
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    .line 865
    throw v0

    .line 867
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_80

    .line 869
    :try_start_46
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 870
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 871
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 872
    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_57} :catch_64
    .catchall {:try_start_46 .. :try_end_57} :catchall_62

    .line 876
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    goto :goto_74

    :catchall_62
    move-exception v0

    goto :goto_75

    .line 873
    :catch_64
    move-exception v0

    .line 874
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_65
    const-string v4, "Exception in releasing input video decoder."

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_62

    .line 876
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    .line 877
    :goto_74
    goto :goto_80

    .line 876
    :goto_75
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    .line 877
    throw v0

    .line 879
    :cond_80
    :goto_80
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_92

    .line 881
    :try_start_84
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 882
    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8b} :catch_8c

    .line 885
    goto :goto_92

    .line 883
    :catch_8c
    move-exception v0

    .line 884
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Exception in releasing video extractor."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_92
    :goto_92
    return-void
.end method

.method private rewriteAudio(J)V
    .registers 11
    .param p1, "endTime"    # J

    .line 462
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 463
    .local v0, "dstBufA":Ljava/nio/ByteBuffer;
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 464
    .local v1, "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 466
    const/4 v2, 0x0

    .line 467
    .local v2, "sawEOSA":Z
    :goto_15
    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v4, :cond_84

    if-nez v2, :cond_84

    .line 468
    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 469
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 470
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const-string v5, "TranscodeLib"

    if-gez v4, :cond_35

    .line 471
    const-string/jumbo v4, "saw input EOS: Audio"

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v2, 0x1

    .line 473
    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_15

    .line 475
    :cond_35
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 476
    const-wide/16 v6, -0x1

    cmp-long v4, p1, v6

    if-eqz v4, :cond_51

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v6, p1

    if-lez v4, :cond_51

    .line 478
    const/4 v2, 0x1

    .line 479
    const-string/jumbo v4, "sawEOS: true: A"

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 481
    :cond_51
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 483
    :try_start_59
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    invoke-virtual {v4, v6, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_60
    .catch Ljava/lang/IllegalStateException; {:try_start_59 .. :try_end_60} :catch_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_60} :catch_61

    .line 486
    goto :goto_78

    .line 484
    :catch_61
    move-exception v4

    .line 485
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to writeSampleData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :goto_78
    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    .line 488
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_15

    .line 492
    :cond_84
    return-void
.end method

.method private rewriteVideo(JLcom/samsung/android/transcode/util/NalUnitParser;I)V
    .registers 25
    .param p1, "endTime"    # J
    .param p3, "firstNalUnit"    # Lcom/samsung/android/transcode/util/NalUnitParser;
    .param p4, "bufferSizeV"    # I

    .line 495
    move-object/from16 v1, p0

    invoke-static/range {p4 .. p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 496
    .local v2, "dstBufV":Ljava/nio/ByteBuffer;
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object v3, v0

    .line 497
    .local v3, "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 498
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    .line 499
    .local v5, "startPtsTimeUs":J
    const/4 v0, 0x0

    move-object/from16 v7, p3

    move v8, v0

    .line 501
    .end local p3    # "firstNalUnit":Lcom/samsung/android/transcode/util/NalUnitParser;
    .local v7, "firstNalUnit":Lcom/samsung/android/transcode/util/NalUnitParser;
    .local v8, "sawEOSV":Z
    :goto_1f
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_10d

    if-nez v8, :cond_10d

    .line 502
    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 503
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 504
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const-string v9, "TranscodeLib"

    if-gez v0, :cond_3f

    .line 505
    const-string/jumbo v0, "saw input EOS: Video"

    invoke-static {v9, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v8, 0x1

    .line 507
    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_1f

    .line 509
    :cond_3f
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    iput-wide v10, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 510
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 511
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 512
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    .line 514
    .local v10, "nextPresentationTimeUs":J
    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    const-wide/16 v14, 0x0

    if-eqz v0, :cond_6d

    .line 515
    move-wide/from16 v16, v5

    .end local v5    # "startPtsTimeUs":J
    .local v16, "startPtsTimeUs":J
    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v4, v10, v4

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .local v4, "frameDuration":J
    goto :goto_89

    .line 518
    .end local v4    # "frameDuration":J
    .end local v16    # "startPtsTimeUs":J
    .restart local v5    # "startPtsTimeUs":J
    :cond_6d
    move-wide/from16 v16, v5

    .end local v5    # "startPtsTimeUs":J
    .restart local v16    # "startPtsTimeUs":J
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_78

    .line 519
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v4, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    goto :goto_7c

    :cond_78
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v4, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    :goto_7c
    const-wide/16 v18, 0x3e8

    mul-long v4, v4, v18

    .line 520
    .local v4, "lastPtsUs":J
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v12, v4, v12

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-wide v4, v12

    .line 523
    .local v4, "frameDuration":J
    :goto_89
    const-wide/16 v12, -0x1

    cmp-long v0, p1, v12

    if-eqz v0, :cond_a0

    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v12, v4

    cmp-long v0, v12, p1

    if-ltz v0, :cond_a0

    .line 525
    const/4 v0, 0x1

    .line 526
    .end local v8    # "sawEOSV":Z
    .local v0, "sawEOSV":Z
    const-string/jumbo v6, "sawEOS: true: V"

    invoke-static {v9, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    const/4 v6, 0x0

    goto :goto_108

    .line 528
    .end local v0    # "sawEOSV":Z
    .restart local v8    # "sawEOSV":Z
    :cond_a0
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v12, v16

    if-ltz v0, :cond_107

    .line 530
    if-eqz v7, :cond_e1

    :try_start_a8
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e1

    .line 532
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser;

    invoke-direct {v0, v2}, Lcom/samsung/android/transcode/util/NalUnitParser;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findHDRStaticMeta()Z

    move-result v0

    if-nez v0, :cond_d2

    .line 533
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    sget-object v6, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v6

    invoke-virtual {v7, v2, v0, v6}, Lcom/samsung/android/transcode/util/NalUnitParser;->insertHDRStaticMeta(Ljava/nio/ByteBuffer;IZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 534
    .local v0, "newBuf":Ljava/nio/ByteBuffer;
    const-string v6, "add HDR static info"

    invoke-static {v9, v6}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v6, v12, v0, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 536
    .end local v0    # "newBuf":Ljava/nio/ByteBuffer;
    goto :goto_df

    .line 537
    :cond_d2
    const-string/jumbo v0, "has already static info"

    invoke-static {v9, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v6, v2, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 540
    :goto_df
    const/4 v7, 0x0

    goto :goto_e8

    .line 542
    :cond_e1
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v6, v2, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_e8
    .catch Ljava/lang/IllegalStateException; {:try_start_a8 .. :try_end_e8} :catch_e9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a8 .. :try_end_e8} :catch_e9

    .line 546
    :goto_e8
    goto :goto_100

    .line 544
    :catch_e9
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to writeSampleData "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_100
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v6, 0x0

    invoke-virtual {v1, v12, v13, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    goto :goto_108

    .line 528
    :cond_107
    const/4 v6, 0x0

    .line 551
    .end local v4    # "frameDuration":J
    .end local v10    # "nextPresentationTimeUs":J
    :goto_108
    move v4, v6

    move-wide/from16 v5, v16

    goto/16 :goto_1f

    .line 501
    .end local v16    # "startPtsTimeUs":J
    .restart local v5    # "startPtsTimeUs":J
    :cond_10d
    move-wide/from16 v16, v5

    .line 553
    .end local v5    # "startPtsTimeUs":J
    .restart local v16    # "startPtsTimeUs":J
    return-void
.end method

.method private supportConverter()Z
    .registers 3

    .line 1414
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HDR2SDR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V
    .registers 13
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "inputUri"    # Landroid/net/Uri;
    .param p7, "rewrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1442
    if-lez p2, :cond_129

    if-lez p3, :cond_129

    .line 1446
    if-eqz p1, :cond_120

    .line 1450
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_32

    .line 1451
    if-eqz p6, :cond_f

    if-eqz p5, :cond_f

    goto :goto_34

    .line 1452
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t use uri uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1456
    :cond_32
    if-eqz p4, :cond_117

    .line 1461
    :goto_34
    :try_start_34
    invoke-static {p4, p5, p6}, Lcom/samsung/android/transcode/info/MediaInfo;->getFileInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_3a} :catch_10d

    .line 1464
    nop

    .line 1465
    const/4 v0, 0x1

    invoke-static {p4, p5, p6, v0}, Lcom/samsung/android/transcode/info/MediaInfo;->getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 1466
    const/4 v0, 0x0

    invoke-static {p4, p5, p6, v0}, Lcom/samsung/android/transcode/info/MediaInfo;->getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioinfo:Landroid/media/MediaFormat;

    .line 1468
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {v0}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedFileFormat(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 1472
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {}, Lcom/samsung/android/transcode/info/MediaInfo;->getVideoFramerate()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    .line 1473
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    const-string/jumbo v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    .line 1474
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    .line 1475
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    .line 1476
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    if-eqz v0, :cond_80

    .line 1477
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {v0}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->getHDRMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    .line 1480
    :cond_80
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 1481
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mNumOfSVCLayers:I

    .line 1482
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/SEFHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    .line 1483
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v0, p4, p5, p6}, Lcom/samsung/android/transcode/util/SEFHelper;->initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    .line 1484
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    .line 1485
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(II)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1486
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    .line 1488
    :cond_b1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/transcode/util/SEFHelper;->checkSEFData(IIJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSEFData mSEFVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getRegionList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRegionList:Ljava/util/List;

    .line 1492
    :cond_e5
    invoke-direct {p0, p2, p3, p7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkVideoCodec(IIZ)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 1496
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    .line 1497
    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    .line 1498
    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    .line 1499
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_fa

    .line 1500
    iput-object p6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    .line 1501
    iput-object p5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    goto :goto_fc

    .line 1503
    :cond_fa
    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 1505
    :goto_fc
    return-void

    .line 1493
    :cond_fd
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1469
    :cond_105
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1462
    :catch_10d
    move-exception v0

    .line 1463
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid input file - can\'t get file info"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1457
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :cond_120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1443
    :cond_129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid output size width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputFileSize()I
    .registers 20

    .line 1077
    move-object/from16 v1, p0

    :try_start_2
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_f

    .line 1078
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    .local v0, "extractor":Landroid/media/MediaExtractor;
    goto :goto_15

    .line 1080
    .end local v0    # "extractor":Landroid/media/MediaExtractor;
    :cond_f
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    .line 1082
    .restart local v0    # "extractor":Landroid/media/MediaExtractor;
    :goto_15
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    .line 1084
    .local v2, "videoTrack":I
    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 1085
    .local v3, "inputFormat":Landroid/media/MediaFormat;
    iget-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 1086
    .local v4, "trimEndTime":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const-wide/16 v9, 0x3e8

    if-nez v8, :cond_52

    .line 1087
    iget-boolean v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v8, :cond_32

    .line 1088
    sget-object v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v11, v8, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v11, v9

    move-wide v4, v11

    .end local v4    # "trimEndTime":J
    .local v11, "trimEndTime":J
    goto :goto_39

    .line 1090
    .end local v11    # "trimEndTime":J
    .restart local v4    # "trimEndTime":J
    :cond_32
    const-string v8, "durationUs"

    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide v4, v11

    .line 1092
    :goto_39
    const-string v8, "TranscodeLib"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getOutputFileSize  trimEndTime was 0 but updated trimEndTime : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    :cond_52
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1099
    iget-wide v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    cmp-long v8, v11, v6

    if-ltz v8, :cond_89

    .line 1100
    const-string/jumbo v8, "video/avc"

    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 1101
    const v8, 0x3f666666    # 0.9f

    iput v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    .line 1104
    :cond_6b
    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    iget-wide v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    iget-wide v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v14, v4, v14

    div-long/2addr v14, v9

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    div-int/lit16 v8, v8, 0x3e8

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    .local v8, "outputVideBitRate":I
    goto :goto_a1

    .line 1108
    .end local v8    # "outputVideBitRate":I
    :cond_89
    new-instance v8, Lcom/samsung/android/transcode/info/ExportMediaInfo;

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iget v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 1110
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHDR10Plus()Z

    move-result v14

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/transcode/info/ExportMediaInfo;-><init>(IIILjava/lang/String;Z)V

    sget-object v9, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 1108
    invoke-static {v8, v9}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I

    move-result v8

    .line 1113
    .restart local v8    # "outputVideBitRate":I
    :goto_a1
    iget-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v9, v4, v9

    long-to-double v9, v9

    const-wide v11, 0x415e848000000000L    # 8000000.0

    div-double/2addr v9, v11

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    add-int/2addr v11, v8

    int-to-double v11, v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v13

    mul-double/2addr v9, v11

    double-to-int v9, v9

    .line 1116
    .local v9, "size":I
    iget-wide v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_ba} :catch_ce
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_ba} :catch_c8

    cmp-long v6, v10, v6

    if-nez v6, :cond_c7

    .line 1117
    int-to-double v6, v9

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v10

    double-to-int v6, v6

    return v6

    .line 1119
    :cond_c7
    return v9

    .line 1123
    .end local v0    # "extractor":Landroid/media/MediaExtractor;
    .end local v2    # "videoTrack":I
    .end local v3    # "inputFormat":Landroid/media/MediaFormat;
    .end local v4    # "trimEndTime":J
    .end local v8    # "outputVideBitRate":I
    .end local v9    # "size":I
    :catch_c8
    move-exception v0

    .line 1124
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1125
    const/4 v2, -0x1

    return v2

    .line 1121
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_ce
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1126
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 1128
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;)V
    .registers 15
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 111
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 113
    return-void
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZ)V
    .registers 18
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .param p6, "isRewrite"    # Z
    .param p7, "isSEFVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x1

    move-object v9, p0

    iput-boolean v0, v9, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 126
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 127
    return-void
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZI)V
    .registers 20
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .param p6, "isRewrite"    # Z
    .param p7, "isSEFVideo"    # Z
    .param p8, "inputFPS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    move-object v8, p0

    move/from16 v9, p8

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 140
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 142
    if-nez p7, :cond_1b

    if-lez v9, :cond_1b

    .line 143
    iput v9, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    .line 144
    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    .line 146
    :cond_1b
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v0, :cond_4c

    if-nez p6, :cond_4c

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 148
    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not support rewrite for Photoring case mSMConvert : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSMEncode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_4c
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 153
    return-void
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;)V
    .registers 14
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 55
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 57
    return-void
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .registers 16
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .param p5, "isRewrite"    # Z
    .param p6, "isSEFVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 70
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 71
    return-void
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;ZZI)V
    .registers 19
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .param p5, "isRewrite"    # Z
    .param p6, "isSEFVideo"    # Z
    .param p7, "inputFPS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    move-object v8, p0

    move/from16 v9, p7

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 84
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 86
    const/4 v0, 0x1

    if-nez p6, :cond_1b

    if-lez v9, :cond_1b

    .line 87
    iput v9, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    .line 88
    iput-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    .line 90
    :cond_1b
    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v1, :cond_4b

    if-nez p5, :cond_4b

    .line 91
    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 92
    iput-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not support rewrite for Photoring case mSMConvert : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSMEncode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_4b
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 98
    return-void
.end method

.method protected declared-synchronized release()V
    .registers 4

    monitor-enter p0

    .line 977
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "releasing encoder objects"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseFramemanager()V

    .line 979
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseVideoObjects()V

    .line 980
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseSurfaceObjects()V

    .line 981
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseAudioObjects()V

    .line 982
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseMuxer()V

    .line 983
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseHandleObjects()V

    .line 985
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_59

    if-eqz v1, :cond_2d

    :try_start_20
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUpdateCreationTime:Z

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2b

    goto :goto_2d

    .line 996
    :catchall_2b
    move-exception v1

    goto :goto_5a

    .line 987
    :cond_2d
    :goto_2d
    :try_start_2d
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mIs360Video:Z
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_59

    if-eqz v1, :cond_38

    .line 988
    :try_start_31
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->insertUuidFor360Video(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2b

    .line 991
    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_59

    if-eqz v1, :cond_44

    .line 992
    :try_start_3c
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 993
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_2b

    .line 996
    :cond_44
    :try_start_44
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_6b

    .line 997
    :try_start_47
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 998
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 999
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1000
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_54

    .line 1001
    nop

    .line 1002
    monitor-exit p0

    return-void

    .line 1000
    :catchall_54
    move-exception v0

    :goto_55
    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_57

    :try_start_56
    throw v0

    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeVideo;
    :catchall_57
    move-exception v0

    goto :goto_55

    .line 996
    :catchall_59
    move-exception v1

    :goto_5a
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_6b

    .line 997
    :try_start_5d
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 998
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 999
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1000
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_68

    .line 1001
    :try_start_67
    throw v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_6b

    .line 1000
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    .line 976
    :catchall_6b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioCodecs(I)V
    .registers 4
    .param p1, "audioCodecType"    # I

    .line 234
    packed-switch p1, :pswitch_data_16

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :pswitch_b
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    .line 240
    goto :goto_15

    .line 236
    :pswitch_10
    const-string v0, "audio/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    .line 237
    nop

    .line 244
    :goto_15
    return-void

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method public setEncodingCodecs(II)V
    .registers 3
    .param p1, "videoCodecType"    # I
    .param p2, "audioCodecType"    # I

    .line 209
    invoke-virtual {p0, p1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoCodecs(I)V

    .line 210
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setAudioCodecs(I)V

    .line 211
    return-void
.end method

.method public setExportRecordingMode(I)V
    .registers 4
    .param p1, "exportrecordingmode"    # I

    .line 1527
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setExportRecordingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    return-void
.end method

.method public setMaxOutputSize(I)V
    .registers 8
    .param p1, "kilobytes"    # I

    .line 270
    if-lez p1, :cond_50

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "max output size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    int-to-long v2, p1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    .line 280
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_33

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_31

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    if-ge v0, v2, :cond_31

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v0, 0x1

    :goto_34
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMMSMode is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void

    .line 271
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size cannot be 0 or lesser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputAudioMute(I)V
    .registers 4
    .param p1, "value"    # I

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set audio mute : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMute:Z

    .line 231
    return-void
.end method

.method public setOutputBitdepth(I)Z
    .registers 7
    .param p1, "bitDepth"    # I

    .line 1394
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    goto :goto_c

    :cond_b
    move v0, v1

    .line 1395
    .local v0, "inputBitDepth":I
    :goto_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvert:Z

    .line 1397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutputBitdepth  bitdepth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", InputBitdepth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHDRType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    if-ne p1, v1, :cond_54

    .line 1401
    const/4 v3, 0x1

    if-ne v0, v1, :cond_44

    .line 1402
    return v3

    .line 1403
    :cond_44
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHDR10Plus()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->supportConverter()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1404
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvert:Z

    .line 1405
    return v3

    .line 1407
    :cond_53
    return v2

    .line 1410
    :cond_54
    return v2
.end method

.method public setOutputConfig(II)V
    .registers 5
    .param p1, "configType"    # I
    .param p2, "value"    # I

    .line 286
    packed-switch p1, :pswitch_data_40

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configType is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid config Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :pswitch_23
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOutputAudioMute(I)V

    .line 307
    goto :goto_3f

    .line 303
    :pswitch_27
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoTargetFrameRate(I)V

    .line 304
    goto :goto_3f

    .line 300
    :pswitch_2b
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoOutputBitRate(I)V

    .line 301
    goto :goto_3f

    .line 297
    :pswitch_2f
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOutputBitdepth(I)Z

    .line 298
    goto :goto_3f

    .line 294
    :pswitch_33
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setMaxOutputSize(I)V

    .line 295
    goto :goto_3f

    .line 291
    :pswitch_37
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setAudioCodecs(I)V

    .line 292
    goto :goto_3f

    .line 288
    :pswitch_3b
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoCodecs(I)V

    .line 289
    nop

    .line 312
    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
    .end packed-switch
.end method

.method public setRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .line 214
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRotation:I

    .line 215
    return-void
.end method

.method public setTrimTime(JJ)V
    .registers 11
    .param p1, "startMs"    # J
    .param p3, "endMs"    # J

    .line 161
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_f8

    .line 164
    cmp-long v0, p3, v0

    if-ltz v0, :cond_f0

    .line 167
    cmp-long v0, p1, p3

    if-gtz v0, :cond_e7

    .line 170
    cmp-long v0, p1, p3

    if-eqz v0, :cond_df

    .line 174
    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    .line 175
    mul-long v2, p3, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    .line 176
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v2, :cond_95

    .line 177
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_81

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_81

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_81

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_81

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_3d

    goto :goto_81

    .line 184
    :cond_3d
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSuperSlow()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 185
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 186
    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_a0

    .line 187
    :cond_57
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(II)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 188
    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    .line 189
    mul-long v2, p3, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    .line 190
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 191
    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_a0

    .line 182
    :cond_81
    :goto_81
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 183
    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_a0

    .line 194
    :cond_95
    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 195
    mul-long/2addr v0, p3

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 197
    :cond_a0
    :goto_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim startUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OriginstartUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OriginendUS :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    .line 171
    :cond_df
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endUs cannot be equal to startUs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start time cannot be more than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_f0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_f8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVideoCodecs(I)V
    .registers 4
    .param p1, "videoCodecType"    # I

    .line 247
    packed-switch p1, :pswitch_data_38

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "videoCodecType is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid video codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_24
    const-string/jumbo v0, "video/hevc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 256
    goto :goto_36

    .line 252
    :pswitch_2a
    const-string/jumbo v0, "video/avc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 253
    goto :goto_36

    .line 249
    :pswitch_30
    const-string/jumbo v0, "video/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 250
    nop

    .line 261
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x3
        :pswitch_30
        :pswitch_2a
        :pswitch_24
    .end packed-switch
.end method

.method public setVideoOutputBitRate(I)V
    .registers 4
    .param p1, "bitRate"    # I

    .line 218
    if-lez p1, :cond_5

    .line 220
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    .line 221
    return-void

    .line 219
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitRate should be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVideoTargetFrameRate(I)V
    .registers 4
    .param p1, "fps"    # I

    .line 224
    if-lez p1, :cond_5

    .line 226
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoTargetFrameRate:I

    .line 227
    return-void

    .line 225
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fps should be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startRewriting()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_c

    .line 363
    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void

    .line 366
    :cond_c
    const-string/jumbo v0, "startRewriting"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    .line 369
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 372
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPendingAudioDecoderOutputBufferIndex:I

    .line 374
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v4

    .line 376
    .local v4, "videoTrack":I
    if-eq v4, v2, :cond_1bd

    .line 377
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    .line 382
    .local v5, "formatV":Landroid/media/MediaFormat;
    const/4 v6, 0x0

    .line 383
    .local v6, "firstNalUnit":Lcom/samsung/android/transcode/util/NalUnitParser;
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHDR10()Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_98

    iget-wide v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v7, v10, v8

    if-eqz v7, :cond_98

    .line 384
    invoke-direct {p0, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v7

    .line 385
    .local v7, "bufferSizeV":I
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 386
    .local v10, "tempBuffer":Ljava/nio/ByteBuffer;
    iget-object v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11, v10, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    if-lez v11, :cond_98

    .line 387
    new-instance v11, Lcom/samsung/android/transcode/util/NalUnitParser;

    invoke-direct {v11, v10}, Lcom/samsung/android/transcode/util/NalUnitParser;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v6, v11

    .line 388
    invoke-virtual {v6}, Lcom/samsung/android/transcode/util/NalUnitParser;->findHDRStaticMeta()Z

    move-result v11

    if-eqz v11, :cond_7b

    invoke-virtual {v6}, Lcom/samsung/android/transcode/util/NalUnitParser;->getHdrStaticMeta()Ljava/nio/ByteBuffer;

    move-result-object v11

    if-eqz v11, :cond_7b

    .line 389
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "has hdr static meta : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    .line 391
    :cond_7b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to find hdr static meta "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v6, 0x0

    .line 397
    .end local v7    # "bufferSizeV":I
    .end local v10    # "tempBuffer":Ljava/nio/ByteBuffer;
    :cond_98
    :goto_98
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTrimVideoStartPointChanged()V

    .line 399
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkAudioTranscodeSection()V

    .line 402
    const-string v7, "Rewriting starts"

    invoke-static {v1, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iput-wide v8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioProgressTime:J

    .line 405
    iput-wide v8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVidioProgressTime:J

    .line 407
    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v7}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v7

    .line 408
    .local v7, "audioTrack":I
    const/4 v8, 0x0

    .line 409
    .local v8, "formatA":Landroid/media/MediaFormat;
    if-eq v7, v2, :cond_b6

    .line 410
    iget-object v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    .line 413
    :cond_b6
    iget-boolean v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v9, :cond_19b

    .line 414
    iget-boolean v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v9, :cond_c7

    iget-object v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v9, v10}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    goto :goto_c9

    :cond_c7
    iget-object v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 415
    .local v9, "filepath":Ljava/lang/String;
    :goto_c9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "filepath :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_f3

    .line 417
    const-string/jumbo v10, "param-meta-author"

    const/16 v11, 0x8

    invoke-virtual {v5, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 418
    const-string/jumbo v10, "param-meta-transcoding"

    invoke-virtual {v5, v10, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 420
    :cond_f3
    sget-object v10, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v10, v10, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_107

    .line 421
    sget-object v10, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v10, v10, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    const-string/jumbo v11, "param-meta-brand-model-name"

    invoke-virtual {v5, v11, v10}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_107
    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const-string/jumbo v11, "param-meta-recording-mode"

    if-eq v10, v2, :cond_12d

    .line 424
    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v5, v11, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 425
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set recording mode for NDE : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_157

    .line 426
    :cond_12d
    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v12, 0xa

    if-eq v10, v12, :cond_139

    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v12, 0x19

    if-ne v10, v12, :cond_157

    .line 428
    :cond_139
    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v5, v11, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 429
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set recording mode for HDR 10 PLUS : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_157
    :goto_157
    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v10, v5}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    .line 433
    if-eqz v8, :cond_179

    const-string/jumbo v10, "mime"

    invoke-virtual {v8, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "audio/unknown"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_179

    .line 434
    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v10, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_17a

    .line 438
    :cond_179
    const/4 v7, -0x1

    .line 440
    :goto_17a
    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v10, v11}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 441
    sget-object v10, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v10, v10, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    if-eqz v10, :cond_194

    .line 442
    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    sget-object v11, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v11, v11, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    sget-object v12, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v12, v12, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 444
    :cond_194
    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v10}, Landroid/media/MediaMuxer;->start()V

    .line 445
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    .line 448
    .end local v9    # "filepath":Ljava/lang/String;
    :cond_19b
    invoke-direct {p0, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v3

    .line 449
    .local v3, "bufferSizeV":I
    iget-wide v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-direct {p0, v9, v10, v6, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->rewriteVideo(JLcom/samsung/android/transcode/util/NalUnitParser;I)V

    .line 451
    if-eq v7, v2, :cond_1b1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMute:Z

    if-eqz v2, :cond_1ab

    goto :goto_1b1

    .line 454
    :cond_1ab
    iget-wide v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-direct {p0, v9, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->rewriteAudio(J)V

    goto :goto_1b3

    .line 452
    :cond_1b1
    :goto_1b1
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 456
    :goto_1b3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_1bc

    .line 457
    const-string v0, "Rewriting finished"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_1bc
    return-void

    .line 379
    .end local v3    # "bufferSizeV":I
    .end local v5    # "formatV":Landroid/media/MediaFormat;
    .end local v6    # "firstNalUnit":Lcom/samsung/android/transcode/util/NalUnitParser;
    .end local v7    # "audioTrack":I
    .end local v8    # "formatA":Landroid/media/MediaFormat;
    :cond_1bd
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Absent valid video track"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startSMEncoding()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_c

    .line 558
    const-string v0, "Not starting Slowmotion encoding because it is stopped by user."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void

    .line 561
    :cond_c
    const-string/jumbo v0, "startSMEncoding"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_video()V

    .line 564
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_audio()V

    .line 566
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    .line 567
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v6, v7, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 568
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 571
    :cond_30
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_67

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_67

    .line 572
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 573
    :goto_41
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_67

    .line 574
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5f

    .line 577
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_41

    .line 575
    :cond_5f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transcode section - Audio : Current position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 582
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimAudioStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Video: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 583
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimVideoStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 586
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTimescale:F

    .line 589
    :cond_b4
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    if-eqz v0, :cond_bc

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v0, :cond_fd

    .line 590
    :cond_bc
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_c3

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startAudioEncoding()V

    .line 594
    :cond_c3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    if-nez v0, :cond_cd

    .line 595
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startVideoDecoding()V

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 599
    :cond_cd
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->sendFrametoEncoder()V

    .line 601
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_d8

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    if-eqz v0, :cond_b4

    .line 602
    :cond_d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding abruptly stopped mUserStop ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mCodecError? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    nop

    .line 606
    :cond_fd
    return-void
.end method

.method public startSMRewriting()V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_e

    .line 691
    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-void

    .line 694
    :cond_e
    const-string/jumbo v0, "startSMRewriting"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_audio()V

    .line 697
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    .line 698
    iget-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    .line 699
    .local v4, "trimRewriteEndTime":J
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTrimAudioStartPos()V

    .line 703
    const-string v0, "Rewriting starts"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTimescale:F

    .line 707
    :cond_2d
    const/4 v0, 0x0

    .line 708
    .local v0, "sawEOSV":Z
    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    .line 709
    .local v6, "videoTrack":I
    const/4 v7, -0x1

    .line 710
    .local v7, "audioTrack":I
    iget-boolean v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v8, :cond_3f

    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v7

    .line 713
    :cond_3f
    const/4 v8, 0x0

    .line 715
    .local v8, "formatA":Landroid/media/MediaFormat;
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioProgressTime:J

    .line 716
    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVidioProgressTime:J

    .line 718
    const/4 v11, -0x1

    if-eq v6, v11, :cond_28b

    .line 719
    iget-object v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    .line 724
    .local v12, "formatV":Landroid/media/MediaFormat;
    if-eq v7, v11, :cond_57

    .line 725
    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    .line 728
    :cond_57
    iget-boolean v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    const/4 v14, 0x1

    if-nez v13, :cond_f1

    .line 729
    invoke-direct {v1, v12}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkFormatV(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v12

    .line 730
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "video format "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v13, v12}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v13

    iput v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    .line 732
    if-eqz v8, :cond_e2

    const-string/jumbo v13, "mime"

    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "audio/unknown"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e2

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v13

    if-eqz v13, :cond_c3

    const-string v13, "csd-0"

    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c3

    .line 734
    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 735
    .local v15, "csd":Ljava/nio/ByteBuffer;
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    new-array v9, v9, [B

    .line 736
    .local v9, "buffer":[B
    array-length v10, v9

    invoke-virtual {v15, v9, v3, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 737
    const/16 v10, 0x11

    aput-byte v10, v9, v3

    .line 738
    const/16 v10, -0x70

    aput-byte v10, v9, v14

    .line 739
    array-length v10, v9

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 740
    .local v10, "csdTemp":Ljava/nio/ByteBuffer;
    array-length v11, v9

    invoke-virtual {v10, v9, v3, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 741
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 742
    invoke-virtual {v8, v13, v10}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 744
    .end local v9    # "buffer":[B
    .end local v10    # "csdTemp":Ljava/nio/ByteBuffer;
    .end local v15    # "csd":Ljava/nio/ByteBuffer;
    :cond_c3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio format "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v9, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v9

    iput v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_e3

    .line 747
    :cond_e2
    const/4 v7, -0x1

    .line 750
    :goto_e3
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v9, v10}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 751
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v9}, Landroid/media/MediaMuxer;->start()V

    .line 752
    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    .line 755
    :cond_f1
    const/4 v9, 0x0

    .line 757
    .local v9, "offset":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_f9

    iget-boolean v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMute:Z

    if-eqz v10, :cond_ff

    .line 759
    :cond_f9
    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 760
    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractorDone:Z

    .line 761
    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 764
    :cond_ff
    const/4 v10, -0x1

    if-eq v7, v10, :cond_10e

    .line 765
    :goto_102
    iget-boolean v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v10, :cond_10e

    iget-boolean v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v10, :cond_10e

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startAudioEncoding()V

    goto :goto_102

    .line 770
    :cond_10e
    invoke-direct {v1, v12}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v10

    .line 771
    .local v10, "bufferSizeV":I
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 772
    .local v11, "dstBufV":Ljava/nio/ByteBuffer;
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 773
    .local v13, "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    iget-object v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14, v11, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    iput v14, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 775
    invoke-static {v12}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v14

    .line 776
    .local v14, "isHevc":Z
    const-wide/16 v16, 0x0

    move v15, v0

    .line 778
    .end local v0    # "sawEOSV":Z
    .local v15, "sawEOSV":Z
    .local v16, "prevModifiedVideotime":J
    :goto_12a
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_27d

    if-nez v15, :cond_27d

    .line 779
    iput v9, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 780
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v11, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 781
    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_148

    .line 782
    const-string/jumbo v0, "saw input EOS: Video"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const/4 v15, 0x1

    .line 784
    iput v3, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_12a

    .line 786
    :cond_148
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-wide/from16 v18, v4

    .end local v4    # "trimRewriteEndTime":J
    .local v18, "trimRewriteEndTime":J
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    .line 787
    .local v3, "presentationTimeUs":J
    iput-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mModifiedVideotime = presentationTime = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v20, v6

    .end local v6    # "videoTrack":I
    .local v20, "videoTrack":I
    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_188

    .line 793
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 794
    .local v0, "a":[B
    const/4 v5, 0x4

    .line 795
    .local v5, "pos":I
    invoke-virtual {v11, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 796
    array-length v6, v0

    move/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "pos":I
    .local v21, "pos":I
    invoke-virtual {v11, v0, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 797
    invoke-virtual {v11, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 798
    invoke-virtual {v1, v0, v3, v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->calculateIsDrop([BJ)Z

    move-result v5

    iput-boolean v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    .line 800
    .end local v0    # "a":[B
    .end local v21    # "pos":I
    :cond_188
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 802
    const-wide/16 v5, 0x0

    cmp-long v0, v16, v5

    if-eqz v0, :cond_19b

    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    sub-long v5, v5, v16

    goto :goto_19d

    :cond_19b
    const-wide/16 v5, 0x0

    .line 804
    .local v5, "frameDuration":J
    :goto_19d
    const-wide/16 v21, -0x1

    cmp-long v0, v18, v21

    if-eqz v0, :cond_1bb

    move-wide/from16 v21, v3

    .end local v3    # "presentationTimeUs":J
    .local v21, "presentationTimeUs":J
    iget-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v3, v5

    move-wide/from16 v23, v5

    .end local v5    # "frameDuration":J
    .local v23, "frameDuration":J
    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_1bf

    .line 805
    const/4 v0, 0x1

    .line 806
    .end local v15    # "sawEOSV":Z
    .local v0, "sawEOSV":Z
    const-string/jumbo v3, "sawEOS: true: V"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v0

    const/4 v5, 0x0

    goto/16 :goto_276

    .line 804
    .end local v0    # "sawEOSV":Z
    .end local v21    # "presentationTimeUs":J
    .end local v23    # "frameDuration":J
    .restart local v3    # "presentationTimeUs":J
    .restart local v5    # "frameDuration":J
    .restart local v15    # "sawEOSV":Z
    :cond_1bb
    move-wide/from16 v21, v3

    move-wide/from16 v23, v5

    .line 808
    .end local v3    # "presentationTimeUs":J
    .end local v5    # "frameDuration":J
    .restart local v21    # "presentationTimeUs":J
    .restart local v23    # "frameDuration":J
    :cond_1bf
    iget-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    iput-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 809
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 810
    iget-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    .line 812
    .end local v16    # "prevModifiedVideotime":J
    .local v3, "prevModifiedVideotime":J
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    if-nez v0, :cond_26c

    .line 814
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v5, 0x0

    .line 815
    .local v5, "index":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    .line 816
    .local v6, "encodedStream":[B
    move/from16 v16, v0

    .end local v0    # "i":I
    .local v16, "i":I
    array-length v0, v6

    move-wide/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "prevModifiedVideotime":J
    .local v25, "prevModifiedVideotime":J
    invoke-virtual {v11, v6, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeSampleData time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    if-nez v14, :cond_238

    move/from16 v0, v16

    .line 825
    .end local v16    # "i":I
    .restart local v0    # "i":I
    :cond_20a
    move v5, v0

    .line 826
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v3, v3

    add-int/2addr v3, v0

    invoke-static {v6, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->findNalStartCode([BI)I

    move-result v0

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findNalStartCode. i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/4 v3, -0x1

    if-ne v0, v3, :cond_20a

    move/from16 v16, v0

    .line 831
    .end local v0    # "i":I
    .restart local v16    # "i":I
    :cond_238
    invoke-virtual {v11, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 833
    iput v5, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 837
    :try_start_23d
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v3, v11, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_244
    .catch Ljava/lang/IllegalStateException; {:try_start_23d .. :try_end_244} :catch_245
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23d .. :try_end_244} :catch_245

    .line 840
    goto :goto_25c

    .line 838
    :catch_245
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to writeSampleData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_25c
    const/4 v3, -0x1

    if-ne v7, v3, :cond_263

    .line 842
    iget-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mPausedVideoUs:J

    .line 844
    :cond_263
    iget-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "index":I
    .local v17, "index":I
    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    goto :goto_26f

    .line 812
    .end local v6    # "encodedStream":[B
    .end local v16    # "i":I
    .end local v17    # "index":I
    .end local v25    # "prevModifiedVideotime":J
    .restart local v3    # "prevModifiedVideotime":J
    :cond_26c
    move-wide/from16 v25, v3

    const/4 v5, 0x0

    .line 846
    .end local v3    # "prevModifiedVideotime":J
    .restart local v25    # "prevModifiedVideotime":J
    :goto_26f
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-wide/from16 v16, v25

    .line 848
    .end local v21    # "presentationTimeUs":J
    .end local v23    # "frameDuration":J
    .end local v25    # "prevModifiedVideotime":J
    .local v16, "prevModifiedVideotime":J
    :goto_276
    move v3, v5

    move-wide/from16 v4, v18

    move/from16 v6, v20

    goto/16 :goto_12a

    .line 778
    .end local v18    # "trimRewriteEndTime":J
    .end local v20    # "videoTrack":I
    .restart local v4    # "trimRewriteEndTime":J
    .local v6, "videoTrack":I
    :cond_27d
    move-wide/from16 v18, v4

    move/from16 v20, v6

    .line 851
    .end local v4    # "trimRewriteEndTime":J
    .end local v6    # "videoTrack":I
    .restart local v18    # "trimRewriteEndTime":J
    .restart local v20    # "videoTrack":I
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_28a

    const-string v0, "Rewriting finished"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_28a
    return-void

    .line 721
    .end local v9    # "offset":I
    .end local v10    # "bufferSizeV":I
    .end local v11    # "dstBufV":Ljava/nio/ByteBuffer;
    .end local v12    # "formatV":Landroid/media/MediaFormat;
    .end local v13    # "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    .end local v14    # "isHevc":Z
    .end local v15    # "sawEOSV":Z
    .end local v16    # "prevModifiedVideotime":J
    .end local v18    # "trimRewriteEndTime":J
    .end local v20    # "videoTrack":I
    .local v0, "sawEOSV":Z
    .restart local v4    # "trimRewriteEndTime":J
    .restart local v6    # "videoTrack":I
    :cond_28b
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Absent valid video track"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public stop()V
    .registers 6

    .line 1006
    const-string v0, "TranscodeLib"

    const-string v1, "Stop method called "

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1009
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-eqz v1, :cond_13

    .line 1010
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->notifyFrameSyncObject()V

    .line 1012
    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    .line 1013
    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "mUserStop - true"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-nez v1, :cond_24

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_a5

    return-void

    .line 1016
    :cond_24
    :try_start_24
    const-string v1, "TranscodeLib"

    const-string v2, "Calling wait on stop lock."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_32} :catch_56
    .catchall {:try_start_24 .. :try_end_32} :catchall_54

    .line 1022
    :try_start_32
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop method finally  mEncoding :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_80

    :goto_50
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V
    :try_end_53
    .catchall {:try_start_32 .. :try_end_53} :catchall_a5

    goto :goto_80

    .line 1022
    :catchall_54
    move-exception v1

    goto :goto_82

    .line 1018
    :catch_56
    move-exception v1

    .line 1019
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_57
    const-string v2, "TranscodeLib"

    const-string v3, "Stop lock interrupted."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_54

    .line 1022
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_61
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop method finally  mEncoding :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_80

    goto :goto_50

    .line 1025
    :cond_80
    :goto_80
    monitor-exit v0

    .line 1026
    return-void

    .line 1022
    :goto_82
    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop method finally  mEncoding :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v2, :cond_a3

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V

    .line 1024
    :cond_a3
    nop

    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeVideo;
    throw v1

    .line 1025
    .restart local p0    # "this":Lcom/samsung/android/transcode/core/EncodeVideo;
    :catchall_a5
    move-exception v1

    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_61 .. :try_end_a7} :catchall_a5

    throw v1
.end method
