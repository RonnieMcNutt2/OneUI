.class public Landroid/widget/CheckedTextView;
.super Landroid/widget/TextView;
.source "CheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CheckedTextView$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBasePadding:I

.field private mCheckMarkBlendMode:Landroid/graphics/BlendMode;

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkGravity:I

.field private mCheckMarkHeight:I

.field private mCheckMarkResource:I

.field private mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mDrawablePadding:I

.field private mHasCheckMarkTint:Z

.field private mHasCheckMarkTintMode:Z

.field private mIsDeviceDefault:Z

.field private mIsSetCheckMark:Z

.field private mNeedRequestlayout:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 94
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 67
    iput-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 69
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 73
    const v1, 0x800005

    iput v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    .line 79
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mIsSetCheckMark:Z

    .line 82
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mIsDeviceDefault:Z

    .line 104
    sget-object v2, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 106
    .local v2, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/CheckedTextView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 109
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 112
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 113
    .local v5, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11200d7

    invoke-virtual {v6, v7, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 114
    iget v6, v5, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_45

    .line 115
    iput-boolean v3, p0, Landroid/widget/CheckedTextView;->mIsDeviceDefault:Z

    .line 117
    :cond_45
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050540

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/CheckedTextView;->mDrawablePadding:I

    .line 119
    if-eqz v4, :cond_5b

    .line 120
    invoke-virtual {p0, v4}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_5b
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 124
    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iget-object v7, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    .line 127
    iput-boolean v3, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 130
    :cond_71
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 131
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 132
    iput-boolean v3, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 135
    :cond_80
    iget-boolean v6, p0, Landroid/widget/CheckedTextView;->mIsDeviceDefault:Z

    const/4 v7, 0x4

    if-eqz v6, :cond_91

    .line 136
    iput-boolean v3, p0, Landroid/widget/CheckedTextView;->mIsSetCheckMark:Z

    .line 137
    const v1, 0x800003

    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    goto :goto_97

    .line 141
    :cond_91
    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    .line 144
    :goto_97
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 145
    .local v0, "checked":Z
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 147
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 150
    return-void
.end method

.method private applyCheckMarkTint()V
    .registers 3

    .line 351
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v1, :cond_37

    .line 352
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 354
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    if-eqz v1, :cond_1b

    .line 355
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 358
    :cond_1b
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_26

    .line 359
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 364
    :cond_26
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 365
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 368
    :cond_37
    return-void
.end method

.method private isCheckMarkAtStart()Z
    .registers 4

    .line 455
    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 456
    .local v0, "gravity":I
    and-int/lit8 v1, v0, 0x7

    .line 457
    .local v1, "hgrav":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method private setBasePadding(Z)V
    .registers 3
    .param p1, "checkmarkAtStart"    # Z

    .line 447
    if-eqz p1, :cond_7

    .line 448
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    goto :goto_b

    .line 450
    :cond_7
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 452
    :goto_b
    return-void
.end method

.method private setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resId"    # I

    .line 214
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 216
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :cond_d
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 221
    if-eqz p1, :cond_4c

    .line 222
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 223
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 224
    sget-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 227
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 228
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 230
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mIsDeviceDefault:Z

    if-eqz v0, :cond_44

    .line 231
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkHeight:I

    .line 235
    :cond_44
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_4e

    .line 237
    :cond_4c
    iput v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 240
    :goto_4e
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    iput p2, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    .line 243
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 247
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resolvePadding()V

    .line 248
    return-void
.end method

.method private updatePadding()V
    .registers 6

    .line 425
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resetPaddingToInitialValues()V

    .line 428
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mIsSetCheckMark:Z

    if-eqz v0, :cond_17

    .line 429
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v1, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/CheckedTextView;->mDrawablePadding:I

    add-int/2addr v0, v1

    goto :goto_16

    :cond_14
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .local v0, "newPadding":I
    :goto_16
    goto :goto_23

    .line 431
    .end local v0    # "newPadding":I
    :cond_17
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v1, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    add-int/2addr v0, v1

    goto :goto_23

    :cond_21
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 433
    .restart local v0    # "newPadding":I
    :goto_23
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_39

    .line 434
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    if-eq v4, v0, :cond_32

    goto :goto_33

    :cond_32
    move v2, v3

    :goto_33
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 435
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    goto :goto_46

    .line 437
    :cond_39
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    if-eq v4, v0, :cond_40

    goto :goto_41

    :cond_40
    move v2, v3

    :goto_41
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 438
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    .line 440
    :goto_46
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    if-eqz v1, :cond_4f

    .line 441
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 442
    iput-boolean v3, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 444
    :cond_4f
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 540
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->drawableHotspotChanged(FF)V

    .line 542
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 543
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 545
    :cond_a
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 529
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 531
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 532
    .local v0, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 533
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 534
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    :cond_1a
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 632
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 633
    const-string/jumbo v0, "text:checked"

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 634
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 549
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 406
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckMarkTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 347
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public getCheckMarkTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 331
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_9

    .line 332
    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 331
    :goto_a
    return-object v0
.end method

.method protected internalSetPadding(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 414
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->internalSetPadding(IIII)V

    .line 415
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/CheckedTextView;->setBasePadding(Z)V

    .line 416
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 644
    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 646
    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 648
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 649
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isSingleLine()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 650
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/CheckedTextView;->invalidate(IIII)V

    .line 653
    .end local v0    # "dirty":Landroid/graphics/Rect;
    :cond_24
    return-void
.end method

.method public isChecked()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 159
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 382
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 384
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 385
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 387
    :cond_a
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 520
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 521
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 522
    sget-object v1, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 524
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 462
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 464
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 465
    .local v0, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6b

    .line 466
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 470
    .local v1, "verticalGravity":I
    iget-boolean v2, p0, Landroid/widget/CheckedTextView;->mIsDeviceDefault:Z

    if-eqz v2, :cond_14

    .line 471
    iget v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkHeight:I

    .local v2, "height":I
    goto :goto_18

    .line 475
    .end local v2    # "height":I
    :cond_14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 478
    .restart local v2    # "height":I
    :goto_18
    const/4 v3, 0x0

    .line 480
    .local v3, "y":I
    sparse-switch v1, :sswitch_data_6c

    goto :goto_2b

    .line 482
    :sswitch_1d
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int v3, v4, v2

    .line 483
    goto :goto_2b

    .line 485
    :sswitch_24
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v3, v4, 0x2

    .line 489
    :goto_2b
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v4

    .line 490
    .local v4, "checkMarkAtStart":Z
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getWidth()I

    move-result v5

    .line 491
    .local v5, "width":I
    move v6, v3

    .line 492
    .local v6, "top":I
    add-int v7, v6, v2

    .line 495
    .local v7, "bottom":I
    if-eqz v4, :cond_3e

    .line 496
    iget v8, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 497
    .local v8, "left":I
    iget v9, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    add-int/2addr v9, v8

    .local v9, "right":I
    goto :goto_46

    .line 499
    .end local v8    # "left":I
    .end local v9    # "right":I
    :cond_3e
    iget v8, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    sub-int v9, v5, v8

    .line 500
    .restart local v9    # "right":I
    iget v8, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    sub-int v8, v9, v8

    .line 503
    .restart local v8    # "left":I
    :goto_46
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_56

    .line 504
    iget v10, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v10, v8

    iget v11, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v11, v9

    invoke-virtual {v0, v10, v6, v11, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_59

    .line 506
    :cond_56
    invoke-virtual {v0, v8, v6, v9, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 509
    :goto_59
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 511
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 512
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_6b

    .line 513
    iget v11, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v11, v8

    iget v12, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v12, v9

    invoke-virtual {v10, v11, v6, v12, v7}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 516
    .end local v1    # "verticalGravity":I
    .end local v2    # "height":I
    .end local v3    # "y":I
    .end local v4    # "checkMarkAtStart":Z
    .end local v5    # "width":I
    .end local v6    # "top":I
    .end local v7    # "bottom":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v10    # "background":Landroid/graphics/drawable/Drawable;
    :cond_6b
    return-void

    :sswitch_data_6c
    .sparse-switch
        0x10 -> :sswitch_24
        0x50 -> :sswitch_1d
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 617
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 618
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 619
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 624
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 625
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 626
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 627
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 607
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckedTextView$SavedState;

    .line 609
    .local v0, "ss":Landroid/widget/CheckedTextView$SavedState;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 610
    iget-boolean v1, v0, Landroid/widget/CheckedTextView$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 611
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 612
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .line 420
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 421
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->updatePadding()V

    .line 422
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 597
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 599
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/CheckedTextView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/CheckedTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 601
    .local v1, "ss":Landroid/widget/CheckedTextView$SavedState;
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/CheckedTextView$SavedState;->checked:Z

    .line 602
    return-object v1
.end method

.method public setCheckMarkDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 190
    if-eqz p1, :cond_7

    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-ne p1, v0, :cond_7

    .line 191
    return-void

    .line 194
    :cond_7
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 195
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_13
    invoke-direct {p0, v0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    .line 196
    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    .line 211
    return-void
.end method

.method public setCheckMarkTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/BlendMode;

    .line 313
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 316
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 317
    return-void
.end method

.method public setCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 266
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 269
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 270
    return-void
.end method

.method public setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 297
    if-eqz p1, :cond_9

    .line 298
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 297
    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 299
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .line 169
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_d

    .line 170
    iput-boolean p1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    .line 171
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->refreshDrawableState()V

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 175
    :cond_d
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 373
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 376
    const/4 v1, 0x0

    if-nez p1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 378
    :cond_10
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 153
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 154
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 391
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_b

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
