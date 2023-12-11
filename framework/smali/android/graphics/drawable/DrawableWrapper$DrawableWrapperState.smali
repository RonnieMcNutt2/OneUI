.class abstract Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/DrawableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DrawableWrapperState"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field mDensity:I

.field mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

.field mSrcDensityOverride:I

.field private mThemeAttrs:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)[I
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mThemeAttrs:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;[I)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mThemeAttrs:[I

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "orig"    # Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 495
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 483
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDensity:I

    .line 491
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mSrcDensityOverride:I

    .line 496
    if-eqz p1, :cond_1c

    .line 497
    iget-object v1, p1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mThemeAttrs:[I

    iput-object v1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mThemeAttrs:[I

    .line 498
    iget v1, p1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    iput v1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    .line 499
    iget-object v1, p1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 500
    iget v1, p1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mSrcDensityOverride:I

    iput v1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mSrcDensityOverride:I

    .line 504
    :cond_1c
    if-eqz p2, :cond_25

    .line 505
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .local v1, "density":I
    goto :goto_2b

    .line 506
    .end local v1    # "density":I
    :cond_25
    if-eqz p1, :cond_2a

    .line 507
    iget v1, p1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDensity:I

    .restart local v1    # "density":I
    goto :goto_2b

    .line 509
    .end local v1    # "density":I
    :cond_2a
    const/4 v1, 0x0

    .line 512
    .restart local v1    # "density":I
    :goto_2b
    if-nez v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    iput v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDensity:I

    .line 513
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .line 548
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mThemeAttrs:[I

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_e

    .line 549
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_17

    .line 550
    :cond_e
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 548
    :goto_18
    return v0
.end method

.method public canConstantState()Z
    .registers 2

    .line 568
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    .line 563
    iget v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    .line 564
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    or-int/2addr v0, v1

    .line 563
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method onDensityChanged(II)V
    .registers 3
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 544
    return-void
.end method

.method public final setDensity(I)V
    .registers 3
    .param p1, "targetDensity"    # I

    .line 525
    iget v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDensity:I

    if-eq v0, p1, :cond_b

    .line 526
    iget v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDensity:I

    .line 527
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDensity:I

    .line 529
    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->onDensityChanged(II)V

    .line 531
    .end local v0    # "sourceDensity":I
    :cond_b
    return-void
.end method
