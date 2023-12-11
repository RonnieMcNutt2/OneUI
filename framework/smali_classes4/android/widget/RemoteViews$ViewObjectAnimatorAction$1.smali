.class Landroid/widget/RemoteViews$ViewObjectAnimatorAction$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$ViewObjectAnimatorAction;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$ViewObjectAnimatorAction;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/RemoteViews$ViewObjectAnimatorAction;

    .line 2703
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction$1;->this$1:Landroid/widget/RemoteViews$ViewObjectAnimatorAction;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2706
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction$1;->this$1:Landroid/widget/RemoteViews$ViewObjectAnimatorAction;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->-$$Nest$fputmIsAnimationEnd(Landroid/widget/RemoteViews$ViewObjectAnimatorAction;Z)V

    .line 2707
    return-void
.end method
