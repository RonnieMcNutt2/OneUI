.class Landroid/widget/RemoteViews$LayoutParamAction$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$LayoutParamAction;->startValueAnimator(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViews$LayoutParamAction;

.field final synthetic val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$LayoutParamAction;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Landroid/widget/RemoteViews$LayoutParamAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3553
    iput-object p1, p0, Landroid/widget/RemoteViews$LayoutParamAction$1;->this$0:Landroid/widget/RemoteViews$LayoutParamAction;

    iput-object p2, p0, Landroid/widget/RemoteViews$LayoutParamAction$1;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Landroid/widget/RemoteViews$LayoutParamAction$1;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 3556
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3557
    .local v0, "animatedValue":I
    iget-object v1, p0, Landroid/widget/RemoteViews$LayoutParamAction$1;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3558
    iget-object v1, p0, Landroid/widget/RemoteViews$LayoutParamAction$1;->val$target:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/RemoteViews$LayoutParamAction$1;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3559
    return-void
.end method
