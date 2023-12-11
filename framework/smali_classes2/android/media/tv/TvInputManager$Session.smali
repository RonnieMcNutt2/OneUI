.class public final Landroid/media/tv/TvInputManager$Session;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputManager$Session$InputEventHandler;,
        Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;,
        Landroid/media/tv/TvInputManager$Session$PendingEvent;,
        Landroid/media/tv/TvInputManager$Session$TvInputEventSender;
    }
.end annotation


# static fields
.field static final DISPATCH_HANDLED:I = 0x1

.field static final DISPATCH_IN_PROGRESS:I = -0x1

.field static final DISPATCH_NOT_HANDLED:I = 0x0

.field private static final INPUT_SESSION_NOT_RESPONDING_TIMEOUT:J = 0x9c4L


# instance fields
.field private final mAudioPresentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Landroid/view/InputChannel;

.field private final mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

.field private mIAppNotificationEnabled:Z

.field private mIAppSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

.field private final mMetadataLock:Ljava/lang/Object;

.field private final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/media/tv/TvInputManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAudioPresentationId:I

.field private mSelectedAudioProgramId:I

.field private mSelectedAudioTrackId:Ljava/lang/String;

.field private mSelectedSubtitleTrackId:Ljava/lang/String;

.field private mSelectedVideoTrackId:Ljava/lang/String;

.field private mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

.field private final mSeq:I

.field private final mService:Landroid/media/tv/ITvInputManager;

.field private final mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;

.field private final mUserId:I

.field private mVideoHeight:I

.field private final mVideoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmIAppNotificationEnabled(Landroid/media/tv/TvInputManager$Session;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/TvInputManager$Session;->mIAppNotificationEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mrecyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->recyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseInternal(Landroid/media/tv/TvInputManager$Session;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->releaseInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "channel"    # Landroid/view/InputChannel;
    .param p3, "service"    # Landroid/media/tv/ITvInputManager;
    .param p4, "userId"    # I
    .param p5, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/view/InputChannel;",
            "Landroid/media/tv/ITvInputManager;",
            "II",
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;)V"
        }
    .end annotation

    .line 2708
    .local p6, "sessionCallbackRecordMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/media/tv/TvInputManager$SessionCallbackRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2670
    new-instance v0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    .line 2672
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 2673
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    .line 2680
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    .line 2682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    .line 2684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    .line 2686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    .line 2688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    .line 2690
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioProgramId:I

    .line 2692
    iput v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioPresentationId:I

    .line 2705
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvInputManager$Session;->mIAppNotificationEnabled:Z

    .line 2709
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    .line 2710
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    .line 2711
    iput-object p3, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    .line 2712
    iput p4, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    .line 2713
    iput p5, p0, Landroid/media/tv/TvInputManager$Session;->mSeq:I

    .line 2714
    iput-object p6, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    .line 2715
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;Landroid/media/tv/TvInputManager$Session-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/media/tv/TvInputManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;)V

    return-void
.end method

.method private containsAudioPresentation(Ljava/util/List;I)Z
    .registers 7
    .param p2, "presentationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;I)Z"
        }
    .end annotation

    .line 2905
    .local p1, "audioPresentations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2906
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPresentation;

    .line 2907
    .local v2, "audioPresentation":Landroid/media/AudioPresentation;
    invoke-virtual {v2}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v3

    if-ne v3, p2, :cond_1c

    .line 2908
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2910
    .end local v2    # "audioPresentation":Landroid/media/AudioPresentation;
    :cond_1c
    goto :goto_7

    .line 2911
    :cond_1d
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2912
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private containsTrack(Ljava/util/List;Ljava/lang/String;)Z
    .registers 6
    .param p2, "trackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 3033
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvTrackInfo;

    .line 3034
    .local v1, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3035
    const/4 v0, 0x1

    return v0

    .line 3037
    .end local v1    # "track":Landroid/media/tv/TvTrackInfo;
    :cond_1c
    goto :goto_4

    .line 3038
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private flushPendingEventsLocked()V
    .registers 7

    .line 3636
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->removeMessages(I)V

    .line 3638
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3639
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_26

    .line 3640
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3641
    .local v3, "seq":I
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 3642
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3643
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 3639
    .end local v3    # "seq":I
    .end local v4    # "msg":Landroid/os/Message;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 3645
    .end local v2    # "i":I
    :cond_26
    return-void
.end method

.method private obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .registers 8
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 3649
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3650
    .local v0, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    if-nez v0, :cond_11

    .line 3651
    new-instance v1, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/tv/TvInputManager$Session$PendingEvent;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent-IA;)V

    move-object v0, v1

    .line 3653
    :cond_11
    iput-object p1, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 3654
    iput-object p2, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    .line 3655
    iput-object p3, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    .line 3656
    iput-object p4, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    .line 3657
    return-object v0
.end method

.method private recyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .registers 3
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3661
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;->recycle()V

    .line 3662
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 3663
    return-void
.end method

.method private releaseInternal()V
    .registers 4

    .line 3670
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    .line 3671
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v1

    .line 3672
    :try_start_6
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_1f

    .line 3673
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    if-eqz v2, :cond_18

    .line 3674
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->flushPendingEventsLocked()V

    .line 3675
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    invoke-virtual {v2}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->dispose()V

    .line 3676
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    .line 3678
    :cond_18
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 3679
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    .line 3681
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_2f

    .line 3682
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3683
    :try_start_23
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mSeq:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 3684
    monitor-exit v0

    .line 3685
    return-void

    .line 3684
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2c

    throw v1

    .line 3681
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .registers 5
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3565
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v0

    .line 3566
    :try_start_3
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I

    move-result v1

    .line 3567
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 3568
    monitor-exit v0

    return-void

    .line 3570
    .end local v1    # "result":I
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    .line 3572
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvInputManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V

    .line 3573
    return-void

    .line 3570
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I
    .registers 8
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3576
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_60

    .line 3577
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    if-nez v1, :cond_15

    .line 3578
    new-instance v1, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-virtual {v2}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    .line 3581
    :cond_15
    iget-object v0, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 3582
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    .line 3583
    .local v1, "seq":I
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 3584
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3585
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3586
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3587
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3588
    const/4 v3, -0x1

    return v3

    .line 3591
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to send input event to session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dropping:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvInputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "seq":I
    :cond_60
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method createOverlayView(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 3444
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3445
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3446
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 3449
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_18

    .line 3450
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    return-void

    .line 3454
    :cond_18
    :try_start_18
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2, p2, v3}, Landroid/media/tv/ITvInputManager;->createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_25

    .line 3457
    nop

    .line 3458
    return-void

    .line 3455
    :catch_25
    move-exception v0

    .line 3456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3447
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "view must be attached to a window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 3525
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3526
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3527
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3528
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v0

    .line 3529
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    if-nez v1, :cond_13

    .line 3530
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 3532
    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/TvInputManager$Session;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/TvInputManager$Session$PendingEvent;

    move-result-object v1

    .line 3533
    .local v1, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_27

    .line 3535
    invoke-direct {p0, v1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 3539
    :cond_27
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3540
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3541
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-virtual {v3, v2}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3542
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 3543
    .end local v1    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public dispatchSurfaceChanged(III)V
    .registers 10
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2787
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_c

    .line 2788
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    return-void

    .line 2792
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v5, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputManager;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_18

    .line 2795
    nop

    .line 2796
    return-void

    .line 2793
    :catch_18
    move-exception v0

    .line 2794
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method finishedInputEvent(IZZ)V
    .registers 10
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .line 3599
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v0

    .line 3600
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 3601
    .local v1, "index":I
    if-gez v1, :cond_d

    .line 3602
    monitor-exit v0

    return-void

    .line 3605
    :cond_d
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3606
    .local v2, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3608
    if-eqz p3, :cond_37

    .line 3609
    const-string v3, "TvInputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for session to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 3612
    :cond_37
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3614
    .end local v1    # "index":I
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_42

    .line 3616
    invoke-virtual {p0, v2, p2}, Landroid/media/tv/TvInputManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V

    .line 3617
    return-void

    .line 3614
    .end local v2    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public getAudioPresentations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation

    .line 2922
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2923
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    if-nez v1, :cond_e

    .line 2924
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object v1

    .line 2926
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 2927
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getInteractiveAppSession()Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .registers 2

    .line 2718
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mIAppSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    return-object v0
.end method

.method public getSelectedAudioPresentationId()I
    .registers 3

    .line 2953
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2954
    :try_start_3
    iget v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioPresentationId:I

    monitor-exit v0

    return v1

    .line 2955
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getSelectedProgramId()I
    .registers 3

    .line 2939
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2940
    :try_start_3
    iget v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioProgramId:I

    monitor-exit v0

    return v1

    .line 2941
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getSelectedTrack(I)Ljava/lang/String;
    .registers 5
    .param p1, "type"    # I

    .line 3081
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3082
    if-nez p1, :cond_b

    .line 3083
    :try_start_5
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3089
    :catchall_9
    move-exception v1

    goto :goto_33

    .line 3084
    :cond_b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    .line 3085
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3086
    :cond_12
    const/4 v1, 0x2

    if-ne p1, v1, :cond_19

    .line 3087
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3089
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_9

    .line 3090
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3089
    :goto_33
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_9

    throw v1
.end method

.method getToken()Landroid/os/IBinder;
    .registers 2

    .line 3666
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getTracks(I)Ljava/util/List;
    .registers 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation

    .line 3051
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3052
    const/4 v1, 0x0

    if-nez p1, :cond_17

    .line 3053
    :try_start_6
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    if-nez v2, :cond_c

    .line 3054
    monitor-exit v0

    return-object v1

    .line 3056
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 3068
    :catchall_15
    move-exception v1

    goto :goto_55

    .line 3057
    :cond_17
    const/4 v2, 0x1

    if-ne p1, v2, :cond_29

    .line 3058
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    if-nez v2, :cond_20

    .line 3059
    monitor-exit v0

    return-object v1

    .line 3061
    :cond_20
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 3062
    :cond_29
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3b

    .line 3063
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    if-nez v2, :cond_32

    .line 3064
    monitor-exit v0

    return-object v1

    .line 3066
    :cond_32
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 3068
    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_15

    .line 3069
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3068
    :goto_55
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_15

    throw v1
.end method

.method getVideoTrackToNotify()Landroid/media/tv/TvTrackInfo;
    .registers 7

    .line 3166
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3167
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 3168
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvTrackInfo;

    .line 3169
    .local v2, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 3170
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getVideoWidth()I

    move-result v3

    .line 3171
    .local v3, "videoWidth":I
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getVideoHeight()I

    move-result v4

    .line 3172
    .local v4, "videoHeight":I
    iget v5, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    if-ne v5, v3, :cond_3d

    iget v5, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    if-eq v5, v4, :cond_43

    .line 3173
    :cond_3d
    iput v3, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    .line 3174
    iput v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    .line 3175
    monitor-exit v0

    return-object v2

    .line 3178
    .end local v2    # "track":Landroid/media/tv/TvTrackInfo;
    .end local v3    # "videoWidth":I
    .end local v4    # "videoHeight":I
    :cond_43
    goto :goto_15

    .line 3180
    :cond_44
    monitor-exit v0

    .line 3181
    const/4 v0, 0x0

    return-object v0

    .line 3180
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V
    .registers 5
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .param p2, "handled"    # Z

    .line 3621
    iput-boolean p2, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    .line 3622
    iget-object v0, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3625
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;->run()V

    goto :goto_1f

    .line 3629
    :cond_12
    iget-object v0, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 3630
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3631
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3633
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1f
    return-void
.end method

.method public notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V
    .registers 5
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 3732
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3733
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    return-void

    .line 3737
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->notifyAdBufferReady(Landroid/os/IBinder;Landroid/media/tv/AdBuffer;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_1f
    .catchall {:try_start_c .. :try_end_13} :catchall_1d

    .line 3741
    if-eqz p1, :cond_1c

    .line 3742
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 3745
    :cond_1c
    return-void

    .line 3741
    :catchall_1d
    move-exception v0

    goto :goto_25

    .line 3738
    :catch_1f
    move-exception v0

    .line 3739
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .end local p1    # "buffer":Landroid/media/tv/AdBuffer;
    throw v1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 3741
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .restart local p1    # "buffer":Landroid/media/tv/AdBuffer;
    :goto_25
    if-eqz p1, :cond_2e

    .line 3742
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    .line 3744
    :cond_2e
    throw v0
.end method

.method public notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 3310
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 3313
    nop

    .line 3314
    return-void

    .line 3311
    :catch_b
    move-exception v0

    .line 3312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method pauseRecording(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;

    .line 3380
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3381
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    return-void

    .line 3385
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->pauseRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3388
    nop

    .line 3389
    return-void

    .line 3386
    :catch_15
    move-exception v0

    .line 3387
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method relayoutOverlayView(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 3466
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3467
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 3468
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    return-void

    .line 3472
    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    .line 3475
    nop

    .line 3476
    return-void

    .line 3473
    :catch_18
    move-exception v0

    .line 3474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public release()V
    .registers 4

    .line 2729
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 2730
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    return-void

    .line 2734
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->releaseSession(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_18

    .line 2737
    nop

    .line 2739
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->releaseInternal()V

    .line 2740
    return-void

    .line 2735
    :catch_18
    move-exception v0

    .line 2736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeBroadcastInfo(I)V
    .registers 5
    .param p1, "requestId"    # I

    .line 3705
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3706
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    return-void

    .line 3710
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->removeBroadcastInfo(Landroid/os/IBinder;II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3713
    nop

    .line 3714
    return-void

    .line 3711
    :catch_15
    move-exception v0

    .line 3712
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method removeOverlayView()V
    .registers 4

    .line 3482
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3483
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    return-void

    .line 3487
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->removeOverlayView(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3490
    nop

    .line 3491
    return-void

    .line 3488
    :catch_15
    move-exception v0

    .line 3489
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestAd(Landroid/media/tv/AdRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/media/tv/AdRequest;

    .line 3717
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3718
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    return-void

    .line 3722
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->requestAd(Landroid/os/IBinder;Landroid/media/tv/AdRequest;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3725
    nop

    .line 3726
    return-void

    .line 3723
    :catch_15
    move-exception v0

    .line 3724
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;

    .line 3688
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3689
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    return-void

    .line 3693
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->requestBroadcastInfo(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoRequest;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3696
    nop

    .line 3697
    return-void

    .line 3694
    :catch_15
    move-exception v0

    .line 3695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method resumeRecording(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;

    .line 3400
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3401
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    return-void

    .line 3405
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->resumeRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3408
    nop

    .line 3409
    return-void

    .line 3406
    :catch_15
    move-exception v0

    .line 3407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public selectAudioPresentation(II)V
    .registers 7
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I

    .line 2885
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2886
    const/4 v1, -0x1

    if-eq p1, v1, :cond_28

    :try_start_6
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    .line 2887
    invoke-direct {p0, v1, p1}, Landroid/media/tv/TvInputManager$Session;->containsAudioPresentation(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 2888
    const-string v1, "TvInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio presentation id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    monitor-exit v0

    return-void

    .line 2891
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_44

    .line 2892
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_35

    .line 2893
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    return-void

    .line 2897
    :cond_35
    :try_start_35
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->selectAudioPresentation(Landroid/os/IBinder;III)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3e

    .line 2900
    nop

    .line 2901
    return-void

    .line 2898
    :catch_3e
    move-exception v0

    .line 2899
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2891
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public selectTrack(ILjava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 3001
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3002
    if-nez p1, :cond_29

    .line 3003
    if-eqz p2, :cond_77

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 3004
    const-string v1, "TvInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio trackId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    monitor-exit v0

    return-void

    .line 3007
    :cond_29
    const/4 v1, 0x1

    if-ne p1, v1, :cond_50

    .line 3008
    if-eqz p2, :cond_77

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 3009
    const-string v1, "TvInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid video trackId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    monitor-exit v0

    return-void

    .line 3012
    :cond_50
    const/4 v1, 0x2

    if-ne p1, v1, :cond_95

    .line 3013
    if-eqz p2, :cond_77

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 3014
    const-string v1, "TvInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid subtitle trackId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    monitor-exit v0

    return-void

    .line 3020
    :cond_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_7 .. :try_end_78} :catchall_93

    .line 3021
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_84

    .line 3022
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    return-void

    .line 3026
    :cond_84
    :try_start_84
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_8b} :catch_8d

    .line 3029
    nop

    .line 3030
    return-void

    .line 3027
    :catch_8d
    move-exception v0

    .line 3028
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3020
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_93
    move-exception v1

    goto :goto_ae

    .line 3018
    :cond_95
    :try_start_95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .end local p1    # "type":I
    .end local p2    # "trackId":Ljava/lang/String;
    throw v1

    .line 3020
    .restart local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .restart local p1    # "type":I
    .restart local p2    # "trackId":Ljava/lang/String;
    :goto_ae
    monitor-exit v0
    :try_end_af
    .catchall {:try_start_95 .. :try_end_af} :catchall_93

    throw v1
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 3421
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3422
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    return-void

    .line 3426
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3429
    nop

    .line 3430
    return-void

    .line 3427
    :catch_15
    move-exception v0

    .line 3428
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCaptionEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 2866
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 2867
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    return-void

    .line 2871
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->setCaptionEnabled(Landroid/os/IBinder;ZI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 2874
    nop

    .line 2875
    return-void

    .line 2872
    :catch_15
    move-exception v0

    .line 2873
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setInteractiveAppNotificationEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 3100
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3101
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    return-void

    .line 3105
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->setInteractiveAppNotificationEnabled(Landroid/os/IBinder;ZI)V

    .line 3106
    iput-boolean p1, p0, Landroid/media/tv/TvInputManager$Session;->mIAppNotificationEnabled:Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3109
    nop

    .line 3110
    return-void

    .line 3107
    :catch_17
    move-exception v0

    .line 3108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setInteractiveAppSession(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2
    .param p1, "iAppSession"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 2722
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session;->mIAppSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 2723
    return-void
.end method

.method setMain()V
    .registers 4

    .line 2749
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 2750
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    return-void

    .line 2754
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->setMainSession(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 2757
    nop

    .line 2758
    return-void

    .line 2755
    :catch_15
    move-exception v0

    .line 2756
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setStreamVolume(F)V
    .registers 5
    .param p1, "volume"    # F

    .line 2805
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 2806
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    return-void

    .line 2810
    :cond_c
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_20

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_20

    .line 2813
    :try_start_17
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->setVolume(Landroid/os/IBinder;FI)V

    .line 2816
    nop

    .line 2817
    return-void

    .line 2811
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "volume should be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .end local p1    # "volume":F
    throw v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_28} :catch_28

    .line 2814
    .restart local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .restart local p1    # "volume":F
    :catch_28
    move-exception v0

    .line 2815
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2766
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 2767
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    return-void

    .line 2772
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 2775
    nop

    .line 2776
    return-void

    .line 2773
    :catch_15
    move-exception v0

    .line 2774
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTvMessageEnabled(IZ)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "enabled"    # Z

    .line 3321
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->setTvMessageEnabled(Landroid/os/IBinder;IZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 3324
    nop

    .line 3325
    return-void

    .line 3322
    :catch_b
    move-exception v0

    .line 3323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method startRecording(Landroid/net/Uri;)V
    .registers 3
    .param p1, "programUri"    # Landroid/net/Uri;

    .line 3334
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvInputManager$Session;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 3335
    return-void
.end method

.method startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "programUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 3345
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3346
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    return-void

    .line 3350
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->startRecording(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3353
    nop

    .line 3354
    return-void

    .line 3351
    :catch_15
    move-exception v0

    .line 3352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method stopRecording()V
    .registers 4

    .line 3360
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3361
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    return-void

    .line 3365
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->stopRecording(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3368
    nop

    .line 3369
    return-void

    .line 3366
    :catch_15
    move-exception v0

    .line 3367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method timeShiftEnablePositionTracking(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 3294
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3295
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    return-void

    .line 3299
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3302
    nop

    .line 3303
    return-void

    .line 3300
    :catch_15
    move-exception v0

    .line 3301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method timeShiftPause()V
    .registers 4

    .line 3203
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3204
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    return-void

    .line 3208
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->timeShiftPause(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3211
    nop

    .line 3212
    return-void

    .line 3209
    :catch_15
    move-exception v0

    .line 3210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method timeShiftPlay(Landroid/net/Uri;)V
    .registers 5
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .line 3188
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3189
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    return-void

    .line 3193
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3196
    nop

    .line 3197
    return-void

    .line 3194
    :catch_15
    move-exception v0

    .line 3195
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method timeShiftResume()V
    .registers 4

    .line 3218
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3219
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    return-void

    .line 3223
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->timeShiftResume(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3226
    nop

    .line 3227
    return-void

    .line 3224
    :catch_15
    move-exception v0

    .line 3225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method timeShiftSeekTo(J)V
    .registers 6
    .param p1, "timeMs"    # J

    .line 3239
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3240
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    return-void

    .line 3244
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->timeShiftSeekTo(Landroid/os/IBinder;JI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3247
    nop

    .line 3248
    return-void

    .line 3245
    :catch_15
    move-exception v0

    .line 3246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method timeShiftSetMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 3277
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3278
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    return-void

    .line 3282
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftSetMode(Landroid/os/IBinder;II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3285
    nop

    .line 3286
    return-void

    .line 3283
    :catch_15
    move-exception v0

    .line 3284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 5
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 3256
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3257
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    return-void

    .line 3261
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    .line 3264
    nop

    .line 3265
    return-void

    .line 3262
    :catch_15
    move-exception v0

    .line 3263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public tune(Landroid/net/Uri;)V
    .registers 3
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 2825
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2826
    return-void
.end method

.method public tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 2835
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2836
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 2837
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    return-void

    .line 2840
    :cond_f
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2841
    :try_start_12
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2842
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2843
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2844
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2845
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioProgramId:I

    .line 2846
    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioPresentationId:I

    .line 2847
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    .line 2848
    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    .line 2849
    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    .line 2850
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    .line 2851
    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    .line 2852
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_49

    .line 2854
    :try_start_38
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_41} :catch_43

    .line 2857
    nop

    .line 2858
    return-void

    .line 2855
    :catch_43
    move-exception v0

    .line 2856
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2852
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method unblockContent(Landroid/media/tv/TvContentRating;)V
    .registers 6
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;

    .line 3497
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3498
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 3499
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    return-void

    .line 3503
    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2, v3}, Landroid/media/tv/ITvInputManager;->unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1c

    .line 3506
    nop

    .line 3507
    return-void

    .line 3504
    :catch_1c
    move-exception v0

    .line 3505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method updateAudioPresentationSelection(II)Z
    .registers 5
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I

    .line 2979
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2980
    :try_start_3
    iget v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioProgramId:I

    if-ne p2, v1, :cond_f

    iget v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioPresentationId:I

    if-eq p1, v1, :cond_c

    goto :goto_f

    .line 2986
    :cond_c
    monitor-exit v0

    .line 2987
    const/4 v0, 0x0

    return v0

    .line 2982
    :cond_f
    :goto_f
    iput p1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioPresentationId:I

    .line 2983
    iput p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioProgramId:I

    .line 2984
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2986
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method updateAudioPresentations(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;)Z"
        }
    .end annotation

    .line 2964
    .local p1, "audioPresentations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2965
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2966
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPresentation;

    .line 2967
    .local v2, "presentation":Landroid/media/AudioPresentation;
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2968
    nop

    .end local v2    # "presentation":Landroid/media/AudioPresentation;
    goto :goto_c

    .line 2969
    :cond_1f
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    monitor-exit v0

    return v1

    .line 2970
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method updateTrackSelection(ILjava/lang/String;)Z
    .registers 6
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 3140
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3141
    const/4 v1, 0x1

    if-nez p1, :cond_14

    :try_start_6
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    .line 3142
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 3143
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    .line 3144
    monitor-exit v0

    return v1

    .line 3154
    :catchall_12
    move-exception v1

    goto :goto_34

    .line 3145
    :cond_14
    if-ne p1, v1, :cond_22

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    .line 3146
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 3147
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    .line 3148
    monitor-exit v0

    return v1

    .line 3149
    :cond_22
    const/4 v2, 0x2

    if-ne p1, v2, :cond_31

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    .line 3150
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 3151
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    .line 3152
    monitor-exit v0

    return v1

    .line 3154
    :cond_31
    monitor-exit v0

    .line 3155
    const/4 v0, 0x0

    return v0

    .line 3154
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_12

    throw v1
.end method

.method updateTracks(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)Z"
        }
    .end annotation

    .line 3117
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3118
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3119
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3120
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvTrackInfo;

    .line 3122
    .local v2, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v4

    if-nez v4, :cond_2f

    .line 3123
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 3124
    :cond_2f
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v4

    if-ne v4, v3, :cond_3b

    .line 3125
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 3126
    :cond_3b
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_47

    .line 3127
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3129
    .end local v2    # "track":Landroid/media/tv/TvTrackInfo;
    :cond_47
    :goto_47
    goto :goto_16

    .line 3130
    :cond_48
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    .line 3131
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    goto :goto_63

    :cond_61
    const/4 v3, 0x0

    goto :goto_64

    :cond_63
    :goto_63
    nop

    :goto_64
    monitor-exit v0

    .line 3130
    return v3

    .line 3132
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw v1
.end method
