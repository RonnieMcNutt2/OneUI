.class public Lcom/samsung/android/core/CompatSandbox;
.super Ljava/lang/Object;
.source "CompatSandbox.java"


# static fields
.field public static final OFFSET_DEFAULT:F = 0.0f

.field public static final SANDBOX_DISABLED:I = 0x1

.field public static final SANDBOX_DISPLAY:I = 0x2

.field public static final SANDBOX_MOCK_FULL_SCREEN:I = 0x10

.field public static final SANDBOX_MOTION_EVENT:I = 0x8

.field public static final SANDBOX_UNDEFINED:I = 0x0

.field public static final SANDBOX_VIEW_BOUNDS:I = 0x4

.field public static final SCALE_DEFAULT:F = 1.0f

.field public static final SCALE_UNDEFINED:F = -1.0f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompatWindowingMode(Landroid/content/res/Configuration;I)I
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "defaultValue"    # I

    .line 68
    invoke-static {p0}, Lcom/samsung/android/core/CompatSandbox;->isMockFullScreenSandboxingEnabled(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 69
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_8
    return p1
.end method

.method private static hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "mask"    # I

    .line 47
    if-eqz p0, :cond_d

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getCompatSandboxFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static isDisplaySandboxingEnabled(Landroid/content/res/Configuration;)Z
    .registers 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 51
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/samsung/android/core/CompatSandbox;->hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z

    move-result v0

    return v0
.end method

.method public static isMockFullScreenSandboxingEnabled(Landroid/content/res/Configuration;)Z
    .registers 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 63
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/samsung/android/core/CompatSandbox;->hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z

    move-result v0

    return v0
.end method

.method public static isMotionEventSandboxingEnabled(Landroid/content/res/Configuration;)Z
    .registers 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 59
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/samsung/android/core/CompatSandbox;->hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z

    move-result v0

    return v0
.end method

.method public static isViewBoundsSandboxingEnabled(Landroid/content/res/Configuration;)Z
    .registers 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 55
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/samsung/android/core/CompatSandbox;->hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z

    move-result v0

    return v0
.end method
