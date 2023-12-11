.class Landroid/widget/RemoteViews$ViewObjectAnimatorAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewObjectAnimatorAction"
.end annotation


# instance fields
.field private mAnimatorId:I

.field private mIsAnimationEnd:Z

.field private final mViewId:I

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsAnimationEnd(Landroid/widget/RemoteViews$ViewObjectAnimatorAction;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mIsAnimationEnd:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;II)V
    .registers 4
    .param p2, "viewId"    # I
    .param p3, "animatorId"    # I

    .line 2667
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2668
    iput p2, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mViewId:I

    .line 2669
    iput p3, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mAnimatorId:I

    .line 2670
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mIsAnimationEnd:Z

    .line 2671
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 2673
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2674
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mViewId:I

    .line 2675
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mAnimatorId:I

    .line 2676
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mIsAnimationEnd:Z

    .line 2677
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 2687
    if-eqz p1, :cond_38

    iget v0, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mAnimatorId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    goto :goto_38

    .line 2691
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2692
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2693
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_15

    .line 2694
    return-void

    .line 2697
    :cond_15
    iget v2, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mAnimatorId:I

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    .line 2698
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    if-nez v2, :cond_20

    .line 2699
    return-void

    .line 2702
    :cond_20
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 2703
    new-instance v3, Landroid/widget/RemoteViews$ViewObjectAnimatorAction$1;

    invoke-direct {v3, p0}, Landroid/widget/RemoteViews$ViewObjectAnimatorAction$1;-><init>(Landroid/widget/RemoteViews$ViewObjectAnimatorAction;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2709
    iget-boolean v3, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mIsAnimationEnd:Z

    if-eqz v3, :cond_34

    .line 2710
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2712
    :cond_34
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2713
    return-void

    .line 2688
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "target":Landroid/view/View;
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_38
    :goto_38
    return-void
.end method

.method public getActionTag()I
    .registers 2

    .line 2717
    const/16 v0, 0x6a

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2680
    iget v0, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2681
    iget v0, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mAnimatorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2682
    iget-boolean v0, p0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;->mIsAnimationEnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2683
    return-void
.end method
