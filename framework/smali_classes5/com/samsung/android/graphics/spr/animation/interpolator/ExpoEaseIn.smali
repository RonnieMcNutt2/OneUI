.class public Lcom/samsung/android/graphics/spr/animation/interpolator/ExpoEaseIn;
.super Ljava/lang/Object;
.source "ExpoEaseIn.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private in(F)F
    .registers 6
    .param p1, "t"    # F

    .line 53
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    const-wide/16 v0, 0x0

    goto :goto_16

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_16
    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "t"    # F

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/ExpoEaseIn;->in(F)F

    move-result v0

    return v0
.end method
