.class final Landroid/graphics/drawable/ColorDrawable$ColorState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ColorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorState"
.end annotation


# instance fields
.field mBaseColor:I

.field mBlendMode:Landroid/graphics/BlendMode;

.field mChangingConfigurations:I

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mUseColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 357
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    .line 355
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 359
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V
    .registers 3
    .param p1, "state"    # Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 361
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    .line 355
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 362
    iget-object v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    .line 363
    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 364
    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    .line 365
    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    .line 366
    iget-object v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    .line 367
    iget-object v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBlendMode:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 368
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_f

    .line 373
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 372
    :goto_12
    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    .line 388
    iget v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    .line 389
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    or-int/2addr v0, v1

    .line 388
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 378
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;Landroid/graphics/drawable/ColorDrawable-IA;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 383
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;Landroid/graphics/drawable/ColorDrawable-IA;)V

    return-object v0
.end method
