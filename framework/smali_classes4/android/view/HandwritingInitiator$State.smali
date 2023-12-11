.class Landroid/view/HandwritingInitiator$State;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field private mExceedHandwritingSlop:Z

.field private mHasInitiatedHandwriting:Z

.field private mHasPreparedHandwritingDelegation:Z

.field private mPendingConnectedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldInitHandwriting:Z

.field private final mStylusDownTimeInMillis:J

.field private final mStylusDownX:F

.field private final mStylusDownY:F

.field private final mStylusPointerId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmExceedHandwritingSlop(Landroid/view/HandwritingInitiator$State;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/HandwritingInitiator$State;->mExceedHandwritingSlop:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasInitiatedHandwriting(Landroid/view/HandwritingInitiator$State;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/HandwritingInitiator$State;->mHasInitiatedHandwriting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasPreparedHandwritingDelegation(Landroid/view/HandwritingInitiator$State;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/HandwritingInitiator$State;->mHasPreparedHandwritingDelegation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingConnectedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Landroid/view/HandwritingInitiator$State;->mPendingConnectedView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/HandwritingInitiator$State;->mShouldInitHandwriting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownTimeInMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F
    .registers 1

    iget p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F
    .registers 1

    iget p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I
    .registers 1

    iget p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusPointerId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmExceedHandwritingSlop(Landroid/view/HandwritingInitiator$State;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator$State;->mExceedHandwritingSlop:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasInitiatedHandwriting(Landroid/view/HandwritingInitiator$State;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator$State;->mHasInitiatedHandwriting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasPreparedHandwritingDelegation(Landroid/view/HandwritingInitiator$State;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator$State;->mHasPreparedHandwritingDelegation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingConnectedView(Landroid/view/HandwritingInitiator$State;Ljava/lang/ref/WeakReference;)V
    .registers 2

    iput-object p1, p0, Landroid/view/HandwritingInitiator$State;->mPendingConnectedView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator$State;->mShouldInitHandwriting:Z

    return-void
.end method

.method private constructor <init>(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator$State;->mPendingConnectedView:Ljava/lang/ref/WeakReference;

    .line 682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 683
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/view/HandwritingInitiator$State;->mStylusPointerId:I

    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownTimeInMillis:J

    .line 685
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownX:F

    .line 686
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownY:F

    .line 688
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/HandwritingInitiator$State;->mShouldInitHandwriting:Z

    .line 689
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/HandwritingInitiator$State;->mHasInitiatedHandwriting:Z

    .line 690
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator$State;->mHasPreparedHandwritingDelegation:Z

    .line 691
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator$State;->mExceedHandwritingSlop:Z

    .line 692
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/MotionEvent;Landroid/view/HandwritingInitiator$State-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/HandwritingInitiator$State;-><init>(Landroid/view/MotionEvent;)V

    return-void
.end method
