.class public Landroid/window/BackProgressAnimator;
.super Ljava/lang/Object;
.source "BackProgressAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackProgressAnimator$ProgressCallback;
    }
.end annotation


# static fields
.field private static final PROGRESS_PROP:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/window/BackProgressAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_FACTOR:F = 100.0f


# instance fields
.field private mBackAnimationInProgress:Z

.field private mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

.field private mLastBackEvent:Landroid/window/BackMotionEvent;

.field private mProgress:F

.field private final mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSpring(Landroid/window/BackProgressAnimator;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;
    .registers 1

    iget-object p0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetProgress(Landroid/window/BackProgressAnimator;)F
    .registers 1

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->getProgress()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetProgress(Landroid/window/BackProgressAnimator;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/BackProgressAnimator;->setProgress(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateProgressValue(Landroid/window/BackProgressAnimator;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/BackProgressAnimator;->updateProgressValue(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Landroid/window/BackProgressAnimator$1;

    const-string/jumbo v1, "progress"

    invoke-direct {v0, v1}, Landroid/window/BackProgressAnimator$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/window/BackProgressAnimator;->PROGRESS_PROP:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    .line 78
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroid/window/BackProgressAnimator;->PROGRESS_PROP:Landroid/util/FloatProperty;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 79
    new-instance v1, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    .line 80
    const v2, 0x44bb8000    # 1500.0f

    invoke-virtual {v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 81
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 82
    return-void
.end method

.method private getProgress()F
    .registers 2

    .line 53
    iget v0, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    return v0
.end method

.method private setProgress(F)V
    .registers 2
    .param p1, "progress"    # F

    .line 49
    iput p1, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    .line 50
    return-void
.end method

.method private updateProgressValue(F)V
    .registers 8
    .param p1, "progress"    # F

    .line 158
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    if-eqz v1, :cond_2a

    iget-boolean v2, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    if-nez v2, :cond_d

    goto :goto_2a

    .line 161
    :cond_d
    new-instance v2, Landroid/window/BackEvent;

    .line 162
    invoke-virtual {v0}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v0

    iget-object v3, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {v3}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, p1, v4

    iget-object v5, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    .line 163
    invoke-virtual {v5}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v5

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/window/BackEvent;-><init>(FFFI)V

    .line 161
    invoke-interface {v1, v2}, Landroid/window/BackProgressAnimator$ProgressCallback;->onProgressUpdate(Landroid/window/BackEvent;)V

    .line 164
    return-void

    .line 159
    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method isBackAnimationInProgress()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    return v0
.end method

.method public onBackCancelled(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "finishCallback"    # Ljava/lang/Runnable;

    .line 138
    new-instance v0, Landroid/window/BackProgressAnimator$2;

    invoke-direct {v0, p0, p1}, Landroid/window/BackProgressAnimator$2;-><init>(Landroid/window/BackProgressAnimator;Ljava/lang/Runnable;)V

    .line 148
    .local v0, "listener":Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;
    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    .line 149
    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 150
    return-void
.end method

.method public onBackProgressed(Landroid/window/BackMotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/window/BackMotionEvent;

    .line 90
    iget-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    if-nez v0, :cond_5

    .line 91
    return-void

    .line 93
    :cond_5
    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    .line 94
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_c

    .line 95
    return-void

    .line 97
    :cond_c
    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getProgress()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 98
    return-void
.end method

.method public onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V
    .registers 4
    .param p1, "event"    # Landroid/window/BackMotionEvent;
    .param p2, "callback"    # Landroid/window/BackProgressAnimator$ProgressCallback;

    .line 108
    invoke-virtual {p0}, Landroid/window/BackProgressAnimator;->reset()V

    .line 109
    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    .line 110
    iput-object p2, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    .line 112
    return-void
.end method

.method public reset()V
    .registers 3

    .line 118
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 119
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 120
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    goto :goto_19

    .line 123
    :cond_14
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 125
    :goto_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    .line 127
    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    .line 128
    iput v1, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    .line 129
    return-void
.end method
