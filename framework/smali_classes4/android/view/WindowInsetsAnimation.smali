.class public final Landroid/view/WindowInsetsAnimation;
.super Ljava/lang/Object;
.source "WindowInsetsAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsetsAnimation$Callback;,
        Landroid/view/WindowInsetsAnimation$Bounds;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private final mDurationMillis:J

.field private mFraction:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mTypeMask:I


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .registers 5
    .param p1, "typeMask"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "durationMillis"    # J

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mTypeMask:I

    .line 59
    iput-object p2, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 60
    iput-wide p3, p0, Landroid/view/WindowInsetsAnimation;->mDurationMillis:J

    .line 61
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    .line 166
    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mAlpha:F

    return v0
.end method

.method public getDurationMillis()J
    .registers 3

    .line 139
    iget-wide v0, p0, Landroid/view/WindowInsetsAnimation;->mDurationMillis:J

    return-wide v0
.end method

.method public getFraction()F
    .registers 2

    .line 89
    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return v0
.end method

.method public getInterpolatedFraction()F
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_b

    .line 117
    iget v1, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0

    .line 119
    :cond_b
    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getTypeMask()I
    .registers 2

    .line 68
    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mTypeMask:I

    return v0
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .line 181
    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mAlpha:F

    .line 182
    return-void
.end method

.method public setFraction(F)V
    .registers 2
    .param p1, "fraction"    # F

    .line 156
    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    .line 157
    return-void
.end method
