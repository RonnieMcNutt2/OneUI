.class public abstract Landroid/view/InputEventSender;
.super Ljava/lang/Object;
.source "InputEventSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventSender"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mSenderPtr:J


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 7
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 58
    if-eqz p1, :cond_32

    .line 61
    if-eqz p2, :cond_2a

    .line 65
    iput-object p1, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 66
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    .line 67
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {v1, v2, v3}, Landroid/view/InputEventSender;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    .line 70
    const-string v1, "InputEventSender.dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 71
    return-void

    .line 62
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchInputEventFinished(IZ)V
    .registers 3
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .line 154
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventSender;->onInputEventFinished(IZ)V

    .line 155
    return-void
.end method

.method private dispatchTimelineReported(IJJ)V
    .registers 6
    .param p1, "inputEventId"    # I
    .param p2, "gpuCompletedTime"    # J
    .param p4, "presentTime"    # J

    .line 161
    invoke-virtual/range {p0 .. p5}, Landroid/view/InputEventSender;->onTimelineReported(IJJ)V

    .line 162
    return-void
.end method

.method private dispose(Z)V
    .registers 7
    .param p1, "finalized"    # Z

    .line 90
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_e

    .line 91
    if-eqz p1, :cond_9

    .line 92
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 94
    :cond_9
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 97
    :cond_e
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1b

    .line 98
    invoke-static {v0, v1}, Landroid/view/InputEventSender;->nativeDispose(J)V

    .line 99
    iput-wide v2, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    .line 101
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 102
    iput-object v0, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    .line 103
    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputEventSender;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeSendKeyEvent(JILandroid/view/KeyEvent;)Z
.end method

.method private static native nativeSendMotionEvent(JILandroid/view/MotionEvent;)Z
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V

    .line 87
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    nop

    .line 80
    return-void

    .line 78
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    throw v0
.end method

.method public onInputEventFinished(IZ)V
    .registers 3
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .line 112
    return-void
.end method

.method public onTimelineReported(IJJ)V
    .registers 6
    .param p1, "inputEventId"    # I
    .param p2, "gpuCompletedTime"    # J
    .param p4, "presentTime"    # J

    .line 122
    return-void
.end method

.method public final sendInputEvent(ILandroid/view/InputEvent;)Z
    .registers 7
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 134
    if-eqz p2, :cond_27

    .line 137
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 138
    const-string v0, "InputEventSender"

    const-string v1, "Attempted to send an input event but the input event sender has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_13
    instance-of v2, p2, Landroid/view/KeyEvent;

    if-eqz v2, :cond_1f

    .line 144
    move-object v2, p2

    check-cast v2, Landroid/view/KeyEvent;

    invoke-static {v0, v1, p1, v2}, Landroid/view/InputEventSender;->nativeSendKeyEvent(JILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 146
    :cond_1f
    move-object v2, p2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-static {v0, v1, p1, v2}, Landroid/view/InputEventSender;->nativeSendMotionEvent(JILandroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 135
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
