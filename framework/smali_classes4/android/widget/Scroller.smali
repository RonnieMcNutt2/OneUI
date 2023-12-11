.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Scroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 101
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/Scroller;->DECELERATION_RATE:F

    .line 110
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    .line 111
    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Scroller;->SPLINE_TIME:[F

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "x_min":F
    const/4 v1, 0x0

    .line 124
    .local v1, "y_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_c7

    .line 125
    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    .line 127
    .local v5, "alpha":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 130
    .local v3, "x_max":F
    :goto_30
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    .line 131
    .local v6, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    .line 132
    .local v9, "coef":F
    sub-float v10, v4, v6

    const v11, 0x3e333333    # 0.175f

    mul-float/2addr v10, v11

    const v12, 0x3eb33334    # 0.35000002f

    mul-float v13, v6, v12

    add-float/2addr v10, v13

    mul-float/2addr v10, v9

    mul-float v13, v6, v6

    mul-float/2addr v13, v6

    add-float/2addr v10, v13

    .line 133
    .local v10, "tx":F
    sub-float v13, v10, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v13, v13, v15

    if-gez v13, :cond_bd

    .line 137
    sget-object v13, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    sub-float v14, v4, v6

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v14, v14, v17

    add-float/2addr v14, v6

    mul-float/2addr v14, v9

    mul-float v18, v6, v6

    mul-float v18, v18, v6

    add-float v14, v14, v18

    aput v14, v13, v2

    .line 139
    const/high16 v13, 0x3f800000    # 1.0f

    .line 142
    .local v13, "y_max":F
    :goto_72
    sub-float v14, v13, v1

    div-float/2addr v14, v7

    add-float/2addr v14, v1

    .line 143
    .local v14, "y":F
    mul-float v18, v14, v8

    sub-float v19, v4, v14

    mul-float v9, v18, v19

    .line 144
    sub-float v18, v4, v14

    mul-float v18, v18, v17

    add-float v18, v18, v14

    mul-float v18, v18, v9

    mul-float v19, v14, v14

    mul-float v19, v19, v14

    add-float v18, v18, v19

    .line 145
    .local v18, "dy":F
    sub-float v19, v18, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v20, v9

    .end local v9    # "coef":F
    .local v20, "coef":F
    float-to-double v8, v7

    cmpg-double v7, v8, v15

    if-gez v7, :cond_a9

    .line 149
    sget-object v7, Landroid/widget/Scroller;->SPLINE_TIME:[F

    sub-float/2addr v4, v14

    mul-float/2addr v4, v11

    mul-float/2addr v12, v14

    add-float/2addr v4, v12

    mul-float v9, v20, v4

    mul-float v4, v14, v14

    mul-float/2addr v4, v14

    add-float/2addr v9, v4

    aput v9, v7, v2

    .line 124
    .end local v3    # "x_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v10    # "tx":F
    .end local v13    # "y_max":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    .end local v20    # "coef":F
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_23

    .line 146
    .restart local v3    # "x_max":F
    .restart local v5    # "alpha":F
    .restart local v6    # "x":F
    .restart local v10    # "tx":F
    .restart local v13    # "y_max":F
    .restart local v14    # "y":F
    .restart local v18    # "dy":F
    .restart local v20    # "coef":F
    :cond_a9
    cmpl-float v7, v18, v5

    if-lez v7, :cond_b5

    move v13, v14

    move/from16 v9, v20

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_72

    .line 147
    :cond_b5
    move v1, v14

    move/from16 v9, v20

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_72

    .line 134
    .end local v13    # "y_max":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    .end local v20    # "coef":F
    .restart local v9    # "coef":F
    :cond_bd
    cmpl-float v7, v10, v5

    if-lez v7, :cond_c4

    move v3, v6

    goto/16 :goto_30

    .line 135
    :cond_c4
    move v0, v6

    goto/16 :goto_30

    .line 151
    .end local v2    # "i":I
    .end local v3    # "x_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v9    # "coef":F
    .end local v10    # "tx":F
    :cond_c7
    sget-object v2, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    sget-object v5, Landroid/widget/Scroller;->SPLINE_TIME:[F

    aput v4, v5, v3

    aput v4, v2, v3

    .line 152
    .end local v0    # "x_min":F
    .end local v1    # "y_min":F
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 167
    nop

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 167
    :goto_e
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 178
    if-nez p2, :cond_16

    .line 179
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_18

    .line 181
    :cond_16
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 183
    :goto_18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mPpi:F

    .line 184
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 185
    iput-boolean p3, p0, Landroid/widget/Scroller;->mFlywheel:Z

    .line 187
    const v0, 0x3f570a3d    # 0.84f

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    .line 188
    return-void
.end method

.method private computeDeceleration(F)F
    .registers 4
    .param p1, "friction"    # F

    .line 203
    const v0, 0x43c10b3d

    iget v1, p0, Landroid/widget/Scroller;->mPpi:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    return v1
.end method

.method private getSplineDeceleration(F)D
    .registers 5
    .param p1, "velocity"    # F

    .line 482
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v0

    iget v0, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v0, v2

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .registers 11
    .param p1, "velocity"    # F

    .line 492
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 493
    .local v0, "l":D
    sget v2, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    .line 494
    .local v3, "decelMinusOne":D
    iget v5, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v6, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    float-to-double v7, v2

    div-double/2addr v7, v3

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    return-wide v5
.end method

.method private getSplineFlingDuration(F)I
    .registers 10
    .param p1, "velocity"    # F

    .line 486
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 487
    .local v0, "l":D
    sget v2, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 488
    .local v2, "decelMinusOne":D
    div-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    .line 505
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 506
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 508
    return-void
.end method

.method public computeScrollOffset()Z
    .registers 14

    .line 307
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v0, :cond_6

    .line 308
    const/4 v0, 0x0

    return v0

    .line 311
    :cond_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 313
    .local v0, "timePassed":I
    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_ba

    .line 314
    iget v3, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v3, :pswitch_data_c6

    goto/16 :goto_b9

    .line 321
    :pswitch_1a
    int-to-float v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 322
    .local v3, "t":F
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v5, v3, v4

    float-to-int v5, v5

    .line 323
    .local v5, "index":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 324
    .local v6, "distanceCoef":F
    const/4 v7, 0x0

    .line 325
    .local v7, "velocityCoef":F
    const/16 v8, 0x64

    if-ge v5, v8, :cond_42

    .line 326
    int-to-float v8, v5

    div-float/2addr v8, v4

    .line 327
    .local v8, "t_inf":F
    add-int/lit8 v9, v5, 0x1

    int-to-float v9, v9

    div-float/2addr v9, v4

    .line 328
    .local v9, "t_sup":F
    sget-object v4, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    aget v10, v4, v5

    .line 329
    .local v10, "d_inf":F
    add-int/lit8 v11, v5, 0x1

    aget v4, v4, v11

    .line 330
    .local v4, "d_sup":F
    sub-float v11, v4, v10

    sub-float v12, v9, v8

    div-float v7, v11, v12

    .line 331
    sub-float v11, v3, v8

    mul-float/2addr v11, v7

    add-float v6, v10, v11

    .line 334
    .end local v4    # "d_sup":F
    .end local v8    # "t_inf":F
    .end local v9    # "t_sup":F
    .end local v10    # "d_inf":F
    :cond_42
    iget v4, p0, Landroid/widget/Scroller;->mDistance:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    int-to-float v1, v1

    div-float/2addr v4, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v1

    iput v4, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    .line 336
    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    iget v4, p0, Landroid/widget/Scroller;->mFinalX:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 338
    iget v4, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 339
    iget v4, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 341
    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    iget v4, p0, Landroid/widget/Scroller;->mFinalY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 343
    iget v4, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 344
    iget v4, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 346
    iget v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v8, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v4, v8, :cond_b9

    iget v4, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v1, v4, :cond_b9

    .line 347
    iput-boolean v2, p0, Landroid/widget/Scroller;->mFinished:Z

    goto :goto_b9

    .line 316
    .end local v3    # "t":F
    .end local v5    # "index":I
    .end local v6    # "distanceCoef":F
    .end local v7    # "velocityCoef":F
    :pswitch_96
    iget-object v1, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float/2addr v3, v4

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 317
    .local v1, "x":F
    iget v3, p0, Landroid/widget/Scroller;->mStartX:I

    iget v4, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 318
    iget v3, p0, Landroid/widget/Scroller;->mStartY:I

    iget v4, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 319
    nop

    .line 350
    .end local v1    # "x":F
    :cond_b9
    :goto_b9
    goto :goto_c4

    .line 354
    :cond_ba
    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v1, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 355
    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v1, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 356
    iput-boolean v2, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 358
    :goto_c4
    return v2

    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_96
        :pswitch_1a
    .end packed-switch
.end method

.method public extendDuration(I)V
    .registers 5
    .param p1, "extend"    # I

    .line 519
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .line 520
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    .line 521
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 522
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 523
    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 25
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .line 429
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-boolean v5, v0, Landroid/widget/Scroller;->mFlywheel:Z

    if-eqz v5, :cond_51

    iget-boolean v5, v0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v5, :cond_51

    .line 430
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v5

    .line 432
    .local v5, "oldVel":F
    iget v6, v0, Landroid/widget/Scroller;->mFinalX:I

    iget v7, v0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 433
    .local v6, "dx":F
    iget v7, v0, Landroid/widget/Scroller;->mFinalY:I

    iget v8, v0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 434
    .local v7, "dy":F
    float-to-double v8, v6

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 436
    .local v8, "hyp":F
    div-float v9, v6, v8

    .line 437
    .local v9, "ndx":F
    div-float v10, v7, v8

    .line 439
    .local v10, "ndy":F
    mul-float v11, v9, v5

    .line 440
    .local v11, "oldVelocityX":F
    mul-float v12, v10, v5

    .line 441
    .local v12, "oldVelocityY":F
    int-to-float v13, v3

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v13

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-nez v13, :cond_51

    int-to-float v13, v4

    .line 442
    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v13

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-nez v13, :cond_51

    .line 443
    int-to-float v13, v3

    add-float/2addr v13, v11

    float-to-int v3, v13

    .line 444
    .end local p3    # "velocityX":I
    .local v3, "velocityX":I
    int-to-float v13, v4

    add-float/2addr v13, v12

    float-to-int v4, v13

    .line 448
    .end local v5    # "oldVel":F
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "hyp":F
    .end local v9    # "ndx":F
    .end local v10    # "ndy":F
    .end local v11    # "oldVelocityX":F
    .end local v12    # "oldVelocityY":F
    .end local p4    # "velocityY":I
    .local v4, "velocityY":I
    :cond_51
    const/4 v5, 0x1

    iput v5, v0, Landroid/widget/Scroller;->mMode:I

    .line 449
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/Scroller;->mFinished:Z

    .line 451
    int-to-double v5, v3

    int-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 453
    .local v5, "velocity":F
    iput v5, v0, Landroid/widget/Scroller;->mVelocity:F

    .line 454
    invoke-direct {v0, v5}, Landroid/widget/Scroller;->getSplineFlingDuration(F)I

    move-result v6

    iput v6, v0, Landroid/widget/Scroller;->mDuration:I

    .line 455
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/Scroller;->mStartTime:J

    .line 456
    iput v1, v0, Landroid/widget/Scroller;->mStartX:I

    .line 457
    iput v2, v0, Landroid/widget/Scroller;->mStartY:I

    .line 459
    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v7, :cond_79

    move v7, v8

    goto :goto_7b

    :cond_79
    int-to-float v7, v3

    div-float/2addr v7, v5

    .line 460
    .local v7, "coeffX":F
    :goto_7b
    cmpl-float v6, v5, v6

    if-nez v6, :cond_80

    goto :goto_83

    :cond_80
    int-to-float v6, v4

    div-float v8, v6, v5

    :goto_83
    move v6, v8

    .line 462
    .local v6, "coeffY":F
    invoke-direct {v0, v5}, Landroid/widget/Scroller;->getSplineFlingDistance(F)D

    move-result-wide v8

    .line 463
    .local v8, "totalDistance":D
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v10

    float-to-double v10, v10

    mul-double/2addr v10, v8

    double-to-int v10, v10

    iput v10, v0, Landroid/widget/Scroller;->mDistance:I

    .line 465
    move/from16 v10, p5

    iput v10, v0, Landroid/widget/Scroller;->mMinX:I

    .line 466
    move/from16 v11, p6

    iput v11, v0, Landroid/widget/Scroller;->mMaxX:I

    .line 467
    move/from16 v12, p7

    iput v12, v0, Landroid/widget/Scroller;->mMinY:I

    .line 468
    move/from16 v13, p8

    iput v13, v0, Landroid/widget/Scroller;->mMaxY:I

    .line 470
    float-to-double v14, v7

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    add-int/2addr v14, v1

    iput v14, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 472
    iget v15, v0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 473
    iget v15, v0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 475
    float-to-double v14, v6

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    add-int/2addr v14, v2

    iput v14, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 477
    iget v15, v0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 478
    iget v15, v0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 479
    return-void
.end method

.method public final forceFinished(Z)V
    .registers 2
    .param p1, "finished"    # Z

    .line 225
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 226
    return-void
.end method

.method public getCurrVelocity()F
    .registers 4

    .line 262
    iget v0, p0, Landroid/widget/Scroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 263
    iget v0, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    goto :goto_16

    :cond_8
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 262
    :goto_16
    return v0
.end method

.method public final getCurrX()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .registers 2

    .line 252
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .registers 2

    .line 234
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .registers 2

    .line 290
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .registers 2

    .line 299
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .registers 2

    .line 272
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .registers 2

    .line 281
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .registers 6
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 564
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_2a

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v2, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    .line 565
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v2, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 564
    :goto_2b
    return v0
.end method

.method public setFinalX(I)V
    .registers 3
    .param p1, "newX"    # I

    .line 542
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 543
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 545
    return-void
.end method

.method public setFinalY(I)V
    .registers 3
    .param p1, "newY"    # I

    .line 555
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 556
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 558
    return-void
.end method

.method public final setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .line 198
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 199
    iput p1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 200
    return-void
.end method

.method public startScroll(IIII)V
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 376
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 377
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 395
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 396
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    .line 397
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 398
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 399
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 400
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 401
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 402
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 403
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 404
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 405
    return-void
.end method

.method public timePassed()I
    .registers 5

    .line 531
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
