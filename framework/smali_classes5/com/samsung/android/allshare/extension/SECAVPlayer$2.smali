.class Lcom/samsung/android/allshare/extension/SECAVPlayer$2;
.super Ljava/lang/Object;
.source "SECAVPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/allshare/extension/SECAVPlayer;

    .line 1213
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1217
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmAVPlayer(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getPlayPosition()V

    .line 1218
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmAVPlayer(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getState()V

    .line 1220
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmState(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmState(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3b

    .line 1221
    :cond_32
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmAVPlayer(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMediaInfo()V

    .line 1223
    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmIsPlayInfoThreadRunning(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55

    .line 1224
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmHandlerPlayInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmRunnablePlayInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1225
    :cond_55
    return-void
.end method
