.class Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$2;
.super Ljava/lang/Object;
.source "AODManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->onDozeReleased()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)V
    .registers 2
    .param p1, "this$1"    # Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    .line 615
    iput-object p1, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$2;->this$1:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 618
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$2;->this$1:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->-$$Nest$fgetmCallback(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/aod/AODManager$AODDozeCallback;

    .line 619
    .local v0, "callback":Lcom/samsung/android/aod/AODManager$AODDozeCallback;
    if-eqz v0, :cond_11

    .line 620
    invoke-interface {v0}, Lcom/samsung/android/aod/AODManager$AODDozeCallback;->onDozeReleased()V

    .line 622
    :cond_11
    return-void
.end method
