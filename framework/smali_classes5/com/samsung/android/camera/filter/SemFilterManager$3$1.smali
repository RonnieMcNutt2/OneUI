.class Lcom/samsung/android/camera/filter/SemFilterManager$3$1;
.super Ljava/lang/Object;
.source "SemFilterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/filter/SemFilterManager$3;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/camera/filter/SemFilterManager$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/filter/SemFilterManager$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/samsung/android/camera/filter/SemFilterManager$3;

    .line 204
    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager$3$1;->this$1:Lcom/samsung/android/camera/filter/SemFilterManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$3$1;->this$1:Lcom/samsung/android/camera/filter/SemFilterManager$3;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager$3;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    if-eqz v0, :cond_12

    .line 208
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$3$1;->this$1:Lcom/samsung/android/camera/filter/SemFilterManager$3;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager$3;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;->onFilterChanged(I)V

    .line 209
    :cond_12
    return-void
.end method
