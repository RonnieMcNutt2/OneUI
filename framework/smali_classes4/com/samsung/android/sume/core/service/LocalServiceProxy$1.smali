.class Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;
.super Ljava/lang/Object;
.source "LocalServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/service/LocalServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

.field final synthetic val$eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sume/core/service/LocalServiceProxy;Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/service/LocalServiceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    iput-object p2, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->val$eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 77
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    .line 78
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 82
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    .line 83
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sume/core/service/LocalService$LocalBinder;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/service/LocalService$LocalBinder;->getService()Lcom/samsung/android/sume/core/service/LocalService;

    move-result-object v1

    # setter for: Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;
    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$002(Lcom/samsung/android/sume/core/service/LocalServiceProxy;Lcom/samsung/android/sume/core/service/LocalService;)Lcom/samsung/android/sume/core/service/LocalService;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    # getter for: Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;
    invoke-static {v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$000(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Lcom/samsung/android/sume/core/service/LocalService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->val$eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/service/LocalService;->setEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    # getter for: Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;
    invoke-static {v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$000(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Lcom/samsung/android/sume/core/service/LocalService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/service/LocalService;->createMediaFilterController()I

    move-result v1

    # setter for: Lcom/samsung/android/sume/core/service/LocalServiceProxy;->mediaFilterControllerId:I
    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$102(Lcom/samsung/android/sume/core/service/LocalServiceProxy;I)I

    .line 64
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    # getter for: Lcom/samsung/android/sume/core/service/LocalServiceProxy;->mfControllerSync:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$200(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 65
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 69
    # getter for: Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected E"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service disconnected abnormally"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "exception":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    const/4 v2, -0x4

    invoke-static {v2, v0}, Lcom/samsung/android/sume/core/message/Response;->of(ILjava/lang/Exception;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v2

    # invokes: Lcom/samsung/android/sume/core/service/LocalServiceProxy;->onError(Lcom/samsung/android/sume/core/message/Response;)V
    invoke-static {v1, v2}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$400(Lcom/samsung/android/sume/core/service/LocalServiceProxy;Lcom/samsung/android/sume/core/message/Response;)V

    .line 72
    # getter for: Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceDisconnected X"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method
