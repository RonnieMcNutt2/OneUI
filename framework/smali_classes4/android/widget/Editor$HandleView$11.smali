.class Landroid/widget/Editor$HandleView$11;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getHideAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;

    .line 7267
    iput-object p1, p0, Landroid/widget/Editor$HandleView$11;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 7270
    iget-object v0, p0, Landroid/widget/Editor$HandleView$11;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmIsHideAnimating(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 7271
    return-void

    .line 7273
    :cond_9
    iget-object v0, p0, Landroid/widget/Editor$HandleView$11;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 7274
    return-void
.end method
