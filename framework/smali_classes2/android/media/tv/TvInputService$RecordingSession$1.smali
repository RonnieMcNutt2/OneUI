.class Landroid/media/tv/TvInputService$RecordingSession$1;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$RecordingSession;->notifyTuned(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$RecordingSession;

.field final synthetic val$channelUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$RecordingSession;Landroid/net/Uri;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$RecordingSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2252
    iput-object p1, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    iput-object p2, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->val$channelUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2258
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-static {v0}, Landroid/media/tv/TvInputService$RecordingSession;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2259
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-static {v0}, Landroid/media/tv/TvInputService$RecordingSession;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->val$channelUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onTuned(Landroid/net/Uri;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 2263
    :cond_13
    goto :goto_1c

    .line 2261
    :catch_14
    move-exception v0

    .line 2262
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyTuned"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2264
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method
