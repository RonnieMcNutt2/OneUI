.class public Landroid/util/TypedValue;
.super Ljava/lang/Object;
.source "TypedValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/TypedValue$ComplexDimensionUnit;
    }
.end annotation


# static fields
.field public static final COMPLEX_MANTISSA_MASK:I = 0xffffff

.field public static final COMPLEX_MANTISSA_SHIFT:I = 0x8

.field public static final COMPLEX_RADIX_0p23:I = 0x3

.field public static final COMPLEX_RADIX_16p7:I = 0x1

.field public static final COMPLEX_RADIX_23p0:I = 0x0

.field public static final COMPLEX_RADIX_8p15:I = 0x2

.field public static final COMPLEX_RADIX_MASK:I = 0x3

.field public static final COMPLEX_RADIX_SHIFT:I = 0x4

.field public static final COMPLEX_UNIT_DIP:I = 0x1

.field public static final COMPLEX_UNIT_FRACTION:I = 0x0

.field public static final COMPLEX_UNIT_FRACTION_PARENT:I = 0x1

.field public static final COMPLEX_UNIT_IN:I = 0x4

.field public static final COMPLEX_UNIT_MASK:I = 0xf

.field public static final COMPLEX_UNIT_MM:I = 0x5

.field public static final COMPLEX_UNIT_PT:I = 0x3

.field public static final COMPLEX_UNIT_PX:I = 0x0

.field public static final COMPLEX_UNIT_SHIFT:I = 0x0

.field public static final COMPLEX_UNIT_SP:I = 0x2

.field public static final DATA_NULL_EMPTY:I = 0x1

.field public static final DATA_NULL_UNDEFINED:I = 0x0

.field public static final DENSITY_DEFAULT:I = 0x0

.field public static final DENSITY_NONE:I = 0xffff

.field private static final DIMENSION_UNIT_STRS:[Ljava/lang/String;

.field private static final FRACTION_UNIT_STRS:[Ljava/lang/String;

.field private static final INCHES_PER_MM:F = 0.03937008f

.field private static final INCHES_PER_PT:F = 0.013888889f

.field private static final MANTISSA_MULT:F = 0.00390625f

.field private static final RADIX_MULTS:[F

.field public static final TYPE_ATTRIBUTE:I = 0x2

.field public static final TYPE_DIMENSION:I = 0x5

.field public static final TYPE_FIRST_COLOR_INT:I = 0x1c

.field public static final TYPE_FIRST_INT:I = 0x10

.field public static final TYPE_FLOAT:I = 0x4

.field public static final TYPE_FRACTION:I = 0x6

.field public static final TYPE_INT_BOOLEAN:I = 0x12

.field public static final TYPE_INT_COLOR_ARGB4:I = 0x1e

.field public static final TYPE_INT_COLOR_ARGB8:I = 0x1c

.field public static final TYPE_INT_COLOR_RGB4:I = 0x1f

.field public static final TYPE_INT_COLOR_RGB8:I = 0x1d

.field public static final TYPE_INT_DEC:I = 0x10

.field public static final TYPE_INT_HEX:I = 0x11

.field public static final TYPE_LAST_COLOR_INT:I = 0x1f

.field public static final TYPE_LAST_INT:I = 0x1f

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_REFERENCE:I = 0x1

.field public static final TYPE_STRING:I = 0x3


# instance fields
.field public assetCookie:I

.field public changingConfigurations:I

.field public data:I

.field public density:I

.field public resourceId:I

.field public sourceResourceId:I

.field public string:Ljava/lang/CharSequence;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 257
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_2a

    sput-object v0, Landroid/util/TypedValue;->RADIX_MULTS:[F

    .line 752
    const-string/jumbo v1, "px"

    const-string v2, "dip"

    const-string/jumbo v3, "sp"

    const-string/jumbo v4, "pt"

    const-string v5, "in"

    const-string/jumbo v6, "mm"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    .line 755
    const-string v0, "%"

    const-string v1, "%p"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    return-void

    nop

    :array_2a
    .array-data 4
        0x3b800000    # 0.00390625f
        0x38000000
        0x34000000
        0x30000000
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TypedValue;->changingConfigurations:I

    return-void
.end method

.method public static applyDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 5
    .param p0, "unit"    # I
    .param p1, "value"    # F
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .line 424
    packed-switch p0, :pswitch_data_32

    .line 445
    const/4 v0, 0x0

    return v0

    .line 443
    :pswitch_5
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3d214285

    mul-float/2addr v0, v1

    return v0

    .line 441
    :pswitch_d
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    return v0

    .line 439
    :pswitch_11
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3c638e39

    mul-float/2addr v0, v1

    return v0

    .line 430
    :pswitch_19
    iget-object v0, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    if-eqz v0, :cond_29

    .line 431
    iget-object v0, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    .line 433
    invoke-virtual {v0, p1}, Landroid/content/res/FontScaleConverter;->convertSpToDp(F)F

    move-result v0

    .line 431
    const/4 v1, 0x1

    invoke-static {v1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    .line 436
    :cond_29
    iget v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, p1

    return v0

    .line 428
    :pswitch_2d
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0

    .line 426
    :pswitch_31
    return p1

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2d
        :pswitch_19
        :pswitch_11
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method public static final coerceToString(II)Ljava/lang/String;
    .registers 5
    .param p0, "type"    # I
    .param p1, "data"    # I

    .line 771
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_ca

    .line 792
    const/16 v1, 0x1c

    const/16 v2, 0x1f

    if-lt p0, v1, :cond_be

    if-gt p0, v2, :cond_be

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 789
    :sswitch_24
    if-eqz p1, :cond_2a

    const-string/jumbo v0, "true"

    goto :goto_2c

    :cond_2a
    const-string v0, "false"

    :goto_2c
    return-object v0

    .line 787
    :sswitch_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 784
    :sswitch_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v2, p1, 0x0

    and-int/lit8 v2, v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 781
    :sswitch_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v2, p1, 0x0

    and-int/lit8 v2, v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 779
    :sswitch_8c
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 777
    :sswitch_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 775
    :sswitch_a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 773
    :sswitch_bd
    return-object v0

    .line 794
    :cond_be
    const/16 v1, 0x10

    if-lt p0, v1, :cond_c9

    if-gt p0, v2, :cond_c9

    .line 795
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 798
    :cond_c9
    return-object v0

    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_bd
        0x1 -> :sswitch_a9
        0x2 -> :sswitch_95
        0x4 -> :sswitch_8c
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_45
        0x11 -> :sswitch_2d
        0x12 -> :sswitch_24
    .end sparse-switch
.end method

.method public static complexToDimension(ILandroid/util/DisplayMetrics;)F
    .registers 4
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 307
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    .line 309
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    .line 307
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static complexToDimensionNoisy(ILandroid/util/DisplayMetrics;)F
    .registers 3
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    .registers 4
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 332
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    .line 334
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    .line 332
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    .registers 7
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 359
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    .line 360
    .local v0, "value":F
    shr-int/lit8 v1, p0, 0x0

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 364
    .local v1, "f":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f000000    # 0.5f

    if-ltz v3, :cond_15

    add-float/2addr v4, v1

    goto :goto_17

    :cond_15
    sub-float v4, v1, v4

    :goto_17
    float-to-int v3, v4

    .line 365
    .local v3, "res":I
    if-eqz v3, :cond_1b

    return v3

    .line 366
    :cond_1b
    cmpl-float v4, v0, v2

    if-nez v4, :cond_21

    const/4 v2, 0x0

    return v2

    .line 367
    :cond_21
    cmpl-float v2, v0, v2

    if-lez v2, :cond_27

    const/4 v2, 0x1

    return v2

    .line 368
    :cond_27
    const/4 v2, -0x1

    return v2
.end method

.method public static complexToFloat(I)F
    .registers 4
    .param p0, "complex"    # I

    .line 286
    and-int/lit16 v0, p0, -0x100

    int-to-float v0, v0

    sget-object v1, Landroid/util/TypedValue;->RADIX_MULTS:[F

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static complexToFraction(IFF)F
    .registers 4
    .param p0, "data"    # I
    .param p1, "base"    # F
    .param p2, "pbase"    # F

    .line 708
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_16

    .line 714
    const/4 v0, 0x0

    return v0

    .line 712
    :pswitch_9
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    mul-float/2addr v0, p2

    return v0

    .line 710
    :pswitch_f
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    mul-float/2addr v0, p1

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method

.method public static convertDimensionToPixels(IFLandroid/util/DisplayMetrics;)F
    .registers 4
    .param p0, "unitToConvertFrom"    # I
    .param p1, "value"    # F
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .line 548
    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static convertPixelsToDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 4
    .param p0, "unitToConvertTo"    # I
    .param p1, "pixelValue"    # F
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .line 527
    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private static createComplex(II)I
    .registers 5
    .param p0, "mantissa"    # I
    .param p1, "radix"    # I

    .line 578
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    if-lt p0, v0, :cond_30

    const/high16 v0, 0x800000

    if-ge p0, v0, :cond_30

    .line 581
    if-ltz p1, :cond_17

    const/4 v0, 0x3

    if-gt p1, v0, :cond_17

    .line 584
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, p1, 0x4

    or-int/2addr v0, v1

    return v0

    .line 582
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of mantissa is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createComplexDimension(FI)I
    .registers 5
    .param p0, "value"    # F
    .param p1, "units"    # I

    .line 684
    if-ltz p1, :cond_b

    const/4 v0, 0x5

    if-gt p1, v0, :cond_b

    .line 687
    invoke-static {p0}, Landroid/util/TypedValue;->floatToComplex(F)I

    move-result v0

    or-int/2addr v0, p1

    return v0

    .line 685
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be a valid COMPLEX_UNIT_*: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createComplexDimension(II)I
    .registers 5
    .param p0, "value"    # I
    .param p1, "units"    # I

    .line 663
    if-ltz p1, :cond_b

    const/4 v0, 0x5

    if-gt p1, v0, :cond_b

    .line 666
    invoke-static {p0}, Landroid/util/TypedValue;->intToComplex(I)I

    move-result v0

    or-int/2addr v0, p1

    return v0

    .line 664
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be a valid COMPLEX_UNIT_*: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deriveDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 6
    .param p0, "unitToConvertTo"    # I
    .param p1, "pixelValue"    # F
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .line 466
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_72

    .line 505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unitToConvertTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :pswitch_1d
    iget v1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_24

    .line 500
    return v0

    .line 502
    :cond_24
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v0, p1, v0

    const v1, 0x3d214285

    div-float/2addr v0, v1

    return v0

    .line 493
    :pswitch_2d
    iget v1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_34

    .line 494
    return v0

    .line 496
    :cond_34
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v0, p1, v0

    return v0

    .line 487
    :pswitch_39
    iget v1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_40

    .line 488
    return v0

    .line 490
    :cond_40
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v0, p1, v0

    const v1, 0x3c638e39

    div-float/2addr v0, v1

    return v0

    .line 477
    :pswitch_49
    iget-object v1, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    if-eqz v1, :cond_59

    .line 478
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 479
    .local v0, "dpValue":F
    iget-object v1, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    invoke-virtual {v1, v0}, Landroid/content/res/FontScaleConverter;->convertDpToSp(F)F

    move-result v1

    return v1

    .line 481
    .end local v0    # "dpValue":F
    :cond_59
    iget v1, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_60

    .line 482
    return v0

    .line 484
    :cond_60
    iget v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, p1, v0

    return v0

    .line 471
    :pswitch_65
    iget v1, p2, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_6c

    .line 472
    return v0

    .line 474
    :cond_6c
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    return v0

    .line 468
    :pswitch_71
    return p1

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_71
        :pswitch_65
        :pswitch_49
        :pswitch_39
        :pswitch_2d
        :pswitch_1d
    .end packed-switch
.end method

.method public static floatToComplex(F)I
    .registers 5
    .param p0, "value"    # F

    .line 619
    const/high16 v0, -0x35000000    # -8388608.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_7a

    const v0, 0x4affffff    # 8388607.5f

    cmpl-float v0, p0, v0

    if-gez v0, :cond_7a

    .line 624
    float-to-int v0, p0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 625
    float-to-int v0, p0

    :try_start_15
    invoke-static {v0, v1}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v0

    return v0

    .line 627
    :cond_1a
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 629
    .local v0, "absValue":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_31

    .line 630
    const/high16 v1, 0x4b000000    # 8388608.0f

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v1

    return v1

    .line 633
    :cond_31
    const/high16 v2, 0x43800000    # 256.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_44

    .line 634
    const/high16 v1, 0x47000000    # 32768.0f

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v1

    return v1

    .line 637
    :cond_44
    const/high16 v2, 0x47800000    # 65536.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_57

    .line 638
    const/high16 v1, 0x43000000    # 128.0f

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v1

    return v1

    .line 641
    :cond_57
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2, v1}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v1
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_5f} :catch_60

    return v1

    .line 642
    .end local v0    # "absValue":F
    :catch_60
    move-exception v0

    .line 644
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert value to complex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 620
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of the value is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUnitFromComplexDimension(I)I
    .registers 2
    .param p0, "complexDimension"    # I

    .line 402
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static intToComplex(I)I
    .registers 4
    .param p0, "value"    # I

    .line 600
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    if-lt p0, v0, :cond_e

    const/high16 v0, 0x800000

    if-ge p0, v0, :cond_e

    .line 603
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v0

    return v0

    .line 601
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of the value is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final coerceToString()Ljava/lang/CharSequence;
    .registers 3

    .line 745
    iget v0, p0, Landroid/util/TypedValue;->type:I

    .line 746
    .local v0, "t":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 747
    iget-object v1, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    return-object v1

    .line 749
    :cond_8
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, v1}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getComplexUnit()I
    .registers 2

    .line 389
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/util/TypedValue;->getUnitFromComplexDimension(I)I

    move-result v0

    return v0
.end method

.method public getDimension(Landroid/util/DisplayMetrics;)F
    .registers 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 563
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public final getFloat()F
    .registers 2

    .line 252
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getFraction(FF)F
    .registers 4
    .param p1, "base"    # F
    .param p2, "pbase"    # F

    .line 732
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    return v0
.end method

.method public isColorType()Z
    .registers 3

    .line 271
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_c

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public setTo(Landroid/util/TypedValue;)V
    .registers 3
    .param p1, "other"    # Landroid/util/TypedValue;

    .line 803
    iget v0, p1, Landroid/util/TypedValue;->type:I

    iput v0, p0, Landroid/util/TypedValue;->type:I

    .line 804
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 805
    iget v0, p1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Landroid/util/TypedValue;->data:I

    .line 806
    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    iput v0, p0, Landroid/util/TypedValue;->assetCookie:I

    .line 807
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    iput v0, p0, Landroid/util/TypedValue;->resourceId:I

    .line 808
    iget v0, p1, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/util/TypedValue;->density:I

    .line 809
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TypedValue{t=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    const-string v1, "/d=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3e

    .line 817
    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v2, :cond_33

    goto :goto_35

    :cond_33
    const-string v2, "<null>"

    :goto_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :cond_3e
    iget v1, p0, Landroid/util/TypedValue;->assetCookie:I

    if-eqz v1, :cond_4d

    .line 820
    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 822
    :cond_4d
    iget v1, p0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_60

    .line 823
    const-string v1, " r=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_60
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
