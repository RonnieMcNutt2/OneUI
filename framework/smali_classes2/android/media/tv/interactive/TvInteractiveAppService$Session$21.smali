.class Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

.field final synthetic val$buffer:Landroid/media/tv/AdBuffer;

.field final synthetic val$dupBuffer:Landroid/media/tv/AdBuffer;


# direct methods
.method constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/AdBuffer;Landroid/media/tv/AdBuffer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1974
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;->val$buffer:Landroid/media/tv/AdBuffer;

    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1983
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1984
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onAdBufferReady(Landroid/media/tv/AdBuffer;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_21
    .catchall {:try_start_0 .. :try_end_13} :catchall_1f

    .line 1989
    :cond_13
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    if-eqz v0, :cond_2f

    .line 1990
    :goto_17
    invoke-virtual {v0}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    goto :goto_2f

    .line 1989
    :catchall_1f
    move-exception v0

    goto :goto_30

    .line 1986
    :catch_21
    move-exception v0

    .line 1987
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in notifyAdBuffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    .line 1989
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    if-eqz v0, :cond_2f

    .line 1990
    goto :goto_17

    .line 1993
    :cond_2f
    :goto_2f
    return-void

    .line 1989
    :goto_30
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    if-eqz v1, :cond_3b

    .line 1990
    invoke-virtual {v1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    .line 1992
    :cond_3b
    throw v0
.end method
