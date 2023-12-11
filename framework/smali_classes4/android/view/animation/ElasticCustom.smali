.class public Landroid/view/animation/ElasticCustom;
.super Landroid/view/animation/BaseInterpolator;
.source "ElasticCustom.java"


# instance fields
.field private mAmplitude:F

.field private mPeriod:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/ElasticCustom;->mAmplitude:F

    .line 12
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Landroid/view/animation/ElasticCustom;->mPeriod:F

    .line 14
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4
    .param p1, "amplitude"    # F
    .param p2, "period"    # F

    .line 16
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/ElasticCustom;->mAmplitude:F

    .line 12
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Landroid/view/animation/ElasticCustom;->mPeriod:F

    .line 17
    iput p1, p0, Landroid/view/animation/ElasticCustom;->mAmplitude:F

    .line 18
    iput p2, p0, Landroid/view/animation/ElasticCustom;->mPeriod:F

    .line 19
    return-void
.end method

.method private out(FFF)F
    .registers 14
    .param p1, "t"    # F
    .param p2, "a"    # F
    .param p3, "p"    # F

    .line 42
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_6

    .line 43
    return v0

    .line 46
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_d

    .line 47
    return v1

    .line 50
    :cond_d
    cmpl-float v2, p3, v0

    if-nez v2, :cond_14

    .line 51
    const p3, 0x3e99999a    # 0.3f

    .line 55
    :cond_14
    cmpl-float v0, p2, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v0, :cond_2d

    cmpg-float v0, p2, v1

    if-gez v0, :cond_22

    goto :goto_2d

    .line 59
    :cond_22
    float-to-double v4, p3

    div-double/2addr v4, v2

    div-float/2addr v1, p2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    double-to-float v0, v4

    .local v0, "s":F
    goto :goto_33

    .line 56
    .end local v0    # "s":F
    :cond_2d
    :goto_2d
    const/high16 p2, 0x3f800000    # 1.0f

    .line 57
    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, p3, v0

    .line 62
    .restart local v0    # "s":F
    :goto_33
    float-to-double v4, p2

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, p1

    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-float v1, p1, v0

    float-to-double v6, v1

    mul-double/2addr v6, v2

    float-to-double v1, p3

    div-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v4, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v1

    double-to-float v1, v4

    return v1
.end method


# virtual methods
.method public getAmplitude()F
    .registers 2

    .line 30
    iget v0, p0, Landroid/view/animation/ElasticCustom;->mAmplitude:F

    return v0
.end method

.method public getInterpolation(F)F
    .registers 4
    .param p1, "t"    # F

    .line 38
    iget v0, p0, Landroid/view/animation/ElasticCustom;->mAmplitude:F

    iget v1, p0, Landroid/view/animation/ElasticCustom;->mPeriod:F

    invoke-direct {p0, p1, v0, v1}, Landroid/view/animation/ElasticCustom;->out(FFF)F

    move-result v0

    return v0
.end method

.method public getPeriod()F
    .registers 2

    .line 34
    iget v0, p0, Landroid/view/animation/ElasticCustom;->mPeriod:F

    return v0
.end method

.method public setAmplitude(F)V
    .registers 2
    .param p1, "value"    # F

    .line 22
    iput p1, p0, Landroid/view/animation/ElasticCustom;->mAmplitude:F

    .line 23
    return-void
.end method

.method public setPeriod(F)V
    .registers 2
    .param p1, "value"    # F

    .line 26
    iput p1, p0, Landroid/view/animation/ElasticCustom;->mPeriod:F

    .line 27
    return-void
.end method
