.class public Lcom/samsung/android/wallpaper/colortheme/ColorPalette;
.super Ljava/lang/Object;
.source "ColorPalette.java"


# static fields
.field public static final BOTTOM_DEFAULT:I = 0x4

.field public static final BOTTOM_REVERSED:I = 0x8

.field public static final INDEX_ACCENT1:I = 0x0

.field public static final LUMINANCE_NUM:I = 0xd

.field public static final MID_DEFAULT:I = 0xa

.field public static final MID_REVERSED:I = 0x3

.field public static final NIO_TEXT_DEFAULT:I = 0xa

.field public static final NIO_TEXT_REVERSED:I = 0x3

.field public static final SATURATION_NUM:I = 0x5

.field public static final TOP_DEFAULT:I = 0x3

.field public static final TOP_REVERSED:I = 0xa

.field public static guideIntensity:[F


# instance fields
.field private final table:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/16 v0, 0xd

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->guideIntensity:[F

    return-void

    :array_a
    .array-data 4
        0x42c80000    # 100.0f
        0x42c60000    # 99.0f
        0x42be0000    # 95.0f
        0x42b40000    # 90.0f
        0x42a00000    # 80.0f
        0x428c0000    # 70.0f
        0x42700000    # 60.0f
        0x42480000    # 50.0f
        0x42200000    # 40.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
        0x41200000    # 10.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;)V
    .registers 19
    .param p1, "colorScheme"    # Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;

    .line 38
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v1, 0x5

    const/16 v2, 0xd

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getAccent1()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    .line 40
    .local v2, "a1":[I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getAccent2()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    .line 41
    .local v3, "a2":[I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getAccent3()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    .line 42
    .local v4, "a3":[I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getNeutral1()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    .line 43
    .local v5, "n1":[I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getNeutral2()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v6

    .line 45
    .local v6, "n2":[I
    const/4 v7, 0x0

    aget-object v8, v1, v7

    const/4 v9, 0x1

    aget-object v10, v1, v9

    const/4 v11, 0x2

    aget-object v12, v1, v11

    const/4 v13, 0x3

    aget-object v14, v1, v13

    const/4 v15, 0x4

    aget-object v1, v1, v15

    const/16 v16, -0x1

    aput v16, v1, v7

    aput v16, v14, v7

    aput v16, v12, v7

    aput v16, v10, v7

    aput v16, v8, v7

    .line 47
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9b
    const/16 v8, 0xc

    if-ge v1, v8, :cond_cc

    .line 48
    iget-object v8, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    aget-object v10, v8, v7

    add-int/lit8 v12, v1, 0x1

    aget v14, v2, v1

    aput v14, v10, v12

    .line 49
    aget-object v10, v8, v9

    add-int/lit8 v12, v1, 0x1

    aget v14, v3, v1

    aput v14, v10, v12

    .line 50
    aget-object v10, v8, v11

    add-int/lit8 v12, v1, 0x1

    aget v14, v4, v1

    aput v14, v10, v12

    .line 51
    aget-object v10, v8, v13

    add-int/lit8 v12, v1, 0x1

    aget v14, v5, v1

    aput v14, v10, v12

    .line 52
    aget-object v8, v8, v15

    add-int/lit8 v10, v1, 0x1

    aget v12, v6, v1

    aput v12, v8, v10

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 54
    .end local v1    # "i":I
    :cond_cc
    return-void
.end method

.method public constructor <init>([F[F[F[F[F)V
    .registers 11
    .param p1, "accent1"    # [F
    .param p2, "accent2"    # [F
    .param p3, "accent3"    # [F
    .param p4, "neutral1"    # [F
    .param p5, "neutral2"    # [F

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x5

    const/16 v1, 0xd

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    .line 31
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-direct {p0, v1, v3, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->generateTable(FFI)V

    .line 32
    aget v1, p2, v0

    aget v3, p2, v2

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->generateTable(FFI)V

    .line 33
    aget v1, p3, v0

    aget v3, p3, v2

    const/4 v4, 0x2

    invoke-direct {p0, v1, v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->generateTable(FFI)V

    .line 34
    aget v1, p4, v0

    aget v3, p4, v2

    const/4 v4, 0x3

    invoke-direct {p0, v1, v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->generateTable(FFI)V

    .line 35
    aget v0, p5, v0

    aget v1, p5, v2

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->generateTable(FFI)V

    .line 36
    return-void
.end method

.method private generateTable(FFI)V
    .registers 10
    .param p1, "h"    # F
    .param p2, "s"    # F
    .param p3, "idx"    # I

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    .local v0, "lVal":F
    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 81
    .local v1, "hsl":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    const/16 v4, 0xd

    if-ge v2, v4, :cond_2b

    .line 82
    sget-object v4, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->guideIntensity:[F

    aget v4, v4, v2

    invoke-static {p1, p2, v0, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->searchL(FFFF)F

    move-result v0

    .line 83
    aput v0, v1, v3

    .line 84
    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    aget-object v4, v4, p3

    invoke-static {v1}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v5

    aput v5, v4, v2

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 86
    .end local v2    # "i":I
    :cond_2b
    return-void
.end method

.method public static getnerateSingleTable(FF)[I
    .registers 9
    .param p0, "h"    # F
    .param p1, "s"    # F

    .line 61
    const/16 v0, 0xd

    new-array v1, v0, [I

    .line 63
    .local v1, "singleTable":[I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 65
    .local v2, "lVal":F
    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p0, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v4, v3, v5

    .line 67
    .local v3, "hsl":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v0, :cond_29

    .line 68
    sget-object v6, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->guideIntensity:[F

    aget v6, v6, v4

    invoke-static {p0, p1, v2, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->searchL(FFFF)F

    move-result v2

    .line 69
    aput v2, v3, v5

    .line 70
    invoke-static {v3}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v6

    aput v6, v1, v4

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 73
    .end local v4    # "i":I
    :cond_29
    return-object v1
.end method

.method private static searchL(FFFF)F
    .registers 16
    .param p0, "hue"    # F
    .param p1, "sat"    # F
    .param p2, "startL"    # F
    .param p3, "destIntensity"    # F

    .line 89
    const v0, 0x3a83126f    # 0.001f

    .line 90
    .local v0, "stepSize":F
    const/4 v1, 0x0

    .line 91
    .local v1, "count":I
    const/4 v2, 0x3

    new-array v3, v2, [D

    .line 92
    .local v3, "lab":[D
    :goto_7
    int-to-float v4, v1

    mul-float/2addr v4, v0

    sub-float v4, p2, v4

    float-to-double v4, v4

    const-wide v6, -0x40af9db22d0e5604L    # -0.001

    cmpl-double v4, v4, v6

    const/4 v5, 0x0

    if-ltz v4, :cond_3c

    .line 93
    int-to-float v4, v1

    mul-float/2addr v4, v0

    sub-float v4, p2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 95
    .local v4, "l":F
    new-array v5, v2, [F

    const/4 v6, 0x0

    aput p0, v5, v6

    const/4 v7, 0x1

    aput p1, v5, v7

    const/4 v7, 0x2

    aput v4, v5, v7

    .line 96
    .local v5, "hsl":[F
    invoke-static {v5}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v7

    .line 97
    .local v7, "color":I
    invoke-static {v7, v3}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    .line 99
    aget-wide v8, v3, v6

    float-to-double v10, p3

    cmpg-double v6, v8, v10

    if-gtz v6, :cond_38

    .line 100
    return v4

    .line 101
    :cond_38
    nop

    .end local v4    # "l":F
    .end local v5    # "hsl":[F
    .end local v7    # "color":I
    add-int/lit8 v1, v1, 0x1

    .line 102
    goto :goto_7

    .line 103
    :cond_3c
    return v5
.end method


# virtual methods
.method public getTable()[[I
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    return-object v0
.end method
