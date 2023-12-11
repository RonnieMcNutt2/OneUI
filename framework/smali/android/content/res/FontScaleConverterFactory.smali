.class public Landroid/content/res/FontScaleConverterFactory;
.super Ljava/lang/Object;
.source "FontScaleConverterFactory.java"


# static fields
.field static final LOOKUP_TABLES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/res/FontScaleConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_KEY_MULTIPLIER:F = 100.0f

.field private static sMinScaleBeforeCurvesApplied:F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/FontScaleConverterFactory;->LOOKUP_TABLES:Landroid/util/SparseArray;

    .line 37
    const v1, 0x3f866666    # 1.05f

    sput v1, Landroid/content/res/FontScaleConverterFactory;->sMinScaleBeforeCurvesApplied:F

    .line 42
    new-instance v1, Landroid/content/res/FontScaleConverter;

    const/16 v2, 0x9

    new-array v3, v2, [F

    fill-array-data v3, :array_94

    new-array v4, v2, [F

    fill-array-data v4, :array_aa

    invoke-direct {v1, v3, v4}, Landroid/content/res/FontScaleConverter;-><init>([F[F)V

    const v3, 0x3f933333    # 1.15f

    invoke-static {v3, v1}, Landroid/content/res/FontScaleConverterFactory;->put(FLandroid/content/res/FontScaleConverter;)V

    .line 51
    new-instance v1, Landroid/content/res/FontScaleConverter;

    new-array v3, v2, [F

    fill-array-data v3, :array_c0

    new-array v4, v2, [F

    fill-array-data v4, :array_d6

    invoke-direct {v1, v3, v4}, Landroid/content/res/FontScaleConverter;-><init>([F[F)V

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v3, v1}, Landroid/content/res/FontScaleConverterFactory;->put(FLandroid/content/res/FontScaleConverter;)V

    .line 60
    new-instance v1, Landroid/content/res/FontScaleConverter;

    new-array v3, v2, [F

    fill-array-data v3, :array_ec

    new-array v4, v2, [F

    fill-array-data v4, :array_102

    invoke-direct {v1, v3, v4}, Landroid/content/res/FontScaleConverter;-><init>([F[F)V

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3, v1}, Landroid/content/res/FontScaleConverterFactory;->put(FLandroid/content/res/FontScaleConverter;)V

    .line 69
    new-instance v1, Landroid/content/res/FontScaleConverter;

    new-array v3, v2, [F

    fill-array-data v3, :array_118

    new-array v4, v2, [F

    fill-array-data v4, :array_12e

    invoke-direct {v1, v3, v4}, Landroid/content/res/FontScaleConverter;-><init>([F[F)V

    const v3, 0x3fe66666    # 1.8f

    invoke-static {v3, v1}, Landroid/content/res/FontScaleConverterFactory;->put(FLandroid/content/res/FontScaleConverter;)V

    .line 78
    new-instance v1, Landroid/content/res/FontScaleConverter;

    new-array v3, v2, [F

    fill-array-data v3, :array_144

    new-array v2, v2, [F

    fill-array-data v2, :array_15a

    invoke-direct {v1, v3, v2}, Landroid/content/res/FontScaleConverter;-><init>([F[F)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Landroid/content/res/FontScaleConverterFactory;->put(FLandroid/content/res/FontScaleConverter;)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/FontScaleConverterFactory;->getScaleFromKey(I)F

    move-result v0

    const v1, 0x3ca3d70a    # 0.02f

    sub-float/2addr v0, v1

    sput v0, Landroid/content/res/FontScaleConverterFactory;->sMinScaleBeforeCurvesApplied:F

    .line 88
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_8b

    .line 93
    return-void

    .line 89
    :cond_8b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You should only apply non-linear scaling to font scales > 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_94
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_aa
    .array-data 4
        0x41133333    # 9.2f
        0x41380000    # 11.5f
        0x415ccccd    # 13.8f
        0x41833333    # 16.4f
        0x419e6666    # 19.8f
        0x41ae6666    # 21.8f
        0x41c9999a    # 25.2f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_c0
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_d6
    .array-data 4
        0x41266666    # 10.4f
        0x41500000    # 13.0f
        0x4179999a    # 15.6f
        0x41966666    # 18.8f
        0x41accccd    # 21.6f
        0x41bccccd    # 23.6f
        0x41d33333    # 26.4f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_ec
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_102
    .array-data 4
        0x41400000    # 12.0f
        0x41700000    # 15.0f
        0x41900000    # 18.0f
        0x41b00000    # 22.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41e00000    # 28.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_118
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_12e
    .array-data 4
        0x41666666    # 14.4f
        0x41900000    # 18.0f
        0x41accccd    # 21.6f
        0x41c33333    # 24.4f
        0x41dccccd    # 27.6f
        0x41f66666    # 30.8f
        0x42033333    # 32.8f
        0x420b3333    # 34.8f
        0x42c80000    # 100.0f
    .end array-data

    :array_144
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_15a
    .array-data 4
        0x41800000    # 16.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41f00000    # 30.0f
        0x42080000    # 34.0f
        0x42100000    # 36.0f
        0x42180000    # 38.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInterpolatedTableBetween(Landroid/content/res/FontScaleConverter;Landroid/content/res/FontScaleConverter;F)Landroid/content/res/FontScaleConverter;
    .registers 10
    .param p0, "start"    # Landroid/content/res/FontScaleConverter;
    .param p1, "end"    # Landroid/content/res/FontScaleConverter;
    .param p2, "interpolationPoint"    # F

    .line 168
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_28

    .line 169
    .local v0, "commonSpSizes":[F
    array-length v1, v0

    new-array v1, v1, [F

    .line 171
    .local v1, "dpInterpolated":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_21

    .line 172
    aget v3, v0, v2

    .line 173
    .local v3, "sp":F
    invoke-virtual {p0, v3}, Landroid/content/res/FontScaleConverter;->convertSpToDp(F)F

    move-result v4

    .line 174
    .local v4, "startDp":F
    invoke-virtual {p1, v3}, Landroid/content/res/FontScaleConverter;->convertSpToDp(F)F

    move-result v5

    .line 175
    .local v5, "endDp":F
    invoke-static {v4, v5, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v6

    aput v6, v1, v2

    .line 171
    .end local v3    # "sp":F
    .end local v4    # "startDp":F
    .end local v5    # "endDp":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 178
    .end local v2    # "i":I
    :cond_21
    new-instance v2, Landroid/content/res/FontScaleConverter;

    invoke-direct {v2, v0, v1}, Landroid/content/res/FontScaleConverter;-><init>([F[F)V

    return-object v2

    nop

    :array_28
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public static forScale(F)Landroid/content/res/FontScaleConverter;
    .registers 10
    .param p0, "fontScale"    # F

    .line 121
    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->isNonLinearFontScalingActive(F)Z

    move-result v0

    if-nez v0, :cond_8

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_8
    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->get(F)Landroid/content/res/FontScaleConverter;

    move-result-object v0

    .line 126
    .local v0, "lookupTable":Landroid/content/res/FontScaleConverter;
    if-eqz v0, :cond_f

    .line 127
    return-object v0

    .line 131
    :cond_f
    sget-object v1, Landroid/content/res/FontScaleConverterFactory;->LOOKUP_TABLES:Landroid/util/SparseArray;

    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->getKey(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 132
    .local v2, "index":I
    if-ltz v2, :cond_22

    .line 134
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/FontScaleConverter;

    return-object v1

    .line 137
    :cond_22
    add-int/lit8 v3, v2, 0x1

    neg-int v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 138
    .local v3, "lowerIndex":I
    add-int/lit8 v5, v3, 0x1

    .line 139
    .local v5, "higherIndex":I
    const/high16 v6, 0x3f800000    # 1.0f

    if-ltz v3, :cond_5b

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lt v5, v7, :cond_34

    goto :goto_5b

    .line 146
    :cond_34
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/FontScaleConverterFactory;->getScaleFromKey(I)F

    move-result v4

    .line 147
    .local v4, "startScale":F
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/FontScaleConverterFactory;->getScaleFromKey(I)F

    move-result v7

    .line 148
    .local v7, "endScale":F
    const/4 v8, 0x0

    invoke-static {v8, v6, v4, v7, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v6

    .line 155
    .local v6, "interpolationPoint":F
    nop

    .line 156
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/FontScaleConverter;

    .line 157
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/FontScaleConverter;

    .line 155
    invoke-static {v8, v1, v6}, Landroid/content/res/FontScaleConverterFactory;->createInterpolatedTableBetween(Landroid/content/res/FontScaleConverter;Landroid/content/res/FontScaleConverter;F)Landroid/content/res/FontScaleConverter;

    move-result-object v1

    return-object v1

    .line 144
    .end local v4    # "startScale":F
    .end local v6    # "interpolationPoint":F
    .end local v7    # "endScale":F
    :cond_5b
    :goto_5b
    new-instance v1, Landroid/content/res/FontScaleConverter;

    new-array v7, v4, [F

    const/4 v8, 0x0

    aput v6, v7, v8

    new-array v4, v4, [F

    aput p0, v4, v8

    invoke-direct {v1, v7, v4}, Landroid/content/res/FontScaleConverter;-><init>([F[F)V

    return-object v1
.end method

.method private static get(F)Landroid/content/res/FontScaleConverter;
    .registers 3
    .param p0, "scaleKey"    # F

    .line 195
    sget-object v0, Landroid/content/res/FontScaleConverterFactory;->LOOKUP_TABLES:Landroid/util/SparseArray;

    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->getKey(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/FontScaleConverter;

    return-object v0
.end method

.method private static getKey(F)I
    .registers 2
    .param p0, "fontScale"    # F

    .line 182
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static getScaleFromKey(I)F
    .registers 3
    .param p0, "key"    # I

    .line 186
    int-to-float v0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static isNonLinearFontScalingActive(F)Z
    .registers 2
    .param p0, "fontScale"    # F

    .line 107
    sget v0, Landroid/content/res/FontScaleConverterFactory;->sMinScaleBeforeCurvesApplied:F

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static put(FLandroid/content/res/FontScaleConverter;)V
    .registers 4
    .param p0, "scaleKey"    # F
    .param p1, "fontScaleConverter"    # Landroid/content/res/FontScaleConverter;

    .line 190
    sget-object v0, Landroid/content/res/FontScaleConverterFactory;->LOOKUP_TABLES:Landroid/util/SparseArray;

    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->getKey(F)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    return-void
.end method
