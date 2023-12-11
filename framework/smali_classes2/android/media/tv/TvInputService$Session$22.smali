.class Landroid/media/tv/TvInputService$Session$22;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyAvailableSpeeds([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$speeds:[F


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;[F)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1169
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$22;->this$0:Landroid/media/tv/TvInputService$Session;

    iput-object p2, p0, Landroid/media/tv/TvInputService$Session$22;->val$speeds:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1175
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$22;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1176
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$22;->val$speeds:[F

    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    .line 1177
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$22;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$22;->val$speeds:[F

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onAvailableSpeeds([F)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    .line 1181
    :cond_18
    goto :goto_21

    .line 1179
    :catch_19
    move-exception v0

    .line 1180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyAvailableSpeeds"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1182
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method
