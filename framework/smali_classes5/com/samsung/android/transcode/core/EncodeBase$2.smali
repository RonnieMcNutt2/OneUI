.class Lcom/samsung/android/transcode/core/EncodeBase$2;
.super Landroid/media/MediaCodec$Callback;
.source "EncodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/transcode/core/EncodeBase;->setVideoDecoderAsyncCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/transcode/core/EncodeBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/transcode/core/EncodeBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/transcode/core/EncodeBase;

    .line 2218
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "e"    # Landroid/media/MediaCodec$CodecException;

    .line 2243
    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "video Decoder has error"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    .line 2245
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 2246
    :try_start_12
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2247
    monitor-exit v0

    .line 2248
    return-void

    .line 2247
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I

    .line 2221
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1c

    .line 2222
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    # invokes: Lcom/samsung/android/transcode/core/EncodeBase;->isVideoDecoderAvailableCondition()Z
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeBase;->access$200(Lcom/samsung/android/transcode/core/EncodeBase;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2223
    return-void

    .line 2226
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    invoke-virtual {v0, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->sendVideoToDecoder(I)V

    .line 2228
    :cond_1c
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 6
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 2233
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1c

    .line 2234
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    # invokes: Lcom/samsung/android/transcode/core/EncodeBase;->isVideoDecoderAvailableCondition()Z
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeBase;->access$200(Lcom/samsung/android/transcode/core/EncodeBase;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2235
    return-void

    .line 2237
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    # invokes: Lcom/samsung/android/transcode/core/EncodeBase;->getVideoDecoderOutput(ILandroid/media/MediaCodec$BufferInfo;)V
    invoke-static {v0, p2, p3}, Lcom/samsung/android/transcode/core/EncodeBase;->access$300(Lcom/samsung/android/transcode/core/EncodeBase;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 2239
    :cond_1c
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video decoder: onOutputFormatChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    return-void
.end method
