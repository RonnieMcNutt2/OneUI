.class Landroid/service/dreams/DreamOverlayService$1;
.super Landroid/service/dreams/IDreamOverlay$Stub;
.source "DreamOverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamOverlayService;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamOverlayService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/dreams/DreamOverlayService;

    .line 133
    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService$1;->this$0:Landroid/service/dreams/DreamOverlayService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlay$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getClient(Landroid/service/dreams/IDreamOverlayClientCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/service/dreams/IDreamOverlayClientCallback;

    .line 137
    :try_start_0
    new-instance v0, Landroid/service/dreams/DreamOverlayService$OverlayClient;

    iget-object v1, p0, Landroid/service/dreams/DreamOverlayService$1;->this$0:Landroid/service/dreams/DreamOverlayService;

    invoke-direct {v0, v1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;-><init>(Landroid/service/dreams/DreamOverlayService;)V

    invoke-interface {p1, v0}, Landroid/service/dreams/IDreamOverlayClientCallback;->onDreamOverlayClient(Landroid/service/dreams/IDreamOverlayClient;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 141
    goto :goto_13

    .line 139
    :catch_b
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DreamOverlayService"

    const-string v2, "could not send client to callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method
