.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;
.super Ljava/lang/Object;
.source "SemAddDeleteListAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator;->deleteFromAdapterCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 181
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1f

    .line 186
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    .line 189
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method
