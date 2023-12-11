.class public Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z
    .registers 9
    .param p0, "outBounds"    # Landroid/graphics/Rect;
    .param p1, "edgeFlags"    # I
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .line 422
    const/4 v0, 0x0

    if-eqz p0, :cond_42

    const/4 v1, 0x1

    if-lt p2, v1, :cond_42

    if-ge p3, v1, :cond_9

    goto :goto_42

    .line 426
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, p2, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    move v2, v0

    .line 427
    .local v2, "adjustWidth":Z
    :goto_12
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v3, p3, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v0

    .line 429
    .local v3, "adjustHeight":Z
    :goto_1b
    sparse-switch p1, :sswitch_data_44

    goto :goto_3c

    .line 439
    :sswitch_1f
    if-eqz v2, :cond_26

    .line 440
    iget v4, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Rect;->right:I

    .line 442
    :cond_26
    if-eqz v3, :cond_3c

    .line 443
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p3

    iput v4, p0, Landroid/graphics/Rect;->top:I

    goto :goto_3c

    .line 431
    :sswitch_2e
    if-eqz v2, :cond_35

    .line 432
    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Rect;->left:I

    .line 434
    :cond_35
    if-eqz v3, :cond_3c

    .line 435
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p3

    iput v4, p0, Landroid/graphics/Rect;->top:I

    .line 448
    :cond_3c
    :goto_3c
    if-eqz v2, :cond_41

    if-eqz v3, :cond_41

    move v0, v1

    :cond_41
    return v0

    .line 423
    .end local v2    # "adjustWidth":Z
    .end local v3    # "adjustHeight":Z
    :cond_42
    :goto_42
    return v0

    nop

    :sswitch_data_44
    .sparse-switch
        0x5 -> :sswitch_2e
        0x9 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static applyResizeRect(Landroid/graphics/Rect;III)V
    .registers 4
    .param p0, "outBounds"    # Landroid/graphics/Rect;
    .param p1, "edgeFlags"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 403
    if-nez p0, :cond_3

    .line 404
    return-void

    .line 407
    :cond_3
    sparse-switch p1, :sswitch_data_12

    goto :goto_11

    .line 413
    :sswitch_7
    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 414
    iput p3, p0, Landroid/graphics/Rect;->top:I

    goto :goto_11

    .line 409
    :sswitch_c
    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 410
    iput p3, p0, Landroid/graphics/Rect;->top:I

    .line 411
    nop

    .line 417
    :goto_11
    return-void

    :sswitch_data_12
    .sparse-switch
        0x5 -> :sswitch_c
        0x9 -> :sswitch_7
    .end sparse-switch
.end method

.method public static dipToPixel(ILandroid/util/DisplayMetrics;)I
    .registers 4
    .param p0, "dip"    # I
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 379
    const/4 v0, 0x1

    int-to-float v1, p0

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static edgeFlagToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "flag"    # I

    .line 384
    sparse-switch p0, :sswitch_data_c

    .line 390
    const-string v0, "INVALID"

    return-object v0

    .line 386
    :sswitch_6
    const-string v0, "EDGE_RIGHT_TOP"

    return-object v0

    .line 388
    :sswitch_9
    const-string v0, "EDGE_LEFT_TOP"

    return-object v0

    :sswitch_data_c
    .sparse-switch
        0x5 -> :sswitch_9
        0x9 -> :sswitch_6
    .end sparse-switch
.end method

.method public static isLeftSide(II)Z
    .registers 3
    .param p0, "screenWidth"    # I
    .param p1, "x"    # I

    .line 395
    div-int/lit8 v0, p0, 0x2

    if-le v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isTopSide(II)Z
    .registers 3
    .param p0, "screenHeight"    # I
    .param p1, "y"    # I

    .line 399
    div-int/lit8 v0, p0, 0x2

    if-le v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
