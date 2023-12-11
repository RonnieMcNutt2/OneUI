.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$SaveState;,
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final IGNORE_POINTER_COUNT:I = 0x4

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private mAreaRateCalculating:Z

.field private mAreaRateThreshold:F

.field private mAreaThreshold:F

.field private final mContext:Landroid/content/Context;

.field private mCurrLenBeforeSqrt:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevLenBeforeSqrt:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private final mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

.field private mStylusScaleEnabled:Z

.field private mTempLenBeforeSqrt:F

.field private mUpdatePrevious:Z

.field private mUseTwoFingerSweep:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Landroid/view/ScaleGestureDetector;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAnchoredScaleMode(Landroid/view/ScaleGestureDetector;I)V
    .registers 2

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnchoredScaleStartX(Landroid/view/ScaleGestureDetector;F)V
    .registers 2

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnchoredScaleStartY(Landroid/view/ScaleGestureDetector;F)V
    .registers 2

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    .line 139
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    .line 140
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    .line 165
    const v2, 0x45bb8000    # 6000.0f

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    .line 166
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mAreaRateThreshold:F

    .line 167
    new-instance v2, Landroid/view/ScaleGestureDetector$SaveState;

    invoke-direct {v2}, Landroid/view/ScaleGestureDetector$SaveState;-><init>()V

    iput-object v2, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 174
    iput v1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 236
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 237
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 240
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    .line 243
    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 246
    .local v1, "targetSdkVersion":I
    const/16 v2, 0x12

    if-le v1, v2, :cond_42

    .line 247
    invoke-virtual {p0, v0}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 250
    :cond_42
    const/16 v2, 0x16

    if-le v1, v2, :cond_49

    .line 251
    invoke-virtual {p0, v0}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    .line 253
    :cond_49
    return-void
.end method

.method private getArea(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "isInitialized":Z
    const/4 v1, 0x0

    .local v1, "focusX":F
    const/4 v2, 0x0

    .line 403
    .local v2, "focusY":F
    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector$SaveState;->reset()V

    .line 405
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 409
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 410
    .local v4, "y":F
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 411
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 412
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v6, v1, v3

    if-lez v6, :cond_23

    sub-float v6, v1, v3

    goto :goto_25

    :cond_23
    sub-float v6, v3, v1

    :goto_25
    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    .line 413
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v6, v2, v4

    if-lez v6, :cond_30

    sub-float v6, v2, v4

    goto :goto_32

    :cond_30
    sub-float v6, v4, v2

    :goto_32
    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    .line 414
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v6, v7

    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    .line 415
    cmpg-float v5, v4, v2

    if-gez v5, :cond_45

    const/4 v5, 0x1

    goto :goto_46

    :cond_45
    const/4 v5, 0x0

    :goto_46
    iput-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto/16 :goto_d1

    .line 417
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_4a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 418
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    if-ge v4, v3, :cond_a2

    .line 420
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 421
    .local v5, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 423
    .local v6, "y":F
    if-eqz v0, :cond_8c

    .line 424
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_67

    .line 425
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 427
    :cond_67
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_73

    .line 428
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    .line 430
    :cond_73
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_7f

    .line 431
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    .line 433
    :cond_7f
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v7, v7, v6

    if-gez v7, :cond_9d

    .line 434
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    goto :goto_9d

    .line 437
    :cond_8c
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 438
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    .line 439
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    .line 440
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    .line 441
    const/4 v0, 0x1

    .line 444
    :cond_9d
    :goto_9d
    add-float/2addr v1, v5

    .line 445
    add-float/2addr v2, v6

    .line 418
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 448
    .end local v4    # "i":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_a2
    int-to-float v4, v3

    div-float/2addr v1, v4

    .line 449
    int-to-float v4, v3

    div-float/2addr v2, v4

    .line 450
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v4, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    .line 451
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v4, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    .line 452
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v4, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    .line 456
    .end local v3    # "count":I
    :goto_d1
    iput v1, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 457
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 458
    return-void
.end method

.method private inAnchoredScaleMode()Z
    .registers 2

    .line 469
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private reset()V
    .registers 3

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 462
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 463
    iput-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    .line 464
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 465
    return-void
.end method


# virtual methods
.method public getCurrentSpan()F
    .registers 3

    .line 586
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurrentSpanX()F
    .registers 2

    .line 598
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getCurrentSpanY()F
    .registers 2

    .line 610
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getEventTime()J
    .registers 3

    .line 696
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .registers 2

    .line 561
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .registers 2

    .line 575
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .registers 3

    .line 622
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getPreviousSpanX()F
    .registers 2

    .line 634
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getPreviousSpanY()F
    .registers 2

    .line 646
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .registers 6

    .line 658
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_43

    .line 663
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_15

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1f

    :cond_15
    if-nez v0, :cond_21

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 666
    .local v0, "scaleUp":Z
    :goto_22
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    .line 667
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 668
    .local v3, "spanDiff":F
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_3d

    goto :goto_42

    :cond_3d
    if-eqz v0, :cond_41

    add-float/2addr v2, v3

    goto :goto_42

    :cond_41
    sub-float/2addr v2, v3

    :goto_42
    return v2

    .line 670
    .end local v0    # "scaleUp":Z
    .end local v3    # "spanDiff":F
    :cond_43
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 671
    .local v0, "sqrtValue":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScaleFactor: Cannot getScaleFactor, sqrtValue is NaN, mCurrLenBeforeSqrt = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mPrevLenBeforeSqrt = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScaleGestureDetector"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return v2

    .line 676
    :cond_7b
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_82

    move v2, v0

    :cond_82
    return v2
.end method

.method public getTimeDelta()J
    .registers 5

    .line 687
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .registers 2

    .line 547
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .registers 2

    .line 521
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public isStylusScaleEnabled()Z
    .registers 2

    .line 540
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 274
    .local v0, "action":I
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v1, :cond_13

    .line 275
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 278
    :cond_13
    nop

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    move v1, v3

    goto :goto_21

    :cond_20
    move v1, v2

    .line 281
    .local v1, "isStylusButtonDown":Z
    :goto_21
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    if-nez v1, :cond_2a

    move v4, v3

    goto :goto_2b

    :cond_2a
    move v4, v2

    .line 283
    .local v4, "anchoredScaleCancelled":Z
    :goto_2b
    const/4 v6, 0x3

    if-eq v0, v3, :cond_35

    if-eq v0, v6, :cond_35

    if-eqz v4, :cond_33

    goto :goto_35

    :cond_33
    move v7, v2

    goto :goto_36

    :cond_35
    :goto_35
    move v7, v3

    .line 286
    .local v7, "streamComplete":Z
    :goto_36
    if-eqz v0, :cond_3a

    if-eqz v7, :cond_57

    .line 290
    :cond_3a
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v8, :cond_48

    .line 291
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 292
    iput-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 293
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_54

    .line 294
    :cond_48
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v8

    if-eqz v8, :cond_54

    if-eqz v7, :cond_54

    .line 295
    iput-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 296
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 299
    :cond_54
    :goto_54
    if-eqz v7, :cond_57

    .line 300
    return v3

    .line 305
    :cond_57
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/16 v9, 0xd5

    if-nez v8, :cond_171

    .line 306
    if-eq v0, v3, :cond_16d

    if-eq v0, v6, :cond_16d

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_6a

    goto/16 :goto_16d

    .line 310
    :cond_6a
    iget-boolean v6, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v6, :cond_86

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v6

    if-nez v6, :cond_86

    if-nez v7, :cond_86

    if-eqz v1, :cond_86

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 314
    iput v5, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 317
    :cond_86
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    .line 319
    if-eqz v0, :cond_96

    const/4 v6, 0x6

    if-eq v0, v6, :cond_96

    const/4 v6, 0x5

    if-eq v0, v6, :cond_96

    if-eqz v4, :cond_94

    goto :goto_96

    :cond_94
    move v6, v2

    goto :goto_97

    :cond_96
    :goto_96
    move v6, v3

    .line 323
    .local v6, "configChanged":Z
    :goto_97
    if-eqz v6, :cond_ab

    .line 324
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v8, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 325
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v8, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 326
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v8, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    .line 329
    :cond_ab
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v10, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_152

    .line 330
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-nez v5, :cond_c5

    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-nez v5, :cond_c5

    .line 331
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    .line 332
    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    .line 334
    :cond_c5
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz v5, :cond_cf

    .line 335
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 339
    :cond_cf
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-eqz v5, :cond_ed

    .line 340
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_e5

    .line 341
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    div-float/2addr v5, v8

    goto :goto_eb

    .line 342
    :cond_e5
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float v5, v8, v5

    :goto_eb
    nop

    .local v5, "areaRate":F
    goto :goto_106

    .line 344
    .end local v5    # "areaRate":F
    :cond_ed
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_ff

    .line 345
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v5, v8

    goto :goto_105

    .line 346
    :cond_ff
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float v5, v8, v5

    :goto_105
    nop

    .line 349
    .restart local v5    # "areaRate":F
    :goto_106
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz v8, :cond_114

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mAreaRateThreshold:F

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_112

    move v8, v3

    goto :goto_121

    :cond_112
    move v8, v2

    goto :goto_121

    .line 350
    :cond_114
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-eqz v8, :cond_120

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mAreaRateThreshold:F

    cmpl-float v8, v5, v8

    if-lez v8, :cond_120

    move v8, v3

    goto :goto_121

    :cond_120
    move v8, v2

    :goto_121
    nop

    .line 352
    .local v8, "scaleDecision":Z
    if-eqz v8, :cond_16b

    .line 353
    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v9, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v9, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 354
    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v9, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v9, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 355
    iget-wide v9, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v9, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 356
    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v9, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v9, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 357
    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v9, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 358
    const-string v9, "ScaleGestureDetector"

    const-string v10, "TwScaleGestureDetector"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    goto :goto_16b

    .line 361
    .end local v5    # "areaRate":F
    .end local v8    # "scaleDecision":Z
    :cond_152
    iget-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v2, :cond_16b

    if-eq v0, v5, :cond_15a

    if-ne v0, v9, :cond_16b

    .line 363
    :cond_15a
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 364
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 365
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 366
    iget-wide v8, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v8, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto :goto_16c

    .line 361
    :cond_16b
    :goto_16b
    nop

    .line 368
    .end local v6    # "configChanged":Z
    :goto_16c
    goto :goto_1ba

    .line 308
    :cond_16d
    :goto_16d
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_1ba

    .line 370
    :cond_171
    if-eq v0, v5, :cond_17f

    if-ne v0, v9, :cond_176

    goto :goto_17f

    .line 381
    :cond_176
    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v2, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 382
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_1a6

    .line 371
    :cond_17f
    :goto_17f
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    .line 372
    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v2, v2, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_18c

    .line 373
    return v3

    .line 375
    :cond_18c
    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v2, v2, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 376
    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v2, v2, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 377
    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v2, v2, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    .line 379
    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v2, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 385
    :goto_1a6
    iget-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v2, :cond_1ba

    .line 386
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 387
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 388
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 389
    iget-wide v5, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v5, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 394
    :cond_1ba
    :goto_1ba
    return v3
.end method

.method public semSetUseTwoFingerSweep(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 709
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    .line 710
    return-void
.end method

.method public setQuickScaleEnabled(Z)V
    .registers 6
    .param p1, "scales"    # Z

    .line 479
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    .line 480
    if-eqz p1, :cond_1c

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_1c

    .line 481
    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    .line 509
    .local v0, "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 511
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 514
    .end local v0    # "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_1c
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .registers 2
    .param p1, "scales"    # Z

    .line 532
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    .line 533
    return-void
.end method
