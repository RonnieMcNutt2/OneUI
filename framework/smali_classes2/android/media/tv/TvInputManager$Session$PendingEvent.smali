.class final Landroid/media/tv/TvInputManager$Session$PendingEvent;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingEvent"
.end annotation


# instance fields
.field public mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

.field public mEvent:Landroid/view/InputEvent;

.field public mEventHandler:Landroid/os/Handler;

.field public mEventToken:Ljava/lang/Object;

.field public mHandled:Z

.field final synthetic this$0:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputManager$Session;)V
    .registers 2

    .line 3786
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->this$0:Landroid/media/tv/TvInputManager$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;-><init>(Landroid/media/tv/TvInputManager$Session;)V

    return-void
.end method


# virtual methods
.method public recycle()V
    .registers 2

    .line 3794
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 3795
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    .line 3796
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    .line 3797
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    .line 3798
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    .line 3799
    return-void
.end method

.method public run()V
    .registers 4

    .line 3803
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    iget-boolean v2, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    invoke-interface {v0, v1, v2}, Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 3805
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 3806
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->this$0:Landroid/media/tv/TvInputManager$Session;

    invoke-static {v1, p0}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$mrecyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    .line 3807
    monitor-exit v0

    .line 3808
    return-void

    .line 3807
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1
.end method
