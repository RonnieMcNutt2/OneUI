.class public Landroid/util/RotationUtils;
.super Ljava/lang/Object;
.source "RotationUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deltaRotation(II)I
    .registers 3
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .line 141
    sub-int v0, p1, p0

    .line 142
    .local v0, "delta":I
    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 143
    :cond_6
    return v0
.end method

.method public static reverseRotationDirectionAroundZAxis(I)I
    .registers 2
    .param p0, "rotation"    # I

    .line 261
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 262
    const/4 p0, 0x3

    goto :goto_9

    .line 263
    :cond_5
    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    .line 264
    const/4 p0, 0x1

    .line 266
    :cond_9
    :goto_9
    return p0
.end method

.method public static rotateBounds(Landroid/graphics/Rect;III)V
    .registers 7
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "rotation"    # I

    .line 101
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 102
    .local v0, "origLeft":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 103
    .local v1, "origTop":I
    packed-switch p3, :pswitch_data_46

    goto :goto_44

    .line 119
    :pswitch_8
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 120
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 121
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 122
    iput v0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_44

    .line 113
    :pswitch_1b
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 114
    sub-int v2, p1, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 115
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 116
    sub-int v2, p2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 117
    return-void

    .line 107
    :pswitch_30
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 108
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 109
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 110
    sub-int v2, p1, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 111
    return-void

    .line 105
    :pswitch_43
    return-void

    .line 124
    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_43
        :pswitch_30
        :pswitch_1b
        :pswitch_8
    .end packed-switch
.end method

.method public static rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 5
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "parentBounds"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 135
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, v1, p2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    .line 136
    return-void
.end method

.method public static rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 5
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "parentBounds"    # Landroid/graphics/Rect;
    .param p2, "oldRotation"    # I
    .param p3, "newRotation"    # I

    .line 89
    invoke-static {p2, p3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 90
    return-void
.end method

.method public static rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .registers 6
    .param p0, "insets"    # Landroid/graphics/Insets;
    .param p1, "rotation"    # I

    .line 45
    if-eqz p0, :cond_4e

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-ne p0, v0, :cond_7

    goto :goto_4e

    .line 49
    :cond_7
    packed-switch p1, :pswitch_data_50

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_24
    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    iget v1, p0, Landroid/graphics/Insets;->left:I

    iget v2, p0, Landroid/graphics/Insets;->top:I

    iget v3, p0, Landroid/graphics/Insets;->right:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 73
    .local v0, "rotated":Landroid/graphics/Insets;
    goto :goto_4d

    .line 61
    .end local v0    # "rotated":Landroid/graphics/Insets;
    :pswitch_31
    iget v0, p0, Landroid/graphics/Insets;->right:I

    iget v1, p0, Landroid/graphics/Insets;->bottom:I

    iget v2, p0, Landroid/graphics/Insets;->left:I

    iget v3, p0, Landroid/graphics/Insets;->top:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 66
    .restart local v0    # "rotated":Landroid/graphics/Insets;
    goto :goto_4d

    .line 54
    .end local v0    # "rotated":Landroid/graphics/Insets;
    :pswitch_3e
    iget v0, p0, Landroid/graphics/Insets;->top:I

    iget v1, p0, Landroid/graphics/Insets;->right:I

    iget v2, p0, Landroid/graphics/Insets;->bottom:I

    iget v3, p0, Landroid/graphics/Insets;->left:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 59
    .restart local v0    # "rotated":Landroid/graphics/Insets;
    goto :goto_4d

    .line 51
    .end local v0    # "rotated":Landroid/graphics/Insets;
    :pswitch_4b
    move-object v0, p0

    .line 52
    .restart local v0    # "rotated":Landroid/graphics/Insets;
    nop

    .line 77
    :goto_4d
    return-object v0

    .line 46
    .end local v0    # "rotated":Landroid/graphics/Insets;
    :cond_4e
    :goto_4e
    return-object p0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_3e
        :pswitch_31
        :pswitch_24
    .end packed-switch
.end method

.method public static rotatePoint(Landroid/graphics/Point;III)V
    .registers 6
    .param p0, "inOutPoint"    # Landroid/graphics/Point;
    .param p1, "rotation"    # I
    .param p2, "parentW"    # I
    .param p3, "parentH"    # I

    .line 179
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 180
    .local v0, "origX":I
    packed-switch p1, :pswitch_data_28

    goto :goto_26

    .line 192
    :pswitch_6
    iget v1, p0, Landroid/graphics/Point;->y:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 193
    iput v0, p0, Landroid/graphics/Point;->y:I

    goto :goto_26

    .line 188
    :pswitch_f
    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 189
    iget v1, p0, Landroid/graphics/Point;->y:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Point;->y:I

    .line 190
    return-void

    .line 184
    :pswitch_1c
    iget v1, p0, Landroid/graphics/Point;->y:I

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 185
    sub-int v1, p2, v0

    iput v1, p0, Landroid/graphics/Point;->y:I

    .line 186
    return-void

    .line 182
    :pswitch_25
    return-void

    .line 195
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1c
        :pswitch_f
        :pswitch_6
    .end packed-switch
.end method

.method public static rotatePointF(Landroid/graphics/PointF;IFF)V
    .registers 6
    .param p0, "inOutPoint"    # Landroid/graphics/PointF;
    .param p1, "rotation"    # I
    .param p2, "parentW"    # F
    .param p3, "parentH"    # F

    .line 202
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 203
    .local v0, "origX":F
    packed-switch p1, :pswitch_data_28

    goto :goto_26

    .line 215
    :pswitch_6
    iget v1, p0, Landroid/graphics/PointF;->y:F

    sub-float v1, p3, v1

    iput v1, p0, Landroid/graphics/PointF;->x:F

    .line 216
    iput v0, p0, Landroid/graphics/PointF;->y:F

    goto :goto_26

    .line 211
    :pswitch_f
    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float v1, p2, v1

    iput v1, p0, Landroid/graphics/PointF;->x:F

    .line 212
    iget v1, p0, Landroid/graphics/PointF;->y:F

    sub-float v1, p3, v1

    iput v1, p0, Landroid/graphics/PointF;->y:F

    .line 213
    return-void

    .line 207
    :pswitch_1c
    iget v1, p0, Landroid/graphics/PointF;->y:F

    iput v1, p0, Landroid/graphics/PointF;->x:F

    .line 208
    sub-float v1, p2, v0

    iput v1, p0, Landroid/graphics/PointF;->y:F

    .line 209
    return-void

    .line 205
    :pswitch_25
    return-void

    .line 218
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1c
        :pswitch_f
        :pswitch_6
    .end packed-switch
.end method

.method public static rotateSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 15
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "rotation"    # I

    .line 156
    packed-switch p2, :pswitch_data_36

    goto :goto_34

    .line 167
    :pswitch_4
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_34

    .line 164
    :pswitch_10
    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 165
    goto :goto_34

    .line 161
    :pswitch_1c
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 162
    goto :goto_34

    .line 158
    :pswitch_28
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 159
    nop

    .line 170
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
        :pswitch_1c
        :pswitch_10
        :pswitch_4
    .end packed-switch
.end method

.method public static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .registers 7
    .param p0, "rotation"    # I
    .param p1, "physicalWidth"    # I
    .param p2, "physicalHeight"    # I
    .param p3, "out"    # Landroid/graphics/Matrix;

    .line 229
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_42

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :pswitch_1d
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 243
    int-to-float v1, p2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 244
    goto :goto_40

    .line 238
    :pswitch_27
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 239
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 240
    goto :goto_40

    .line 234
    :pswitch_32
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 235
    int-to-float v1, p1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 236
    goto :goto_40

    .line 231
    :pswitch_3c
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 232
    nop

    .line 248
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_32
        :pswitch_27
        :pswitch_1d
    .end packed-switch
.end method
