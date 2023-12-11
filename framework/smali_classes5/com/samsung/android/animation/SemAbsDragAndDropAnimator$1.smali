.class Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;
.super Ljava/lang/Object;
.source "SemAbsDragAndDropAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDraggable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

.field final synthetic val$fadeOut:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iput-boolean p2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;->val$fadeOut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 218
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 219
    .local v0, "fraction":F
    iget-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;->val$fadeOut:Z

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v1, :cond_14

    .line 220
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    goto :goto_1a

    .line 222
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    .line 224
    :goto_1a
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 225
    return-void
.end method
