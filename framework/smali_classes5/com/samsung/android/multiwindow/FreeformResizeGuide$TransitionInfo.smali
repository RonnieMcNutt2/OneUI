.class Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;
.super Ljava/lang/Object;
.source "FreeformResizeGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/FreeformResizeGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransitionInfo"
.end annotation


# instance fields
.field private mAnimationDuration:J

.field private mDismissListener:Landroid/animation/Animator$AnimatorListener;

.field private mFromAlpha:I

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mToAlpha:I

.field final synthetic this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;


# direct methods
.method static bridge synthetic -$$Nest$fputmAnimationDuration(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mAnimationDuration:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFromAlpha(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mFromAlpha:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInterpolator(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;Landroid/animation/TimeInterpolator;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmToAlpha(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mToAlpha:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mreset(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->reset()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 558
    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    new-instance v0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo$1;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mDismissListener:Landroid/animation/Animator$AnimatorListener;

    .line 559
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->reset()V

    .line 560
    return-void
.end method

.method private reset()V
    .registers 3

    .line 563
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mAnimationDuration:J

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 565
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mToAlpha:I

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mFromAlpha:I

    .line 566
    return-void
.end method


# virtual methods
.method addDismissListener(Landroid/animation/AnimatorSet;)V
    .registers 3
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;

    .line 586
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mDismissListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 587
    return-void
.end method

.method getAnimationDuration(J)J
    .registers 7
    .param p1, "defaultDuration"    # J

    .line 569
    iget-wide v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mAnimationDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_9

    goto :goto_a

    :cond_9
    move-wide v0, p1

    :goto_a
    return-wide v0
.end method

.method getFromAlpha()I
    .registers 2

    .line 578
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mFromAlpha:I

    return v0
.end method

.method getInterpolator(Landroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .registers 3
    .param p1, "defaultInterpolator"    # Landroid/animation/TimeInterpolator;

    .line 574
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    return-object v0
.end method

.method getToAlpha()I
    .registers 2

    .line 582
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->mToAlpha:I

    return v0
.end method
