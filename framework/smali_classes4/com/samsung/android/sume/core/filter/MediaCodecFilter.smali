.class public abstract Lcom/samsung/android/sume/core/filter/MediaCodecFilter;
.super Ljava/lang/Object;
.source "MediaCodecFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;
.implements Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final codecDescriptor:Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

.field protected codecTag:Ljava/lang/String;

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field protected contentId:I

.field protected final cvPause:Landroid/os/ConditionVariable;

.field protected endTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

.field protected lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mediaCodec:Landroid/media/MediaCodec;

.field protected messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

.field protected numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected processedFrames:I

.field protected reachedInputEos:Z

.field protected reachedOutputEos:Z

.field protected receiveChannelCount:I

.field protected receiveChannelQuery:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected sendChannelCount:I

.field protected sendChannelQuery:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V
    .registers 5
    .param p1, "codecDescriptor"    # Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->codecTag:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->processedFrames:I

    .line 41
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->endTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->condition:Ljava/util/concurrent/locks/Condition;

    .line 51
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->cvPause:Landroid/os/ConditionVariable;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->codecDescriptor:Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 55
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 56
    return-void
.end method


# virtual methods
.method protected awaitCodecToReady()V
    .registers 5

    .line 65
    const-string v0, "awaitCodecToReady...X: "

    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "awaitCodecToReady...E: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 68
    :try_start_1f
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_24} :catch_40
    .catchall {:try_start_1f .. :try_end_24} :catchall_3e

    .line 72
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    goto :goto_51

    .line 72
    :catchall_3e
    move-exception v1

    goto :goto_52

    .line 69
    :catch_40
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_41
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    .line 72
    .end local v1    # "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2e

    .line 75
    :goto_51
    return-void

    .line 72
    :goto_52
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    sget-object v2, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    throw v1
.end method

.method protected abstract configCodec(Lcom/samsung/android/sume/core/message/Message;)V
.end method

.method public getConsumeMessage()[I
    .registers 4

    .line 90
    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->codecDescriptor:Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    return-object v0
.end method

.method public getMediaCodec()Landroid/media/MediaCodec;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->mediaCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public getReceiveChannelCount()I
    .registers 2

    .line 205
    iget v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->receiveChannelCount:I

    return v0
.end method

.method public getReceiveChannelQuery()Ljava/util/function/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->receiveChannelQuery:Ljava/util/function/Function;

    return-object v0
.end method

.method public getSendChannelCount()I
    .registers 2

    .line 221
    iget v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->sendChannelCount:I

    return v0
.end method

.method public getSendChannelQuery()Ljava/util/function/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->sendChannelQuery:Ljava/util/function/Function;

    return-object v0
.end method

.method public onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z
    .registers 9
    .param p1, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x1

    .line 98
    .local v0, "consumed":Z
    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMessageReceived: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v2, "replyData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v3

    packed-switch v3, :pswitch_data_11e

    .line 135
    :pswitch_2a
    const/4 v0, 0x0

    goto/16 :goto_114

    .line 130
    :pswitch_2d
    const-string v3, "last-timestampUs"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 131
    .local v3, "timestampUs":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last timestampUs set as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 133
    goto/16 :goto_114

    .line 119
    .end local v3    # "timestampUs":J
    :pswitch_56
    const-string/jumbo v1, "whole-frames"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 120
    .local v1, "numFrames":I
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 121
    const-string/jumbo v3, "start-time-us"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sume/core/message/Message;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 122
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-string/jumbo v4, "start-time-us"

    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 124
    :cond_83
    const-string v3, "end-time-us"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sume/core/message/Message;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 125
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->endTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "end-time-us"

    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/16 :goto_114

    .line 102
    .end local v1    # "numFrames":I
    :pswitch_9e
    monitor-enter p1

    .line 103
    :try_start_9f
    const-string v3, "contents-id"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sume/core/message/Message;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 104
    const-string v3, "contents-id"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->contentId:I

    .line 106
    :cond_b5
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 108
    .local v3, "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    const-string/jumbo v4, "media-type"

    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/types/MediaType;

    .line 109
    .local v4, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    invoke-virtual {v4}, Lcom/samsung/android/sume/core/types/MediaType;->isAudio()Z

    move-result v5

    if-eqz v5, :cond_d4

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/types/MediaType;->isAudio()Z

    move-result v5

    if-nez v5, :cond_e5

    .line 110
    :cond_d4
    invoke-virtual {v4}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_ea

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v5

    if-nez v5, :cond_e5

    goto :goto_ea

    .line 115
    :cond_e5
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->configCodec(Lcom/samsung/android/sume/core/message/Message;)V

    .line 116
    .end local v3    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v4    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    monitor-exit p1

    .line 117
    goto :goto_114

    .line 111
    .restart local v3    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v4    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :cond_ea
    :goto_ea
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config-data of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not match this codec type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    monitor-exit p1

    const/4 v1, 0x0

    return v1

    .line 116
    .end local v3    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v4    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :catchall_111
    move-exception v1

    monitor-exit p1
    :try_end_113
    .catchall {:try_start_9f .. :try_end_113} :catchall_111

    throw v1

    .line 139
    :cond_114
    :goto_114
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->isRequestToReply()Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 140
    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/message/Message;->reply(Ljava/util/Map;)V

    .line 142
    :cond_11d
    return v0

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_56
        :pswitch_2a
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method public pause()V
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 171
    return-void
.end method

.method public release()V
    .registers 5

    .line 152
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release...E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2d

    .line 155
    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_10} :catch_1b
    .catchall {:try_start_d .. :try_end_10} :catchall_19

    .line 159
    nop

    :goto_11
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 160
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->mediaCodec:Landroid/media/MediaCodec;

    .line 161
    goto :goto_2d

    .line 159
    :catchall_19
    move-exception v0

    goto :goto_25

    .line 156
    :catch_1b
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1c
    sget-object v2, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    const-string v3, "codec stop called but not started yet"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 159
    nop

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_11

    :goto_25
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 160
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->mediaCodec:Landroid/media/MediaCodec;

    .line 161
    throw v0

    .line 164
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->signalCodecFromReady()V

    .line 165
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release...X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public resume()V
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 176
    return-void
.end method

.method public setMessageProducer(Lcom/samsung/android/sume/core/message/MessageProducer;)V
    .registers 2
    .param p1, "messageProducer"    # Lcom/samsung/android/sume/core/message/MessageProducer;

    .line 147
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    .line 148
    return-void
.end method

.method public setReceiveChannelQuery(Ljava/util/function/Function;I)V
    .registers 3
    .param p2, "numChannels"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;I)V"
        }
    .end annotation

    .line 194
    .local p1, "receiveChannelQuery":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Enum<*>;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->receiveChannelQuery:Ljava/util/function/Function;

    .line 195
    iput p2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->receiveChannelCount:I

    .line 196
    return-void
.end method

.method public setSendChannelQuery(Ljava/util/function/Function;I)V
    .registers 3
    .param p2, "numChannels"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;I)V"
        }
    .end annotation

    .line 210
    .local p1, "sendChannelQuery":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Enum<*>;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->sendChannelQuery:Ljava/util/function/Function;

    .line 211
    iput p2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->sendChannelCount:I

    .line 212
    return-void
.end method

.method protected signalCodecFromReady()V
    .registers 5

    .line 78
    const-string/jumbo v0, "signalCodecFromReady...X: "

    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signalCodecFromReady...E: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 81
    :try_start_21
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_41

    .line 83
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    nop

    .line 86
    return-void

    .line 83
    :catchall_41
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 84
    sget-object v2, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    throw v1
.end method

.method public stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->codecTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
