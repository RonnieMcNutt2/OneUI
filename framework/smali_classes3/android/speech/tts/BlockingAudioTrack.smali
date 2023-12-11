.class Landroid/speech/tts/BlockingAudioTrack;
.super Ljava/lang/Object;
.source "BlockingAudioTrack.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_PROGRESS_WAIT_MS:J = 0x9c4L

.field private static final MAX_SLEEP_TIME_MS:J = 0x9c4L

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final MIN_SLEEP_TIME_MS:J = 0x14L

.field private static final TAG:Ljava/lang/String; = "TTS.BlockingAudioTrack"


# instance fields
.field private mAudioBufferSize:I

.field private final mAudioFormat:I

.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudioTrackLock:Ljava/lang/Object;

.field private final mBytesPerFrame:I

.field private mBytesWritten:I

.field private final mChannelCount:I

.field private mIsShortUtterance:Z

.field private final mSampleRateInHz:I

.field private mSessionId:I

.field private volatile mStopped:Z


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;III)V
    .registers 7
    .param p1, "audioParams"    # Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .param p2, "sampleRate"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 81
    iput p2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 82
    iput p3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 83
    iput p4, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    .line 85
    invoke-static {p3}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    mul-int/2addr v1, p4

    iput v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    .line 86
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 87
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 88
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 91
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 92
    return-void
.end method

.method private blockUntilCompletion(Landroid/media/AudioTrack;)V
    .registers 16
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .line 274
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int/2addr v0, v1

    .line 276
    .local v0, "lengthInFrames":I
    const/4 v1, -0x1

    .line 277
    .local v1, "previousPosition":I
    const/4 v2, 0x0

    .line 278
    .local v2, "currentPosition":I
    const-wide/16 v3, 0x0

    .line 280
    .local v3, "blockedTimeMs":J
    :goto_9
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v5

    move v2, v5

    if-ge v5, v0, :cond_49

    .line 281
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_49

    iget-boolean v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v5, :cond_49

    .line 283
    sub-int v5, v0, v2

    mul-int/lit16 v5, v5, 0x3e8

    .line 284
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v6

    div-int/2addr v5, v6

    int-to-long v12, v5

    .line 285
    .local v12, "estimatedTimeMs":J
    const-wide/16 v8, 0x14

    const-wide/16 v10, 0x9c4

    move-wide v6, v12

    invoke-static/range {v6 .. v11}, Landroid/speech/tts/BlockingAudioTrack;->clip(JJJ)J

    move-result-wide v5

    .line 290
    .local v5, "sleepTimeMs":J
    if-ne v2, v1, :cond_3f

    .line 293
    add-long/2addr v3, v5

    .line 295
    const-wide/16 v7, 0x9c4

    cmp-long v7, v3, v7

    if-lez v7, :cond_41

    .line 296
    const-string v7, "TTS.BlockingAudioTrack"

    const-string v8, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    goto :goto_49

    .line 301
    :cond_3f
    const-wide/16 v3, 0x0

    .line 303
    :cond_41
    move v1, v2

    .line 311
    :try_start_42
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_47

    .line 314
    nop

    .line 315
    .end local v5    # "sleepTimeMs":J
    .end local v12    # "estimatedTimeMs":J
    goto :goto_9

    .line 312
    .restart local v5    # "sleepTimeMs":J
    .restart local v12    # "estimatedTimeMs":J
    :catch_47
    move-exception v7

    .line 313
    .local v7, "ie":Ljava/lang/InterruptedException;
    nop

    .line 316
    .end local v5    # "sleepTimeMs":J
    .end local v7    # "ie":Ljava/lang/InterruptedException;
    .end local v12    # "estimatedTimeMs":J
    :cond_49
    :goto_49
    return-void
.end method

.method private blockUntilDone(Landroid/media/AudioTrack;)V
    .registers 3
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .line 238
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    if-gtz v0, :cond_5

    .line 239
    return-void

    .line 242
    :cond_5
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    if-eqz v0, :cond_d

    .line 254
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilEstimatedCompletion()V

    goto :goto_10

    .line 256
    :cond_d
    invoke-direct {p0, p1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilCompletion(Landroid/media/AudioTrack;)V

    .line 258
    :goto_10
    return-void
.end method

.method private blockUntilEstimatedCompletion()V
    .registers 5

    .line 261
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int/2addr v0, v1

    .line 262
    .local v0, "lengthInFrames":I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 267
    .local v1, "estimatedTimeMs":J
    :try_start_b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f

    .line 270
    goto :goto_10

    .line 268
    :catch_f
    move-exception v3

    .line 271
    :goto_10
    return-void
.end method

.method private static final clip(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 340
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpg-float v0, p0, p2

    if-gez v0, :cond_c

    move v0, p0

    goto :goto_d

    :cond_c
    move v0, p2

    :goto_d
    return v0
.end method

.method private static final clip(JJJ)J
    .registers 8
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .line 336
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    move-wide v0, p2

    goto :goto_d

    :cond_6
    cmp-long v0, p0, p4

    if-gez v0, :cond_c

    move-wide v0, p0

    goto :goto_d

    :cond_c
    move-wide v0, p4

    :goto_d
    return-wide v0
.end method

.method private createStreamingAudioTrack()Landroid/media/AudioTrack;
    .registers 12

    .line 211
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    invoke-static {v0}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    move-result v0

    .line 213
    .local v0, "channelConfig":I
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 214
    invoke-static {v1, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    .line 215
    .local v1, "minBufferSizeInBytes":I
    const/16 v2, 0x2000

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 217
    .local v2, "bufferSizeInBytes":I
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 218
    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    iget v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 219
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    iget v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 220
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v9

    .line 221
    .local v9, "audioFormat":Landroid/media/AudioFormat;
    new-instance v10, Landroid/media/AudioTrack;

    iget-object v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget-object v4, v3, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v7, 0x1

    iget-object v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v8, v3, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    move-object v3, v10

    move-object v5, v9

    move v6, v2

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 225
    .local v3, "audioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_51

    .line 226
    const-string v4, "TTS.BlockingAudioTrack"

    const-string v5, "Unable to create audio track."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    .line 228
    const/4 v4, 0x0

    return-object v4

    .line 231
    :cond_51
    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 233
    iget-object v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v4, v4, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    iget-object v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v5, v5, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    invoke-static {v3, v4, v5}, Landroid/speech/tts/BlockingAudioTrack;->setupVolume(Landroid/media/AudioTrack;FF)V

    .line 234
    return-object v3
.end method

.method static getChannelConfig(I)I
    .registers 2
    .param p0, "channelCount"    # I

    .line 175
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 176
    const/4 v0, 0x4

    return v0

    .line 177
    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 178
    const/16 v0, 0xc

    return v0

    .line 181
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private static setupVolume(Landroid/media/AudioTrack;FF)V
    .registers 10
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .param p2, "pan"    # F

    .line 319
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    move-result v2

    .line 320
    .local v2, "vol":F
    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p2, v3, v1}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    move-result v3

    .line 322
    .local v3, "panning":F
    move v4, v2

    .line 323
    .local v4, "volLeft":F
    move v5, v2

    .line 324
    .local v5, "volRight":F
    cmpl-float v6, v3, v0

    if-lez v6, :cond_16

    .line 325
    sub-float/2addr v1, v3

    mul-float/2addr v4, v1

    goto :goto_1c

    .line 326
    :cond_16
    cmpg-float v0, v3, v0

    if-gez v0, :cond_1c

    .line 327
    add-float/2addr v1, v3

    mul-float/2addr v5, v1

    .line 330
    :cond_1c
    :goto_1c
    invoke-virtual {p0, v4, v5}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    if-eqz v0, :cond_29

    .line 331
    const-string v0, "TTS.BlockingAudioTrack"

    const-string v1, "Failed to set volume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_29
    return-void
.end method

.method private static writeToAudioTrack(Landroid/media/AudioTrack;[B)I
    .registers 4
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "bytes"    # [B

    .line 192
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    .line 194
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 197
    :cond_a
    const/4 v0, 0x0

    .line 198
    .local v0, "count":I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 201
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 202
    .local v1, "written":I
    if-gtz v1, :cond_16

    .line 203
    goto :goto_18

    .line 205
    :cond_16
    add-int/2addr v0, v1

    .line 206
    .end local v1    # "written":I
    goto :goto_b

    .line 207
    :cond_18
    :goto_18
    return v0
.end method


# virtual methods
.method getAudioLengthMs(I)J
    .registers 5
    .param p1, "numBytes"    # I

    .line 185
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int v0, p1, v0

    .line 186
    .local v0, "unconsumedFrames":I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 188
    .local v1, "estimatedTimeMs":J
    return-wide v1
.end method

.method public init()Z
    .registers 4

    .line 95
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->createStreamingAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    .line 96
    .local v0, "track":Landroid/media/AudioTrack;
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_7
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 98
    monitor-exit v1

    .line 100
    if-nez v0, :cond_e

    .line 101
    const/4 v1, 0x0

    return v1

    .line 103
    :cond_e
    const/4 v1, 0x1

    return v1

    .line 98
    :catchall_10
    move-exception v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v2
.end method

.method public setNotificationMarkerPosition(I)V
    .registers 4
    .param p1, "frames"    # I

    .line 358
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_a

    .line 360
    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    .line 362
    :cond_a
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 349
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_a

    .line 351
    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 353
    :cond_a
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public stop()V
    .registers 3

    .line 108
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_a

    .line 110
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 112
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public waitAndRelease()V
    .registers 4

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "track":Landroid/media/AudioTrack;
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_4
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    move-object v0, v2

    .line 135
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_32

    .line 136
    if-nez v0, :cond_b

    .line 138
    return-void

    .line 147
    :cond_b
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    if-ge v1, v2, :cond_1b

    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v1, :cond_1b

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 154
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 158
    :cond_1b
    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v1, :cond_24

    .line 160
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0, v1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilDone(Landroid/media/AudioTrack;)V

    .line 167
    :cond_24
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 168
    const/4 v1, 0x0

    :try_start_28
    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 169
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2f

    .line 170
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 171
    return-void

    .line 169
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1

    .line 135
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public write([B)I
    .registers 5
    .param p1, "data"    # [B

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "track":Landroid/media/AudioTrack;
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_4
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    move-object v0, v2

    .line 120
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    .line 122
    if-eqz v0, :cond_19

    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-eqz v1, :cond_f

    goto :goto_19

    .line 125
    :cond_f
    invoke-static {v0, p1}, Landroid/speech/tts/BlockingAudioTrack;->writeToAudioTrack(Landroid/media/AudioTrack;[B)I

    move-result v1

    .line 127
    .local v1, "bytesWritten":I
    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 128
    return v1

    .line 123
    .end local v1    # "bytesWritten":I
    :cond_19
    :goto_19
    const/4 v1, -0x1

    return v1

    .line 120
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method
