.class public Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;
.super Ljava/lang/Object;
.source "SineInOut60.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 9
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_18

    new-array v2, v0, [F

    fill-array-data v2, :array_22

    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    filled-new-array {v1, v2, v0}, [[F

    move-result-object v0

    sput-object v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;->segments:[[F

    return-void

    nop

    :array_18
    .array-data 4
        0x0
        0x3c23d70a    # 0.01f
        0x3ebd70a4    # 0.37f
    .end array-data

    :array_22
    .array-data 4
        0x3ebd70a4    # 0.37f
        0x3f3851ec    # 0.72f
        0x3f6353f8    # 0.888f
    .end array-data

    :array_2c
    .array-data 4
        0x3f6353f8    # 0.888f
        0x3f7ff972    # 0.9999f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 13
    .param p1, "input"    # F

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, p1, v0

    .line 21
    .local v1, "_loc_5":F
    sget-object v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;->segments:[[F

    array-length v3, v2

    .line 22
    .local v3, "_loc_6":I
    int-to-float v4, v3

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 23
    .local v4, "_loc_9":I
    array-length v5, v2

    const/4 v6, 0x1

    if-lt v4, v5, :cond_16

    array-length v5, v2

    add-int/lit8 v4, v5, -0x1

    .line 25
    :cond_16
    int-to-float v5, v4

    int-to-float v7, v3

    div-float v7, v0, v7

    mul-float/2addr v5, v7

    sub-float v5, v1, v5

    int-to-float v7, v3

    mul-float/2addr v5, v7

    .line 26
    .local v5, "_loc_7":F
    aget-object v2, v2, v4

    .line 27
    .local v2, "_loc_8":[F
    const/4 v7, 0x0

    aget v8, v2, v7

    const/high16 v9, 0x40000000    # 2.0f

    sub-float v10, v0, v5

    mul-float/2addr v10, v9

    aget v6, v2, v6

    aget v9, v2, v7

    sub-float/2addr v6, v9

    mul-float/2addr v10, v6

    const/4 v6, 0x2

    aget v6, v2, v6

    aget v7, v2, v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, v5

    add-float/2addr v10, v6

    mul-float/2addr v10, v5

    add-float/2addr v8, v10

    mul-float/2addr v8, v0

    const/4 v0, 0x0

    add-float/2addr v8, v0

    .line 29
    .local v8, "ret":F
    return v8
.end method
