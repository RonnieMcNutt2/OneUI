.class Lcom/samsung/android/widget/SemIndexScrollView$1;
.super Ljava/lang/Object;
.source "SemIndexScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemIndexScrollView;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemIndexScrollView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemIndexScrollView;

    .line 1771
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1774
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmIndexScrollPreview(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1775
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmIndexScrollPreview(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->-$$Nest$mfadeOutAnimation(Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;)V

    .line 1777
    :cond_11
    return-void
.end method
