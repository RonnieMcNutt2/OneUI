.class Landroid/media/MediaRouter$Static$Client$1;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaRouter$Static$Client;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaRouter$Static$Client;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$Static$Client;)V
    .registers 2
    .param p1, "this$1"    # Landroid/media/MediaRouter$Static$Client;

    .line 672
    iput-object p1, p0, Landroid/media/MediaRouter$Static$Client$1;->this$1:Landroid/media/MediaRouter$Static$Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 675
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$1;->this$1:Landroid/media/MediaRouter$Static$Client;

    iget-object v1, v0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-ne v0, v1, :cond_f

    .line 676
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$1;->this$1:Landroid/media/MediaRouter$Static$Client;

    iget-object v0, v0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0}, Landroid/media/MediaRouter$Static;->updateClientState()V

    .line 678
    :cond_f
    return-void
.end method
