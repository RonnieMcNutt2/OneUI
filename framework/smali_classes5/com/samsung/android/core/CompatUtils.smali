.class public Lcom/samsung/android/core/CompatUtils;
.super Ljava/lang/Object;
.source "CompatUtils.java"


# static fields
.field public static final SCALE_50:F = 0.5f

.field public static final SCALE_72:F = 0.72f

.field public static final SCALE_90:F = 0.9f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustBoundsToCenter(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p0, "sourceBounds"    # Landroid/graphics/Rect;
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;

    .line 87
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 88
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 89
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 90
    return-void
.end method

.method public static adjustScale(F)F
    .registers 3
    .param p0, "scale"    # F

    .line 44
    const v0, 0x3ba3d70a    # 0.005f

    add-float/2addr v0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method

.method public static applyScale(IF)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "scale"    # F

    .line 48
    int-to-float v0, p0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private static computeAspectRatio(II)F
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 80
    if-eqz p0, :cond_11

    if-nez p1, :cond_5

    goto :goto_11

    .line 83
    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 81
    :cond_11
    :goto_11
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 9
    .param p0, "containingBounds"    # Landroid/graphics/Rect;
    .param p1, "containerBounds"    # Landroid/graphics/Rect;

    .line 94
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 95
    .local v0, "containingW":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 96
    .local v1, "containingH":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 97
    .local v2, "containerW":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 98
    .local v3, "containerH":I
    if-gt v0, v2, :cond_17

    if-gt v1, v3, :cond_17

    .line 99
    const/high16 v4, 0x3f800000    # 1.0f

    return v4

    .line 101
    :cond_17
    int-to-float v4, v2

    int-to-float v5, v0

    div-float/2addr v4, v5

    int-to-float v5, v3

    int-to-float v6, v1

    div-float/2addr v5, v6

    .line 102
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 101
    invoke-static {v4}, Lcom/samsung/android/core/CompatUtils;->adjustScale(F)F

    move-result v4

    return v4
.end method

.method public static getConfigurationOrientation(II)I
    .registers 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 76
    if-le p0, p1, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0
.end method

.method public static getScaledBounds(Landroid/graphics/Rect;F)V
    .registers 3
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/core/CompatUtils;->getScaledBounds(Landroid/graphics/Rect;FZ)V

    .line 53
    return-void
.end method

.method public static getScaledBounds(Landroid/graphics/Rect;FZ)V
    .registers 8
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F
    .param p2, "useAspectRatio"    # Z

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 58
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 59
    .local v1, "height":I
    const/4 v2, 0x0

    if-eqz p2, :cond_24

    .line 60
    invoke-static {v0, v1}, Lcom/samsung/android/core/CompatUtils;->computeAspectRatio(II)F

    move-result v3

    .line 61
    .local v3, "aspectRatio":F
    if-le v0, v1, :cond_19

    .line 62
    invoke-static {v1, p1}, Lcom/samsung/android/core/CompatUtils;->applyScale(IF)I

    move-result v1

    .line 63
    int-to-float v4, v1

    div-float/2addr v4, v3

    float-to-int v0, v4

    goto :goto_20

    .line 65
    :cond_19
    invoke-static {v0, p1}, Lcom/samsung/android/core/CompatUtils;->applyScale(IF)I

    move-result v0

    .line 66
    int-to-float v4, v0

    div-float/2addr v4, v3

    float-to-int v1, v4

    .line 68
    :goto_20
    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    return-void

    .line 71
    .end local v3    # "aspectRatio":F
    :cond_24
    invoke-static {v0, p1}, Lcom/samsung/android/core/CompatUtils;->applyScale(IF)I

    move-result v3

    invoke-static {v1, p1}, Lcom/samsung/android/core/CompatUtils;->applyScale(IF)I

    move-result v4

    invoke-virtual {p0, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    return-void
.end method

.method public static orientationToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "orientation"    # I

    .line 107
    packed-switch p0, :pswitch_data_14

    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :pswitch_8
    const-string/jumbo v0, "landscape"

    return-object v0

    .line 109
    :pswitch_c
    const-string/jumbo v0, "portrait"

    return-object v0

    .line 110
    :pswitch_10
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method
