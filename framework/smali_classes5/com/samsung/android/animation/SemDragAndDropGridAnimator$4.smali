.class Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemDragAndDropGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    .line 426
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 430
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-eq v0, v1, :cond_20

    .line 431
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    .line 432
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v1, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->speakDragReleaseForAccessibility(I)V

    .line 434
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    .line 435
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndState()V

    .line 436
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v0, :cond_40

    .line 437
    const-string v0, "SemDragAndDropGridAnimator"

    const-string v1, "dndListener.onDragAndDropEnd() from AnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    .line 440
    :cond_40
    return-void
.end method
