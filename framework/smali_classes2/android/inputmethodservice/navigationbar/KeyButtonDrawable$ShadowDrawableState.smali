.class Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "KeyButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowDrawableState"
.end annotation


# instance fields
.field mAlpha:I

.field mBaseHeight:I

.field mBaseWidth:I

.field mChangingConfigurations:I

.field mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

.field final mDarkColor:I

.field mDarkIntensity:F

.field mHorizontalFlip:Z

.field mIsHardwareBitmap:Z

.field mLastDrawnIcon:Landroid/graphics/Bitmap;

.field mLastDrawnShadow:Landroid/graphics/Bitmap;

.field final mLightColor:I

.field final mOvalBackgroundColor:Landroid/graphics/Color;

.field mRotateDegrees:F

.field mShadowColor:I

.field mShadowOffsetX:I

.field mShadowOffsetY:I

.field mShadowSize:I

.field final mSupportsAnimation:Z

.field mTranslationX:F

.field mTranslationY:F


# direct methods
.method constructor <init>(IIZZLandroid/graphics/Color;)V
    .registers 7
    .param p1, "lightColor"    # I
    .param p2, "darkColor"    # I
    .param p3, "animated"    # Z
    .param p4, "horizontalFlip"    # Z
    .param p5, "ovalBackgroundColor"    # Landroid/graphics/Color;

    .line 437
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 438
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    .line 439
    iput p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkColor:I

    .line 440
    iput-boolean p3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mSupportsAnimation:Z

    .line 441
    const/16 v0, 0xff

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    .line 442
    iput-boolean p4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    .line 443
    iput-object p5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    .line 444
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .line 458
    const/4 v0, 0x1

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .line 453
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 448
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable-IA;)V

    return-object v0
.end method
