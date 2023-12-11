.class Landroid/media/tv/TvInputService$RecordingSession$3;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$RecordingSession;->notifyError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$RecordingSession;

.field final synthetic val$validError:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$RecordingSession;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$RecordingSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2321
    iput-object p1, p0, Landroid/media/tv/TvInputService$RecordingSession$3;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    iput p2, p0, Landroid/media/tv/TvInputService$RecordingSession$3;->val$validError:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2327
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession$3;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-static {v0}, Landroid/media/tv/TvInputService$RecordingSession;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2328
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession$3;->this$0:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-static {v0}, Landroid/media/tv/TvInputService$RecordingSession;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputService$RecordingSession$3;->val$validError:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onError(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 2332
    :cond_13
    goto :goto_1c

    .line 2330
    :catch_14
    move-exception v0

    .line 2331
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2333
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method
