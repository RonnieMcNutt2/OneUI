.class Landroid/widget/AbsSeekBar$SliderDrawable$1;
.super Ljava/lang/Object;
.source "AbsSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsSeekBar$SliderDrawable;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsSeekBar$SliderDrawable;


# direct methods
.method constructor <init>(Landroid/widget/AbsSeekBar$SliderDrawable;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/AbsSeekBar$SliderDrawable;

    .line 2193
    iput-object p1, p0, Landroid/widget/AbsSeekBar$SliderDrawable$1;->this$1:Landroid/widget/AbsSeekBar$SliderDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 2196
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2197
    .local v0, "value":F
    iget-object v1, p0, Landroid/widget/AbsSeekBar$SliderDrawable$1;->this$1:Landroid/widget/AbsSeekBar$SliderDrawable;

    invoke-virtual {v1, v0}, Landroid/widget/AbsSeekBar$SliderDrawable;->invalidateTrack(F)V

    .line 2198
    return-void
.end method
