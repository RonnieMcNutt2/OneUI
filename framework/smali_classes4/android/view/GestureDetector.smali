.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$OnGestureListener;,
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnContextClickListener;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MIN_TIME:I

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I

.field private static sCfmsService:Landroid/os/ICustomFrequencyManager;


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mAmbiguousGestureMultiplier:F

.field private mCheckLog:Z

.field private mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mCurrentDownEventRawX:F

.field private mCurrentDownEventRawY:F

.field private mCurrentMotionEvent:Landroid/view/MotionEvent;

.field private mCurrentMotionEventRawX:F

.field private mCurrentMotionEventRawY:F

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mHasRecordedClassification:Z

.field private mIgnoreNextUpEvent:Z

.field private mInContextClick:Z

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mOverscroller:Landroid/widget/OverScroller;

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentDownEvent(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .registers 1

    iget-object p0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDoubleTapListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .registers 1

    iget-object p0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .registers 1

    iget-object p0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStillDown(Landroid/view/GestureDetector;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDeferConfirmSingleTap(Landroid/view/GestureDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchLongPress(Landroid/view/GestureDetector;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecordGestureClassification(Landroid/view/GestureDetector;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 254
    const-class v0, Landroid/view/GestureDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    .line 265
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 266
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 267
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 268
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    .line 298
    const/4 v0, 0x0

    sput-object v0, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 452
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    nop

    .line 332
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 333
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 471
    if-eqz p3, :cond_1e

    .line 472
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_25

    .line 474
    :cond_1e
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 476
    :goto_25
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 477
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_31

    .line 478
    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 480
    :cond_31
    instance-of v0, p2, Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v0, :cond_3b

    .line 481
    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnContextClickListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    .line 483
    :cond_3b
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    .line 484
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "unused"    # Z

    .line 502
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 503
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 432
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 414
    return-void
.end method

.method private cancel()V
    .registers 3

    .line 963
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 964
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 965
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 966
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 967
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 968
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 969
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 970
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 971
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 972
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 973
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 974
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 975
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 976
    return-void
.end method

.method private cancelTaps()V
    .registers 3

    .line 979
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 980
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 981
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 982
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 983
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 984
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 985
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 986
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 987
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 988
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 989
    return-void
.end method

.method private dispatchLongPress()V
    .registers 3

    .line 1011
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 1013
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1014
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 1015
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 506
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_65

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 513
    if-nez p1, :cond_25

    .line 515
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    .line 516
    .local v0, "touchSlop":I
    move v1, v0

    .line 517
    .local v1, "doubleTapTouchSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v2

    .line 519
    .local v2, "doubleTapSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 520
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 521
    invoke-static {}, Landroid/view/ViewConfiguration;->getAmbiguousGestureMultiplier()F

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    goto :goto_58

    .line 523
    .end local v0    # "touchSlop":I
    .end local v1    # "doubleTapTouchSlop":I
    .end local v2    # "doubleTapSlop":I
    :cond_25
    const-string v0, "GestureDetector#init"

    invoke-static {p1, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 524
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 525
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 526
    .local v1, "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    .line 527
    .local v2, "doubleTapTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 528
    .local v3, "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 529
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 530
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    .line 531
    new-instance v4, Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, p1, v5, v6}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v4, p0, Landroid/view/GestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 533
    .end local v3    # "doubleTapSlop":I
    .local v0, "touchSlop":I
    .local v1, "doubleTapTouchSlop":I
    .local v2, "doubleTapSlop":I
    :goto_58
    mul-int v3, v0, v0

    iput v3, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 534
    mul-int v3, v1, v1

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 535
    mul-int v3, v2, v2

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 536
    return-void

    .line 507
    .end local v0    # "touchSlop":I
    .end local v1    # "doubleTapTouchSlop":I
    .end local v2    # "doubleTapSlop":I
    :cond_65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .line 993
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 994
    return v1

    .line 997
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 998
    .local v2, "deltaTime":J
    sget v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_50

    sget v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1e

    goto :goto_50

    .line 1002
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v0, v4

    .line 1003
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    .line 1004
    .local v4, "deltaY":I
    nop

    .line 1005
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-eqz v5, :cond_40

    move v5, v6

    goto :goto_41

    :cond_40
    move v5, v1

    .line 1006
    .local v5, "isGeneratedGesture":Z
    :goto_41
    if-eqz v5, :cond_45

    move v7, v1

    goto :goto_47

    :cond_45
    iget v7, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 1007
    .local v7, "slopSquare":I
    :goto_47
    mul-int v8, v0, v0

    mul-int v9, v4, v4

    add-int/2addr v8, v9

    if-ge v8, v7, :cond_4f

    move v1, v6

    :cond_4f
    return v1

    .line 999
    .end local v0    # "deltaX":I
    .end local v4    # "deltaY":I
    .end local v5    # "isGeneratedGesture":Z
    .end local v7    # "slopSquare":I
    :cond_50
    :goto_50
    return v1
.end method

.method private recordGestureClassification(I)V
    .registers 9
    .param p1, "classification"    # I

    .line 1018
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    if-nez v0, :cond_42

    if-nez p1, :cond_7

    goto :goto_42

    .line 1024
    :cond_7
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_11

    goto :goto_3f

    .line 1029
    :cond_11
    nop

    .line 1031
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1033
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, p0, Landroid/view/GestureDetector;->mCurrentMotionEventRawX:F

    iget v4, p0, Landroid/view/GestureDetector;->mCurrentDownEventRawX:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    iget v5, p0, Landroid/view/GestureDetector;->mCurrentMotionEventRawY:F

    iget v6, p0, Landroid/view/GestureDetector;->mCurrentDownEventRawY:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 1035
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 1029
    const/16 v4, 0xb1

    invoke-static {v4, v0, p1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIF)V

    .line 1038
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 1039
    return-void

    .line 1026
    :cond_3f
    :goto_3f
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 1027
    return-void

    .line 1022
    :cond_42
    :goto_42
    return-void
.end method

.method private triggerGDBoost(IF)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "duration"    # F

    .line 909
    :try_start_0
    sget-object v0, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_12

    .line 910
    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 911
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 912
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    sput-object v1, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 915
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_12
    sget-object v0, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_32

    .line 916
    const-string v1, "GESTURE_DETECTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    .line 920
    :cond_32
    goto :goto_37

    .line 918
    :catch_33
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 921
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .registers 2

    .line 576
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 932
    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 933
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 936
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 937
    .local v0, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_4a

    goto :goto_49

    .line 952
    :pswitch_18
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_49

    if-eq v0, v3, :cond_20

    if-ne v0, v4, :cond_49

    .line 954
    :cond_20
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 955
    iput-boolean v5, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    goto :goto_49

    .line 939
    :pswitch_25
    iget-object v2, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v2, :cond_49

    iget-boolean v6, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-nez v6, :cond_49

    iget-boolean v6, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v6, :cond_49

    if-eq v0, v3, :cond_35

    if-ne v0, v4, :cond_49

    .line 942
    :cond_35
    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 943
    iput-boolean v5, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 944
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 945
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 946
    return v5

    .line 959
    :cond_49
    :goto_49
    return v1

    :pswitch_data_4a
    .packed-switch 0xb
        :pswitch_25
        :pswitch_18
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 41
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 588
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 589
    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 592
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 594
    .local v2, "action":I
    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_17

    .line 595
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 598
    :cond_17
    iget-boolean v4, v0, Landroid/view/GestureDetector;->mCheckLog:Z

    if-eqz v4, :cond_44

    .line 599
    sget-object v4, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "obtain mCurrentMotionEventRaw. action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iput-boolean v3, v0, Landroid/view/GestureDetector;->mCheckLog:Z

    .line 603
    :cond_44
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 605
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEventRawX:F

    .line 606
    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEventRawY:F

    .line 609
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_62

    .line 610
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 612
    :cond_62
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 614
    and-int/lit16 v4, v2, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6e

    const/4 v4, 0x1

    goto :goto_6f

    :cond_6e
    move v4, v3

    .line 616
    .local v4, "pointerUp":Z
    :goto_6f
    if-eqz v4, :cond_76

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_77

    :cond_76
    const/4 v5, -0x1

    .line 617
    .local v5, "skipIndex":I
    :goto_77
    nop

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_82

    const/4 v7, 0x1

    goto :goto_83

    :cond_82
    move v7, v3

    .line 621
    .local v7, "isGeneratedGesture":Z
    :goto_83
    const/4 v8, 0x0

    .local v8, "sumX":F
    const/4 v9, 0x0

    .line 622
    .local v9, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 623
    .local v10, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8a
    if-ge v11, v10, :cond_9c

    .line 624
    if-ne v5, v11, :cond_8f

    goto :goto_99

    .line 625
    :cond_8f
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v8, v12

    .line 626
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v9, v12

    .line 623
    :goto_99
    add-int/lit8 v11, v11, 0x1

    goto :goto_8a

    .line 628
    .end local v11    # "i":I
    :cond_9c
    if-eqz v4, :cond_a1

    add-int/lit8 v11, v10, -0x1

    goto :goto_a2

    :cond_a1
    move v11, v10

    .line 629
    .local v11, "div":I
    :goto_a2
    int-to-float v12, v11

    div-float v12, v8, v12

    .line 630
    .local v12, "focusX":F
    int-to-float v13, v11

    div-float v13, v9, v13

    .line 632
    .local v13, "focusY":F
    const/4 v14, 0x0

    .line 634
    .local v14, "handled":Z
    and-int/lit16 v15, v2, 0xff

    const/16 v6, 0x3e8

    const/4 v3, 0x2

    packed-switch v15, :pswitch_data_4e4

    :pswitch_b1
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .local v19, "action":I
    .local v20, "pointerUp":Z
    .local v21, "skipIndex":I
    .local v23, "sumX":F
    .local v24, "sumY":F
    .local v28, "count":I
    .local v29, "div":I
    .local v31, "handled":Z
    goto/16 :goto_4d7

    .line 643
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v31    # "handled":Z
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    :pswitch_c3
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 644
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 648
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v15, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v15, v15

    invoke-virtual {v3, v6, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 649
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 650
    .local v3, "upIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 651
    .local v6, "id1":I
    iget-object v15, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v15

    .line 652
    .local v15, "x1":F
    move/from16 v19, v2

    .end local v2    # "action":I
    .restart local v19    # "action":I
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    .line 653
    .local v2, "y1":F
    const/16 v16, 0x0

    move/from16 v20, v4

    move/from16 v4, v16

    .local v4, "i":I
    .restart local v20    # "pointerUp":Z
    :goto_ef
    if-ge v4, v10, :cond_131

    .line 654
    if-ne v4, v3, :cond_fc

    move/from16 v23, v2

    move/from16 v16, v3

    move/from16 v21, v5

    move/from16 v18, v6

    goto :goto_126

    .line 656
    :cond_fc
    move/from16 v16, v3

    .end local v3    # "upIndex":I
    .local v16, "upIndex":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 657
    .local v3, "id2":I
    move/from16 v21, v5

    .end local v5    # "skipIndex":I
    .restart local v21    # "skipIndex":I
    iget-object v5, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    mul-float/2addr v5, v15

    .line 658
    .local v5, "x":F
    move/from16 v18, v6

    .end local v6    # "id1":I
    .local v18, "id1":I
    iget-object v6, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    mul-float/2addr v6, v2

    .line 660
    .local v6, "y":F
    add-float v22, v5, v6

    .line 661
    .local v22, "dot":F
    const/16 v17, 0x0

    cmpg-float v23, v22, v17

    if-gez v23, :cond_124

    .line 662
    move/from16 v23, v2

    .end local v2    # "y1":F
    .local v23, "y1":F
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 663
    goto :goto_139

    .line 661
    .end local v23    # "y1":F
    .restart local v2    # "y1":F
    :cond_124
    move/from16 v23, v2

    .line 653
    .end local v2    # "y1":F
    .end local v3    # "id2":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v22    # "dot":F
    .restart local v23    # "y1":F
    :goto_126
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v16

    move/from16 v6, v18

    move/from16 v5, v21

    move/from16 v2, v23

    goto :goto_ef

    .end local v16    # "upIndex":I
    .end local v18    # "id1":I
    .end local v21    # "skipIndex":I
    .end local v23    # "y1":F
    .restart local v2    # "y1":F
    .local v3, "upIndex":I
    .local v5, "skipIndex":I
    .local v6, "id1":I
    :cond_131
    move/from16 v23, v2

    move/from16 v16, v3

    move/from16 v21, v5

    move/from16 v18, v6

    .line 666
    .end local v2    # "y1":F
    .end local v3    # "upIndex":I
    .end local v4    # "i":I
    .end local v5    # "skipIndex":I
    .end local v6    # "id1":I
    .restart local v16    # "upIndex":I
    .restart local v18    # "id1":I
    .restart local v21    # "skipIndex":I
    .restart local v23    # "y1":F
    :goto_139
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_4d7

    .line 636
    .end local v15    # "x1":F
    .end local v16    # "upIndex":I
    .end local v18    # "id1":I
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .end local v23    # "y1":F
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_145
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 637
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 639
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancelTaps()V

    .line 640
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_4d7

    .line 892
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_162
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_4d7

    .line 744
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_177
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v2, :cond_2d3

    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_191

    .line 745
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_4d7

    .line 748
    :cond_191
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v2

    .line 749
    .local v2, "motionClassification":I
    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    .line 751
    .local v4, "hasPendingLongPress":Z
    iget v5, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    sub-float/2addr v5, v12

    .line 752
    .local v5, "scrollX":F
    iget v6, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    sub-float/2addr v6, v13

    .line 753
    .local v6, "scrollY":F
    iget-boolean v15, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v15, :cond_1bd

    .line 755
    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 757
    iget-object v15, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v15, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    or-int/2addr v14, v15

    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    goto/16 :goto_2b0

    .line 758
    :cond_1bd
    iget-boolean v15, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v15, :cond_27b

    .line 759
    iget v15, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    sub-float v15, v12, v15

    float-to-int v15, v15

    .line 760
    .local v15, "deltaX":I
    iget v3, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    sub-float v3, v13, v3

    float-to-int v3, v3

    .line 761
    .local v3, "deltaY":I
    mul-int v23, v15, v15

    mul-int v24, v3, v3

    move/from16 v25, v3

    .end local v3    # "deltaY":I
    .local v25, "deltaY":I
    add-int v3, v23, v24

    .line 762
    .local v3, "distance":I
    move/from16 v23, v8

    if-eqz v7, :cond_1d9

    const/4 v8, 0x0

    goto :goto_1db

    .end local v8    # "sumX":F
    .local v23, "sumX":F
    :cond_1d9
    iget v8, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 764
    .local v8, "slopSquare":I
    :goto_1db
    move/from16 v24, v9

    const/4 v9, 0x1

    .end local v9    # "sumY":F
    .restart local v24    # "sumY":F
    if-ne v2, v9, :cond_1e2

    const/4 v9, 0x1

    goto :goto_1e3

    :cond_1e2
    const/4 v9, 0x0

    .line 766
    .local v9, "ambiguousGesture":Z
    :goto_1e3
    if-eqz v4, :cond_1ea

    if-eqz v9, :cond_1ea

    const/16 v26, 0x1

    goto :goto_1ec

    :cond_1ea
    const/16 v26, 0x0

    .line 768
    .local v26, "shouldInhibitDefaultAction":Z
    :goto_1ec
    if-eqz v26, :cond_237

    .line 770
    if-le v3, v8, :cond_222

    .line 776
    move/from16 v27, v9

    .end local v9    # "ambiguousGesture":Z
    .local v27, "ambiguousGesture":Z
    iget-object v9, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move/from16 v28, v10

    const/4 v10, 0x2

    .end local v10    # "count":I
    .restart local v28    # "count":I
    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    move/from16 v29, v11

    .end local v11    # "div":I
    .restart local v29    # "div":I
    int-to-long v10, v9

    .line 778
    .local v10, "longPressTimeout":J
    iget-object v9, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 779
    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v31, v14

    move/from16 v30, v15

    const/4 v4, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x3

    .end local v2    # "motionClassification":I
    .end local v4    # "hasPendingLongPress":Z
    .end local v14    # "handled":Z
    .end local v15    # "deltaX":I
    .local v30, "deltaX":I
    .restart local v31    # "handled":Z
    .local v32, "hasPendingLongPress":Z
    .local v33, "motionClassification":I
    invoke-virtual {v9, v14, v15, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 783
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v14

    long-to-float v4, v10

    move-wide/from16 v34, v10

    .end local v10    # "longPressTimeout":J
    .local v34, "longPressTimeout":J
    iget v10, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v4, v10

    float-to-long v10, v4

    add-long/2addr v14, v10

    .line 778
    invoke-virtual {v9, v2, v14, v15}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_230

    .line 770
    .end local v27    # "ambiguousGesture":Z
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v30    # "deltaX":I
    .end local v31    # "handled":Z
    .end local v32    # "hasPendingLongPress":Z
    .end local v33    # "motionClassification":I
    .end local v34    # "longPressTimeout":J
    .restart local v2    # "motionClassification":I
    .restart local v4    # "hasPendingLongPress":Z
    .restart local v9    # "ambiguousGesture":Z
    .local v10, "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    .restart local v15    # "deltaX":I
    :cond_222
    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    move/from16 v30, v15

    .line 790
    .end local v2    # "motionClassification":I
    .end local v4    # "hasPendingLongPress":Z
    .end local v9    # "ambiguousGesture":Z
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .end local v15    # "deltaX":I
    .restart local v27    # "ambiguousGesture":Z
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v30    # "deltaX":I
    .restart local v31    # "handled":Z
    .restart local v32    # "hasPendingLongPress":Z
    .restart local v33    # "motionClassification":I
    :goto_230
    int-to-float v2, v8

    iget v4, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v4, v4

    mul-float/2addr v2, v4

    float-to-int v8, v2

    goto :goto_245

    .line 768
    .end local v27    # "ambiguousGesture":Z
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v30    # "deltaX":I
    .end local v31    # "handled":Z
    .end local v32    # "hasPendingLongPress":Z
    .end local v33    # "motionClassification":I
    .restart local v2    # "motionClassification":I
    .restart local v4    # "hasPendingLongPress":Z
    .restart local v9    # "ambiguousGesture":Z
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    .restart local v15    # "deltaX":I
    :cond_237
    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    move/from16 v30, v15

    .line 793
    .end local v2    # "motionClassification":I
    .end local v4    # "hasPendingLongPress":Z
    .end local v9    # "ambiguousGesture":Z
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .end local v15    # "deltaX":I
    .restart local v27    # "ambiguousGesture":Z
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v30    # "deltaX":I
    .restart local v31    # "handled":Z
    .restart local v32    # "hasPendingLongPress":Z
    .restart local v33    # "motionClassification":I
    :goto_245
    if-le v3, v8, :cond_26d

    .line 794
    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 796
    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v4, v1, v5, v6}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .line 797
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 798
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 799
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 800
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 801
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 802
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_26f

    .line 793
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_26d
    move/from16 v14, v31

    .line 804
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    :goto_26f
    if-eqz v7, :cond_273

    const/4 v2, 0x0

    goto :goto_275

    :cond_273
    iget v2, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 805
    .local v2, "doubleTapSlopSquare":I
    :goto_275
    if-le v3, v2, :cond_27a

    .line 806
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 808
    .end local v2    # "doubleTapSlopSquare":I
    .end local v3    # "distance":I
    .end local v8    # "slopSquare":I
    .end local v25    # "deltaY":I
    .end local v26    # "shouldInhibitDefaultAction":Z
    .end local v27    # "ambiguousGesture":Z
    .end local v30    # "deltaX":I
    :cond_27a
    goto :goto_2b0

    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v32    # "hasPendingLongPress":Z
    .end local v33    # "motionClassification":I
    .local v2, "motionClassification":I
    .restart local v4    # "hasPendingLongPress":Z
    .local v8, "sumX":F
    .local v9, "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    :cond_27b
    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v2    # "motionClassification":I
    .end local v4    # "hasPendingLongPress":Z
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v31    # "handled":Z
    .restart local v32    # "hasPendingLongPress":Z
    .restart local v33    # "motionClassification":I
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_29f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_29c

    goto :goto_29f

    :cond_29c
    move/from16 v14, v31

    goto :goto_2b0

    .line 809
    :cond_29f
    :goto_29f
    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 810
    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3, v1, v5, v6}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    .line 811
    .end local v31    # "handled":Z
    .local v2, "handled":Z
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 812
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move v14, v2

    .line 814
    .end local v2    # "handled":Z
    .restart local v14    # "handled":Z
    :goto_2b0
    move/from16 v2, v33

    const/4 v3, 0x2

    .end local v33    # "motionClassification":I
    .local v2, "motionClassification":I
    if-ne v2, v3, :cond_2b8

    const/16 v16, 0x1

    goto :goto_2ba

    :cond_2b8
    const/16 v16, 0x0

    :goto_2ba
    move/from16 v3, v16

    .line 816
    .local v3, "deepPress":Z
    if-eqz v3, :cond_4d9

    if-eqz v32, :cond_4d9

    .line 817
    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 818
    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 819
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 818
    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4d9

    .line 744
    .end local v2    # "motionClassification":I
    .end local v3    # "deepPress":Z
    .end local v5    # "scrollX":F
    .end local v6    # "scrollY":F
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v32    # "hasPendingLongPress":Z
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    :cond_2d3
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v31    # "handled":Z
    goto/16 :goto_4d7

    .line 827
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v31    # "handled":Z
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .local v5, "skipIndex":I
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    :pswitch_2df
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v31    # "handled":Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 828
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 829
    .local v2, "currentUpEvent":Landroid/view/MotionEvent;
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v3, :cond_30d

    .line 831
    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 833
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v14, v31, v3

    .line 835
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v0, v4, v3}, Landroid/view/GestureDetector;->triggerGDBoost(IF)V

    goto/16 :goto_3b0

    .line 837
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_30d
    const/4 v4, 0x3

    iget-boolean v3, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v3, :cond_31c

    .line 838
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 839
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    goto/16 :goto_3ae

    .line 840
    :cond_31c
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v3, :cond_346

    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_346

    .line 841
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 843
    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 844
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    if-eqz v3, :cond_3b0

    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v3, :cond_3b0

    .line 845
    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 847
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3b0

    .line 848
    sget-object v3, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onSTC#2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b0

    .line 852
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_346
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_3ae

    .line 855
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 856
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 857
    .local v5, "pointerId":I
    iget v4, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 858
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    .line 859
    .local v4, "velocityY":F
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    .line 861
    .local v8, "velocityX":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_375

    .line 862
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3ae

    .line 863
    :cond_375
    iget-object v9, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v10, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v9, v10, v1, v8, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .line 865
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    iget-object v9, v0, Landroid/view/GestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    if-eqz v9, :cond_3b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    if-ne v9, v6, :cond_3b0

    .line 866
    iget-object v6, v0, Landroid/view/GestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    const/16 v31, 0x0

    const/16 v32, 0x0

    float-to-int v9, v8

    float-to-int v10, v4

    const/high16 v35, -0x80000000

    const v36, 0x7fffffff

    const/high16 v37, -0x80000000

    const v38, 0x7fffffff

    move-object/from16 v30, v6

    move/from16 v33, v9

    move/from16 v34, v10

    invoke-virtual/range {v30 .. v38}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 868
    iget-object v6, v0, Landroid/view/GestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->getDuration()I

    move-result v6

    int-to-float v6, v6

    const/4 v9, 0x1

    invoke-direct {v0, v9, v6}, Landroid/view/GestureDetector;->triggerGDBoost(IF)V

    goto :goto_3b0

    .line 873
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "velocityY":F
    .end local v5    # "pointerId":I
    .end local v8    # "velocityX":F
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_3ae
    :goto_3ae
    move/from16 v14, v31

    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    :cond_3b0
    :goto_3b0
    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_3b7

    .line 874
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 877
    :cond_3b7
    iput-object v2, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 878
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_3c3

    .line 881
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 882
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 884
    :cond_3c3
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 885
    iput-boolean v3, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 886
    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 887
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 888
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 889
    goto/16 :goto_4d9

    .line 669
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .local v5, "skipIndex":I
    .local v8, "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    :pswitch_3d8
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v31    # "handled":Z
    iget-object v2, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_43e

    .line 670
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 671
    .local v2, "hadTapMessage":Z
    if-eqz v2, :cond_3fa

    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    :cond_3fa
    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_435

    iget-object v4, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_435

    if-eqz v2, :cond_435

    .line 674
    invoke-direct {v0, v3, v4, v1}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_435

    .line 676
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 677
    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 680
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v3, v31, v3

    .line 682
    .end local v31    # "handled":Z
    .local v3, "handled":Z
    iget-object v4, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v4, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int v14, v3, v4

    .line 684
    .end local v3    # "handled":Z
    .restart local v14    # "handled":Z
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_42f

    .line 685
    sget-object v3, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_42f
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v4, v3}, Landroid/view/GestureDetector;->triggerGDBoost(IF)V

    goto :goto_440

    .line 693
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_435
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    sget v4, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 697
    .end local v2    # "hadTapMessage":Z
    :cond_43e
    move/from16 v14, v31

    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    :goto_440
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 698
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 699
    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_44f

    .line 700
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 704
    :cond_44f
    sget-object v2, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "obtain mCurrentDownEvent. id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 709
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Landroid/view/GestureDetector;->mCurrentDownEventRawX:F

    .line 710
    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Landroid/view/GestureDetector;->mCurrentDownEventRawY:F

    .line 711
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mCheckLog:Z

    .line 713
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 714
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 715
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 716
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 717
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 718
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 728
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    if-eqz v3, :cond_4bf

    .line 729
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 731
    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 735
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    .line 736
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v8, v2

    add-long/2addr v5, v8

    .line 730
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 738
    :cond_4bf
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 739
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 738
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 740
    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v2, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v14, v2

    .line 741
    goto :goto_4d9

    .line 896
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :goto_4d7
    move/from16 v14, v31

    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    :cond_4d9
    :goto_4d9
    if-nez v14, :cond_4e3

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_4e3

    .line 897
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 899
    :cond_4e3
    return v14

    :pswitch_data_4e4
    .packed-switch 0x0
        :pswitch_3d8
        :pswitch_2df
        :pswitch_177
        :pswitch_162
        :pswitch_b1
        :pswitch_145
        :pswitch_c3
    .end packed-switch
.end method

.method public setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V
    .registers 2
    .param p1, "onContextClickListener"    # Landroid/view/GestureDetector$OnContextClickListener;

    .line 556
    iput-object p1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    .line 557
    return-void
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 2
    .param p1, "isLongpressEnabled"    # Z

    .line 569
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 570
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2
    .param p1, "onDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 546
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 547
    return-void
.end method
