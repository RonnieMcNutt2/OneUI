.class public Landroid/view/animation/TranslateAnimation;
.super Landroid/view/animation/Animation;
.source "TranslateAnimation.java"


# instance fields
.field protected mFromXDelta:F

.field private mFromXType:I

.field protected mFromXValue:F

.field protected mFromYDelta:F

.field private mFromYType:I

.field protected mFromYValue:F

.field private mParentWidth:I

.field protected mToXDelta:F

.field private mToXType:I

.field protected mToXValue:F

.field protected mToYDelta:F

.field private mToYType:I

.field protected mToYValue:F

.field private mWidth:I


# direct methods
.method public constructor <init>(FFFF)V
    .registers 7
    .param p1, "fromXDelta"    # F
    .param p2, "toXDelta"    # F
    .param p3, "fromYDelta"    # F
    .param p4, "toYDelta"    # F

    .line 110
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 32
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 34
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 35
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 41
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 45
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 48
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 111
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 112
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 113
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 114
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 116
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 117
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 118
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 119
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 120
    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .registers 10
    .param p1, "fromXType"    # I
    .param p2, "fromXValue"    # F
    .param p3, "toXType"    # I
    .param p4, "toXValue"    # F
    .param p5, "fromYType"    # I
    .param p6, "fromYValue"    # F
    .param p7, "toYType"    # I
    .param p8, "toYValue"    # F

    .line 151
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 32
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 34
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 35
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 41
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 45
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 48
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 153
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 154
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 155
    iput p6, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 156
    iput p8, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 158
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 159
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 160
    iput p5, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 161
    iput p7, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 32
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 34
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 35
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 41
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 45
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 48
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 72
    sget-object v1, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 75
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 77
    .local v0, "d":Landroid/view/animation/Animation$Description;
    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 78
    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 80
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 82
    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 83
    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 85
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 87
    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 88
    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 90
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 92
    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 93
    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 95
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void
.end method

.method private endsXEnclosedWithinParent()Z
    .registers 4

    .line 231
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    if-gt v0, v1, :cond_16

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    int-to-float v0, v0

    add-float/2addr v0, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private isSlideInLeft()Z
    .registers 5

    .line 211
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 212
    .local v0, "startsOutOfParentOnLeft":Z
    :goto_f
    if-eqz v0, :cond_18

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->endsXEnclosedWithinParent()Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    return v1
.end method

.method private isSlideInRight()Z
    .registers 5

    .line 221
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 222
    .local v0, "startsOutOfParentOnRight":Z
    :goto_e
    if-eqz v0, :cond_17

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->endsXEnclosedWithinParent()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1
.end method

.method private isSlideOutLeft()Z
    .registers 5

    .line 226
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 227
    .local v0, "endOutOfParentOnLeft":Z
    :goto_f
    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->startsXEnclosedWithinParent()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    return v1
.end method

.method private isSlideOutRight()Z
    .registers 5

    .line 216
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 217
    .local v0, "endOutOfParentOnRight":Z
    :goto_e
    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->startsXEnclosedWithinParent()Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1
.end method

.method private startsXEnclosedWithinParent()Z
    .registers 4

    .line 237
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    if-gt v0, v1, :cond_16

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    int-to-float v0, v0

    add-float/2addr v0, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 167
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .line 168
    .local v0, "dx":F
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .line 169
    .local v1, "dy":F
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_10

    .line 170
    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 172
    :cond_10
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_1c

    .line 173
    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 175
    :cond_1c
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 176
    return-void
.end method

.method public initialize(IIII)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 181
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .line 182
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    .line 183
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .line 184
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    .line 186
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    .line 187
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    .line 188
    return-void
.end method

.method public isFullWidthTranslate()Z
    .registers 6

    .line 205
    nop

    .line 206
    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->isSlideInLeft()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->isSlideOutRight()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->isSlideInRight()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->isSlideOutLeft()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    move v0, v1

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v0, v2

    .line 207
    .local v0, "isXAxisSlideTransition":Z
    :goto_1f
    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    if-ne v3, v4, :cond_28

    if-eqz v0, :cond_28

    move v1, v2

    :cond_28
    return v1
.end method

.method public isXAxisTransition()Z
    .registers 4

    .line 196
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method
