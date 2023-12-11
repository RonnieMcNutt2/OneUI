.class public final Landroid/companion/virtual/audio/AudioInjection;
.super Ljava/lang/Object;
.source "AudioInjection.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioInjection"


# instance fields
.field private final mAudioFormat:Landroid/media/AudioFormat;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mIsSilent:Z

.field private final mLock:Ljava/lang/Object;

.field private mPlayState:I


# direct methods
.method constructor <init>(Landroid/media/AudioFormat;)V
    .registers 3
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mPlayState:I

    .line 103
    iput-object p1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioFormat:Landroid/media/AudioFormat;

    .line 104
    return-void
.end method


# virtual methods
.method close()V
    .registers 3

    .line 107
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_d

    .line 109
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    .line 112
    :cond_d
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public getPlayState()I
    .registers 3

    .line 221
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    iget v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mPlayState:I

    monitor-exit v0

    return v1

    .line 223
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public play()V
    .registers 4

    .line 201
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    const/4 v1, 0x3

    :try_start_4
    iput v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mPlayState:I

    .line 203
    iget-object v2, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-eq v2, v1, :cond_15

    .line 204
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 206
    :cond_15
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v1
.end method

.method setAudioTrack(Landroid/media/AudioTrack;)V
    .registers 6
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .line 76
    const-string v0, "AudioInjection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set AudioTrack with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    if-eqz p1, :cond_4a

    .line 80
    :try_start_1e
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    .line 84
    iget v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mPlayState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_33

    .line 85
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-eq v1, v3, :cond_33

    .line 86
    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V

    .line 88
    :cond_33
    iget v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mPlayState:I

    if-ne v1, v2, :cond_4a

    .line 89
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-eq v1, v2, :cond_4a

    .line 90
    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    goto :goto_4a

    .line 81
    :cond_41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "set an uninitialized AudioTrack."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/companion/virtual/audio/AudioInjection;
    .end local p1    # "audioTrack":Landroid/media/AudioTrack;
    throw v1

    .line 95
    .restart local p0    # "this":Landroid/companion/virtual/audio/AudioInjection;
    .restart local p1    # "audioTrack":Landroid/media/AudioTrack;
    :cond_4a
    :goto_4a
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_51

    .line 96
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 98
    :cond_51
    iput-object p1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_1e .. :try_end_57} :catchall_55

    throw v1
.end method

.method setSilent(Z)V
    .registers 4
    .param p1, "isSilent"    # Z

    .line 61
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    iput-boolean p1, p0, Landroid/companion/virtual/audio/AudioInjection;->mIsSilent:Z

    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 63
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public stop()V
    .registers 4

    .line 211
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    const/4 v1, 0x1

    :try_start_4
    iput v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mPlayState:I

    .line 213
    iget-object v2, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-eq v2, v1, :cond_15

    .line 214
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 216
    :cond_15
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .registers 7
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    .line 142
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_10

    iget-boolean v2, p0, Landroid/companion/virtual/audio/AudioInjection;->mIsSilent:Z

    if-nez v2, :cond_10

    .line 144
    invoke-virtual {v1, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .local v1, "sizeWrite":I
    goto :goto_11

    .line 146
    .end local v1    # "sizeWrite":I
    :cond_10
    const/4 v1, 0x0

    .line 148
    .restart local v1    # "sizeWrite":I
    :goto_11
    monitor-exit v0

    .line 149
    return v1

    .line 148
    .end local v1    # "sizeWrite":I
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .registers 13
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I
    .param p4, "timestamp"    # J

    .line 156
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_14

    iget-boolean v2, p0, Landroid/companion/virtual/audio/AudioInjection;->mIsSilent:Z

    if-nez v2, :cond_14

    .line 158
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result v1

    .local v1, "sizeWrite":I
    goto :goto_15

    .line 160
    .end local v1    # "sizeWrite":I
    :cond_14
    const/4 v1, 0x0

    .line 162
    .restart local v1    # "sizeWrite":I
    :goto_15
    monitor-exit v0

    .line 163
    return v1

    .line 162
    .end local v1    # "sizeWrite":I
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public write([BII)I
    .registers 5
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/companion/virtual/audio/AudioInjection;->write([BIII)I

    move-result v0

    return v0
.end method

.method public write([BIII)I
    .registers 8
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "writeMode"    # I

    .line 129
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_10

    iget-boolean v2, p0, Landroid/companion/virtual/audio/AudioInjection;->mIsSilent:Z

    if-nez v2, :cond_10

    .line 131
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v1

    .local v1, "sizeWrite":I
    goto :goto_11

    .line 133
    .end local v1    # "sizeWrite":I
    :cond_10
    const/4 v1, 0x0

    .line 135
    .restart local v1    # "sizeWrite":I
    :goto_11
    monitor-exit v0

    .line 136
    return v1

    .line 135
    .end local v1    # "sizeWrite":I
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public write([FIII)I
    .registers 8
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    .line 170
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_10

    iget-boolean v2, p0, Landroid/companion/virtual/audio/AudioInjection;->mIsSilent:Z

    if-nez v2, :cond_10

    .line 172
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioTrack;->write([FIII)I

    move-result v1

    .local v1, "sizeWrite":I
    goto :goto_11

    .line 174
    .end local v1    # "sizeWrite":I
    :cond_10
    const/4 v1, 0x0

    .line 176
    .restart local v1    # "sizeWrite":I
    :goto_11
    monitor-exit v0

    .line 177
    return v1

    .line 176
    .end local v1    # "sizeWrite":I
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public write([SII)I
    .registers 5
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/companion/virtual/audio/AudioInjection;->write([SIII)I

    move-result v0

    return v0
.end method

.method public write([SIII)I
    .registers 8
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "writeMode"    # I

    .line 189
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_10

    iget-boolean v2, p0, Landroid/companion/virtual/audio/AudioInjection;->mIsSilent:Z

    if-nez v2, :cond_10

    .line 191
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v1

    .local v1, "sizeWrite":I
    goto :goto_11

    .line 193
    .end local v1    # "sizeWrite":I
    :cond_10
    const/4 v1, 0x0

    .line 195
    .restart local v1    # "sizeWrite":I
    :goto_11
    monitor-exit v0

    .line 196
    return v1

    .line 195
    .end local v1    # "sizeWrite":I
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method
