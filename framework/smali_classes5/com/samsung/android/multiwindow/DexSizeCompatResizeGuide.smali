.class public Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;
.super Lcom/samsung/android/multiwindow/FreeformResizeGuide;
.source "DexSizeCompatResizeGuide.java"


# static fields
.field public static final CTRL_TYPE_LEFT:I = 0x1

.field public static final CTRL_TYPE_TOP:I = 0x4

.field public static final CTRL_TYPE_UNDEFINED:I = 0x0

.field private static final DELTA_ADJUSTMENT:I = 0x4

.field private static final MAX_SIZE_THRESHOLD:I = 0xc8

.field private static final MIN_SIZE_THRESHOLD:I = 0xc8

.field private static final PROVIDE_SNAP_TO_FULLSCREEN:Z


# instance fields
.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    .line 64
    return-void
.end method

.method private static applyDeltaAdjustment(F)I
    .registers 2
    .param p0, "delta"    # F

    .line 242
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_8

    .line 243
    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p0, v0

    .line 245
    :cond_8
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static calculateDelta(II)I
    .registers 3
    .param p0, "delta1"    # I
    .param p1, "delta2"    # I

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "delta":I
    if-ltz p0, :cond_a

    if-ltz p1, :cond_a

    .line 234
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_12

    .line 235
    :cond_a
    if-gtz p0, :cond_12

    if-gtz p1, :cond_12

    .line 236
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 238
    :cond_12
    :goto_12
    return v0
.end method


# virtual methods
.method public adjustBounds(Lcom/samsung/android/core/SizeCompatInfo;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
    .registers 43
    .param p1, "sizeCompatInfo"    # Lcom/samsung/android/core/SizeCompatInfo;
    .param p2, "ctrlType"    # I
    .param p3, "repositionTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "taskBoundsAtDragStart"    # Landroid/graphics/Rect;
    .param p5, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/core/SizeCompatInfo;",
            "I",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p6, "adjustTaskBoundsWithCaptionHeight":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->isDragDexSizeCompatRotatable(Lcom/samsung/android/core/SizeCompatInfo;)Z

    move-result v3

    .line 85
    .local v3, "isRotatable":Z
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 86
    .local v4, "left":I
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 87
    .local v5, "top":I
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 88
    .local v6, "right":I
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    .line 90
    .local v7, "bottom":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->getDisplayWidth()I

    move-result v8

    .line 91
    .local v8, "displayWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->getDisplayHeight()I

    move-result v9

    .line 92
    .local v9, "displayHeight":I
    nop

    .line 93
    invoke-static {v8, v9}, Lcom/samsung/android/core/CompatUtils;->getConfigurationOrientation(II)I

    move-result v10

    .line 94
    .local v10, "displayOrientation":I
    nop

    .line 95
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 94
    invoke-static {v11, v12}, Lcom/samsung/android/core/CompatUtils;->getConfigurationOrientation(II)I

    move-result v11

    .line 96
    .local v11, "taskOrientation":I
    const/4 v12, 0x1

    if-eqz v3, :cond_3f

    if-eq v10, v11, :cond_3f

    move v14, v12

    goto :goto_40

    :cond_3f
    const/4 v14, 0x0

    .line 99
    .local v14, "isRotated":Z
    :goto_40
    if-eqz v3, :cond_6f

    .line 100
    if-ne v10, v12, :cond_58

    .line 101
    invoke-static {v5, v7}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->calculateDelta(II)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    .line 102
    .local v15, "delta":I
    if-nez v14, :cond_52

    if-lez v15, :cond_4f

    goto :goto_52

    :cond_4f
    move/from16 v16, v15

    goto :goto_54

    :cond_52
    :goto_52
    const/16 v16, 0x0

    .line 103
    .local v16, "deltaX":I
    :goto_54
    nop

    .line 104
    .local v15, "deltaY":I
    move/from16 v12, v16

    goto :goto_7d

    .line 105
    .end local v15    # "deltaY":I
    .end local v16    # "deltaX":I
    :cond_58
    invoke-static {v4, v6}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->calculateDelta(II)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    .line 106
    .local v15, "delta":I
    move/from16 v16, v15

    .line 107
    .restart local v16    # "deltaX":I
    if-nez v14, :cond_68

    if-lez v15, :cond_65

    goto :goto_68

    :cond_65
    move/from16 v17, v15

    goto :goto_6a

    :cond_68
    :goto_68
    const/16 v17, 0x0

    :goto_6a
    move/from16 v15, v17

    .line 108
    .local v15, "deltaY":I
    move/from16 v12, v16

    goto :goto_7d

    .line 110
    .end local v15    # "deltaY":I
    .end local v16    # "deltaX":I
    :cond_6f
    nop

    .line 111
    invoke-static {v5, v7}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->calculateDelta(II)I

    move-result v15

    invoke-static {v4, v6}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->calculateDelta(II)I

    move-result v12

    .line 110
    invoke-static {v15, v12}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->calculateDelta(II)I

    move-result v12

    move v15, v12

    .line 113
    .local v12, "deltaX":I
    .restart local v15    # "deltaY":I
    :goto_7d
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 114
    int-to-float v13, v12

    invoke-static {v13}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->applyDeltaAdjustment(F)I

    move-result v13

    move/from16 v18, v4

    .end local v4    # "left":I
    .local v18, "left":I
    int-to-float v4, v15

    invoke-static {v4}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->applyDeltaAdjustment(F)I

    move-result v4

    invoke-virtual {v1, v13, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 115
    if-eqz v14, :cond_9b

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 116
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 117
    return-void

    .line 120
    :cond_9b
    const/4 v4, 0x0

    .line 121
    .local v4, "isMinSize":Z
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->getMaxWidth()I

    move-result v13

    .line 122
    .local v13, "maxWidth":I
    move/from16 v19, v4

    .end local v4    # "isMinSize":Z
    .local v19, "isMinSize":Z
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->getMaxHeight()I

    move-result v4

    .line 123
    .local v4, "maxHeight":I
    const/16 v20, 0x0

    .line 124
    .local v20, "maxThreshold":I
    move/from16 v21, v5

    .end local v5    # "top":I
    .local v21, "top":I
    add-int/lit8 v5, v13, 0x0

    .line 125
    .local v5, "maxWidthThreshold":I
    move/from16 v22, v6

    .end local v6    # "right":I
    .local v22, "right":I
    add-int/lit8 v6, v4, 0x0

    .line 126
    .local v6, "maxHeightThreshold":I
    move/from16 v23, v7

    .end local v7    # "bottom":I
    .local v23, "bottom":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-lt v7, v5, :cond_c0

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-lt v7, v6, :cond_c0

    const/4 v7, 0x1

    goto :goto_c1

    :cond_c0
    const/4 v7, 0x0

    .line 128
    .local v7, "isMaxSize":Z
    :goto_c1
    if-eqz v7, :cond_e0

    .line 129
    move/from16 v24, v7

    const/4 v7, 0x0

    .end local v7    # "isMaxSize":Z
    .local v24, "isMaxSize":Z
    invoke-virtual {v1, v7, v7, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v33, v5

    move/from16 v25, v8

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v14

    move/from16 v32, v15

    move-object/from16 v5, p6

    move v10, v7

    move/from16 v7, v24

    goto/16 :goto_1ca

    .line 131
    .end local v24    # "isMaxSize":Z
    .restart local v7    # "isMaxSize":Z
    :cond_e0
    move/from16 v24, v7

    .end local v7    # "isMaxSize":Z
    .restart local v24    # "isMaxSize":Z
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->getMinWidth()I

    move-result v7

    .line 132
    .local v7, "minWidth":I
    move/from16 v25, v8

    .end local v8    # "displayWidth":I
    .local v25, "displayWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->getMinHeight()I

    move-result v8

    .line 135
    .local v8, "minHeight":I
    if-eqz v3, :cond_16e

    .line 136
    const/16 v26, 0x190

    .line 137
    .local v26, "minThreshold":I
    if-eqz v14, :cond_14a

    .line 138
    move/from16 v27, v9

    .end local v9    # "displayHeight":I
    .local v27, "displayHeight":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 139
    .local v9, "startWidth":I
    move/from16 v28, v10

    .end local v10    # "displayOrientation":I
    .local v28, "displayOrientation":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 140
    .local v10, "startHeight":I
    move/from16 v29, v11

    .end local v11    # "taskOrientation":I
    .local v29, "taskOrientation":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 141
    .local v11, "repositionWidth":I
    move/from16 v30, v12

    .end local v12    # "deltaX":I
    .local v30, "deltaX":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 142
    .local v12, "repositionHeight":I
    move/from16 v31, v14

    .end local v14    # "isRotated":Z
    .local v31, "isRotated":Z
    add-int/lit16 v14, v9, 0x190

    .line 143
    .local v14, "minWidthThreshold":I
    move/from16 v32, v15

    .end local v15    # "deltaY":I
    .local v32, "deltaY":I
    add-int/lit16 v15, v10, 0x190

    .line 144
    .local v15, "minHeightThreshold":I
    if-ge v11, v14, :cond_11a

    if-lt v12, v15, :cond_117

    goto :goto_11a

    :cond_117
    const/16 v33, 0x0

    goto :goto_11c

    :cond_11a
    :goto_11a
    const/16 v33, 0x1

    :goto_11c
    move/from16 v19, v33

    .line 146
    if-eqz v19, :cond_143

    .line 147
    sub-int v33, v11, v9

    div-int/lit8 v33, v33, 0x2

    move/from16 v34, v11

    .end local v11    # "repositionWidth":I
    .local v34, "repositionWidth":I
    add-int v11, v33, v9

    .line 148
    .local v11, "width":I
    sub-int v33, v12, v10

    div-int/lit8 v33, v33, 0x2

    move/from16 v35, v9

    .end local v9    # "startWidth":I
    .local v35, "startWidth":I
    add-int v9, v33, v10

    .line 149
    .local v9, "height":I
    if-gt v11, v5, :cond_138

    if-le v9, v6, :cond_135

    goto :goto_138

    :cond_135
    move/from16 v33, v5

    goto :goto_149

    .line 150
    :cond_138
    :goto_138
    const/16 v24, 0x1

    .line 151
    const/16 v19, 0x0

    .line 152
    move/from16 v33, v5

    const/4 v5, 0x0

    .end local v5    # "maxWidthThreshold":I
    .local v33, "maxWidthThreshold":I
    invoke-virtual {v1, v5, v5, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_149

    .line 146
    .end local v33    # "maxWidthThreshold":I
    .end local v34    # "repositionWidth":I
    .end local v35    # "startWidth":I
    .restart local v5    # "maxWidthThreshold":I
    .local v9, "startWidth":I
    .local v11, "repositionWidth":I
    :cond_143
    move/from16 v33, v5

    move/from16 v35, v9

    move/from16 v34, v11

    .line 155
    .end local v5    # "maxWidthThreshold":I
    .end local v9    # "startWidth":I
    .end local v10    # "startHeight":I
    .end local v11    # "repositionWidth":I
    .end local v12    # "repositionHeight":I
    .restart local v33    # "maxWidthThreshold":I
    :goto_149
    goto :goto_16d

    .line 156
    .end local v27    # "displayHeight":I
    .end local v28    # "displayOrientation":I
    .end local v29    # "taskOrientation":I
    .end local v30    # "deltaX":I
    .end local v31    # "isRotated":Z
    .end local v32    # "deltaY":I
    .end local v33    # "maxWidthThreshold":I
    .restart local v5    # "maxWidthThreshold":I
    .local v9, "displayHeight":I
    .local v10, "displayOrientation":I
    .local v11, "taskOrientation":I
    .local v12, "deltaX":I
    .local v14, "isRotated":Z
    .local v15, "deltaY":I
    :cond_14a
    move/from16 v33, v5

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v14

    move/from16 v32, v15

    .end local v5    # "maxWidthThreshold":I
    .end local v9    # "displayHeight":I
    .end local v10    # "displayOrientation":I
    .end local v11    # "taskOrientation":I
    .end local v12    # "deltaX":I
    .end local v14    # "isRotated":Z
    .end local v15    # "deltaY":I
    .restart local v27    # "displayHeight":I
    .restart local v28    # "displayOrientation":I
    .restart local v29    # "taskOrientation":I
    .restart local v30    # "deltaX":I
    .restart local v31    # "isRotated":Z
    .restart local v32    # "deltaY":I
    .restart local v33    # "maxWidthThreshold":I
    add-int/lit16 v14, v7, 0x190

    .line 157
    .local v14, "minWidthThreshold":I
    add-int/lit16 v15, v8, 0x190

    .line 158
    .local v15, "minHeightThreshold":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gt v5, v14, :cond_16a

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v5, v15, :cond_16a

    const/4 v5, 0x1

    goto :goto_16b

    :cond_16a
    const/4 v5, 0x0

    :goto_16b
    move/from16 v19, v5

    .line 161
    .end local v26    # "minThreshold":I
    :goto_16d
    goto :goto_190

    .line 162
    .end local v27    # "displayHeight":I
    .end local v28    # "displayOrientation":I
    .end local v29    # "taskOrientation":I
    .end local v30    # "deltaX":I
    .end local v31    # "isRotated":Z
    .end local v32    # "deltaY":I
    .end local v33    # "maxWidthThreshold":I
    .restart local v5    # "maxWidthThreshold":I
    .restart local v9    # "displayHeight":I
    .restart local v10    # "displayOrientation":I
    .restart local v11    # "taskOrientation":I
    .restart local v12    # "deltaX":I
    .local v14, "isRotated":Z
    .local v15, "deltaY":I
    :cond_16e
    move/from16 v33, v5

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v14

    move/from16 v32, v15

    .end local v5    # "maxWidthThreshold":I
    .end local v9    # "displayHeight":I
    .end local v10    # "displayOrientation":I
    .end local v11    # "taskOrientation":I
    .end local v12    # "deltaX":I
    .end local v14    # "isRotated":Z
    .end local v15    # "deltaY":I
    .restart local v27    # "displayHeight":I
    .restart local v28    # "displayOrientation":I
    .restart local v29    # "taskOrientation":I
    .restart local v30    # "deltaX":I
    .restart local v31    # "isRotated":Z
    .restart local v32    # "deltaY":I
    .restart local v33    # "maxWidthThreshold":I
    move v14, v7

    .line 163
    .local v14, "minWidthThreshold":I
    move v15, v8

    .line 164
    .local v15, "minHeightThreshold":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v5, v14, :cond_18d

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v5, v15, :cond_18b

    goto :goto_18d

    :cond_18b
    const/4 v5, 0x0

    goto :goto_18e

    :cond_18d
    :goto_18d
    const/4 v5, 0x1

    :goto_18e
    move/from16 v19, v5

    .line 167
    :goto_190
    if-eqz v19, :cond_19a

    .line 168
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    move v10, v5

    move-object/from16 v5, p6

    goto :goto_1c8

    .line 169
    :cond_19a
    if-eqz v3, :cond_1aa

    .line 170
    if-eqz p5, :cond_1a6

    if-nez v24, :cond_1a6

    .line 171
    move-object/from16 v5, p6

    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->cancelAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 173
    return-void

    .line 170
    :cond_1a6
    move-object/from16 v5, p6

    const/4 v10, 0x0

    goto :goto_1c8

    .line 176
    :cond_1aa
    move-object/from16 v5, p6

    iget-object v9, v0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 177
    iget-object v9, v0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    .line 178
    invoke-static {v9, v1}, Lcom/samsung/android/core/CompatUtils;->getCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v9

    .line 179
    .local v9, "repositionScale":F
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_1c1

    .line 180
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 181
    return-void

    .line 183
    :cond_1c1
    const/4 v10, 0x0

    invoke-virtual {v1, v10, v10, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 184
    invoke-static {v1, v9}, Lcom/samsung/android/core/CompatUtils;->getScaledBounds(Landroid/graphics/Rect;F)V

    .line 187
    .end local v7    # "minWidth":I
    .end local v8    # "minHeight":I
    .end local v9    # "repositionScale":F
    .end local v14    # "minWidthThreshold":I
    .end local v15    # "minHeightThreshold":I
    :goto_1c8
    move/from16 v7, v24

    .end local v24    # "isMaxSize":Z
    .local v7, "isMaxSize":Z
    :goto_1ca
    if-nez v3, :cond_21b

    if-eqz p2, :cond_21b

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v8, v9, :cond_1e3

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ne v8, v9, :cond_1e3

    goto :goto_21b

    .line 193
    :cond_1e3
    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_1e9

    const/4 v8, 0x1

    goto :goto_1ea

    :cond_1e9
    move v8, v10

    .line 194
    .local v8, "ctrlLeft":Z
    :goto_1ea
    and-int/lit8 v9, p2, 0x4

    if-eqz v9, :cond_1f0

    const/4 v12, 0x1

    goto :goto_1f1

    :cond_1f0
    move v12, v10

    :goto_1f1
    move v9, v12

    .line 195
    .local v9, "ctrlTop":Z
    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 197
    if-eqz v8, :cond_205

    .line 198
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v11, v12

    goto :goto_206

    :cond_205
    move v11, v10

    .line 199
    .local v11, "dx":I
    :goto_206
    if-eqz v9, :cond_212

    .line 200
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v10, v12

    goto :goto_213

    :cond_212
    nop

    .line 201
    .local v10, "dy":I
    :goto_213
    if-nez v11, :cond_217

    if-eqz v10, :cond_21e

    .line 202
    :cond_217
    invoke-virtual {v1, v11, v10}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_21e

    .line 190
    .end local v8    # "ctrlLeft":Z
    .end local v9    # "ctrlTop":Z
    .end local v10    # "dy":I
    .end local v11    # "dx":I
    :cond_21b
    :goto_21b
    invoke-static {v2, v1}, Lcom/samsung/android/core/CompatUtils;->adjustBoundsToCenter(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 207
    :cond_21e
    :goto_21e
    if-eqz v3, :cond_227

    if-eqz v19, :cond_227

    .line 208
    const-wide/16 v8, 0xfa

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->snapToBounds(J)V

    .line 210
    :cond_227
    return-void
.end method

.method public adjustMinMaxSize(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;

    .line 74
    return-void
.end method

.method public asDexSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;
    .registers 1

    .line 68
    return-object p0
.end method

.method public cancelAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 13
    .param p1, "repositionTaskBounds"    # Landroid/graphics/Rect;
    .param p2, "taskBoundsAtDragStart"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p3, "adjustTaskBoundsWithCaptionHeight":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 215
    if-eqz p3, :cond_c

    .line 216
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 218
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->show(Landroid/graphics/Rect;)V

    .line 219
    const/4 v2, 0x0

    const-wide/16 v3, 0x64

    sget-object v5, Lcom/samsung/android/util/InterpolatorUtils;->LINEAR:Landroid/animation/TimeInterpolator;

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->snapToBounds(Landroid/graphics/Rect;JLandroid/animation/TimeInterpolator;IIZ)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 224
    if-eqz p3, :cond_2a

    .line 225
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 227
    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->show(Landroid/graphics/Rect;)V

    .line 228
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 229
    return-void
.end method

.method public handleResizeGesture(Landroid/graphics/Rect;II)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 79
    return-void
.end method
