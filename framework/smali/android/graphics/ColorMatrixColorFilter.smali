.class public Landroid/graphics/ColorMatrixColorFilter;
.super Landroid/graphics/ColorFilter;
.source "ColorMatrixColorFilter.java"


# instance fields
.field private final mMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .registers 3
    .param p1, "matrix"    # Landroid/graphics/ColorMatrix;

    .line 41
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    .line 43
    return-void
.end method

.method public constructor <init>([F)V
    .registers 5
    .param p1, "array"    # [F

    .line 52
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 53
    array-length v1, p1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_13

    .line 56
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 57
    return-void

    .line 54
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private static native nativeColorMatrixFilter([F)J
.end method


# virtual methods
.method createNativeInstance()J
    .registers 3

    .line 127
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColorMatrix(Landroid/graphics/ColorMatrix;)V
    .registers 3
    .param p1, "colorMatrix"    # Landroid/graphics/ColorMatrix;

    .line 65
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    .line 66
    return-void
.end method

.method public setColorMatrix(Landroid/graphics/ColorMatrix;)V
    .registers 3
    .param p1, "matrix"    # Landroid/graphics/ColorMatrix;

    .line 84
    invoke-virtual {p0}, Landroid/graphics/ColorMatrixColorFilter;->discardNativeInstance()V

    .line 85
    if-nez p1, :cond_b

    .line 86
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    goto :goto_10

    .line 88
    :cond_b
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    .line 90
    :goto_10
    return-void
.end method

.method public setColorMatrixArray([F)V
    .registers 4
    .param p1, "array"    # [F

    .line 114
    invoke-virtual {p0}, Landroid/graphics/ColorMatrixColorFilter;->discardNativeInstance()V

    .line 115
    if-nez p1, :cond_b

    .line 116
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    goto :goto_15

    .line 118
    :cond_b
    array-length v0, p1

    const/16 v1, 0x14

    if-lt v0, v1, :cond_16

    .line 121
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 123
    :goto_15
    return-void

    .line 119
    :cond_16
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
