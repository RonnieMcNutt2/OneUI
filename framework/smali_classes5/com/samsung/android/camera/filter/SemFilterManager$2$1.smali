.class Lcom/samsung/android/camera/filter/SemFilterManager$2$1;
.super Ljava/lang/Object;
.source "SemFilterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/filter/SemFilterManager$2;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/camera/filter/SemFilterManager$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/filter/SemFilterManager$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/samsung/android/camera/filter/SemFilterManager$2;

    .line 186
    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2$1;->this$1:Lcom/samsung/android/camera/filter/SemFilterManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2$1;->this$1:Lcom/samsung/android/camera/filter/SemFilterManager$2;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    if-eqz v0, :cond_12

    .line 190
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2$1;->this$1:Lcom/samsung/android/camera/filter/SemFilterManager$2;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;->onFilterChanged(I)V

    .line 191
    :cond_12
    return-void
.end method
