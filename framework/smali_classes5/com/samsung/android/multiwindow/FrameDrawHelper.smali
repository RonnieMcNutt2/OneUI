.class public Lcom/samsung/android/multiwindow/FrameDrawHelper;
.super Ljava/lang/Object;
.source "FrameDrawHelper.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final FRAME_COLOR_DOCKING:I = -0xb1b1b2

.field private static final FRAME_COLOR_POPOVER_DARK:I = 0x66999999

.field private static final FRAME_COLOR_POPOVER_LIGHT:I = -0x333334

.field private static final STROKE_RADIUS_DEFAULT_IN_DIP:I = 0xe

.field public static final STROKE_WIDTH_DEFAULT_IN_DIP:I = 0x5

.field private static final STROKE_WIDTH_POPOVER_DARK:F = 2.0f

.field private static final STROKE_WIDTH_POPOVER_LIGHT:F = 1.0f

.field public static final TAG:Ljava/lang/String; = "FrameDrawHelper"


# instance fields
.field private mBackgroundColor:I

.field private final mContext:Landroid/content/Context;

.field private mIsNightMode:Z

.field private final mPaintContent:Landroid/graphics/Paint;

.field private final mPaintDocking:Landroid/graphics/Paint;

.field private final mPaintRoot:Landroid/graphics/Paint;

.field private mStrokeRadius:F

.field private mStrokeRadiusInPopOver:F

.field private mThickness:F

.field private mThicknessInPopOver:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    .line 56
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintDocking:Landroid/graphics/Paint;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mContext:Landroid/content/Context;

    .line 71
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 73
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 74
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 78
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 79
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 83
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 84
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FrameDrawHelper;->updateResources()V

    .line 87
    return-void
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 110
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 113
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v1

    .line 114
    .local v1, "isPopOver":Z
    if-eqz v1, :cond_2d

    .line 116
    iget-object v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsNightMode:Z

    if-eqz v3, :cond_1c

    .line 117
    const v3, 0x66999999

    goto :goto_1f

    :cond_1c
    const v3, -0x333334

    .line 116
    :goto_1f
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThicknessInPopOver:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, "offset":I
    iget v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadiusInPopOver:F

    .local v3, "radius":F
    goto :goto_51

    .line 127
    .end local v2    # "offset":I
    .end local v3    # "radius":F
    :cond_2d
    iget-object v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget-object v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iget v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 136
    .restart local v2    # "offset":I
    iget v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    .line 139
    .restart local v3    # "radius":F
    :goto_51
    iget-object v4, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 140
    .local v4, "width":I
    iget-object v5, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 141
    .local v5, "height":I
    iget-object v6, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    sub-int/2addr v6, v2

    .line 142
    .local v6, "left":I
    iget-object v7, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v7, v2

    .line 153
    .local v7, "top":I
    const/4 v8, 0x0

    .line 154
    .local v8, "dexDockingState":I
    iget-object v9, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    instance-of v10, v9, Lcom/android/internal/policy/DecorView;

    if-eqz v10, :cond_78

    .line 155
    check-cast v9, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v9}, Lcom/android/internal/policy/DecorView;->getDexTaskDockingState()I

    move-result v8

    .line 157
    :cond_78
    if-eqz v8, :cond_7e

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7e

    .line 160
    return-void

    .line 163
    :cond_7e
    if-eqz v1, :cond_8a

    .line 164
    float-to-int v9, v3

    invoke-static {v4, v5, v6, v7, v9}, Lcom/samsung/android/util/SemViewUtils;->getSmoothRoundedRect(IIIII)Landroid/graphics/Path;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 168
    :cond_8a
    iget v9, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    float-to-int v9, v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v10, v11, v11, v9}, Lcom/samsung/android/util/SemViewUtils;->getRoundedCorner(IIII)Landroid/graphics/Path;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 170
    iget-object v9, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    .line 171
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    float-to-int v10, v10

    .line 170
    const/4 v12, 0x2

    invoke-static {v12, v9, v11, v10}, Lcom/samsung/android/util/SemViewUtils;->getRoundedCorner(IIII)Landroid/graphics/Path;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 173
    iget-object v9, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    .line 174
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    float-to-int v10, v10

    .line 173
    const/4 v12, 0x4

    invoke-static {v12, v11, v9, v10}, Lcom/samsung/android/util/SemViewUtils;->getRoundedCorner(IIII)Landroid/graphics/Path;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    iget-object v9, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    .line 176
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iget-object v10, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    float-to-int v11, v11

    .line 175
    const/16 v12, 0x8

    invoke-static {v12, v9, v10, v11}, Lcom/samsung/android/util/SemViewUtils;->getRoundedCorner(IIII)Landroid/graphics/Path;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 178
    return-void
.end method

.method public updateResources()V
    .registers 7

    .line 90
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 91
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_19

    .line 92
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_19
    nop

    .line 93
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsNightMode:Z

    .line 96
    if-eqz v1, :cond_31

    .line 97
    const v1, 0x1060321

    goto :goto_34

    .line 98
    :cond_31
    const v1, 0x1060322

    .line 96
    :goto_34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mBackgroundColor:I

    .line 100
    iget-object v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->getDensity(Landroid/view/View;)F

    move-result v1

    .line 101
    .local v1, "density":F
    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    .line 102
    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    .line 103
    const/high16 v3, 0x40000000    # 2.0f

    rem-float v4, v2, v3

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_5a

    goto :goto_5b

    :cond_5a
    add-float/2addr v2, v5

    :goto_5b
    iput v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    .line 104
    const v2, 0x10503c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadiusInPopOver:F

    .line 106
    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsNightMode:Z

    if-eqz v2, :cond_6c

    goto :goto_6d

    :cond_6c
    move v3, v5

    :goto_6d
    iput v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThicknessInPopOver:F

    .line 107
    return-void
.end method
