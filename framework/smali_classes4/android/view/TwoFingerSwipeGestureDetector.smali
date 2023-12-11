.class public Landroid/view/TwoFingerSwipeGestureDetector;
.super Ljava/lang/Object;
.source "TwoFingerSwipeGestureDetector.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/TwoFingerSwipeGestureDetector$Tuner;,
        Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;,
        Landroid/view/TwoFingerSwipeGestureDetector$PositionDirection;,
        Landroid/view/TwoFingerSwipeGestureDetector$GestureState;
    }
.end annotation


# static fields
.field private static final CANCELED:I = 0x4

.field private static final COMMITTED:I = 0x3

.field protected static final DETECTED:I = 0x2

.field private static final DETECTING:I = 0x1

.field public static final DOWN:I = 0x8

.field protected static final DOWN_THRESHOLD_DIP:F = 20.0f

.field protected static final EASY_START_THRESHOLD_DIP:F = 20.0f

.field protected static final ENDED:I = 0x5

.field public static final INVALID:I = 0x0

.field public static final LEFT:I = 0x1

.field private static final MINUS_DISTANCE_RATIO:F = 0.5f

.field private static final PLUS_DISTANCE_RATIO:F = 0.8f

.field private static final POSITION_MASK:I = 0xd

.field public static final RIGHT:I = 0x4

.field private static final SIDE_THRESHOLD_DIP:F = 96.0f

.field private static final SIDE_THRESHOLD_FOR_ONE_FINGER_DIP:F = 24.0f

.field private static final TIME_THRESHOLD_MS:I = 0xc8

.field private static final TOUCH_SLOP_DIP:F = 24.0f

.field private static final UNIT_PIXELS_PER_SECOND:I = 0x3e8

.field public static final UP:I = 0x2


# instance fields
.field protected DEBUG:Z

.field protected DEBUG_NOISE:Z

.field protected final TAG:Ljava/lang/String;

.field protected mDensity:F

.field protected mDetectedMotionEvent:Landroid/view/MotionEvent;

.field private final mDisplayBounds:Landroid/graphics/Rect;

.field private mDownEnabled:Z

.field protected mDownThreshold:I

.field protected mEasyStartThreshold:I

.field protected mEasyThresholds:[I

.field private mEndCenterX:F

.field private mEndCenterY:F

.field private final mExcludeRegion:Landroid/graphics/Region;

.field private mInitialDistance:F

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private mMinusDistanceRatio:F

.field private mPivotTime:J

.field protected mPivotX:F

.field protected mPivotY:F

.field private mPlusDistanceRatio:F

.field private mSideEnabled:Z

.field protected mSideThreshold:I

.field private mSideThresholdForOneFinger:I

.field protected mStartCenterX:F

.field protected mStartCenterY:F

.field protected mStartPosition:I

.field protected mState:I

.field protected mThresholds:[I

.field protected mThresholdsForOneFinger:[I

.field private mTimeThreshold:F

.field private mTouchSlopDip:F

.field private mTouchSlopSquare:F

.field private mUseThreeFinger:Z

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic $r8$lambda$U5bn3j_AdFfr0-6UWURJxr_Rcms(Landroid/view/TwoFingerSwipeGestureDetector;Landroid/view/MotionEvent;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/TwoFingerSwipeGestureDetector;->lambda$onInputEvent$0(Landroid/view/MotionEvent;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lIvKh2Z8mD32ACphfGzgaZH7wUI(Landroid/view/TwoFingerSwipeGestureDetector;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/TwoFingerSwipeGestureDetector;->lambda$onInputEvent$1(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;
    .param p3, "from"    # Ljava/lang/String;

    .line 162
    invoke-direct {p0, p1, p3}, Landroid/view/TwoFingerSwipeGestureDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "from"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mThresholds:[I

    .line 65
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mThresholdsForOneFinger:[I

    .line 66
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mEasyThresholds:[I

    .line 69
    sget-object v0, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->TIME_THRESHOLD:Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTimeThreshold:F

    .line 70
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMinusDistanceRatio:F

    .line 71
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPlusDistanceRatio:F

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mExcludeRegion:Landroid/graphics/Region;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownEnabled:Z

    .line 131
    iput-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideEnabled:Z

    .line 133
    const/4 v1, 0x5

    iput v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    .line 143
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4c

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-eqz v1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v2

    :cond_4c
    :goto_4c
    iput-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    .line 144
    iput-boolean v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG_NOISE:Z

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/view/TwoFingerSwipeGestureDetector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    .line 149
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopDip:F

    .line 150
    if-nez p1, :cond_88

    .line 151
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMaximumFlingVelocity:I

    .line 152
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMinimumFlingVelocity:I

    goto :goto_98

    .line 154
    :cond_88
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 155
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMaximumFlingVelocity:I

    .line 156
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMinimumFlingVelocity:I

    .line 158
    .end local v0    # "vc":Landroid/view/ViewConfiguration;
    :goto_98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Function<",
            "Landroid/view/TwoFingerSwipeGestureDetector;",
            "Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 171
    .local p2, "supplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/view/TwoFingerSwipeGestureDetector;Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;>;"
    invoke-direct {p0, p1, p3}, Landroid/view/TwoFingerSwipeGestureDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method private committed(I)V
    .registers 5
    .param p1, "gestureFrom"    # I

    .line 517
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "committed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_21
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    .line 519
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 521
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->end()V

    .line 522
    return-void
.end method

.method private gestureFrom(II)I
    .registers 6
    .param p1, "startPosition"    # I
    .param p2, "direction"    # I

    .line 565
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-ne p2, v1, :cond_9

    .line 566
    return v2

    .line 568
    :cond_9
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_11

    if-ne p2, v2, :cond_11

    .line 569
    const/4 v0, 0x3

    return v0

    .line 571
    :cond_11
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    if-ne p2, v0, :cond_19

    .line 572
    return v1

    .line 574
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method private getDirection(FFFF)I
    .registers 9
    .param p1, "sX"    # F
    .param p2, "sY"    # F
    .param p3, "eX"    # F
    .param p4, "eY"    # F

    .line 599
    sub-float v0, p3, p1

    .line 600
    .local v0, "dX":F
    sub-float v1, p4, p2

    .line 601
    .local v1, "dY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_19

    .line 602
    cmpg-float v2, v0, v3

    if-gez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x4

    :goto_18
    return v2

    .line 604
    :cond_19
    cmpg-float v2, v1, v3

    if-gez v2, :cond_1f

    const/4 v2, 0x2

    goto :goto_21

    :cond_1f
    const/16 v2, 0x8

    :goto_21
    return v2
.end method

.method private getDistanceSquareSum(Landroid/view/MotionEvent;Ljava/util/function/Function;)F
    .registers 8
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 546
    .local p2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Float;>;"
    const/4 v0, 0x0

    .line 547
    .local v0, "distanceSum":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 548
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v1, :cond_2f

    .line 549
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    .line 550
    .local v3, "diff":F
    mul-float v4, v3, v3

    add-float/2addr v0, v4

    .line 548
    .end local v3    # "diff":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 552
    .end local v2    # "i":I
    :cond_2f
    return v0
.end method

.method private isInThreshold(IIII)Z
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "threshold"    # I
    .param p4, "position"    # I

    .line 447
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 448
    :cond_a
    if-gez p3, :cond_d

    return v1

    .line 449
    :cond_d
    const/4 v0, 0x1

    sparse-switch p4, :sswitch_data_2e

    .line 459
    return v1

    .line 455
    :sswitch_12
    iget-object v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p3

    if-ge v2, p2, :cond_1a

    move v1, v0

    :cond_1a
    return v1

    .line 453
    :sswitch_1b
    iget-object v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p3

    if-ge v2, p1, :cond_23

    move v1, v0

    :cond_23
    return v1

    .line 451
    :sswitch_24
    iget-object v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p3

    if-le v2, p1, :cond_2c

    move v1, v0

    :cond_2c
    return v1

    nop

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_24
        0x4 -> :sswitch_1b
        0x8 -> :sswitch_12
    .end sparse-switch
.end method

.method private isOverTouchSlop(FFFFLjava/util/function/Consumer;)Z
    .registers 11
    .param p1, "prevX"    # F
    .param p2, "prevY"    # F
    .param p3, "curX"    # F
    .param p4, "curY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 395
    .local p5, "debug":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    sub-float v0, p3, p1

    float-to-int v0, v0

    .line 396
    .local v0, "deltaX":I
    sub-float v1, p4, p2

    float-to-int v1, v1

    .line 397
    .local v1, "deltaY":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    .line 398
    .local v2, "distanceSquare":I
    int-to-float v3, v2

    iget v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopSquare:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1d

    .line 399
    if-eqz p5, :cond_1b

    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p5, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 402
    :cond_1b
    const/4 v3, 0x1

    return v3

    .line 404
    :cond_1d
    const/4 v3, 0x0

    return v3
.end method

.method private isOverTouchTime(JJ)Z
    .registers 7
    .param p1, "pivotTime"    # J
    .param p3, "eventTime"    # J

    .line 381
    sub-long v0, p3, p1

    long-to-float v0, v0

    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTimeThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isStartPositionEnabled(I)Z
    .registers 3
    .param p1, "startPosition"    # I

    .line 480
    sparse-switch p1, :sswitch_data_c

    .line 487
    const/4 v0, 0x0

    return v0

    .line 485
    :sswitch_5
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownEnabled:Z

    return v0

    .line 483
    :sswitch_8
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideEnabled:Z

    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_8
        0x4 -> :sswitch_8
        0x8 -> :sswitch_5
    .end sparse-switch
.end method

.method private isTwoFingerDistanceFartherThanBefore(FF)Z
    .registers 6
    .param p1, "initialDistance"    # F
    .param p2, "distance"    # F

    .line 389
    div-float v0, p2, p1

    .line 390
    .local v0, "ratio":F
    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPlusDistanceRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_15

    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMinusDistanceRatio:F

    sub-float/2addr v2, v1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    return v1
.end method

.method private isTwoFingerVelocitiesSameDirection(Landroid/view/MotionEvent;I)Z
    .registers 16
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointerCount"    # I

    .line 419
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 422
    .local v0, "upIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 423
    .local v1, "id1":I
    iget-object v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    .line 424
    .local v2, "x1":F
    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    .line 425
    .local v3, "y1":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    if-ge v4, p2, :cond_86

    .line 426
    if-ne v4, v0, :cond_24

    goto :goto_83

    .line 428
    :cond_24
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 429
    .local v5, "id2":I
    iget-object v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    .line 430
    .local v6, "x2":F
    iget-object v7, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    .line 432
    .local v7, "y2":F
    mul-float v8, v2, v6

    mul-float v9, v3, v7

    add-float/2addr v8, v9

    .line 433
    .local v8, "dot":F
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_83

    .line 434
    iget-object v9, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 435
    iget-boolean v9, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v9, :cond_81

    .line 436
    iget-object v9, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dot product is negative. id1=("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ") id2=("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_81
    const/4 v9, 0x0

    return v9

    .line 425
    .end local v5    # "id2":I
    .end local v6    # "x2":F
    .end local v7    # "y2":F
    .end local v8    # "dot":F
    :cond_83
    :goto_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 443
    .end local v4    # "i":I
    :cond_86
    const/4 v4, 0x1

    return v4
.end method

.method private isValidPointerCount(I)Z
    .registers 5
    .param p1, "pointerCount"    # I

    .line 374
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mUseThreeFinger:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 375
    const/4 v0, 0x3

    if-gt p1, v0, :cond_a

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    return v1

    .line 377
    :cond_c
    const/4 v0, 0x2

    if-gt p1, v0, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    return v1
.end method

.method static synthetic lambda$committed$2(ILandroid/view/TwoFingerSwipeGestureDetector$GestureListener;)V
    .registers 2
    .param p0, "gestureFrom"    # I
    .param p1, "listener"    # Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;

    .line 519
    invoke-interface {p1, p0}, Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;->onCommitted(I)V

    return-void
.end method

.method private synthetic lambda$onInputEvent$0(Landroid/view/MotionEvent;Ljava/lang/Integer;)V
    .registers 8
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "diff"    # Ljava/lang/Integer;

    .line 235
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotX:F

    .line 237
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/TwoFingerSwipeGestureDetector;->getXYString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 238
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/view/TwoFingerSwipeGestureDetector;->getXYString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopSquare:F

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopSquare:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v1, v2, p2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 235
    const-string/jumbo v2, "prev=%s cur=%s diff=%s overRatio=%s touchSlopSquare=%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onInputEvent$1(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "x"    # Ljava/lang/Integer;
    .param p2, "y"    # Ljava/lang/Integer;

    .line 244
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mThresholdsForOneFinger:[I

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/TwoFingerSwipeGestureDetector;->getPosition(II[I)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private setDensity(F)V
    .registers 2
    .param p1, "density"    # F

    .line 650
    iput p1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDensity:F

    .line 651
    return-void
.end method

.method private setTouchSlopSquare(I)V
    .registers 3
    .param p1, "touchSlop"    # I

    .line 689
    mul-int v0, p1, p1

    int-to-float v0, v0

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopSquare:F

    .line 690
    return-void
.end method

.method private useThreeFinger(Z)V
    .registers 2
    .param p1, "isThreeFinger"    # Z

    .line 625
    iput-boolean p1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mUseThreeFinger:Z

    .line 626
    return-void
.end method


# virtual methods
.method protected actionToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "action"    # I

    .line 700
    packed-switch p1, :pswitch_data_1c

    .line 716
    const-string v0, ""

    return-object v0

    .line 710
    :pswitch_6
    const-string v0, "Pointer Up"

    return-object v0

    .line 706
    :pswitch_9
    const-string v0, "Pointer Down"

    return-object v0

    .line 712
    :pswitch_c
    const-string v0, "Outside"

    return-object v0

    .line 714
    :pswitch_f
    const-string v0, "Cancel"

    return-object v0

    .line 704
    :pswitch_12
    const-string v0, "Move"

    return-object v0

    .line 708
    :pswitch_15
    const-string v0, "Up"

    return-object v0

    .line 702
    :pswitch_18
    const-string v0, "Down"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method protected allMatch(Landroid/view/MotionEvent;Ljava/util/function/BiFunction;)Z
    .registers 8
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 492
    .local p2, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 493
    .local v0, "count":I
    const/4 v1, 0x1

    .line 494
    .local v1, "result":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_28

    .line 495
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    and-int/2addr v1, v3

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 497
    .end local v2    # "i":I
    :cond_28
    return v1
.end method

.method protected build()V
    .registers 5

    .line 629
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDipResources. density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_1f
    iget v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDensity:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v1, :cond_54

    .line 631
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->getSideThresholdDip()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideThreshold:I

    .line 632
    iget v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDensity:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideThresholdForOneFinger:I

    .line 634
    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownThreshold:I

    .line 635
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->getEasyStartThresholdDip()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mEasyStartThreshold:I

    .line 636
    iget v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDensity:F

    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopDip:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/view/TwoFingerSwipeGestureDetector;->setTouchSlopSquare(I)V

    .line 638
    :cond_54
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mThresholds:[I

    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideThreshold:I

    iget v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownThreshold:I

    invoke-virtual {p0, v0, v1, v1, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->initThresholds([IIII)V

    .line 639
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mThresholdsForOneFinger:[I

    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideThresholdForOneFinger:I

    iget v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownThreshold:I

    invoke-virtual {p0, v0, v1, v1, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->initThresholds([IIII)V

    .line 641
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mEasyThresholds:[I

    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mEasyStartThreshold:I

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->initThresholds([IIII)V

    .line 643
    sget-object v0, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->MINUS_DISTANCE_RATIO:Ljava/lang/String;

    .line 644
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMinusDistanceRatio:F

    .line 645
    sget-object v0, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->PLUS_DISTANCE_RATIO:Ljava/lang/String;

    .line 646
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPlusDistanceRatio:F

    .line 647
    return-void
.end method

.method public cancel()V
    .registers 5

    .line 525
    iget v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_39

    const/4 v2, 0x5

    if-ne v0, v2, :cond_9

    goto :goto_39

    .line 528
    :cond_9
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_29
    iput v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    .line 530
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 531
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->end()V

    .line 532
    return-void

    .line 526
    :cond_39
    :goto_39
    return-void
.end method

.method protected commitIfPossible(FF)Z
    .registers 7
    .param p1, "curCenterX"    # F
    .param p2, "curCenterY"    # F

    .line 408
    iget v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterX:F

    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterY:F

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/view/TwoFingerSwipeGestureDetector;->getDirection(FFFF)I

    move-result v0

    .line 409
    .local v0, "direction":I
    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartPosition:I

    invoke-direct {p0, v1, v0}, Landroid/view/TwoFingerSwipeGestureDetector;->gestureFrom(II)I

    move-result v1

    .line 410
    .local v1, "gestureFrom":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    .line 411
    iget-boolean v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v2, :cond_1c

    iget-object v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const-string v3, "ActionMOVE: gestureFrom not found."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1c
    const/4 v2, 0x0

    return v2

    .line 414
    :cond_1e
    invoke-direct {p0, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->committed(I)V

    .line 415
    const/4 v2, 0x1

    return v2
.end method

.method public currentGestureStartedInRegion(Landroid/graphics/Region;)Z
    .registers 4
    .param p1, "excludedRegion"    # Landroid/graphics/Region;

    .line 693
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDetectedMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_6

    .line 694
    const/4 v0, 0x1

    return v0

    .line 696
    :cond_6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda8;-><init>(Landroid/graphics/Region;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->allMatch(Landroid/view/MotionEvent;Ljava/util/function/BiFunction;)Z

    move-result v0

    return v0
.end method

.method protected detected()V
    .registers 3

    .line 511
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const-string v1, "detected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_b
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    .line 513
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 514
    return-void
.end method

.method protected detecting()V
    .registers 3

    .line 505
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const-string v1, "detecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_b
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    .line 507
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 508
    return-void
.end method

.method protected end()V
    .registers 3

    .line 535
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const-string v1, "end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_b
    const/4 v0, 0x5

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    .line 537
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 538
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_22

    .line 539
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 542
    :cond_22
    return-void
.end method

.method protected excludeRegionContains(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 501
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mExcludeRegion:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method protected getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F
    .registers 7
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 556
    .local p2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Float;>;"
    const/4 v0, 0x0

    .line 557
    .local v0, "sum":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 558
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_1a

    .line 559
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v0, v3

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 561
    .end local v2    # "i":I
    :cond_1a
    int-to-float v2, v1

    div-float v2, v0, v2

    return v2
.end method

.method protected getEasyStartThresholdDip()F
    .registers 3

    .line 678
    sget-object v0, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->EASY_START_THRESHOLD_DIP:Ljava/lang/String;

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "easyStartThresholdDipStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getPosition(II[I)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "thresholds"    # [I

    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "result":I
    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 581
    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const-string v2, "display bounds is empty."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return v0

    .line 585
    :cond_11
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->isStartPositionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x0

    aget v2, p3, v2

    invoke-direct {p0, p1, p2, v2, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->isInThreshold(IIII)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 586
    or-int/lit8 v0, v0, 0x1

    .line 588
    :cond_23
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Landroid/view/TwoFingerSwipeGestureDetector;->isStartPositionEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_34

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/view/TwoFingerSwipeGestureDetector;->isInThreshold(IIII)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 589
    or-int/lit8 v0, v0, 0x4

    .line 591
    :cond_34
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->isStartPositionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v2, 0x2

    aget v2, p3, v2

    invoke-direct {p0, p1, p2, v2, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->isInThreshold(IIII)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 592
    or-int/lit8 v0, v0, 0x8

    .line 594
    :cond_47
    return v0
.end method

.method protected getSideThresholdDip()F
    .registers 3

    .line 683
    sget-object v0, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->SIDE_THRESHOLD_DIP:Ljava/lang/String;

    .line 684
    const/high16 v1, 0x42c00000    # 96.0f

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    .line 683
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "sideThresholdDipStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method protected getXYString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;TU;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 385
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p2, "y":Ljava/lang/Object;, "TU;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/graphics/Rect;FI)V
    .registers 4
    .param p1, "displayBounds"    # Landroid/graphics/Rect;
    .param p2, "density"    # F
    .param p3, "enabledPosition"    # I

    .line 609
    invoke-direct {p0, p2}, Landroid/view/TwoFingerSwipeGestureDetector;->setDensity(F)V

    .line 610
    invoke-virtual {p0, p1}, Landroid/view/TwoFingerSwipeGestureDetector;->setDisplayBounds(Landroid/graphics/Rect;)V

    .line 611
    invoke-virtual {p0, p3}, Landroid/view/TwoFingerSwipeGestureDetector;->setGestureSearchSide(I)V

    .line 612
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->build()V

    .line 613
    return-void
.end method

.method public init(Landroid/graphics/Rect;FIZ)V
    .registers 5
    .param p1, "displayBounds"    # Landroid/graphics/Rect;
    .param p2, "density"    # F
    .param p3, "enabledPosition"    # I
    .param p4, "useThreeFinger"    # Z

    .line 617
    invoke-direct {p0, p2}, Landroid/view/TwoFingerSwipeGestureDetector;->setDensity(F)V

    .line 618
    invoke-virtual {p0, p1}, Landroid/view/TwoFingerSwipeGestureDetector;->setDisplayBounds(Landroid/graphics/Rect;)V

    .line 619
    invoke-virtual {p0, p3}, Landroid/view/TwoFingerSwipeGestureDetector;->setGestureSearchSide(I)V

    .line 620
    invoke-direct {p0, p4}, Landroid/view/TwoFingerSwipeGestureDetector;->useThreeFinger(Z)V

    .line 621
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->build()V

    .line 622
    return-void
.end method

.method protected initThresholds([IIII)V
    .registers 7
    .param p1, "thresholds"    # [I
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "down"    # I

    .line 665
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 666
    if-ltz p2, :cond_18

    .line 667
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 669
    :cond_18
    if-ltz p3, :cond_1d

    .line 670
    const/4 v0, 0x1

    aput p3, p1, v0

    .line 672
    :cond_1d
    if-ltz p4, :cond_22

    .line 673
    const/4 v0, 0x2

    aput p4, p1, v0

    .line 675
    :cond_22
    return-void
.end method

.method protected isOverThreshold(FF[II)Ljava/lang/Boolean;
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "thresholds"    # [I
    .param p4, "position"    # I

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "isOver":Z
    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 467
    :cond_f
    and-int/lit8 v1, p4, 0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    .line 468
    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    aget v4, p3, v2

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_22

    move v1, v3

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    or-int/2addr v0, v1

    .line 470
    :cond_24
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_38

    .line 471
    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    aget v4, p3, v3

    sub-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_36

    move v1, v3

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    or-int/2addr v0, v1

    .line 473
    :cond_38
    and-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_4b

    .line 474
    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x2

    aget v4, p3, v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_4a

    move v2, v3

    :cond_4a
    or-int/2addr v0, v2

    .line 476
    :cond_4b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 188
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_39d

    .line 189
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 190
    .local v0, "me":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 191
    .local v1, "action":I
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 192
    .local v2, "pointerCount":I
    iget-boolean v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v3, :cond_37

    iget-boolean v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG_NOISE:Z

    if-eqz v3, :cond_37

    .line 193
    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pointerCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_37
    if-nez v1, :cond_59

    .line 197
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->detecting()V

    .line 198
    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_46

    .line 199
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 201
    :cond_46
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotX:F

    .line 202
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotY:F

    .line 203
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotTime:J

    .line 204
    return-void

    .line 207
    :cond_59
    iget v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5f

    .line 208
    return-void

    .line 211
    :cond_5f
    const/4 v3, 0x3

    if-ne v3, v1, :cond_66

    .line 212
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 213
    return-void

    .line 216
    :cond_66
    invoke-direct {p0, v2}, Landroid/view/TwoFingerSwipeGestureDetector;->isValidPointerCount(I)Z

    move-result v3

    if-nez v3, :cond_90

    .line 217
    iget-boolean v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v3, :cond_8c

    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid pointer count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_8c
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 219
    return-void

    .line 222
    :cond_90
    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 224
    const/4 v3, 0x1

    if-ne v4, v1, :cond_214

    .line 225
    iget v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    if-ne v4, v3, :cond_213

    .line 226
    iget-wide v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotTime:J

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/view/TwoFingerSwipeGestureDetector;->isOverTouchTime(JJ)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 227
    iget-boolean v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v3, :cond_d0

    .line 228
    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    iget-wide v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotTime:J

    .line 229
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTimeThreshold:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 228
    const-string/jumbo v5, "prev=%s cur=%s timeThreshold=%f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_d0
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 232
    return-void

    .line 234
    :cond_d4
    iget v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotX:F

    iget v7, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotY:F

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iget-boolean v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v5, :cond_ec

    new-instance v5, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;-><init>(Landroid/view/TwoFingerSwipeGestureDetector;Landroid/view/MotionEvent;)V

    move-object v10, v5

    goto :goto_ee

    .line 239
    :cond_ec
    const/4 v5, 0x0

    move-object v10, v5

    .line 234
    :goto_ee
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/view/TwoFingerSwipeGestureDetector;->isOverTouchSlop(FFFFLjava/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_f9

    .line 240
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 241
    return-void

    .line 243
    :cond_f9
    new-instance v5, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda4;-><init>(Landroid/view/TwoFingerSwipeGestureDetector;)V

    invoke-virtual {p0, v0, v5}, Landroid/view/TwoFingerSwipeGestureDetector;->allMatch(Landroid/view/MotionEvent;Ljava/util/function/BiFunction;)Z

    move-result v5

    if-eqz v5, :cond_149

    .line 245
    iget-boolean v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v5, :cond_145

    .line 246
    iget-object v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    .line 249
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Landroid/view/TwoFingerSwipeGestureDetector;->getXYString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->getXYString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mThresholdsForOneFinger:[I

    .line 251
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 246
    const-string v4, "ACTION_POINTER_DOWN. any pointer doesn\'t in thresholds. %s %s %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_145
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 254
    return-void

    .line 256
    :cond_149
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v3

    iput v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterX:F

    .line 257
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v3

    iput v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterY:F

    .line 258
    new-instance v3, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda5;-><init>(Landroid/view/TwoFingerSwipeGestureDetector;)V

    invoke-virtual {p0, v0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->allMatch(Landroid/view/MotionEvent;Ljava/util/function/BiFunction;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 259
    iget-boolean v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v3, :cond_17c

    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "started on gesture exclude region."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_17c
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 261
    return-void

    .line 263
    :cond_180
    iget v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterY:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mThresholds:[I

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/TwoFingerSwipeGestureDetector;->getPosition(II[I)I

    move-result v3

    iput v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartPosition:I

    .line 265
    if-nez v3, :cond_1c1

    .line 266
    iget-boolean v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v3, :cond_1bd

    .line 267
    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "position invalid. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterX:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterY:F

    .line 268
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 267
    invoke-virtual {p0, v5, v6}, Landroid/view/TwoFingerSwipeGestureDetector;->getXYString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1bd
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 271
    return-void

    .line 274
    :cond_1c1
    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDetectedMotionEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_1c8

    .line 275
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 277
    :cond_1c8
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDetectedMotionEvent:Landroid/view/MotionEvent;

    .line 279
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;-><init>(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->getDistanceSquareSum(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v3

    .line 280
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;)V

    .line 279
    invoke-direct {p0, v0, v4}, Landroid/view/TwoFingerSwipeGestureDetector;->getDistanceSquareSum(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mInitialDistance:F

    .line 281
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->detected()V

    .line 282
    iget-boolean v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v3, :cond_213

    .line 283
    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget-boolean v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideEnabled:Z

    .line 286
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownEnabled:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mThresholds:[I

    .line 287
    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v0, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 283
    const-string v5, "detected reason. events=%s, display=%s side=%b down=%b threshold=%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_213
    return-void

    .line 293
    :cond_214
    const/4 v4, 0x2

    if-ne v4, v1, :cond_245

    .line 294
    iget v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    if-ne v3, v4, :cond_244

    .line 295
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v3

    .line 296
    .local v3, "curCenterX":F
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0, v4}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v4

    .line 297
    .local v4, "curCenterY":F
    iget-object v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mEasyThresholds:[I

    iget v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartPosition:I

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/TwoFingerSwipeGestureDetector;->isOverThreshold(FF[II)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_244

    .line 298
    invoke-virtual {p0, v3, v4}, Landroid/view/TwoFingerSwipeGestureDetector;->commitIfPossible(FF)Z

    .line 301
    .end local v3    # "curCenterX":F
    .end local v4    # "curCenterY":F
    :cond_244
    return-void

    .line 304
    :cond_245
    const/4 v5, 0x6

    if-ne v5, v1, :cond_2e1

    .line 305
    iget v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    if-ne v3, v4, :cond_2e0

    .line 306
    invoke-direct {p0, v0, v2}, Landroid/view/TwoFingerSwipeGestureDetector;->isTwoFingerVelocitiesSameDirection(Landroid/view/MotionEvent;I)Z

    move-result v3

    if-nez v3, :cond_256

    .line 307
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 308
    return-void

    .line 311
    :cond_256
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;-><init>(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->getDistanceSquareSum(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v3

    .line 312
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v0, v4}, Landroid/view/TwoFingerSwipeGestureDetector;->getDistanceSquareSum(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v4

    add-float/2addr v3, v4

    .line 313
    .local v3, "distance":F
    iget-boolean v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mUseThreeFinger:Z

    if-nez v4, :cond_2a5

    iget v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mInitialDistance:F

    invoke-direct {p0, v4, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->isTwoFingerDistanceFartherThanBefore(FF)Z

    move-result v4

    if-eqz v4, :cond_2a5

    .line 315
    iget-boolean v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v4, :cond_2a1

    .line 316
    iget-object v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    iget v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mInitialDistance:F

    div-float v5, v3, v5

    .line 321
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mInitialDistance:F

    sub-float v6, v3, v6

    iget v7, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopSquare:F

    div-float/2addr v6, v7

    .line 322
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 317
    const-string v6, "ACTION_UP. Distance between finger is farther than before. distance ratio=%f touch slop ratio=%f "

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2a1
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 325
    return-void

    .line 328
    :cond_2a5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 329
    .local v4, "upIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2aa
    if-ge v5, v2, :cond_2be

    .line 330
    if-ne v5, v4, :cond_2af

    goto :goto_2bb

    .line 331
    :cond_2af
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotX:F

    .line 332
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iput v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotY:F

    .line 329
    :goto_2bb
    add-int/lit8 v5, v5, 0x1

    goto :goto_2aa

    .line 334
    .end local v5    # "i":I
    :cond_2be
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotTime:J

    .line 335
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0, v5}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v5

    iput v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mEndCenterX:F

    .line 336
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0, v5}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v5

    iput v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mEndCenterY:F

    .line 338
    .end local v3    # "distance":F
    .end local v4    # "upIndex":I
    :cond_2e0
    return-void

    .line 341
    :cond_2e1
    if-ne v3, v1, :cond_39d

    .line 342
    iget v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    if-ne v3, v4, :cond_39a

    .line 343
    iget-wide v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotTime:J

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/view/TwoFingerSwipeGestureDetector;->isOverTouchTime(JJ)Z

    move-result v3

    if-eqz v3, :cond_31e

    .line 344
    iget-boolean v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v3, :cond_31a

    .line 345
    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    iget-wide v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotTime:J

    .line 346
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTimeThreshold:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 345
    const-string v5, "ACTION_UP. prev=%s cur=%s timeThreshold=%f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_31a
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 349
    return-void

    .line 351
    :cond_31e
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v3

    .line 352
    .local v3, "curCenterX":F
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0, v4}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v4

    .line 353
    .local v4, "curCenterY":F
    iget-object v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mThresholds:[I

    iget v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartPosition:I

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/TwoFingerSwipeGestureDetector;->isOverThreshold(FF[II)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_38c

    .line 354
    iget-boolean v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v5, :cond_388

    .line 355
    iget-object v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_UP. didn\'t over threshold. sp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cur="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 357
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/view/TwoFingerSwipeGestureDetector;->getXYString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " thresholds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mThresholds:[I

    .line 358
    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 355
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_388
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 361
    return-void

    .line 363
    :cond_38c
    iget v5, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mEndCenterX:F

    iget v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mEndCenterY:F

    invoke-virtual {p0, v5, v6}, Landroid/view/TwoFingerSwipeGestureDetector;->commitIfPossible(FF)Z

    move-result v5

    if-nez v5, :cond_399

    .line 364
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 366
    .end local v3    # "curCenterX":F
    .end local v4    # "curCenterY":F
    :cond_399
    goto :goto_39d

    .line 367
    :cond_39a
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->end()V

    .line 371
    .end local v0    # "me":Landroid/view/MotionEvent;
    .end local v1    # "action":I
    .end local v2    # "pointerCount":I
    :cond_39d
    :goto_39d
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 184
    invoke-virtual {p0, p1}, Landroid/view/TwoFingerSwipeGestureDetector;->onInputEvent(Landroid/view/InputEvent;)V

    .line 185
    return-void
.end method

.method public setDebug(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 754
    iput-boolean p1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    .line 755
    return-void
.end method

.method public setDebugNoise(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 750
    iput-boolean p1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG_NOISE:Z

    .line 751
    return-void
.end method

.method public setDisplayBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "displayBounds"    # Landroid/graphics/Rect;

    .line 660
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayBounds. displayBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_1d
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 662
    return-void
.end method

.method public setGestureExclusionRegion(Landroid/graphics/Region;)V
    .registers 5
    .param p1, "region"    # Landroid/graphics/Region;

    .line 178
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGestureExclusionRegion. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1d
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 180
    return-void
.end method

.method public setGestureSearchSide(I)V
    .registers 7
    .param p1, "position"    # I

    .line 654
    and-int/lit8 v0, p1, 0xd

    .line 655
    .local v0, "masked":I
    and-int/lit8 v1, v0, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    iput-boolean v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideEnabled:Z

    .line 656
    and-int/lit8 v1, v0, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_15

    goto :goto_16

    :cond_15
    move v2, v3

    :goto_16
    iput-boolean v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownEnabled:Z

    .line 657
    return-void
.end method

.method public setTouchSlopForTest(F)V
    .registers 4
    .param p1, "touchSlopDip"    # F

    .line 92
    iput p1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopDip:F

    .line 93
    iget v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDensity:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/view/TwoFingerSwipeGestureDetector;->setTouchSlopSquare(I)V

    .line 94
    return-void
.end method
