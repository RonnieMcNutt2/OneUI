.class Lcom/samsung/android/camera/filter/SemFilterManager$3;
.super Landroid/database/ContentObserver;
.source "SemFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/filter/SemFilterManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/filter/SemFilterManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/camera/filter/SemFilterManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 200
    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager$3;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 203
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$3;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-static {v0}, Lcom/samsung/android/camera/filter/SemFilterManager;->-$$Nest$fgetmCallbackHandler(Lcom/samsung/android/camera/filter/SemFilterManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 204
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$3;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-static {v0}, Lcom/samsung/android/camera/filter/SemFilterManager;->-$$Nest$fgetmCallbackHandler(Lcom/samsung/android/camera/filter/SemFilterManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/filter/SemFilterManager$3$1;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25

    .line 212
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$3;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    if-eqz v0, :cond_25

    .line 213
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$3;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;->onFilterChanged(I)V

    .line 215
    :cond_25
    :goto_25
    return-void
.end method
