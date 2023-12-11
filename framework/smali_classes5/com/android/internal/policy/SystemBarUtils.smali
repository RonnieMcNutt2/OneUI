.class public final Lcom/android/internal/policy/SystemBarUtils;
.super Ljava/lang/Object;
.source "SystemBarUtils.java"


# static fields
.field private static ROTATION_LANDSCAPE:I

.field private static ROTATION_SEASCAPE:I

.field private static STATUS_LAYOUT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/SystemBarUtils;->STATUS_LAYOUT:Z

    .line 37
    sput v0, Lcom/android/internal/policy/SystemBarUtils;->ROTATION_LANDSCAPE:I

    .line 38
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/policy/SystemBarUtils;->ROTATION_SEASCAPE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQuickQsOffsetHeight(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 112
    .local v0, "defaultSize":I
    invoke-static {p0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 114
    .local v1, "statusBarHeight":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method public static getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I
    .registers 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "cutout"    # Landroid/view/DisplayCutout;

    .line 51
    sget-boolean v0, Lcom/android/internal/policy/SystemBarUtils;->STATUS_LAYOUT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 52
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    invoke-static {p0, p1, v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;Z)I

    move-result v0

    return v0

    .line 54
    :cond_14
    const v0, 0x10504f5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    .local v0, "defaultSize":I
    if-nez p1, :cond_1f

    move v2, v1

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    .line 56
    .local v2, "safeInsetTop":I
    :goto_23
    if-nez p1, :cond_26

    goto :goto_2c

    :cond_26
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 59
    .local v1, "waterfallInsetTop":I
    :goto_2c
    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method private static getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;Z)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "cutout"    # Landroid/view/DisplayCutout;
    .param p2, "isLandscape"    # Z

    .line 97
    if-eqz p2, :cond_a

    .line 98
    const v0, 0x10504f6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 100
    :cond_a
    if-nez p1, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    .line 101
    .local v0, "safeInsetTop":I
    :goto_12
    const v1, 0x10504f7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getStatusBarHeightForRotation(Landroid/content/Context;I)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetRot"    # I

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 68
    .local v0, "rotation":I
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 70
    .local v1, "cutout":Landroid/view/DisplayCutout;
    sget-boolean v2, Lcom/android/internal/policy/SystemBarUtils;->STATUS_LAYOUT:Z

    if-eqz v2, :cond_29

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/SystemBarUtils;->ROTATION_LANDSCAPE:I

    if-eq p1, v3, :cond_23

    sget v3, Lcom/android/internal/policy/SystemBarUtils;->ROTATION_SEASCAPE:I

    if-ne p1, v3, :cond_21

    goto :goto_23

    :cond_21
    const/4 v3, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v3, 0x1

    :goto_24
    invoke-static {v2, v1, v3}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;Z)I

    move-result v2

    return v2

    .line 75
    :cond_29
    if-nez v1, :cond_2e

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_36

    :cond_2e
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v2

    .line 76
    .local v2, "insets":Landroid/graphics/Insets;
    :goto_36
    if-nez v1, :cond_3b

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_3f

    :cond_3b
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 78
    .local v3, "waterfallInsets":Landroid/graphics/Insets;
    :goto_3f
    if-eq v0, p1, :cond_63

    .line 79
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v2, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 80
    nop

    .line 81
    invoke-static {v0, p1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v4

    .line 80
    invoke-static {v2, v4}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v2

    .line 83
    :cond_52
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v3, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 84
    nop

    .line 85
    invoke-static {v0, p1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v4

    .line 84
    invoke-static {v3, v4}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v3

    .line 88
    :cond_63
    nop

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10504f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 92
    .local v4, "defaultSize":I
    iget v5, v2, Landroid/graphics/Insets;->top:I

    iget v6, v3, Landroid/graphics/Insets;->top:I

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    return v5
.end method
