.class Landroid/media/tv/TvInputService$Session$16;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$dupBuffer:Landroid/media/tv/AdBuffer;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/AdBuffer;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1020
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$16;->this$0:Landroid/media/tv/TvInputService$Session;

    iput-object p2, p0, Landroid/media/tv/TvInputService$Session$16;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1026
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$16;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1027
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$16;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$16;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_21
    .catchall {:try_start_0 .. :try_end_13} :catchall_1f

    .line 1032
    :cond_13
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$16;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    if-eqz v0, :cond_2f

    .line 1033
    :goto_17
    invoke-virtual {v0}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    goto :goto_2f

    .line 1032
    :catchall_1f
    move-exception v0

    goto :goto_30

    .line 1029
    :catch_21
    move-exception v0

    .line 1030
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v1, "TvInputService"

    const-string v2, "error in notifyAdBufferConsumed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    .line 1032
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$16;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    if-eqz v0, :cond_2f

    .line 1033
    goto :goto_17

    .line 1036
    :cond_2f
    :goto_2f
    return-void

    .line 1032
    :goto_30
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$16;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    if-eqz v1, :cond_3b

    .line 1033
    invoke-virtual {v1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    .line 1035
    :cond_3b
    throw v0
.end method
