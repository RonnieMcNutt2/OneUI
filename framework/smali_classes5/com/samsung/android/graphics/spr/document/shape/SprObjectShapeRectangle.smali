.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapeRectangle.java"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public rx:F

.field public ry:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->left:F

    .line 14
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->top:F

    .line 15
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->right:F

    .line 16
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->bottom:F

    .line 17
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->rx:F

    .line 18
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->ry:F

    .line 22
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 6
    .param p1, "l"    # F
    .param p2, "t"    # F
    .param p3, "r"    # F
    .param p4, "b"    # F

    .line 25
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->left:F

    .line 14
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->top:F

    .line 15
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->right:F

    .line 16
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->bottom:F

    .line 17
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->rx:F

    .line 18
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->ry:F

    .line 26
    iput p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->left:F

    .line 27
    iput p2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->top:F

    .line 28
    iput p3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->right:F

    .line 29
    iput p4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->bottom:F

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 3
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->left:F

    .line 14
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->top:F

    .line 15
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->right:F

    .line 16
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->bottom:F

    .line 17
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->rx:F

    .line 18
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->ry:F

    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 35
    return-void
.end method


# virtual methods
.method public draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .registers 12
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "sx"    # F
    .param p4, "sy"    # F
    .param p5, "alpha"    # F

    .line 82
    const/16 v0, 0x1f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 84
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->alpha:F

    mul-float/2addr v0, p5

    .line 86
    .local v0, "curAlpha":F
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 87
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    .line 90
    :cond_13
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->left:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->top:F

    iget v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->right:F

    iget v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->bottom:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 92
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->setShadowLayer()V

    .line 93
    iget v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->rx:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_44

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->ry:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_31

    goto :goto_44

    .line 101
    :cond_31
    iget-boolean v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->isVisibleFill:Z

    if-eqz v2, :cond_3a

    .line 102
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 104
    :cond_3a
    iget-boolean v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->isVisibleStroke:Z

    if-eqz v2, :cond_5e

    .line 105
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_5e

    .line 94
    :cond_44
    :goto_44
    iget-boolean v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->isVisibleFill:Z

    if-eqz v2, :cond_51

    .line 95
    iget v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->rx:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->ry:F

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 97
    :cond_51
    iget-boolean v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->isVisibleStroke:Z

    if-eqz v2, :cond_5e

    .line 98
    iget v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->rx:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->ry:F

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 108
    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->clearShadowLayer()V

    .line 110
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 111
    return-void
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 3
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->left:F

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->top:F

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->right:F

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->bottom:F

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->rx:F

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->ry:F

    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 47
    return-void
.end method

.method public getSPRSize()I
    .registers 2

    .line 63
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getTotalElementCount()I
    .registers 2

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public getTotalSegmentCount()I
    .registers 3

    .line 68
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->rx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->ry:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    .line 69
    const/4 v0, 0x4

    return v0

    .line 71
    :cond_f
    const/16 v0, 0x8

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->left:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 52
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->top:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 53
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->right:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 54
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->bottom:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 55
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->rx:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 56
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->ry:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 58
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 59
    return-void
.end method
