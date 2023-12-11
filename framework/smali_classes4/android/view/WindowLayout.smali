.class public Landroid/view/WindowLayout;
.super Ljava/lang/Object;
.source "WindowLayout.java"


# static fields
.field private static final DEBUG:Z = false

.field static final MAX_X:I = 0x186a0

.field static final MAX_Y:I = 0x186a0

.field static final MIN_X:I = -0x186a0

.field static final MIN_Y:I = -0x186a0

.field private static final TAG:Ljava/lang/String;

.field public static final UNSPECIFIED_LENGTH:I = -0x1


# instance fields
.field private final mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    const-class v0, Landroid/view/WindowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/WindowLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V
    .registers 16
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "maxBounds"    # Landroid/graphics/Rect;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "winFrame"    # Landroid/graphics/Rect;
    .param p5, "dragResizing"    # Z
    .param p6, "outSurfaceSize"    # Landroid/graphics/Point;

    .line 427
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_9

    .line 429
    move v0, p2

    .line 430
    .local v0, "width":I
    move v1, p3

    .local v1, "height":I
    goto :goto_1c

    .line 435
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_9
    if-eqz p5, :cond_14

    .line 438
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 439
    .restart local v0    # "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_1c

    .line 441
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_14
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 442
    .restart local v0    # "width":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 448
    .restart local v1    # "height":I
    :goto_1c
    const/4 v2, 0x1

    if-ge v0, v2, :cond_20

    .line 449
    const/4 v0, 0x1

    .line 451
    :cond_20
    if-ge v1, v2, :cond_23

    .line 452
    const/4 v1, 0x1

    .line 457
    :cond_23
    const/high16 v2, 0x3f800000    # 1.0f

    .line 458
    .local v2, "dssScale":F
    const/4 v3, 0x0

    .line 469
    .local v3, "isDSSEnabled":Z
    if-eqz v3, :cond_6a

    .line 470
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 471
    .local v4, "surfaceInsets":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 472
    .local v5, "screenSurfaceInsets":Landroid/graphics/Rect;
    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 473
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 474
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 475
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 476
    .local v6, "result":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 477
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 478
    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 479
    iget v7, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 480
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {p6, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 481
    .end local v4    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v5    # "screenSurfaceInsets":Landroid/graphics/Rect;
    .end local v6    # "result":Landroid/graphics/Rect;
    goto :goto_7b

    .line 483
    :cond_6a
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 484
    .restart local v4    # "surfaceInsets":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 485
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 486
    invoke-virtual {p6, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 488
    .end local v4    # "surfaceInsets":Landroid/graphics/Rect;
    :goto_7b
    return-void
.end method

.method public static extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p0, "displayCutoutSafe"    # Landroid/graphics/Rect;
    .param p1, "displayFrame"    # Landroid/graphics/Rect;
    .param p2, "inOutFrame"    # Landroid/graphics/Rect;
    .param p3, "tempRect"    # Landroid/graphics/Rect;

    .line 409
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 410
    return-void

    .line 412
    :cond_7
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 415
    const/4 v0, 0x0

    invoke-static {v0, p0, p3}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 417
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 418
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 420
    :cond_17
    return-void
.end method

.method private static ignoreCutoutMode(Landroid/view/WindowManager$LayoutParams;II)Z
    .registers 5
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "windowingMode"    # I
    .param p2, "stageType"    # I

    .line 494
    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    .line 495
    return v1

    .line 498
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 499
    return v1

    .line 502
    :cond_9
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_14

    .line 503
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 504
    return v1

    .line 506
    :cond_14
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V
    .registers 23
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "state"    # Landroid/view/InsetsState;
    .param p3, "displayCutoutSafe"    # Landroid/graphics/Rect;
    .param p4, "windowBounds"    # Landroid/graphics/Rect;
    .param p5, "windowingMode"    # I
    .param p6, "requestedWidth"    # I
    .param p7, "requestedHeight"    # I
    .param p8, "requestedVisibleTypes"    # I
    .param p9, "compatScale"    # F
    .param p10, "frames"    # Landroid/window/ClientWindowFrames;

    .line 85
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;I)V

    .line 87
    return-void
.end method

.method public computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;I)V
    .registers 59
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "state"    # Landroid/view/InsetsState;
    .param p3, "displayCutoutSafe"    # Landroid/graphics/Rect;
    .param p4, "windowBounds"    # Landroid/graphics/Rect;
    .param p5, "windowingMode"    # I
    .param p6, "requestedWidth"    # I
    .param p7, "requestedHeight"    # I
    .param p8, "requestedVisibleTypes"    # I
    .param p9, "compatScale"    # F
    .param p10, "frames"    # Landroid/window/ClientWindowFrames;
    .param p11, "stageType"    # I

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p8

    move-object/from16 v7, p10

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 96
    .local v8, "type":I
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 97
    .local v9, "fl":I
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 98
    .local v10, "pfl":I
    and-int/lit16 v11, v9, 0x100

    const/16 v14, 0x100

    if-ne v11, v14, :cond_1e

    const/4 v11, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v11, 0x0

    .line 99
    .local v11, "layoutInScreen":Z
    :goto_1f
    iget-object v14, v7, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 100
    .local v14, "attachedWindowFrame":Landroid/graphics/Rect;
    iget-object v15, v7, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 101
    .local v15, "outDisplayFrame":Landroid/graphics/Rect;
    iget-object v13, v7, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 102
    .local v13, "outParentFrame":Landroid/graphics/Rect;
    iget-object v12, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 105
    .local v12, "outFrame":Landroid/graphics/Rect;
    move/from16 v23, v9

    .end local v9    # "fl":I
    .local v23, "fl":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v9

    .line 106
    move-object/from16 v24, v12

    .end local v12    # "outFrame":Landroid/graphics/Rect;
    .local v24, "outFrame":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v12

    .line 105
    invoke-virtual {v2, v4, v9, v12}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v9

    .line 107
    .local v9, "insets":Landroid/graphics/Insets;
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v12

    .line 108
    .local v12, "sides":I
    and-int/lit8 v18, v12, 0x1

    if-eqz v18, :cond_44

    move/from16 v25, v8

    .end local v8    # "type":I
    .local v25, "type":I
    iget v8, v9, Landroid/graphics/Insets;->left:I

    goto :goto_47

    .end local v25    # "type":I
    .restart local v8    # "type":I
    :cond_44
    move/from16 v25, v8

    .end local v8    # "type":I
    .restart local v25    # "type":I
    const/4 v8, 0x0

    .line 109
    .local v8, "left":I
    :goto_47
    and-int/lit8 v18, v12, 0x2

    if-eqz v18, :cond_4e

    iget v6, v9, Landroid/graphics/Insets;->top:I

    goto :goto_4f

    :cond_4e
    const/4 v6, 0x0

    .line 110
    .local v6, "top":I
    :goto_4f
    and-int/lit8 v18, v12, 0x4

    if-eqz v18, :cond_56

    iget v5, v9, Landroid/graphics/Insets;->right:I

    goto :goto_57

    :cond_56
    const/4 v5, 0x0

    .line 111
    .local v5, "right":I
    :goto_57
    and-int/lit8 v18, v12, 0x8

    if-eqz v18, :cond_60

    move/from16 v26, v12

    .end local v12    # "sides":I
    .local v26, "sides":I
    iget v12, v9, Landroid/graphics/Insets;->bottom:I

    goto :goto_63

    .end local v26    # "sides":I
    .restart local v12    # "sides":I
    :cond_60
    move/from16 v26, v12

    .end local v12    # "sides":I
    .restart local v26    # "sides":I
    const/4 v12, 0x0

    .line 112
    .local v12, "bottom":I
    :goto_63
    move-object/from16 v27, v9

    .end local v9    # "insets":Landroid/graphics/Insets;
    .local v27, "insets":Landroid/graphics/Insets;
    iget v9, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v8

    move/from16 v28, v8

    .end local v8    # "left":I
    .local v28, "left":I
    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v6

    move/from16 v29, v6

    .end local v6    # "top":I
    .local v29, "top":I
    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v5

    move/from16 v30, v5

    .end local v5    # "right":I
    .local v30, "right":I
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v12

    invoke-virtual {v15, v9, v8, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 115
    if-nez v14, :cond_95

    .line 116
    invoke-virtual {v13, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 117
    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, v10

    if-eqz v5, :cond_9d

    .line 118
    sget v5, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v2, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    .line 119
    .local v5, "source":Landroid/view/InsetsSource;
    if-eqz v5, :cond_94

    .line 120
    const/4 v6, 0x0

    invoke-virtual {v5, v13, v6}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 123
    .end local v5    # "source":Landroid/view/InsetsSource;
    :cond_94
    goto :goto_9d

    .line 125
    :cond_95
    if-nez v11, :cond_99

    move-object v5, v14

    goto :goto_9a

    :cond_99
    move-object v5, v15

    :goto_9a
    invoke-virtual {v13, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 129
    :cond_9d
    :goto_9d
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 130
    .local v5, "cutoutMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v6

    .line 131
    .local v6, "cutout":Landroid/view/DisplayCutout;
    iget-object v8, v0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 132
    .local v8, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 133
    const/4 v9, 0x0

    iput-boolean v9, v7, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 135
    move/from16 v9, p5

    move/from16 v4, p11

    invoke-static {v1, v9, v4}, Landroid/view/WindowLayout;->ignoreCutoutMode(Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v18

    if-eqz v18, :cond_c3

    move/from16 v34, v5

    move-object/from16 v31, v6

    move/from16 v32, v10

    move/from16 v33, v12

    move/from16 v12, v25

    move/from16 v10, p8

    goto/16 :goto_1cc

    .line 138
    :cond_c3
    const/4 v4, 0x3

    if-eq v5, v4, :cond_1c0

    invoke-virtual {v6}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c0

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v4

    .line 147
    .local v4, "displayFrame":Landroid/graphics/Rect;
    nop

    .line 148
    move-object/from16 v31, v6

    .end local v6    # "cutout":Landroid/view/DisplayCutout;
    .local v31, "cutout":Landroid/view/DisplayCutout;
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    .line 147
    move/from16 v32, v10

    move/from16 v10, p8

    .end local v10    # "pfl":I
    .local v32, "pfl":I
    invoke-virtual {v2, v4, v6, v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;II)Landroid/graphics/Insets;

    move-result-object v6

    .line 150
    .local v6, "statusBarsInsets":Landroid/graphics/Insets;
    move/from16 v33, v12

    .end local v12    # "bottom":I
    .local v33, "bottom":I
    iget v12, v6, Landroid/graphics/Insets;->top:I

    if-lez v12, :cond_f6

    iget v12, v8, Landroid/graphics/Rect;->top:I

    if-lez v12, :cond_f6

    .line 151
    iget v12, v6, Landroid/graphics/Insets;->top:I

    move-object/from16 v21, v6

    .end local v6    # "statusBarsInsets":Landroid/graphics/Insets;
    .local v21, "statusBarsInsets":Landroid/graphics/Insets;
    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 152
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Landroid/graphics/Rect;->top:I

    goto :goto_f8

    .line 150
    .end local v21    # "statusBarsInsets":Landroid/graphics/Insets;
    .restart local v6    # "statusBarsInsets":Landroid/graphics/Insets;
    :cond_f6
    move-object/from16 v21, v6

    .line 157
    .end local v6    # "statusBarsInsets":Landroid/graphics/Insets;
    :goto_f8
    const/4 v6, 0x1

    if-ne v5, v6, :cond_11a

    .line 158
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-ge v6, v12, :cond_110

    .line 159
    const v6, -0x186a0

    iput v6, v8, Landroid/graphics/Rect;->top:I

    .line 160
    const v12, 0x186a0

    iput v12, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_11a

    .line 162
    :cond_110
    const v6, -0x186a0

    const v12, 0x186a0

    iput v6, v8, Landroid/graphics/Rect;->left:I

    .line 163
    iput v12, v8, Landroid/graphics/Rect;->right:I

    .line 166
    :cond_11a
    :goto_11a
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x10000

    and-int/2addr v6, v12

    if-eqz v6, :cond_123

    const/4 v6, 0x1

    goto :goto_124

    :cond_123
    const/4 v6, 0x0

    .line 167
    .local v6, "layoutInsetDecor":Z
    :goto_124
    if-eqz v11, :cond_169

    if-eqz v6, :cond_169

    if-eqz v5, :cond_131

    const/4 v12, 0x1

    if-ne v5, v12, :cond_12e

    goto :goto_131

    :cond_12e
    move/from16 v34, v5

    goto :goto_16b

    .line 170
    :cond_131
    :goto_131
    nop

    .line 171
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v12

    .line 170
    invoke-virtual {v2, v4, v12, v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;II)Landroid/graphics/Insets;

    move-result-object v12

    .line 172
    .local v12, "systemBarsInsets":Landroid/graphics/Insets;
    move/from16 v34, v5

    .end local v5    # "cutoutMode":I
    .local v34, "cutoutMode":I
    iget v5, v12, Landroid/graphics/Insets;->left:I

    if-lez v5, :cond_146

    .line 173
    const v5, -0x186a0

    iput v5, v8, Landroid/graphics/Rect;->left:I

    goto :goto_149

    .line 172
    :cond_146
    const v5, -0x186a0

    .line 175
    :goto_149
    iget v5, v12, Landroid/graphics/Insets;->top:I

    if-lez v5, :cond_152

    .line 176
    const v5, -0x186a0

    iput v5, v8, Landroid/graphics/Rect;->top:I

    .line 178
    :cond_152
    iget v5, v12, Landroid/graphics/Insets;->right:I

    if-lez v5, :cond_15c

    .line 179
    const v5, 0x186a0

    iput v5, v8, Landroid/graphics/Rect;->right:I

    goto :goto_15f

    .line 178
    :cond_15c
    const v5, 0x186a0

    .line 181
    :goto_15f
    iget v5, v12, Landroid/graphics/Insets;->bottom:I

    if-lez v5, :cond_16b

    .line 182
    const v5, 0x186a0

    iput v5, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_16b

    .line 167
    .end local v12    # "systemBarsInsets":Landroid/graphics/Insets;
    .end local v34    # "cutoutMode":I
    .restart local v5    # "cutoutMode":I
    :cond_169
    move/from16 v34, v5

    .line 185
    .end local v5    # "cutoutMode":I
    .restart local v34    # "cutoutMode":I
    :cond_16b
    :goto_16b
    const/16 v5, 0x7db

    move/from16 v12, v25

    .end local v25    # "type":I
    .local v12, "type":I
    if-ne v12, v5, :cond_18d

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v6

    const v6, 0x186a0

    .end local v6    # "layoutInsetDecor":Z
    .local v21, "layoutInsetDecor":Z
    if-eq v5, v6, :cond_18f

    .line 187
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    if-lez v5, :cond_18f

    .line 189
    const v5, 0x186a0

    iput v5, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_18f

    .line 185
    .end local v21    # "layoutInsetDecor":Z
    .restart local v6    # "layoutInsetDecor":Z
    :cond_18d
    move/from16 v21, v6

    .line 191
    .end local v6    # "layoutInsetDecor":Z
    .restart local v21    # "layoutInsetDecor":Z
    :cond_18f
    :goto_18f
    if-eqz v14, :cond_195

    if-nez v11, :cond_195

    const/4 v5, 0x1

    goto :goto_196

    :cond_195
    const/4 v5, 0x0

    .line 195
    .local v5, "attachedInParent":Z
    :goto_196
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-nez v6, :cond_1a3

    if-eqz v11, :cond_1a3

    const/4 v6, 0x1

    if-eq v12, v6, :cond_1a3

    const/4 v6, 0x1

    goto :goto_1a4

    :cond_1a3
    const/4 v6, 0x0

    .line 203
    .local v6, "floatingInScreenWindow":Z
    :goto_1a4
    if-nez v5, :cond_1bc

    if-nez v6, :cond_1bc

    .line 204
    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 205
    invoke-virtual {v13, v8}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 206
    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v16, 0x1

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v7, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 208
    :cond_1bc
    invoke-virtual {v15, v8}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_1cc

    .line 138
    .end local v4    # "displayFrame":Landroid/graphics/Rect;
    .end local v21    # "layoutInsetDecor":Z
    .end local v31    # "cutout":Landroid/view/DisplayCutout;
    .end local v32    # "pfl":I
    .end local v33    # "bottom":I
    .end local v34    # "cutoutMode":I
    .local v5, "cutoutMode":I
    .local v6, "cutout":Landroid/view/DisplayCutout;
    .restart local v10    # "pfl":I
    .local v12, "bottom":I
    .restart local v25    # "type":I
    :cond_1c0
    move/from16 v34, v5

    move-object/from16 v31, v6

    move/from16 v32, v10

    move/from16 v33, v12

    move/from16 v12, v25

    move/from16 v10, p8

    .line 211
    .end local v5    # "cutoutMode":I
    .end local v6    # "cutout":Landroid/view/DisplayCutout;
    .end local v10    # "pfl":I
    .end local v25    # "type":I
    .local v12, "type":I
    .restart local v31    # "cutout":Landroid/view/DisplayCutout;
    .restart local v32    # "pfl":I
    .restart local v33    # "bottom":I
    .restart local v34    # "cutoutMode":I
    :goto_1cc
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1d4

    const/4 v6, 0x1

    goto :goto_1d5

    :cond_1d4
    const/4 v6, 0x0

    :goto_1d5
    move v2, v6

    .line 212
    .local v2, "noLimits":Z
    invoke-static/range {p5 .. p5}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    .line 216
    .local v4, "inMultiWindowMode":Z
    if-eqz v2, :cond_1f0

    const/16 v5, 0x7da

    if-eq v12, v5, :cond_1f0

    if-nez v4, :cond_1f0

    .line 217
    const v5, -0x186a0

    iput v5, v15, Landroid/graphics/Rect;->left:I

    .line 218
    iput v5, v15, Landroid/graphics/Rect;->top:I

    .line 219
    const v5, 0x186a0

    iput v5, v15, Landroid/graphics/Rect;->right:I

    .line 220
    iput v5, v15, Landroid/graphics/Rect;->bottom:I

    .line 223
    :cond_1f0
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p9, v5

    if-eqz v5, :cond_1f8

    const/4 v6, 0x1

    goto :goto_1f9

    :cond_1f8
    const/4 v6, 0x0

    :goto_1f9
    move v5, v6

    .line 224
    .local v5, "hasCompatScale":Z
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 225
    .local v6, "pw":I
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 226
    .local v7, "ph":I
    move-object/from16 v25, v8

    .end local v8    # "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    .local v25, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_20c

    const/4 v8, 0x1

    goto :goto_20d

    :cond_20c
    const/4 v8, 0x0

    .line 228
    .local v8, "extendedByCutout":Z
    :goto_20d
    move/from16 v18, p6

    .line 229
    .local v18, "rw":I
    move/from16 v20, p7

    .line 234
    .local v20, "rh":I
    const/high16 v35, 0x3f800000    # 1.0f

    .line 235
    .local v35, "dssScale":F
    const/16 v36, 0x0

    .line 253
    .local v36, "isDSSEnabled":Z
    const/4 v10, -0x1

    move/from16 v37, v11

    move/from16 v11, v18

    .end local v18    # "rw":I
    .local v11, "rw":I
    .local v37, "layoutInScreen":Z
    if-eq v11, v10, :cond_221

    if-eqz v8, :cond_21f

    goto :goto_221

    :cond_21f
    move v10, v11

    goto :goto_229

    .line 254
    :cond_221
    :goto_221
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ltz v10, :cond_228

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_229

    :cond_228
    move v10, v6

    .line 256
    .end local v11    # "rw":I
    .local v10, "rw":I
    :goto_229
    move/from16 v38, v12

    move/from16 v11, v20

    const/4 v12, -0x1

    .end local v12    # "type":I
    .end local v20    # "rh":I
    .local v11, "rh":I
    .local v38, "type":I
    if-eq v11, v12, :cond_232

    if-eqz v8, :cond_23e

    .line 257
    :cond_232
    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ltz v12, :cond_239

    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_23a

    :cond_239
    move v12, v7

    :goto_23a
    move/from16 v20, v12

    move/from16 v11, v20

    .line 260
    :cond_23e
    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v12, v12, 0x4000

    const/high16 v20, 0x3f000000    # 0.5f

    if-eqz v12, :cond_2b1

    .line 261
    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v12, :cond_24e

    .line 262
    move v12, v6

    move-object/from16 v39, v14

    .local v12, "w":I
    goto :goto_272

    .line 263
    .end local v12    # "w":I
    :cond_24e
    if-eqz v5, :cond_266

    .line 264
    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v12, v12

    mul-float v12, v12, p9

    add-float v12, v12, v20

    float-to-int v12, v12

    .line 267
    .restart local v12    # "w":I
    if-eqz v36, :cond_263

    .line 268
    move-object/from16 v39, v14

    .end local v14    # "attachedWindowFrame":Landroid/graphics/Rect;
    .local v39, "attachedWindowFrame":Landroid/graphics/Rect;
    int-to-float v14, v12

    div-float v14, v14, v35

    add-float v14, v14, v20

    float-to-int v12, v14

    goto :goto_272

    .line 267
    .end local v39    # "attachedWindowFrame":Landroid/graphics/Rect;
    .restart local v14    # "attachedWindowFrame":Landroid/graphics/Rect;
    :cond_263
    move-object/from16 v39, v14

    .end local v14    # "attachedWindowFrame":Landroid/graphics/Rect;
    .restart local v39    # "attachedWindowFrame":Landroid/graphics/Rect;
    goto :goto_272

    .line 272
    .end local v12    # "w":I
    .end local v39    # "attachedWindowFrame":Landroid/graphics/Rect;
    .restart local v14    # "attachedWindowFrame":Landroid/graphics/Rect;
    :cond_266
    move-object/from16 v39, v14

    .end local v14    # "attachedWindowFrame":Landroid/graphics/Rect;
    .restart local v39    # "attachedWindowFrame":Landroid/graphics/Rect;
    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 275
    .restart local v12    # "w":I
    if-eqz v36, :cond_272

    .line 276
    int-to-float v14, v12

    div-float v14, v14, v35

    add-float v14, v14, v20

    float-to-int v12, v14

    .line 280
    :cond_272
    :goto_272
    iget v14, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v14, :cond_27b

    .line 281
    move v14, v7

    move/from16 v40, v10

    .local v14, "h":I
    goto/16 :goto_2f7

    .line 282
    .end local v14    # "h":I
    :cond_27b
    if-eqz v5, :cond_29b

    .line 283
    iget v14, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v14, v14

    mul-float v14, v14, p9

    add-float v14, v14, v20

    float-to-int v14, v14

    .line 286
    .restart local v14    # "h":I
    if-eqz v36, :cond_295

    .line 287
    move/from16 v18, v12

    .end local v12    # "w":I
    .local v18, "w":I
    int-to-float v12, v14

    div-float v12, v12, v35

    add-float v12, v12, v20

    float-to-int v14, v12

    move/from16 v40, v10

    move/from16 v12, v18

    goto/16 :goto_2f7

    .line 286
    .end local v18    # "w":I
    .restart local v12    # "w":I
    :cond_295
    move/from16 v18, v12

    .end local v12    # "w":I
    .restart local v18    # "w":I
    move/from16 v40, v10

    goto/16 :goto_2f7

    .line 291
    .end local v14    # "h":I
    .end local v18    # "w":I
    .restart local v12    # "w":I
    :cond_29b
    move/from16 v18, v12

    .end local v12    # "w":I
    .restart local v18    # "w":I
    iget v14, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 294
    .restart local v14    # "h":I
    if-eqz v36, :cond_2ac

    .line 295
    int-to-float v12, v14

    div-float v12, v12, v35

    add-float v12, v12, v20

    float-to-int v14, v12

    move/from16 v40, v10

    move/from16 v12, v18

    goto :goto_2f7

    .line 294
    :cond_2ac
    move/from16 v40, v10

    move/from16 v12, v18

    goto :goto_2f7

    .line 300
    .end local v18    # "w":I
    .end local v39    # "attachedWindowFrame":Landroid/graphics/Rect;
    .local v14, "attachedWindowFrame":Landroid/graphics/Rect;
    :cond_2b1
    move-object/from16 v39, v14

    .end local v14    # "attachedWindowFrame":Landroid/graphics/Rect;
    .restart local v39    # "attachedWindowFrame":Landroid/graphics/Rect;
    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v14, -0x1

    if-ne v12, v14, :cond_2ba

    .line 301
    move v12, v6

    .restart local v12    # "w":I
    goto :goto_2d4

    .line 302
    .end local v12    # "w":I
    :cond_2ba
    if-eqz v5, :cond_2cb

    .line 303
    int-to-float v12, v10

    mul-float v12, v12, p9

    add-float v12, v12, v20

    float-to-int v12, v12

    .line 306
    .restart local v12    # "w":I
    if-eqz v36, :cond_2d4

    .line 307
    int-to-float v14, v12

    div-float v14, v14, v35

    add-float v14, v14, v20

    float-to-int v12, v14

    goto :goto_2d4

    .line 311
    .end local v12    # "w":I
    :cond_2cb
    move v12, v10

    .line 314
    .restart local v12    # "w":I
    if-eqz v36, :cond_2d4

    .line 315
    int-to-float v14, v12

    div-float v14, v14, v35

    add-float v14, v14, v20

    float-to-int v12, v14

    .line 319
    :cond_2d4
    :goto_2d4
    iget v14, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v40, v10

    const/4 v10, -0x1

    .end local v10    # "rw":I
    .local v40, "rw":I
    if-ne v14, v10, :cond_2dd

    .line 320
    move v14, v7

    .local v14, "h":I
    goto :goto_2f7

    .line 321
    .end local v14    # "h":I
    :cond_2dd
    if-eqz v5, :cond_2ee

    .line 322
    int-to-float v10, v11

    mul-float v10, v10, p9

    add-float v10, v10, v20

    float-to-int v14, v10

    .line 325
    .restart local v14    # "h":I
    if-eqz v36, :cond_2f7

    .line 326
    int-to-float v10, v14

    div-float v10, v10, v35

    add-float v10, v10, v20

    float-to-int v14, v10

    goto :goto_2f7

    .line 330
    .end local v14    # "h":I
    :cond_2ee
    move v14, v11

    .line 333
    .restart local v14    # "h":I
    if-eqz v36, :cond_2f7

    .line 334
    int-to-float v10, v14

    div-float v10, v10, v35

    add-float v10, v10, v20

    float-to-int v14, v10

    .line 340
    :cond_2f7
    :goto_2f7
    if-eqz v5, :cond_306

    .line 341
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v10, v10

    mul-float v10, v10, p9

    .line 342
    .local v10, "x":F
    move/from16 v41, v5

    .end local v5    # "hasCompatScale":Z
    .local v41, "hasCompatScale":Z
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    mul-float v5, v5, p9

    .local v5, "y":F
    goto :goto_30e

    .line 344
    .end local v10    # "x":F
    .end local v41    # "hasCompatScale":Z
    .local v5, "hasCompatScale":Z
    :cond_306
    move/from16 v41, v5

    .end local v5    # "hasCompatScale":Z
    .restart local v41    # "hasCompatScale":Z
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v10, v5

    .line 345
    .restart local v10    # "x":F
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    .line 349
    .local v5, "y":F
    :goto_30e
    if-eqz v36, :cond_314

    .line 350
    div-float v10, v10, v35

    .line 351
    div-float v5, v5, v35

    .line 355
    :cond_314
    if-eqz v4, :cond_327

    move/from16 v42, v11

    .end local v11    # "rh":I
    .local v42, "rh":I
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v11, v11, 0x4000

    if-nez v11, :cond_329

    .line 359
    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 360
    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_329

    .line 355
    .end local v42    # "rh":I
    .restart local v11    # "rh":I
    :cond_327
    move/from16 v42, v11

    .line 364
    .end local v11    # "rh":I
    .restart local v42    # "rh":I
    :cond_329
    :goto_329
    const/4 v11, 0x5

    if-ne v9, v11, :cond_333

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x3

    if-ne v11, v9, :cond_333

    const/4 v9, 0x1

    goto :goto_334

    :cond_333
    const/4 v9, 0x0

    .line 375
    .local v9, "isStartingWindowInFreeform":Z
    :goto_334
    if-eqz v4, :cond_344

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v43, v4

    const/4 v4, 0x1

    .end local v4    # "inMultiWindowMode":Z
    .local v43, "inMultiWindowMode":Z
    if-eq v11, v4, :cond_342

    if-nez v9, :cond_342

    if-nez v2, :cond_342

    goto :goto_347

    :cond_342
    const/4 v4, 0x0

    goto :goto_347

    .end local v43    # "inMultiWindowMode":Z
    .restart local v4    # "inMultiWindowMode":Z
    :cond_344
    move/from16 v43, v4

    const/4 v4, 0x1

    .line 380
    .local v4, "fitToDisplay":Z
    .restart local v43    # "inMultiWindowMode":Z
    :goto_347
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v44, v2

    .end local v2    # "noLimits":Z
    .local v44, "noLimits":Z
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v45, v9

    .end local v9    # "isStartingWindowInFreeform":Z
    .local v45, "isStartingWindowInFreeform":Z
    int-to-float v9, v6

    mul-float/2addr v2, v9

    add-float/2addr v2, v10

    float-to-int v2, v2

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v46, v6

    .end local v6    # "pw":I
    .local v46, "pw":I
    int-to-float v6, v7

    mul-float/2addr v9, v6

    add-float/2addr v9, v5

    float-to-int v6, v9

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v14

    move-object/from16 v19, v13

    move/from16 v20, v2

    move/from16 v21, v6

    move-object/from16 v22, v24

    invoke-static/range {v16 .. v22}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 385
    if-eqz v4, :cond_376

    .line 386
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v6, v24

    .end local v24    # "outFrame":Landroid/graphics/Rect;
    .local v6, "outFrame":Landroid/graphics/Rect;
    invoke-static {v2, v15, v6}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_378

    .line 385
    .end local v6    # "outFrame":Landroid/graphics/Rect;
    .restart local v24    # "outFrame":Landroid/graphics/Rect;
    :cond_376
    move-object/from16 v6, v24

    .line 389
    .end local v24    # "outFrame":Landroid/graphics/Rect;
    .restart local v6    # "outFrame":Landroid/graphics/Rect;
    :goto_378
    if-eqz v8, :cond_37f

    .line 390
    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v3, v15, v6, v2}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 405
    :cond_37f
    return-void
.end method
