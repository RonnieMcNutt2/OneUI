.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayListenerDelegate"
.end annotation


# instance fields
.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field public volatile mEventsMask:J

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mGenerationId:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mListener:Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method public static synthetic $r8$lambda$aO0d1U2yv7-42_0MvY8uEf7AtpE(Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;JLandroid/os/Message;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->lambda$sendDisplayEvent$0(JLandroid/os/Message;)V

    return-void
.end method

.method constructor <init>(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;J)V
    .registers 8
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "eventsMask"    # J

    .line 1730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1725
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 1727
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mGenerationId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1731
    iput-object p2, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1732
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1733
    iput-wide p3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    .line 1734
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1763
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_70

    goto :goto_6f

    .line 1789
    :pswitch_8
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x10

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6f

    .line 1790
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    goto :goto_6f

    .line 1779
    :pswitch_19
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x8

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6f

    .line 1780
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    goto :goto_6f

    .line 1784
    :pswitch_2a
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6f

    .line 1785
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayRemoved(I)V

    goto :goto_6f

    .line 1770
    :pswitch_3b
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x4

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6f

    .line 1771
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayInfo;

    .line 1772
    .local v0, "newInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_5e

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 1773
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1774
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    .line 1776
    .end local v0    # "newInfo":Landroid/view/DisplayInfo;
    :cond_5e
    goto :goto_6f

    .line 1765
    :pswitch_5f
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6f

    .line 1766
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayAdded(I)V

    .line 1797
    :cond_6f
    :goto_6f
    return-void

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_3b
        :pswitch_2a
        :pswitch_19
        :pswitch_8
    .end packed-switch
.end method

.method private synthetic lambda$sendDisplayEvent$0(JLandroid/os/Message;)V
    .registers 6
    .param p1, "generationId"    # J
    .param p3, "msg"    # Landroid/os/Message;

    .line 1741
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mGenerationId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 1742
    invoke-direct {p0, p3}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->handleMessage(Landroid/os/Message;)V

    .line 1744
    :cond_d
    invoke-virtual {p3}, Landroid/os/Message;->recycle()V

    .line 1745
    return-void
.end method


# virtual methods
.method public clearEvents()V
    .registers 2

    .line 1749
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mGenerationId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1750
    return-void
.end method

.method public sendDisplayEvent(IILandroid/view/DisplayInfo;)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Landroid/view/DisplayInfo;

    .line 1737
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mGenerationId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 1738
    .local v0, "generationId":J
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, p2, p1, v3, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1739
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;JLandroid/os/Message;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1746
    return-void
.end method

.method public setEventsMask(J)V
    .registers 3
    .param p1, "newEventsMask"    # J

    .line 1753
    iput-wide p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    .line 1754
    return-void
.end method
