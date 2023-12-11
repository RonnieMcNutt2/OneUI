.class public final Landroid/media/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteController$OnClientUpdateListener;,
        Landroid/media/RemoteController$MediaControllerCallback;,
        Landroid/media/RemoteController$EventHandler;,
        Landroid/media/RemoteController$TopTransportSessionListener;,
        Landroid/media/RemoteController$MetadataEditor;,
        Landroid/media/RemoteController$PlaybackInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_BITMAP_DIMENSION:I = 0x200

.field private static final MSG_CLIENT_CHANGE:I = 0x0

.field private static final MSG_NEW_MEDIA_METADATA:I = 0x2

.field private static final MSG_NEW_PLAYBACK_STATE:I = 0x1

.field public static final POSITION_SYNCHRONIZATION_CHECK:I = 0x1

.field public static final POSITION_SYNCHRONIZATION_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemoteController"

.field private static final mInfoLock:Ljava/lang/Object;


# instance fields
.field private mArtworkHeight:I

.field private mArtworkWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentSession:Landroid/media/session/MediaController;

.field private mEnabled:Z

.field private final mEventHandler:Landroid/media/RemoteController$EventHandler;

.field private mIsRegistered:Z

.field private mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

.field private final mMaxBitmapDimension:I

.field private mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentSession(Landroid/media/RemoteController;)Landroid/media/session/MediaController;
    .registers 1

    iget-object p0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monClientChange(Landroid/media/RemoteController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onClientChange(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNewMediaMetadata(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewMediaMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNewPlaybackState(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateController(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmInfoLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/media/RemoteController$MediaControllerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController$MediaControllerCallback-IA;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 79
    iput v0, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    .line 108
    if-eqz p1, :cond_75

    .line 111
    if-eqz p2, :cond_6d

    .line 114
    if-eqz p3, :cond_24

    .line 115
    new-instance v0, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    goto :goto_31

    .line 117
    :cond_24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 118
    .local v0, "l":Landroid/os/Looper;
    if-eqz v0, :cond_65

    .line 119
    new-instance v2, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    .line 124
    .end local v0    # "l":Landroid/os/Looper;
    :goto_31
    iput-object p2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 125
    iput-object p1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    .line 126
    nop

    .line 127
    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 128
    new-instance v0, Landroid/media/RemoteController$TopTransportSessionListener;

    invoke-direct {v0, p0, v1}, Landroid/media/RemoteController$TopTransportSessionListener;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController$TopTransportSessionListener-IA;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 130
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 131
    const/16 v0, 0x200

    iput v0, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    goto :goto_64

    .line 133
    :cond_52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 134
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    .line 136
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :goto_64
    return-void

    .line 121
    .local v0, "l":Landroid/os/Looper;
    :cond_65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Calling thread not associated with a looper"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    .end local v0    # "l":Landroid/os/Looper;
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null OnClientUpdateListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onClientChange(Z)V
    .registers 5
    .param p1, "clearing"    # Z

    .line 585
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_3
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 587
    .local v1, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 588
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 589
    if-eqz v1, :cond_e

    .line 590
    invoke-interface {v1, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    .line 592
    :cond_e
    return-void

    .line 588
    .end local v1    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private onNewMediaMetadata(Landroid/media/MediaMetadata;)V
    .registers 9
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .line 652
    if-nez p1, :cond_3

    .line 654
    return-void

    .line 659
    :cond_3
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_6
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 661
    .local v1, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    iget-object v2, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v2, :cond_14

    .line 662
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 663
    .local v2, "canRate":Z
    :goto_15
    if-eqz v2, :cond_1b

    const-wide/32 v3, 0x10000001

    goto :goto_1d

    :cond_1b
    const-wide/16 v3, 0x0

    .line 664
    .local v3, "editableKeys":J
    :goto_1d
    iget v5, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    iget v6, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    invoke-static {p1, v5, v6}, Landroid/media/session/MediaSessionLegacyHelper;->getOldMetadata(Landroid/media/MediaMetadata;II)Landroid/os/Bundle;

    move-result-object v5

    .line 666
    .local v5, "legacyMetadata":Landroid/os/Bundle;
    new-instance v6, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v6, p0, v5, v3, v4}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V

    iput-object v6, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 667
    move-object v2, v6

    .line 668
    .end local v3    # "editableKeys":J
    .end local v5    # "legacyMetadata":Landroid/os/Bundle;
    .local v2, "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_34

    .line 669
    if-eqz v1, :cond_33

    .line 670
    invoke-interface {v1, v2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    .line 672
    :cond_33
    return-void

    .line 668
    .end local v1    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    .end local v2    # "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private onNewPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 11
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 632
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_3
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 634
    .local v1, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_46

    .line 635
    if-eqz v1, :cond_45

    .line 636
    if-nez p1, :cond_c

    const/4 v0, 0x0

    goto :goto_14

    .line 637
    :cond_c
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/media/RemoteControlClient;->getRccStateFromState(I)I

    move-result v0

    :goto_14
    nop

    .line 638
    .local v0, "playstate":I
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    goto :goto_34

    .line 641
    :cond_22
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v4

    .line 642
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v8

    .line 641
    move-object v2, v1

    move v3, v0

    invoke-interface/range {v2 .. v8}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_37

    .line 639
    :cond_34
    :goto_34
    invoke-interface {v1, v0}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    .line 644
    :goto_37
    if-eqz p1, :cond_45

    .line 645
    nop

    .line 646
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/media/RemoteControlClient;->getRccControlFlagsFromActions(J)I

    move-result v2

    .line 645
    invoke-interface {v1, v2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    .line 649
    .end local v0    # "playstate":I
    :cond_45
    return-void

    .line 634
    .end local v1    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 10
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delayMs"    # I

    .line 571
    if-nez p0, :cond_1b

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null event handler, will not deliver message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void

    .line 575
    :cond_1b
    if-nez p2, :cond_21

    .line 576
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2b

    .line 577
    :cond_21
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2b

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 578
    return-void

    .line 580
    :cond_2b
    :goto_2b
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 581
    return-void
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .registers 21
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 599
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v3, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v3

    .line 600
    if-nez v2, :cond_21

    .line 601
    :try_start_9
    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_70

    .line 602
    iget-object v4, v1, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v4}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 603
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 604
    iget-object v4, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_70

    .line 607
    :cond_21
    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_35

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object v4, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 609
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 610
    :cond_35
    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_3e

    .line 611
    iget-object v4, v1, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v4}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 613
    :cond_3e
    iget-object v5, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 615
    iput-object v2, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 616
    iget-object v0, v1, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    iget-object v4, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    invoke-virtual {v2, v0, v4}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v10

    .line 619
    .local v10, "state":Landroid/media/session/PlaybackState;
    iget-object v5, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v17

    .line 623
    .local v17, "metadata":Landroid/media/MediaMetadata;
    iget-object v12, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 627
    .end local v10    # "state":Landroid/media/session/PlaybackState;
    .end local v17    # "metadata":Landroid/media/MediaMetadata;
    :cond_70
    :goto_70
    monitor-exit v3

    .line 628
    return-void

    .line 627
    :catchall_72
    move-exception v0

    monitor-exit v3
    :try_end_74
    .catchall {:try_start_9 .. :try_end_74} :catchall_72

    throw v0
.end method


# virtual methods
.method public clearArtworkConfiguration()Z
    .registers 3

    .line 334
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public editMetadata()Landroid/media/RemoteController$MetadataEditor;
    .registers 4

    .line 383
    new-instance v0, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v0, p0}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;)V

    .line 384
    .local v0, "editor":Landroid/media/RemoteController$MetadataEditor;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 385
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 386
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z

    .line 387
    iput-boolean v1, v0, Landroid/media/RemoteController$MetadataEditor;->mArtworkChanged:Z

    .line 388
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditableKeys:J

    .line 389
    return-object v0
.end method

.method public getEstimatedMediaPosition()J
    .registers 5

    .line 212
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_13

    .line 214
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 215
    .local v1, "state":Landroid/media/session/PlaybackState;
    if-eqz v1, :cond_13

    .line 216
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 219
    .end local v1    # "state":Landroid/media/session/PlaybackState;
    :cond_13
    monitor-exit v0

    .line 220
    const-wide/16 v0, -0x1

    return-wide v0

    .line 219
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method getUpdateListener()Landroid/media/RemoteController$OnClientUpdateListener;
    .registers 2

    .line 696
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    return-object v0
.end method

.method public seekTo(J)Z
    .registers 5
    .param p1, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 272
    iget-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-nez v0, :cond_d

    .line 273
    const-string v0, "RemoteController"

    const-string v1, "Cannot use seekTo() from a disabled RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x0

    return v0

    .line 276
    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_27

    .line 279
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_16
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_21

    .line 281
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 283
    :cond_21
    monitor-exit v0

    .line 284
    const/4 v0, 0x1

    return v0

    .line 283
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw v1

    .line 277
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal negative time value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 252
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 255
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_d
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_17

    .line 257
    invoke-virtual {v1, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 259
    :cond_17
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 260
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v1

    .line 253
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a media key event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArtworkConfiguration(II)Z
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public setArtworkConfiguration(ZII)Z
    .registers 7
    .param p1, "wantBitmap"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 299
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    if-eqz p1, :cond_1e

    .line 301
    if-lez p2, :cond_16

    if-lez p3, :cond_16

    .line 302
    :try_start_9
    iget v1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    if-le p2, v1, :cond_e

    move p2, v1

    .line 303
    :cond_e
    if-le p3, v1, :cond_11

    move p3, v1

    .line 304
    :cond_11
    iput p2, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 305
    iput p3, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    goto :goto_23

    .line 307
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid dimensions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/RemoteController;
    .end local p1    # "wantBitmap":Z
    .end local p2    # "width":I
    .end local p3    # "height":I
    throw v1

    .line 310
    .restart local p0    # "this":Landroid/media/RemoteController;
    .restart local p1    # "wantBitmap":Z
    .restart local p2    # "width":I
    .restart local p3    # "height":I
    :cond_1e
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 311
    iput v1, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    .line 313
    :goto_23
    monitor-exit v0

    .line 314
    const/4 v0, 0x1

    return v0

    .line 313
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public setSynchronizationMode(I)Z
    .registers 5
    .param p1, "sync"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 364
    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 365
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown synchronization mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_1f
    :goto_1f
    iget-boolean v1, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    if-nez v1, :cond_2c

    .line 368
    const-string v0, "RemoteController"

    const-string v1, "Cannot set synchronization mode on an unregistered RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x0

    return v0

    .line 372
    :cond_2c
    return v0
.end method

.method startListeningToSessions()V
    .registers 5

    .line 535
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 536
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 537
    .local v0, "listenerComponent":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 538
    .local v1, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 539
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, v2

    .line 541
    :cond_1e
    iget-object v2, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 543
    iget-object v2, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v3, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 544
    invoke-virtual {v3, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 543
    invoke-interface {v2, v3}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    .line 549
    return-void
.end method

.method stopListeningToSessions()V
    .registers 3

    .line 555
    iget-object v0, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 560
    return-void
.end method
