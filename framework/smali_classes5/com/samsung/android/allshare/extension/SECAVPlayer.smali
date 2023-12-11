.class public Lcom/samsung/android/allshare/extension/SECAVPlayer;
.super Lcom/samsung/android/allshare/media/AVPlayer;
.source "SECAVPlayer.java"

# interfaces
.implements Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;
.implements Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;
.implements Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
.implements Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/extension/SECAVPlayer$State;,
        Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;,
        Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;,
        Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    }
.end annotation


# static fields
.field private static final TAG_CLASS:Ljava/lang/String; = "SECAVPlayer"


# instance fields
.field private mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

.field private mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

.field private mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

.field private mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

.field mChangeMute:Z

.field private mHandlerPlayInfo:Landroid/os/Handler;

.field private mIsPlayInfoThreadRunning:Z

.field private mIsSubscriberRequested:Z

.field private mNotifyStopRunnable:Ljava/lang/Runnable;

.field mRequestChangeMute:Z

.field mRequestVolume:Z

.field private mRunnablePlayInfo:Ljava/lang/Runnable;

.field private mSECAvPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

.field private mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

.field private mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

.field private mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

.field private mStopTimer:Landroid/os/Handler;

.field private mVolumeDelta:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAVPlayer(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAVPlayerPlaybackResponseListener(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandlerPlayInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPlayInfoThreadRunning(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSubscriberRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunnablePlayInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/extension/SECAVPlayer$State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsSubscriberRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVolumeDelta(Lcom/samsung/android/allshare/extension/SECAVPlayer;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVolumeDelta(Lcom/samsung/android/allshare/extension/SECAVPlayer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->setVolumeDelta(I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/allshare/media/AVPlayer;Landroid/content/Context;)V
    .registers 6
    .param p1, "player"    # Lcom/samsung/android/allshare/media/AVPlayer;
    .param p2, "context"    # Landroid/content/Context;

    .line 673
    invoke-direct {p0}, Lcom/samsung/android/allshare/media/AVPlayer;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    .line 219
    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    .line 221
    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    .line 223
    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    .line 664
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    .line 666
    new-instance v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-direct {v2, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer$State-IA;)V

    iput-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    .line 727
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    .line 729
    new-instance v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$1;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V

    iput-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    .line 744
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    .line 747
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    .line 1209
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    .line 1211
    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 1213
    new-instance v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V

    iput-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    .line 1762
    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    .line 2003
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 2005
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 2008
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    .line 2138
    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECAvPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 674
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    .line 675
    invoke-virtual {p1, p0}, Lcom/samsung/android/allshare/media/AVPlayer;->setEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V

    .line 676
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/allshare/media/AVPlayer;->setExtensionEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;)V

    .line 677
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/allshare/media/AVPlayer;->setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V

    .line 678
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/allshare/media/AVPlayer;->setExtensionResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;)V

    .line 679
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECAvPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer;->setVolumeResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V

    .line 680
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    .line 681
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    .line 682
    return-void
.end method

.method private declared-synchronized guessMeaningOfStopState(Lcom/samsung/android/allshare/ERROR;Z)V
    .registers 14
    .param p1, "error"    # Lcom/samsung/android/allshare/ERROR;
    .param p2, "fromEvent"    # Z

    monitor-enter p0

    .line 687
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v0

    .line 689
    .local v0, "curPos":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_26

    .line 690
    const-string v2, "SECAVPLAYER"

    const-string v3, " STOP (not notified)"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 692
    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_ba

    .line 693
    monitor-exit p0

    return-void

    .line 695
    .end local p0    # "this":Lcom/samsung/android/allshare/extension/SECAVPlayer;
    :cond_26
    :try_start_26
    iget-object v4, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v4}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v4

    .line 696
    .local v4, "mediaInfo":Lcom/samsung/android/allshare/media/MediaInfo;
    iget-object v5, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v5

    .line 700
    .local v5, "mediaDuration":J
    if-eqz v4, :cond_41

    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_41

    .line 701
    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v7

    move-wide v5, v7

    .line 703
    :cond_41
    cmp-long v2, v5, v2

    if-gtz v2, :cond_62

    .line 704
    const-string v2, "SECAVPLAYER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mediaDuration : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnStop()V
    :try_end_60
    .catchall {:try_start_26 .. :try_end_60} :catchall_ba

    .line 706
    monitor-exit p0

    return-void

    .line 709
    :cond_62
    const/4 v2, 0x0

    .line 711
    .local v2, "endingMargin":I
    const-wide/16 v7, 0x1e

    cmp-long v3, v5, v7

    if-lez v3, :cond_6c

    .line 712
    const/16 v2, 0xa

    goto :goto_71

    .line 715
    :cond_6c
    long-to-double v7, v5

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    double-to-int v2, v7

    .line 718
    :goto_71
    :try_start_71
    const-string v3, "SECAVPLAYER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mediaDuration : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v3, "SECAVPLAYER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " curPos : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnStop()V

    .line 721
    sub-long v7, v5, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    int-to-long v9, v2

    cmp-long v3, v7, v9

    if-gtz v3, :cond_b8

    .line 722
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    const/4 v7, 0x1

    invoke-static {v3, v7}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 723
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->getPlayPosition()V
    :try_end_b8
    .catchall {:try_start_71 .. :try_end_b8} :catchall_ba

    .line 725
    :cond_b8
    monitor-exit p0

    return-void

    .line 686
    .end local v0    # "curPos":J
    .end local v2    # "endingMargin":I
    .end local v4    # "mediaInfo":Lcom/samsung/android/allshare/media/MediaInfo;
    .end local v5    # "mediaDuration":J
    .end local p1    # "error":Lcom/samsung/android/allshare/ERROR;
    .end local p2    # "fromEvent":Z
    :catchall_ba
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setVolumeDelta(I)V
    .registers 5
    .param p1, "currentVolume"    # I

    .line 2108
    const/4 v0, 0x0

    .line 2110
    .local v0, "setVolume":I
    iget v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    add-int/2addr v1, p1

    .line 2111
    .end local v0    # "setVolume":I
    .local v1, "setVolume":I
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    .line 2113
    if-gez v1, :cond_b

    .line 2114
    const/4 v1, 0x0

    goto :goto_11

    .line 2115
    :cond_b
    const/16 v0, 0x64

    if-le v1, v0, :cond_11

    .line 2116
    const/16 v1, 0x64

    .line 2118
    :cond_11
    :goto_11
    if-eq p1, v1, :cond_30

    .line 2119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setVolumeDelta - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SECAVPLAYER"

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer;->setVolume(I)V

    .line 2122
    :cond_30
    return-void
.end method

.method private updateCurrentStatus()V
    .registers 4

    .line 2230
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    if-eqz v0, :cond_3c

    .line 2231
    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v0

    .line 2233
    .local v0, "state":Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$5;->$SwitchMap$com$samsung$android$allshare$media$AVPlayer$AVPlayerState:[I

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3e

    .line 2254
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    goto :goto_3c

    .line 2251
    :pswitch_1b
    goto :goto_3c

    .line 2247
    :pswitch_1c
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 2248
    goto :goto_3c

    .line 2243
    :pswitch_24
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 2244
    goto :goto_3c

    .line 2239
    :pswitch_2c
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 2240
    goto :goto_3c

    .line 2235
    :pswitch_34
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 2236
    nop

    .line 2257
    .end local v0    # "state":Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    :cond_3c
    :goto_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public CreateWHAParty()V
    .registers 2

    .line 2520
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->CreateWHAParty()V

    .line 2521
    return-void
.end method

.method public GetWHADeviceStatusInfo()V
    .registers 2

    .line 2508
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->GetWHADeviceStatusInfo()V

    .line 2509
    return-void
.end method

.method public JoinWHAParty(Ljava/lang/String;)V
    .registers 3
    .param p1, "partyID"    # Ljava/lang/String;

    .line 2533
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->JoinWHAParty(Ljava/lang/String;)V

    .line 2534
    return-void
.end method

.method public LeaveWHAParty()V
    .registers 2

    .line 2546
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->LeaveWHAParty()V

    .line 2547
    return-void
.end method

.method public SetWHAResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    .line 2497
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->SetWHAResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;)V

    .line 2498
    return-void
.end method

.method public changeMute()V
    .registers 3

    .line 2130
    const-string v0, "SECAVPLAYER"

    const-string v1, " changeMute"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    .line 2132
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    if-eq v0, v1, :cond_18

    .line 2133
    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    .line 2134
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMute()V

    .line 2136
    :cond_18
    return-void
.end method

.method public controlCaption(Lcom/samsung/android/allshare/Caption$CaptionOperation;Lcom/samsung/android/allshare/Caption;)V
    .registers 4
    .param p1, "operation"    # Lcom/samsung/android/allshare/Caption$CaptionOperation;
    .param p2, "caption"    # Lcom/samsung/android/allshare/Caption;

    .line 2702
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->controlCaption(Lcom/samsung/android/allshare/Caption$CaptionOperation;Lcom/samsung/android/allshare/Caption;)V

    .line 2703
    return-void
.end method

.method public getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 2760
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .registers 2

    .line 1680
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .registers 2

    .line 1692
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .line 1706
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .registers 2

    .line 1728
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAdress()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1714
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .registers 2

    .line 1742
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getIcon()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Icon;",
            ">;"
        }
    .end annotation

    .line 1756
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    if-nez v0, :cond_a

    .line 1757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1759
    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLastReceivedMediaInfo()Lcom/samsung/android/allshare/media/MediaInfo;
    .registers 2

    .line 806
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLastReceivedPlayPosition()J
    .registers 3

    .line 794
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()V
    .registers 5

    .line 1769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    .line 1770
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMediaInfo()V

    .line 1772
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$3;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1788
    return-void
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    .line 1801
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()V
    .registers 2

    .line 1813
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMute()V

    .line 1814
    return-void
.end method

.method public getNIC()Ljava/lang/String;
    .registers 2

    .line 2226
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1827
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getP2pMacAddress()Ljava/lang/String;
    .registers 2

    .line 2572
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayPosition()V
    .registers 3

    .line 1840
    const-string v0, "SECAVPLAYER"

    const-string v1, "@@@getPlayPosition"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getPlayPosition()V

    .line 1842
    return-void
.end method

.method public getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .registers 2

    .line 1854
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistPlayer()Lcom/samsung/android/allshare/media/PlaylistPlayer;
    .registers 2

    .line 2431
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getPlaylistPlayer()Lcom/samsung/android/allshare/media/PlaylistPlayer;

    move-result-object v0

    return-object v0
.end method

.method public getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .registers 3
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 2609
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSharingInfo()Ljava/lang/String;
    .registers 2

    .line 2581
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .registers 3
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 2616
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSharingP2pMacAddr()Ljava/lang/String;
    .registers 2

    .line 2600
    const-string v0, ""

    return-object v0
.end method

.method public getSecProductP2pMacAddr()Ljava/lang/String;
    .registers 2

    .line 2594
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getSecProductP2pMacAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()V
    .registers 3

    .line 2416
    const-string v0, "SECAVPlayer"

    const-string/jumbo v1, "getState is not working(SECAVPlayer)"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    return-void
.end method

.method public getVolume()V
    .registers 2

    .line 1866
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getVolume()V

    .line 1867
    return-void
.end method

.method public isRedirectSupportable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2451
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportRedirect()Z

    move-result v0

    return v0
.end method

.method public isSeekableOnPaused()Z
    .registers 2

    .line 2555
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSeekableOnPaused()Z

    move-result v0

    return v0
.end method

.method public isSupport360View()Z
    .registers 2

    .line 2741
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupport360View()Z

    move-result v0

    return v0
.end method

.method public isSupportAspectRatio()Z
    .registers 2

    .line 2728
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportAspectRatio()Z

    move-result v0

    return v0
.end method

.method public isSupportAudio()Z
    .registers 2

    .line 1879
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportAudio()Z

    move-result v0

    return v0
.end method

.method public isSupportCaptionControl()Z
    .registers 2

    .line 2754
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportCaptionControl()Z

    move-result v0

    return v0
.end method

.method public isSupportDynamicBuffering()Z
    .registers 2

    .line 2472
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportDynamicBuffering()Z

    move-result v0

    return v0
.end method

.method public isSupportRedirect()Z
    .registers 2

    .line 2444
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportRedirect()Z

    move-result v0

    return v0
.end method

.method public isSupportVideo()Z
    .registers 2

    .line 1891
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportVideo()Z

    move-result v0

    return v0
.end method

.method public isSupportedByType(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 3452
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportedByType(I)Z

    move-result v0

    return v0
.end method

.method public isWholeHomeAudio()Z
    .registers 2

    .line 2563
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isWholeHomeAudio()Z

    move-result v0

    return v0
.end method

.method public move360View(FF)V
    .registers 4
    .param p1, "latitudeOffset"    # F
    .param p2, "longitudeOffset"    # F

    .line 2660
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->move360View(FF)V

    .line 2661
    return-void
.end method

.method protected notifyOnBuffering()V
    .registers 3

    .line 815
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 817
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_17

    .line 818
    const-string v0, "SECAVPLAYER"

    const-string v1, " OnBuffering"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onBuffering()V

    .line 821
    :cond_17
    return-void
.end method

.method protected notifyOnError(Lcom/samsung/android/allshare/ERROR;)V
    .registers 4
    .param p1, "e"    # Lcom/samsung/android/allshare/ERROR;

    .line 900
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 901
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 902
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 904
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_22

    .line 905
    const-string v0, "SECAVPLAYER"

    const-string v1, " OnError"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 908
    :cond_22
    return-void
.end method

.method protected notifyOnFinish()V
    .registers 3

    .line 886
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_10

    .line 887
    const-string v0, "SECAVPLAYER"

    const-string v1, " OnFinish"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onFinish()V

    .line 890
    :cond_10
    return-void
.end method

.method protected notifyOnPause()V
    .registers 3

    .line 858
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 860
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_17

    .line 861
    const-string v0, "SECAVPLAYER"

    const-string v1, " OnPause"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onPause()V

    .line 864
    :cond_17
    return-void
.end method

.method protected notifyOnPlay()V
    .registers 3

    .line 829
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 830
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 831
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-nez v0, :cond_1b

    .line 832
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 836
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_2b

    .line 837
    const-string v0, "SECAVPLAYER"

    const-string v1, " OnPlay"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onPlay()V

    .line 840
    :cond_2b
    return-void
.end method

.method protected notifyOnProgress(J)V
    .registers 4
    .param p1, "pos"    # J

    .line 848
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_7

    .line 849
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onProgress(J)V

    .line 850
    :cond_7
    return-void
.end method

.method protected notifyOnStop()V
    .registers 3

    .line 872
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_10

    .line 873
    const-string v0, "SECAVPLAYER"

    const-string v1, " OnStop"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onStop()V

    .line 876
    :cond_10
    return-void
.end method

.method public onAspectRatioStateResponseReceived(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V
    .registers 4
    .param p1, "aspectRatio"    # Ljava/lang/String;
    .param p2, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 2953
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_7

    .line 2954
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onAspectRatioStateResponseReceived(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 2955
    :cond_7
    return-void
.end method

.method public onCaptionStateResponseReceived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V
    .registers 5
    .param p3, "err"    # Lcom/samsung/android/allshare/ERROR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/ERROR;",
            ")V"
        }
    .end annotation

    .line 3443
    .local p1, "availableCaptions":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    .local p2, "enabledCaptions":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_7

    .line 3444
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onCaptionStateResponseReceived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    .line 3446
    :cond_7
    return-void
.end method

.method public onControlCaptionResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .registers 3
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 3342
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_7

    .line 3343
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onControlCaptionResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 3344
    :cond_7
    return-void
.end method

.method public onDeviceChanged(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V
    .registers 13
    .param p1, "state"    # Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .param p2, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 2264
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECAVPLAYER"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    sget-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$5;->$SwitchMap$com$samsung$android$allshare$media$AVPlayer$AVPlayerState:[I

    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_e8

    goto/16 :goto_e7

    .line 2300
    :pswitch_2f
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v4

    .line 2301
    .local v4, "mediaDuration":J
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    .line 2302
    .local v0, "mediaInfo":Lcom/samsung/android/allshare/media/MediaInfo;
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4b

    .line 2303
    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v4

    .line 2306
    :cond_4b
    iget-object v6, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v6, v2, v3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mcompareAndSetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;ZZ)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 2307
    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v2, v4, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    .line 2308
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    .line 2309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FINISHED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnFinish()V

    .line 2311
    return-void

    .line 2315
    .end local v0    # "mediaInfo":Lcom/samsung/android/allshare/media/MediaInfo;
    .end local v4    # "mediaDuration":J
    :pswitch_75
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$misPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 2316
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p0, v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnError(Lcom/samsung/android/allshare/ERROR;)V

    .line 2317
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2318
    iput-boolean v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    goto :goto_e7

    .line 2276
    :pswitch_8c
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fgetcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-eq v0, v1, :cond_e7

    .line 2277
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnPause()V

    goto :goto_e7

    .line 2281
    :pswitch_9a
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$misPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 2282
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnPlay()V

    goto :goto_e7

    .line 2271
    :pswitch_a6
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fgetcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-eq v0, v1, :cond_e7

    .line 2272
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnBuffering()V

    goto :goto_e7

    .line 2286
    :pswitch_b4
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p2, v0}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 2287
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 2288
    invoke-virtual {p0, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnError(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_dd

    .line 2289
    :cond_c7
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$misPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 2290
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->guessMeaningOfStopState(Lcom/samsung/android/allshare/ERROR;Z)V

    .line 2291
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    goto :goto_dd

    .line 2293
    :cond_da
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnStop()V

    .line 2296
    :goto_dd
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2297
    iput-boolean v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 2298
    nop

    .line 2323
    :cond_e7
    :goto_e7
    return-void

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_a6
        :pswitch_9a
        :pswitch_8c
        :pswitch_75
        :pswitch_2f
    .end packed-switch
.end method

.method public onExtensionEvent(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V
    .registers 12
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/String;
    .param p3, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 2376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onExtensionEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECAVPLAYER"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    const-string v0, "com.sec.android.allshare.event.EVENT_RENDERER_ASPECT_RATIO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2379
    const-string v0, "event onAspectRatio"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;->onAspectRatio(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    goto/16 :goto_a4

    .line 2382
    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2383
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    invoke-static {p2}, Lcom/samsung/android/allshare/Caption;->parseCaption(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2384
    .local v2, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    if-nez v2, :cond_3b

    .line 2385
    sget-object p3, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    goto :goto_7f

    .line 2387
    :cond_3b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Caption;

    .line 2388
    .local v4, "caption":Lcom/samsung/android/allshare/Caption;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Caption;->getCaptionUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2389
    .local v5, "captionUri":Ljava/lang/String;
    if-eqz v5, :cond_5e

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5e

    .line 2390
    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/Caption;->setCaptionUri(Ljava/lang/String;)V

    .line 2392
    :cond_5e
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onExtensionEvent : [caption]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Caption;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SECAVPlayer"

    invoke-static {v7, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    .end local v4    # "caption":Lcom/samsung/android/allshare/Caption;
    .end local v5    # "captionUri":Ljava/lang/String;
    goto :goto_3f

    .line 2396
    :cond_7f
    :goto_7f
    const-string v3, "com.sec.android.allshare.event.EVENT_RENDERER_CAPTIONS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 2397
    const-string v3, "event onAvailableCaptions"

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    invoke-interface {v1, v0, p3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;->onAvailableCaptions(Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_a4

    .line 2399
    :cond_92
    const-string v3, "com.sec.android.allshare.event.EVENT_RENDERER_ENABLED_CAPTIONS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 2400
    const-string v3, "event onEnabledCaptions"

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    invoke-interface {v1, v0, p3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;->onEnabledCaptions(Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    .line 2404
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    .end local v2    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    :cond_a4
    :goto_a4
    return-void
.end method

.method public onGetMediaInfoResponseReceived(Lcom/samsung/android/allshare/media/MediaInfo;Lcom/samsung/android/allshare/ERROR;)V
    .registers 7
    .param p1, "mediaInfo"    # Lcom/samsung/android/allshare/media/MediaInfo;
    .param p2, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1196
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p2, v0}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1197
    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_27

    .line 1200
    :cond_17
    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 1201
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/media/MediaInfo;)V

    goto :goto_28

    .line 1198
    :cond_27
    :goto_27
    return-void

    .line 1203
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    .line 1204
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    .line 1205
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetMediaInfoResponseReceived(Lcom/samsung/android/allshare/media/MediaInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 1207
    :cond_37
    return-void
.end method

.method public onGetPlayPositionResponseReceived(JLcom/samsung/android/allshare/ERROR;)V
    .registers 13
    .param p1, "position"    # J
    .param p3, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 994
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    .line 995
    invoke-virtual {p3, v0}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_1b

    .line 996
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 997
    iput-boolean v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 1000
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v3

    .line 1001
    .local v3, "mediaDuration":J
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    .line 1002
    .local v0, "mediaInfo":Lcom/samsung/android/allshare/media/MediaInfo;
    const-wide/16 v5, 0x0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-lez v7, :cond_37

    .line 1003
    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v3

    .line 1006
    :cond_37
    cmp-long v5, p1, v5

    if-eqz v5, :cond_47

    cmp-long v5, p1, v3

    if-eqz v5, :cond_47

    const-wide/16 v5, 0x1

    sub-long v5, v3, v5

    cmp-long v5, p1, v5

    if-nez v5, :cond_7d

    :cond_47
    iget-object v5, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    .line 1007
    invoke-static {v5, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mcompareAndSetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;ZZ)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1008
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v1, v3, v4}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    .line 1009
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SECAVPLAYER"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnFinish()V

    .line 1012
    return-void

    .line 1016
    :cond_7d
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_88

    .line 1017
    return-void

    .line 1019
    :cond_88
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p3, v1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 1020
    return-void

    .line 1022
    :cond_91
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    .line 1023
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    .line 1024
    return-void
.end method

.method public onGetStateResponseReceived(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V
    .registers 4
    .param p1, "state"    # Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .param p2, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1664
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    if-ne p2, v0, :cond_7

    .line 1665
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->onDeviceChanged(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V

    .line 1669
    :cond_7
    return-void
.end method

.method public onMove360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .registers 3
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 3050
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_7

    .line 3051
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onMove360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 3052
    :cond_7
    return-void
.end method

.method public onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .registers 4
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1585
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1586
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 1590
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_19

    .line 1591
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1592
    :cond_19
    return-void
.end method

.method public onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V
    .registers 8
    .param p1, "ai"    # Lcom/samsung/android/allshare/Item;
    .param p2, "ci"    # Lcom/samsung/android/allshare/media/ContentInfo;
    .param p3, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1314
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p3}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1318
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2c

    .line 1319
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMediaInfo()V

    goto :goto_2c

    .line 1322
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 1325
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_33

    .line 1326
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 1327
    :cond_33
    return-void
.end method

.method public onReset360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .registers 3
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 3244
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_7

    .line 3245
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onReset360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 3246
    :cond_7
    return-void
.end method

.method public onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .registers 4
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1492
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1495
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-nez v0, :cond_16

    .line 1496
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 1501
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_1d

    .line 1502
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1503
    :cond_1d
    return-void
.end method

.method public onSeekResponseReceived(JLcom/samsung/android/allshare/ERROR;)V
    .registers 5
    .param p1, "requestedPosition"    # J
    .param p3, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1111
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_7

    .line 1112
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onSeekResponseReceived(JLcom/samsung/android/allshare/ERROR;)V

    .line 1113
    :cond_7
    return-void
.end method

.method public onSetAspectRatioResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .registers 3
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 2855
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_7

    .line 2856
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onSetAspectRatioResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 2857
    :cond_7
    return-void
.end method

.method public onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .registers 3
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1409
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_7

    .line 1410
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1411
    :cond_7
    return-void
.end method

.method public onZoom360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .registers 3
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 3147
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_7

    .line 3148
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onZoom360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 3149
    :cond_7
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1939
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->pause()V

    .line 1940
    return-void
.end method

.method public play(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
    .registers 9
    .param p1, "ai"    # Lcom/samsung/android/allshare/Item;
    .param p2, "ci"    # Lcom/samsung/android/allshare/media/ContentInfo;

    .line 1906
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1907
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 1910
    if-eqz p1, :cond_1c

    .line 1911
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getDuration()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    .line 1914
    :cond_1c
    const-wide/16 v1, 0x0

    if-nez p2, :cond_26

    .line 1915
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNewPlayState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    goto :goto_2f

    .line 1917
    :cond_26
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNewPlayState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    .line 1920
    :goto_2f
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_43

    .line 1921
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v5, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v3, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 1924
    :cond_43
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v3, v4}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 1925
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 1926
    const-string v0, "SECAVPLAYER"

    const-string v3, " play"

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->play(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    .line 1928
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    .line 1929
    return-void
.end method

.method public prepare(Lcom/samsung/android/allshare/Item;)V
    .registers 3
    .param p1, "ai"    # Lcom/samsung/android/allshare/Item;

    .line 2463
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->prepare(Lcom/samsung/android/allshare/Item;)V

    .line 2464
    return-void
.end method

.method public requestAspectRatioState()V
    .registers 2

    .line 2645
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->requestAspectRatioState()V

    .line 2646
    return-void
.end method

.method public requestCaptionState()V
    .registers 2

    .line 2715
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->requestCaptionState()V

    .line 2716
    return-void
.end method

.method public requestMobileToTV(Ljava/lang/String;I)V
    .registers 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 2588
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->requestMobileToTV(Ljava/lang/String;I)V

    .line 2589
    return-void
.end method

.method public reset360View()V
    .registers 2

    .line 2686
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->reset360View()V

    .line 2687
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1950
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->resume()V

    .line 1951
    return-void
.end method

.method public seek(J)V
    .registers 4
    .param p1, "targetTime"    # J

    .line 1965
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->seek(J)V

    .line 1966
    return-void
.end method

.method public setAspectRatio(Ljava/lang/String;)V
    .registers 3
    .param p1, "aspectRatio"    # Ljava/lang/String;

    .line 2631
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 2632
    return-void
.end method

.method public setEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V
    .registers 2
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;

    .line 1976
    return-void
.end method

.method public setExtensionEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;)V
    .registers 2
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;

    .line 1985
    return-void
.end method

.method public setExtensionResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;)V
    .registers 2
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    .line 2058
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    .line 2059
    return-void
.end method

.method public setMute(Z)V
    .registers 3
    .param p1, "m"    # Z

    .line 2000
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->setMute(Z)V

    .line 2001
    return-void
.end method

.method public setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V
    .registers 2
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 2025
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 2026
    return-void
.end method

.method public setSECAVPlayerExtensionEventListener(Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    .line 780
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    .line 781
    return-void
.end method

.method public setSmartAVPlayerEventListener(Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    .line 762
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    .line 763
    return-void
.end method

.method public setVolume(I)V
    .registers 3
    .param p1, "level"    # I

    .line 2074
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->setVolume(I)V

    .line 2075
    return-void
.end method

.method public setVolumeResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V
    .registers 2
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 2041
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 2042
    return-void
.end method

.method public skipDynamicBuffering()V
    .registers 2

    .line 2480
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->skipDynamicBuffering()V

    .line 2481
    return-void
.end method

.method public stop()V
    .registers 4

    .line 2205
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 2208
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2210
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 2211
    const-string v0, "SECAVPLAYER"

    const-string v1, " stop"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->stop()V

    .line 2213
    return-void
.end method

.method public volumeDown()V
    .registers 3

    .line 2098
    const-string v0, "SECAVPLAYER"

    const-string v1, " volumeDown"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    iget v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    .line 2100
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    if-eq v0, v1, :cond_18

    .line 2101
    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    .line 2102
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getVolume()V

    .line 2105
    :cond_18
    return-void
.end method

.method public volumeUp()V
    .registers 3

    .line 2083
    const-string v0, "SECAVPLAYER"

    const-string v1, " volumeUp"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    iget v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    .line 2085
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    if-eq v0, v1, :cond_18

    .line 2086
    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    .line 2087
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getVolume()V

    .line 2090
    :cond_18
    return-void
.end method

.method public zoom360View(F)V
    .registers 3
    .param p1, "ScaleFactor"    # F

    .line 2674
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->zoom360View(F)V

    .line 2675
    return-void
.end method
