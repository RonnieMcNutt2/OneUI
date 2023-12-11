.class public Landroid/graphics/LightingColorFilter;
.super Landroid/graphics/ColorFilter;
.source "LightingColorFilter.java"


# instance fields
.field private mAdd:I

.field private mMul:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "mul"    # I
    .param p2, "add"    # I

    .line 54
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 55
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    .line 56
    iput p2, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    .line 57
    return-void
.end method

.method private static native native_CreateLightingFilter(II)J
.end method


# virtual methods
.method createNativeInstance()J
    .registers 3

    .line 113
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    iget v1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    invoke-static {v0, v1}, Landroid/graphics/LightingColorFilter;->native_CreateLightingFilter(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColorAdd()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    return v0
.end method

.method public getColorMultiply()I
    .registers 2

    .line 65
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    return v0
.end method

.method public setColorAdd(I)V
    .registers 3
    .param p1, "add"    # I

    .line 105
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    if-eq v0, p1, :cond_9

    .line 106
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    .line 107
    invoke-virtual {p0}, Landroid/graphics/LightingColorFilter;->discardNativeInstance()V

    .line 109
    :cond_9
    return-void
.end method

.method public setColorMultiply(I)V
    .registers 3
    .param p1, "mul"    # I

    .line 79
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    if-eq v0, p1, :cond_9

    .line 80
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    .line 81
    invoke-virtual {p0}, Landroid/graphics/LightingColorFilter;->discardNativeInstance()V

    .line 83
    :cond_9
    return-void
.end method
