.class Landroid/media/tv/TvInputService$Session$24;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyCueingMessageAvailability(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$available:Z


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;Z)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1216
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$24;->this$0:Landroid/media/tv/TvInputService$Session;

    iput-boolean p2, p0, Landroid/media/tv/TvInputService$Session$24;->val$available:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1222
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$24;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1223
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$24;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/tv/TvInputService$Session$24;->val$available:Z

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onCueingMessageAvailability(Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1227
    :cond_13
    goto :goto_1c

    .line 1225
    :catch_14
    move-exception v0

    .line 1226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyCueingMessageAvailability"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method
