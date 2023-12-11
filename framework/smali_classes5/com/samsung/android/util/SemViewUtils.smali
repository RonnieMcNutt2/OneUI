.class public Lcom/samsung/android/util/SemViewUtils;
.super Ljava/lang/Object;
.source "SemViewUtils.java"


# static fields
.field private static final CUBIC_INIT_X0:F = 0.0f

.field private static final CUBIC_INIT_X1:F = 0.0f

.field private static final CUBIC_INIT_X2:F = 41.0f

.field private static final CUBIC_INIT_X3:F = 86.0f

.field private static final CUBIC_INIT_Y0:F = 86.0f

.field private static final CUBIC_INIT_Y1:F = 22.0f

.field private static final CUBIC_INIT_Y2:F = 0.0f

.field private static final CUBIC_INIT_Y3:F = 0.0f

.field private static final INIT_OFFSET_1:F = 0.0f

.field private static final INIT_OFFSET_2:F = 86.0f

.field private static final NOT_INITIALIZED:I = -0x1

.field private static final NOT_SUPPORTED:I = 0x0

.field private static final SUPPORTED:I = 0x1

.field private static TAG_LAYOUT:Ljava/lang/String;

.field private static sIsTablet:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-string v0, "ViewUtils_layout"

    sput-object v0, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/util/SemViewUtils;->sIsTablet:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dipToPx(FLandroid/content/res/Resources;)I
    .registers 4
    .param p0, "dip"    # F
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static getAttrColor(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 98
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 100
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    return v1
.end method

.method public static getDecorView(Landroid/view/View;)Lcom/android/internal/policy/DecorView;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 84
    if-eqz p0, :cond_14

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 86
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_14

    .line 87
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_14

    .line 89
    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/DecorView;

    return-object v2

    .line 93
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v1    # "rootView":Landroid/view/View;
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPopOverSmoothRoundedRect(II)Landroid/graphics/Path;
    .registers 31
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 118
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 119
    .local v0, "path":Landroid/graphics/Path;
    move/from16 v8, p0

    int-to-float v1, v8

    const/high16 v2, 0x432c0000    # 172.0f

    sub-float v9, v1, v2

    .line 120
    .local v9, "widthLineLen":F
    move/from16 v10, p1

    int-to-float v1, v10

    sub-float v11, v1, v2

    .line 122
    .local v11, "heightLineLen":F
    const/4 v12, 0x0

    .local v12, "p0x":F
    const/high16 v13, 0x42ac0000    # 86.0f

    .line 123
    .local v13, "p0y":F
    const/4 v14, 0x0

    .local v14, "p1x":F
    const/high16 v15, 0x41b00000    # 22.0f

    .line 124
    .local v15, "p1y":F
    const/high16 v16, 0x42240000    # 41.0f

    .local v16, "p2x":F
    const/16 v17, 0x0

    .line 125
    .local v17, "p2y":F
    const/high16 v18, 0x42ac0000    # 86.0f

    .local v18, "p3x":F
    const/4 v7, 0x0

    .line 128
    .local v7, "p3y":F
    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    move-object v1, v0

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v19, v7

    .end local v7    # "p3y":F
    .local v19, "p3y":F
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 130
    add-float v1, v18, v9

    .end local v19    # "p3y":F
    .restart local v7    # "p3y":F
    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 133
    sub-float v19, v18, v16

    .line 134
    .local v19, "p3xtop2x":F
    sub-float v20, v18, v14

    .line 135
    .local v20, "p3xtop1x":F
    sub-float v21, v18, v12

    .line 136
    .local v21, "p3xtop0x":F
    add-float v18, v18, v9

    .line 137
    add-float v1, v16, v19

    add-float/2addr v1, v9

    add-float v16, v1, v19

    .line 138
    add-float v1, v14, v20

    add-float/2addr v1, v9

    add-float v14, v1, v20

    .line 139
    add-float v1, v12, v21

    add-float/2addr v1, v9

    add-float v12, v1, v21

    .line 140
    move-object v1, v0

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v14

    move v5, v15

    move v6, v12

    move/from16 v22, v7

    .end local v7    # "p3y":F
    .local v22, "p3y":F
    move v7, v13

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 141
    add-float v1, v13, v11

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    sub-float v23, v13, v15

    .line 145
    .local v23, "p0ytop1y":F
    sub-float v24, v13, v17

    .line 146
    .local v24, "p0ytop2y":F
    sub-float v25, v13, v22

    .line 147
    .local v25, "p0ytop3y":F
    add-float/2addr v13, v11

    .line 148
    add-float v1, v15, v23

    add-float/2addr v1, v11

    add-float v15, v1, v23

    .line 149
    add-float v1, v17, v24

    add-float/2addr v1, v11

    add-float v17, v1, v24

    .line 150
    add-float v7, v22, v25

    add-float/2addr v7, v11

    add-float v7, v7, v25

    .line 151
    .end local v22    # "p3y":F
    .restart local v7    # "p3y":F
    move-object v1, v0

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v22, v7

    .end local v7    # "p3y":F
    .restart local v22    # "p3y":F
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 153
    sub-float v1, v18, v9

    .end local v22    # "p3y":F
    .restart local v7    # "p3y":F
    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    sub-float v22, v16, v18

    .line 157
    .local v22, "p2xtop3x":F
    sub-float v26, v14, v18

    .line 158
    .local v26, "p1xtop3x":F
    sub-float v27, v12, v18

    .line 159
    .local v27, "p0xtop3x":F
    sub-float v1, v16, v22

    sub-float/2addr v1, v9

    sub-float v16, v1, v22

    .line 160
    sub-float v1, v14, v26

    sub-float/2addr v1, v9

    sub-float v14, v1, v26

    .line 161
    sub-float v1, v12, v27

    sub-float/2addr v1, v9

    sub-float v12, v1, v27

    .line 162
    move-object v1, v0

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v14

    move v5, v15

    move v6, v12

    move/from16 v28, v7

    .end local v7    # "p3y":F
    .local v28, "p3y":F
    move v7, v13

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 164
    sub-float v1, v13, v11

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 167
    return-object v0
.end method

.method public static getRoundedCorner(IIII)Landroid/graphics/Path;
    .registers 12
    .param p0, "flag"    # I
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "radius"    # I

    .line 228
    add-int v0, p1, p3

    .line 229
    .local v0, "right":I
    move v1, p3

    .line 230
    .local v1, "rx":I
    move v2, p3

    .line 231
    .local v2, "ry":I
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 232
    .local v3, "path":Landroid/graphics/Path;
    const/4 v4, 0x0

    sparse-switch p0, :sswitch_data_5e

    goto :goto_5a

    .line 249
    :sswitch_e
    int-to-float v5, p1

    add-int v6, p2, v2

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 250
    int-to-float v5, v1

    int-to-float v6, v1

    neg-int v7, v2

    int-to-float v7, v7

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 251
    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_5a

    .line 244
    :sswitch_21
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 245
    int-to-float v5, v2

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 246
    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 247
    goto :goto_5a

    .line 239
    :sswitch_32
    int-to-float v5, v0

    add-int v6, p2, p3

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 240
    neg-int v5, v2

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    neg-int v7, v2

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 241
    int-to-float v5, v1

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 242
    goto :goto_5a

    .line 234
    :sswitch_47
    int-to-float v5, v0

    int-to-float v6, p2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 235
    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    int-to-float v7, v2

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 236
    neg-int v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 237
    nop

    .line 254
    :goto_5a
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 255
    return-object v3

    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_47
        0x2 -> :sswitch_32
        0x4 -> :sswitch_21
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public static getSmoothLeftRoundedRect(IIIII)Landroid/graphics/Path;
    .registers 14
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "radius"    # I

    .line 193
    move v0, p4

    .line 194
    .local v0, "rx":I
    move v1, p4

    .line 195
    .local v1, "ry":I
    mul-int/lit8 v2, v0, 0x2

    sub-int v2, p0, v2

    .line 196
    .local v2, "widthMinusCorners":I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, p1, v3

    .line 197
    .local v3, "heightMinusCorners":I
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 198
    .local v4, "path":Landroid/graphics/Path;
    add-int v5, p2, v0

    int-to-float v5, v5

    int-to-float v6, p3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 199
    neg-int v5, v0

    int-to-float v5, v5

    neg-int v6, v0

    int-to-float v6, v6

    int-to-float v7, v1

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 200
    int-to-float v5, v3

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 201
    int-to-float v5, v1

    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 202
    add-int v5, v2, v0

    int-to-float v5, v5

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 203
    neg-int v5, p1

    int-to-float v5, v5

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 204
    rsub-int/lit8 v5, v2, 0x0

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 205
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 206
    return-object v4
.end method

.method public static getSmoothRightRoundedRect(IIIII)Landroid/graphics/Path;
    .registers 15
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "radius"    # I

    .line 210
    add-int v0, p2, p0

    .line 211
    .local v0, "right":I
    move v1, p4

    .line 212
    .local v1, "rx":I
    move v2, p4

    .line 213
    .local v2, "ry":I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, p0, v3

    .line 214
    .local v3, "widthMinusCorners":I
    mul-int/lit8 v4, v2, 0x2

    sub-int v4, p1, v4

    .line 215
    .local v4, "heightMinusCorners":I
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 216
    .local v5, "path":Landroid/graphics/Path;
    int-to-float v6, v0

    add-int v7, p3, v2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 217
    neg-int v6, v2

    int-to-float v6, v6

    neg-int v7, v1

    int-to-float v7, v7

    neg-int v8, v2

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 218
    neg-int v6, v3

    sub-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 219
    int-to-float v6, p1

    invoke-virtual {v5, v9, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 220
    add-int v6, v3, v1

    int-to-float v6, v6

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 221
    int-to-float v6, v1

    int-to-float v7, v1

    neg-int v8, v2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 222
    neg-int v6, v4

    int-to-float v6, v6

    invoke-virtual {v5, v9, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 223
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 224
    return-object v5
.end method

.method public static getSmoothRoundedRect(IIIII)Landroid/graphics/Path;
    .registers 15
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "radius"    # I

    .line 173
    add-int v0, p2, p0

    .line 174
    .local v0, "right":I
    move v1, p4

    .line 175
    .local v1, "rx":I
    move v2, p4

    .line 176
    .local v2, "ry":I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, p0, v3

    .line 177
    .local v3, "widthMinusCorners":I
    mul-int/lit8 v4, v2, 0x2

    sub-int v4, p1, v4

    .line 178
    .local v4, "heightMinusCorners":I
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 179
    .local v5, "path":Landroid/graphics/Path;
    int-to-float v6, v0

    add-int v7, p3, v2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 180
    neg-int v6, v2

    int-to-float v6, v6

    neg-int v7, v1

    int-to-float v7, v7

    neg-int v8, v2

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 181
    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 182
    neg-int v6, v1

    int-to-float v6, v6

    neg-int v7, v1

    int-to-float v7, v7

    int-to-float v8, v2

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 183
    int-to-float v6, v4

    invoke-virtual {v5, v9, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 184
    int-to-float v6, v2

    int-to-float v7, v1

    int-to-float v8, v2

    invoke-virtual {v5, v9, v6, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 185
    int-to-float v6, v3

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 186
    int-to-float v6, v1

    int-to-float v7, v1

    neg-int v8, v2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 187
    neg-int v6, v4

    int-to-float v6, v6

    invoke-virtual {v5, v9, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 188
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 189
    return-object v5
.end method

.method public static isDeviceDefaultFamily(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 65
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x11200d7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 66
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_15

    const/4 v3, 0x1

    :cond_15
    return v3
.end method

.method public static isFoldDevice()Z
    .registers 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 54
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010590

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 55
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    return v3
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static isOpenThemeApplied(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isTablet()Z
    .registers 2

    .line 40
    sget v0, Lcom/samsung/android/util/SemViewUtils;->sIsTablet:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 42
    nop

    .line 41
    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lcom/samsung/android/util/SemViewUtils;->sIsTablet:I

    .line 44
    :cond_19
    sget v0, Lcom/samsung/android/util/SemViewUtils;->sIsTablet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method public static isTalkbackEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 79
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 80
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    .line 79
    :goto_18
    return v1
.end method

.method private static printViewHierarchyInfo(Ljava/util/ArrayList;Landroid/view/View;II)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "depth"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "II)V"
        }
    .end annotation

    .line 360
    .local p0, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v0, "indent":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, p2, :cond_14

    .line 364
    const-string/jumbo v2, "\u2502   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 366
    .end local v1    # "i":I
    :cond_14
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_20

    .line 367
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 368
    .local v1, "childCount":I
    :goto_21
    const-string/jumbo v2, "\u2514\u2500\u2500 "

    const/16 v3, 0x40

    if-lez v1, :cond_a5

    .line 369
    if-ge p3, v1, :cond_60

    .line 370
    sget-object v2, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u251c\u2500\u2500 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 371
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 373
    :cond_60
    sget-object v4, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 374
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_92
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_93
    if-ge v2, v1, :cond_a4

    .line 377
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 378
    .local v3, "child":Landroid/view/View;
    add-int/lit8 v4, p2, 0x1

    invoke-static {p0, v3, v4, v2}, Lcom/samsung/android/util/SemViewUtils;->printViewHierarchyInfo(Ljava/util/ArrayList;Landroid/view/View;II)V

    .line 376
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .end local v2    # "i":I
    :cond_a4
    goto :goto_d7

    .line 381
    :cond_a5
    sget-object v4, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_d7
    return-void
.end method

.method public static printViewLayoutInfo(Landroid/view/View;)V
    .registers 12
    .param p0, "root"    # Landroid/view/View;

    .line 286
    :try_start_0
    sget-object v0, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    const-string v1, "--------------View hierarchy info-----------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-object v0, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    const-string v1, "--------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v0, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-nez p0, :cond_39

    .line 291
    sget-object v0, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    const-string v1, "Unable to get layout information because root is null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 295
    :cond_39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1}, Lcom/samsung/android/util/SemViewUtils;->printViewHierarchyInfo(Ljava/util/ArrayList;Landroid/view/View;II)V

    .line 298
    sget-object v2, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    const-string v3, "View properties:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 300
    .local v2, "location":[I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 301
    .local v4, "v":Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "+ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 303
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/4 v6, 0x0

    .line 305
    .local v6, "entry":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_89} :catch_2c9

    .line 306
    .local v7, "id":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_a3

    const/high16 v8, -0x1000000

    and-int/2addr v8, v7

    if-nez v8, :cond_97

    const v8, 0xffffff

    and-int/2addr v8, v7

    if-nez v8, :cond_a3

    .line 308
    :cond_97
    :try_start_97
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 309
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v9
    :try_end_9f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_97 .. :try_end_9f} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9f} :catch_2c9

    move-object v6, v9

    .line 312
    .end local v8    # "res":Landroid/content/res/Resources;
    goto :goto_a3

    .line 310
    :catch_a1
    move-exception v8

    .line 311
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v6, 0x0

    .line 314
    .end local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_a3
    :goto_a3
    if-eqz v6, :cond_bb

    .line 315
    :try_start_a5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " id/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_bb
    const-string v8, "\n Accessibility: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " contentDescription="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " importantForAccessibility="

    .line 318
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v9

    if-eqz v9, :cond_df

    const-string/jumbo v9, "yes"

    goto :goto_e2

    :cond_df
    const-string/jumbo v9, "no"

    :goto_e2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v8, "\n Drawing: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " alpha="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elevation="

    .line 320
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getElevation()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " x="

    .line 321
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " y="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " z="

    .line 322
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isOpaque="

    .line 323
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->isOpaque()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 324
    const-string v8, "\n Focus: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hasFocus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isFocusable="

    .line 325
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isFocused="

    .line 326
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 328
    const-string v8, "\n Layout: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " width="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " height="

    .line 329
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " locationOnScreen_x="

    .line 330
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " locationOnScreen_y="

    .line 331
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " left="

    .line 332
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " right="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " top="

    .line 333
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bottom="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const-string v8, "\n Padding: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paddingLeft="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paddingRight="

    .line 335
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paddingTop="

    .line 336
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paddingBottom="

    .line 337
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paddingStart="

    .line 338
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paddingEnd="

    .line 339
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    const-string v8, "\n Miscellaneous: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fitsSystemWindows="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " visibility="

    .line 341
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isClickable="

    .line 342
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isEnabled="

    .line 343
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 344
    instance-of v8, v4, Landroid/widget/TextView;

    if-eqz v8, :cond_2bc

    .line 345
    move-object v8, v4

    check-cast v8, Landroid/widget/TextView;

    .line 346
    .local v8, "tv":Landroid/widget/TextView;
    const-string v9, "\n Text: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " scaledTextSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getScaledTextSize()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " textSize="

    .line 347
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " typefaceStyle="

    .line 348
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " text="

    .line 349
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 351
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_2bc
    sget-object v8, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c5
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_2c5} :catch_2c9

    .line 352
    nop

    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "entry":Ljava/lang/String;
    .end local v7    # "id":I
    goto/16 :goto_50

    .line 355
    .end local v0    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "location":[I
    :cond_2c8
    goto :goto_2e2

    .line 353
    :catch_2c9
    move-exception v0

    .line 354
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get view hierarchy information. ex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2e2
    return-void
.end method
