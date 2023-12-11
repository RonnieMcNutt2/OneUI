.class public abstract Landroid/widget/CompoundButton;
.super Landroid/widget/Button;
.source "CompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CompoundButton$OnCheckedChangeListener;,
        Landroid/widget/CompoundButton$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBroadcasting:Z

.field private mButtonBlendMode:Landroid/graphics/BlendMode;

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonTintList:Landroid/content/res/ColorStateList;

.field private mChecked:Z

.field private mCheckedFromResource:Z

.field private mCustomStateDescription:Ljava/lang/CharSequence;

.field private mHasButtonBlendMode:Z

.field private mHasButtonTint:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mResizeCompoundButton:Z

.field private mResizeCompoundButtonHeight:I

.field private mResizeCompoundButtonWidth:I


# direct methods
.method public static synthetic $r8$lambda$I6kRWBo36V-8P6bDaw7Qm15p_Ls(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;->lambda$setButtonDrawableAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LMZE0CcHB-Lvr62o7G5F9P59ml0(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;->lambda$setButtonIconAsync$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 69
    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/CompoundButton;->LOG_TAG:Ljava/lang/String;

    .line 98
    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 78
    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    .line 80
    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    .line 83
    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mResizeCompoundButton:Z

    .line 94
    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    .line 96
    iput-object v0, p0, Landroid/widget/CompoundButton;->mCustomStateDescription:Ljava/lang/CharSequence;

    .line 117
    sget-object v0, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->CompoundButton:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/widget/CompoundButton;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 122
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 123
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2e

    .line 124
    invoke-virtual {p0, v3}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_2e
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 128
    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v5, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    .line 130
    iput-boolean v2, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    .line 133
    :cond_44
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 134
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 135
    iput-boolean v2, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    .line 138
    :cond_53
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 140
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 141
    iput-boolean v2, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    .line 146
    return-void
.end method

.method private applyButtonTint()V
    .registers 3

    .line 470
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    if-eqz v1, :cond_37

    .line 471
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 473
    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    if-eqz v1, :cond_1b

    .line 474
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 477
    :cond_1b
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    if-eqz v0, :cond_26

    .line 478
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 483
    :cond_26
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 484
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 487
    :cond_37
    return-void
.end method

.method private synthetic lambda$setButtonDrawableAsync$0(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 307
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$setButtonIconAsync$1(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "button"    # Landroid/graphics/drawable/Drawable;

    .line 374
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 5
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 744
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 746
    :cond_7
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 747
    sget-object v0, Landroid/widget/CompoundButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void

    .line 751
    :cond_2a
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getToggleValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 752
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 640
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->drawableHotspotChanged(FF)V

    .line 642
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 643
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 645
    :cond_a
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 629
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 631
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 632
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 633
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 634
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 636
    :cond_1a
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 726
    invoke-super {p0, p1}, Landroid/widget/Button;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 727
    const-string v0, "checked"

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 728
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 491
    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillType()I
    .registers 2

    .line 756
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 761
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forToggle(Z)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 357
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getButtonStateDescription()Ljava/lang/CharSequence;
    .registers 3

    .line 178
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 179
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040290

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_12
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104085b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getButtonTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 466
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 453
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    .line 454
    :cond_9
    const/4 v0, 0x0

    .line 453
    :goto_a
    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .registers 4

    .line 511
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    .line 512
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 513
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 514
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1b

    .line 516
    iget-boolean v2, p0, Landroid/widget/CompoundButton;->mResizeCompoundButton:Z

    if-eqz v2, :cond_16

    .line 517
    iget v2, p0, Landroid/widget/CompoundButton;->mResizeCompoundButtonWidth:I

    add-int/2addr v0, v2

    goto :goto_1b

    .line 520
    :cond_16
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 524
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1b
    :goto_1b
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    .line 529
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    .line 530
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 531
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 532
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1b

    .line 534
    iget-boolean v2, p0, Landroid/widget/CompoundButton;->mResizeCompoundButton:Z

    if-eqz v2, :cond_16

    .line 535
    iget v2, p0, Landroid/widget/CompoundButton;->mResizeCompoundButtonWidth:I

    add-int/2addr v0, v2

    goto :goto_1b

    .line 538
    :cond_16
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 542
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1b
    :goto_1b
    return v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .registers 3

    .line 550
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 551
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_10

    .line 553
    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mResizeCompoundButton:Z

    if-eqz v1, :cond_b

    .line 554
    iget v1, p0, Landroid/widget/CompoundButton;->mResizeCompoundButtonWidth:I

    return v1

    .line 556
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    return v1

    .line 559
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public isChecked()Z
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "isCheckedAsync"
    .end annotation

    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 172
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 654
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 655
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 656
    :cond_a
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 620
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 621
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 622
    sget-object v1, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    .line 624
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 564
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 565
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_55

    .line 566
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 571
    .local v1, "verticalGravity":I
    iget-boolean v2, p0, Landroid/widget/CompoundButton;->mResizeCompoundButton:Z

    if-eqz v2, :cond_13

    .line 572
    iget v2, p0, Landroid/widget/CompoundButton;->mResizeCompoundButtonHeight:I

    .line 573
    .local v2, "drawableHeight":I
    iget v3, p0, Landroid/widget/CompoundButton;->mResizeCompoundButtonWidth:I

    .local v3, "drawableWidth":I
    goto :goto_1b

    .line 576
    .end local v2    # "drawableHeight":I
    .end local v3    # "drawableWidth":I
    :cond_13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 577
    .restart local v2    # "drawableHeight":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 581
    .restart local v3    # "drawableWidth":I
    :goto_1b
    sparse-switch v1, :sswitch_data_76

    .line 589
    const/4 v4, 0x0

    .local v4, "top":I
    goto :goto_2e

    .line 583
    .end local v4    # "top":I
    :sswitch_20
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    .line 584
    .restart local v4    # "top":I
    goto :goto_2e

    .line 586
    .end local v4    # "top":I
    :sswitch_26
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 587
    .restart local v4    # "top":I
    nop

    .line 591
    :goto_2e
    add-int v5, v4, v2

    .line 592
    .local v5, "bottom":I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    goto :goto_3d

    :cond_3c
    const/4 v6, 0x0

    .line 593
    .local v6, "left":I
    :goto_3d
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v7

    goto :goto_49

    :cond_48
    move v7, v3

    .line 595
    .local v7, "right":I
    :goto_49
    invoke-virtual {v0, v6, v4, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 597
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 598
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_55

    .line 599
    invoke-virtual {v8, v6, v4, v7, v5}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 603
    .end local v1    # "verticalGravity":I
    .end local v2    # "drawableHeight":I
    .end local v3    # "drawableWidth":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    :cond_55
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 605
    if-eqz v0, :cond_75

    .line 606
    iget v1, p0, Landroid/widget/CompoundButton;->mScrollX:I

    .line 607
    .local v1, "scrollX":I
    iget v2, p0, Landroid/widget/CompoundButton;->mScrollY:I

    .line 608
    .local v2, "scrollY":I
    if-nez v1, :cond_66

    if-nez v2, :cond_66

    .line 609
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_75

    .line 611
    :cond_66
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 612
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 613
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 616
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_75
    :goto_75
    return-void

    :sswitch_data_76
    .sparse-switch
        0x10 -> :sswitch_26
        0x50 -> :sswitch_20
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 497
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 498
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 499
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 504
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 506
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 507
    return-void
.end method

.method protected onProvideStructure(Landroid/view/ViewStructure;II)V
    .registers 6
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "viewFor"    # I
    .param p3, "flags"    # I

    .line 735
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Button;->onProvideStructure(Landroid/view/ViewStructure;II)V

    .line 737
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 738
    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    .line 740
    :cond_c
    return-void
.end method

.method public onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 343
    invoke-super {p0, p1}, Landroid/widget/Button;->onResolveDrawables(I)V

    .line 344
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 345
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 347
    :cond_a
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 716
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton$SavedState;

    .line 718
    .local v0, "ss":Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {v0}, Landroid/widget/CompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 719
    iget-boolean v1, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 720
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 721
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 706
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 708
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/CompoundButton$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/CompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 710
    .local v1, "ss":Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/CompoundButton$SavedState;->checked:Z

    .line 711
    return-object v1
.end method

.method public performClick()Z
    .registers 3

    .line 155
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    .line 157
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    .line 158
    .local v0, "handled":Z
    if-nez v0, :cond_d

    .line 161
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 164
    :cond_d
    return v0
.end method

.method public setButtonDrawable(I)V
    .registers 3
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setButtonDrawableAsync"
    .end annotation

    .line 296
    if-eqz p1, :cond_b

    .line 297
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_c

    .line 299
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_b
    const/4 v0, 0x0

    .line 301
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 317
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_41

    .line 318
    if-eqz v0, :cond_f

    .line 319
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 320
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_f
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 325
    if-eqz p1, :cond_41

    .line 326
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 327
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 328
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 329
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 331
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    move v0, v1

    :goto_34
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 332
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setMinHeight(I)V

    .line 333
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    .line 336
    :cond_41
    return-void
.end method

.method public setButtonDrawableAsync(I)Ljava/lang/Runnable;
    .registers 4
    .param p1, "resId"    # I

    .line 306
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 307
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_c
    new-instance v1, Landroid/widget/CompoundButton$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroid/widget/CompoundButton$$ExternalSyntheticLambda1;-><init>(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public setButtonIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setButtonIconAsync"
    .end annotation

    .line 368
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    return-void
.end method

.method public setButtonIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 373
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 374
    .local v0, "button":Landroid/graphics/drawable/Drawable;
    :goto_c
    new-instance v1, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;-><init>(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public setButtonTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 439
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    .line 442
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    .line 443
    return-void
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 394
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    .line 397
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    .line 398
    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 423
    if-eqz p1, :cond_9

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 424
    return-void
.end method

.method public setChecked(Z)V
    .registers 5
    .param p1, "checked"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setCheckedAsync"
    .end annotation

    .line 221
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_3a

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    .line 223
    iput-boolean p1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    .line 224
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 227
    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    if-eqz v1, :cond_14

    .line 229
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->setDefaultStateDescription()V

    .line 230
    return-void

    .line 233
    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    .line 234
    iget-object v1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_20

    .line 235
    iget-boolean v2, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v1, p0, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 237
    :cond_20
    iget-object v1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_29

    .line 238
    iget-boolean v2, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v1, p0, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 240
    :cond_29
    iget-object v1, p0, Landroid/widget/CompoundButton;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    .line 241
    .local v1, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v1, :cond_38

    .line 242
    invoke-virtual {v1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 245
    :cond_38
    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    .line 248
    .end local v1    # "afm":Landroid/view/autofill/AutofillManager;
    :cond_3a
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->setDefaultStateDescription()V

    .line 249
    return-void
.end method

.method protected setDefaultStateDescription()V
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/widget/CompoundButton;->mCustomStateDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_b

    .line 209
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 211
    :cond_b
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 258
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 259
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 269
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 270
    return-void
.end method

.method public setStateDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 198
    iput-object p1, p0, Landroid/widget/CompoundButton;->mCustomStateDescription:Ljava/lang/CharSequence;

    .line 199
    if-nez p1, :cond_8

    .line 200
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->setDefaultStateDescription()V

    goto :goto_b

    .line 202
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Button;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 204
    :goto_b
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 150
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 151
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 649
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
