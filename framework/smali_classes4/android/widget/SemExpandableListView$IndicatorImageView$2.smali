.class Landroid/widget/SemExpandableListView$IndicatorImageView$2;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView$IndicatorImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView$IndicatorImageView;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/SemExpandableListView$IndicatorImageView;

    .line 2857
    iput-object p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$2;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2860
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2861
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAnimatorListener : onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$2;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-static {v0, p1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->-$$Nest$mprintAnimationInfo(Landroid/widget/SemExpandableListView$IndicatorImageView;Landroid/animation/Animator;)V

    .line 2864
    :cond_14
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2868
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2869
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAnimatorListener : onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$2;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-static {v0, p1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->-$$Nest$mprintAnimationInfo(Landroid/widget/SemExpandableListView$IndicatorImageView;Landroid/animation/Animator;)V

    .line 2872
    :cond_14
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$2;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->-$$Nest$fputmMorphingAnimatedValue(Landroid/widget/SemExpandableListView$IndicatorImageView;F)V

    .line 2873
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2877
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2881
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2882
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAnimatorListener : onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$2;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-static {v0, p1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->-$$Nest$mprintAnimationInfo(Landroid/widget/SemExpandableListView$IndicatorImageView;Landroid/animation/Animator;)V

    .line 2885
    :cond_14
    return-void
.end method
