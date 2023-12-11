.class public Landroid/view/animation/Transformation;
.super Ljava/lang/Object;
.source "Transformation.java"


# static fields
.field public static final TYPE_ALPHA:I = 0x1

.field public static final TYPE_BOTH:I = 0x3

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MATRIX:I = 0x2


# instance fields
.field protected mAlpha:F

.field private mClipRect:Landroid/graphics/Rect;

.field private mHasClipRect:Z

.field private mInsets:Landroid/graphics/Insets;

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mTransformationType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    .line 57
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/animation/Transformation;->mInsets:Landroid/graphics/Insets;

    .line 63
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->clear()V

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_c

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_f

    .line 75
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 77
    :goto_f
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 81
    return-void
.end method

.method public compose(Landroid/view/animation/Transformation;)V
    .registers 8
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .line 127
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 128
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 129
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v0, :cond_41

    .line 130
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 131
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v1, :cond_3e

    .line 132
    iget-object v1, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    goto :goto_41

    .line 135
    :cond_3e
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 138
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_41
    :goto_41
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Insets;->add(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setInsets(Landroid/graphics/Insets;)V

    .line 139
    return-void
.end method

.method public getAlpha()F
    .registers 2

    .line 180
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    return v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Insets;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/view/animation/Transformation;->mInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getTransformationType()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    return v0
.end method

.method public hasClipRect()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    return v0
.end method

.method public postCompose(Landroid/view/animation/Transformation;)V
    .registers 8
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .line 147
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 148
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 149
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v0, :cond_41

    .line 150
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 151
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v1, :cond_3e

    .line 152
    iget-object v1, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    goto :goto_41

    .line 155
    :cond_3e
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 158
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_41
    :goto_41
    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 272
    const-string/jumbo v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 273
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->dump(Ljava/io/PrintWriter;)V

    .line 275
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 276
    return-void
.end method

.method public set(Landroid/view/animation/Transformation;)V
    .registers 4
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .line 110
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 111
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 112
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v0, :cond_1b

    .line 113
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    goto :goto_23

    .line 115
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 116
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 118
    :goto_23
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v0

    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 119
    return-void
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .line 173
    iput p1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 174
    return-void
.end method

.method public setClipRect(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 196
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 198
    return-void
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 188
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 189
    return-void
.end method

.method public setInsets(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 229
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/Transformation;->mInsets:Landroid/graphics/Insets;

    .line 230
    return-void
.end method

.method public setInsets(Landroid/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 221
    iput-object p1, p0, Landroid/view/animation/Transformation;->mInsets:Landroid/graphics/Insets;

    .line 222
    return-void
.end method

.method public setTransformationType(I)V
    .registers 2
    .param p1, "transformationType"    # I

    .line 101
    iput p1, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 102
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 253
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 261
    const-string/jumbo v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 262
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 243
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Transformation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
