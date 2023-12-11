.class Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon$1;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon;->animateViewOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon;

    .line 1961
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon$1;->this$0:Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1969
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon$1;->this$0:Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon;->dismissFinal()V

    .line 1970
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1973
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1964
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon$1;->this$0:Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/widget/SemTipPopup$TipWindowBalloon;->mIsDismissing:Z

    .line 1965
    return-void
.end method
