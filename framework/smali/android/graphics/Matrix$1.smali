.class Landroid/graphics/Matrix$1;
.super Landroid/graphics/Matrix;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method oops()V
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .registers 3
    .param p1, "other"    # Landroid/graphics/Matrix;

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public postRotate(F)Z
    .registers 3
    .param p1, "degrees"    # F

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public postRotate(FFF)Z
    .registers 5
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 182
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FF)Z
    .registers 4
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 176
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FFFF)Z
    .registers 6
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 170
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public postSkew(FF)Z
    .registers 4
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 200
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public postSkew(FFFF)Z
    .registers 6
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public postTranslate(FF)Z
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 164
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .registers 3
    .param p1, "other"    # Landroid/graphics/Matrix;

    .line 158
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(F)Z
    .registers 3
    .param p1, "degrees"    # F

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(FFF)Z
    .registers 5
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FF)Z
    .registers 4
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 128
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FFFF)Z
    .registers 6
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public preSkew(FF)Z
    .registers 4
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public preSkew(FFFF)Z
    .registers 6
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public preTranslate(FF)Z
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 116
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 1

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 61
    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .registers 2
    .param p1, "src"    # Landroid/graphics/Matrix;

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 56
    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .registers 4
    .param p1, "a"    # Landroid/graphics/Matrix;
    .param p2, "b"    # Landroid/graphics/Matrix;

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public setPolyToPoly([FI[FII)Z
    .registers 7
    .param p1, "src"    # [F
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [F
    .param p4, "dstIndex"    # I
    .param p5, "pointCount"    # I

    .line 219
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .registers 5
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "stf"    # Landroid/graphics/Matrix$ScaleToFit;

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public setRotate(F)V
    .registers 2
    .param p1, "degrees"    # F

    .line 85
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 86
    return-void
.end method

.method public setRotate(FFF)V
    .registers 4
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 81
    return-void
.end method

.method public setScale(FF)V
    .registers 3
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 75
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 76
    return-void
.end method

.method public setScale(FFFF)V
    .registers 5
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 70
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 71
    return-void
.end method

.method public setSinCos(FF)V
    .registers 3
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F

    .line 95
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 96
    return-void
.end method

.method public setSinCos(FFFF)V
    .registers 5
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 90
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 91
    return-void
.end method

.method public setSkew(FF)V
    .registers 3
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 105
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 106
    return-void
.end method

.method public setSkew(FFFF)V
    .registers 5
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 101
    return-void
.end method

.method public setTranslate(FF)V
    .registers 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 65
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 66
    return-void
.end method

.method public setValues([F)V
    .registers 2
    .param p1, "values"    # [F

    .line 225
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 226
    return-void
.end method
