.class public final synthetic Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/widget/SemRemoteViewsValueAnimation;->lambda$provideAnimatorUpdateListener$1(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
