.class Lcom/samsung/android/sume/core/service/RemoteService$1;
.super Ljava/util/TimerTask;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/service/RemoteService;->onUnbind(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sume/core/service/RemoteService;


# direct methods
.method constructor <init>(Lcom/samsung/android/sume/core/service/RemoteService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/service/RemoteService;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/sume/core/service/RemoteService$1;->this$0:Lcom/samsung/android/sume/core/service/RemoteService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/RemoteService$1;->this$0:Lcom/samsung/android/sume/core/service/RemoteService;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/service/RemoteService;->stopSelf()V

    return-void
.end method
