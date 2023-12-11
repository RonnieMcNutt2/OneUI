.class public Lcom/android/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# static fields
.field private static final BADGE_LIMIT_NUMBER:I = 0x63

.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBadgeView:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContent:Landroid/widget/LinearLayout;

.field private mForceShowIcon:Z

.field private mGroupDivider:Landroid/widget/ImageView;

.field private mHasListDivider:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDeviceDefaultLight:Z

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mNumberFormat:Ljava/text/NumberFormat;

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field private mSubMenuArrowView:Landroid/widget/ImageView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;

.field private mUseNewContextMenu:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 130
    const v0, 0x10104f2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsDeviceDefaultLight:Z

    .line 90
    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 93
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 94
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 96
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 98
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 99
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v4, 0x1010129

    filled-new-array {v4}, [I

    move-result-object v4

    .line 102
    const/4 v5, 0x0

    const v6, 0x101006d

    invoke-virtual {v2, v5, v4, v6, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 104
    .local v2, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mHasListDivider:Z

    .line 106
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    const-string/jumbo v4, "text__enable_new_context_menu"

    invoke-static {v4, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_56

    move v4, v3

    goto :goto_57

    :cond_56
    move v4, v0

    :goto_57
    iput-boolean v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mUseNewContextMenu:Z

    .line 114
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 115
    .local v4, "themeValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x11200d7

    invoke-virtual {v5, v6, v4, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 116
    iget v5, v4, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_82

    .line 117
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 118
    .local v5, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11200d8

    invoke-virtual {v6, v7, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 119
    iget v6, v5, Landroid/util/TypedValue;->data:I

    if-nez v6, :cond_80

    move v0, v3

    :cond_80
    iput-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsDeviceDefaultLight:Z

    .line 121
    .end local v5    # "colorValue":Landroid/util/TypedValue;
    :cond_82
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mNumberFormat:Ljava/text/NumberFormat;

    .line 123
    return-void
.end method

.method private addContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 185
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;I)V

    .line 186
    return-void
.end method

.method private addContentView(Landroid/view/View;I)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 189
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 190
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_b

    .line 192
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 194
    :goto_b
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_c

    .line 384
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 386
    :cond_c
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertBadge()V
    .registers 4

    .line 483
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 484
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090168

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 485
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;)V

    .line 486
    return-void
.end method

.method private insertCheckBox()V
    .registers 4

    .line 358
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 360
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsDeviceDefaultLight:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 361
    nop

    .line 362
    const v1, 0x1090169

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 364
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_26

    .line 366
    :cond_1a
    nop

    .line 367
    const v1, 0x10900b4

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 371
    :goto_26
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;)V

    .line 372
    return-void
.end method

.method private insertIconView()V
    .registers 4

    .line 332
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 333
    .local v0, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 334
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mUseNewContextMenu:Z

    if-eqz v1, :cond_d

    const v1, 0x10900b5

    goto :goto_10

    .line 335
    :cond_d
    const v1, 0x10900b6

    :goto_10
    nop

    .line 333
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 337
    invoke-direct {p0, v1, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;I)V

    .line 338
    return-void
.end method

.method private insertRadioButton()V
    .registers 4

    .line 341
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 343
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsDeviceDefaultLight:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 344
    nop

    .line 345
    const v1, 0x109016a

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 347
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_26

    .line 349
    :cond_1a
    nop

    .line 350
    const v1, 0x10900b8

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 354
    :goto_26
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;)V

    .line 355
    return-void
.end method

.method private isNumericValue(Ljava/lang/String;)Z
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 470
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 471
    return v0

    .line 475
    :cond_4
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_a

    .line 478
    nop

    .line 479
    const/4 v0, 0x1

    return v0

    .line 476
    :catch_a
    move-exception v1

    .line 477
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private setBadgeText(Ljava/lang/String;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    if-nez v0, :cond_7

    .line 441
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertBadge()V

    .line 444
    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 446
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ListMenuItemView;->isNumericValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 447
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 448
    .local v1, "badgeNumber":I
    const/16 v2, 0x63

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 450
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mNumberFormat:Ljava/text/NumberFormat;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "localeFormattedNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050367

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 454
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050366

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 455
    .local v3, "badgeWidth":I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 457
    .local v4, "badgeHeight":I
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 458
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 459
    const v5, 0x800015

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 460
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    .end local v1    # "badgeNumber":I
    .end local v2    # "localeFormattedNumber":Ljava/lang/String;
    .end local v3    # "badgeWidth":I
    .end local v4    # "badgeHeight":I
    goto :goto_7d

    .line 462
    :cond_6a
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105041e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 463
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    :goto_7d
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    if-eqz p1, :cond_83

    const/4 v2, 0x0

    goto :goto_85

    :cond_83
    const/16 v2, 0x8

    :goto_85
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    return-void
.end method

.method private setSubMenuArrowVisible(Z)V
    .registers 4
    .param p1, "hasSubmenu"    # Z

    .line 275
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 276
    if-eqz p1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    const/16 v1, 0x8

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    :cond_d
    return-void
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 428
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    .line 433
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 434
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 436
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_23
    return-void
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .registers 7
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .line 156
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 157
    iput p2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mMenuType:I

    .line 159
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_f

    :cond_d
    const/16 v0, 0x8

    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 161
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 166
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    .line 167
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getBadgeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setBadgeText(Ljava/lang/String;)V

    .line 172
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6e

    .line 173
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 176
    .local v1, "textSize":I
    if-eqz v1, :cond_6b

    .line 177
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 179
    :cond_6b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "textSize":I
    :cond_6e
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 135
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 137
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 140
    iget v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    .line 141
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 145
    :cond_1d
    const v0, 0x10205ab

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 146
    const v0, 0x10205f4

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    .line 147
    if-eqz v0, :cond_3a

    .line 148
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_3a
    const v0, 0x1020333

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 152
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 153
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 391
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 393
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 394
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 398
    :cond_11
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 399
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_65

    .line 400
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2e

    :cond_2c
    const-string v0, ""

    .line 401
    .local v0, "customContentDescription":Ljava/lang/CharSequence;
    :goto_2e
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 403
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_65

    .line 405
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040c86

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "badgeContentDescription":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 412
    .end local v0    # "customContentDescription":Ljava/lang/CharSequence;
    .end local v1    # "badgeContentDescription":Ljava/lang/String;
    :cond_65
    :goto_65
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 320
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v0, :cond_20

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 323
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 324
    .local v1, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_20

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_20

    .line 325
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 328
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 329
    return-void
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .registers 7
    .param p1, "checkable"    # Z

    .line 215
    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_b

    .line 216
    return-void

    .line 224
    :cond_b
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 225
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_1a

    .line 226
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 228
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 229
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .local v1, "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_2a

    .line 231
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v1    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_26

    .line 232
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 234
    :cond_26
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 235
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 238
    .restart local v1    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_2a
    const/16 v2, 0x8

    if-eqz p1, :cond_51

    .line 239
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 241
    if-eqz p1, :cond_3b

    const/4 v3, 0x0

    goto :goto_3c

    :cond_3b
    move v3, v2

    .line 242
    .local v3, "newVisibility":I
    :goto_3c
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_45

    .line 243
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 247
    :cond_45
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_50

    .line 248
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 250
    .end local v3    # "newVisibility":I
    :cond_50
    goto :goto_5f

    .line 251
    :cond_51
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_58

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 252
    :cond_58
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v3, :cond_5f

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 254
    :cond_5f
    :goto_5f
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .line 259
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 260
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_f

    .line 261
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 263
    :cond_f
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_1b

    .line 265
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_12
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_19

    .line 266
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 268
    :cond_19
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 271
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :goto_1b
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 272
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2
    .param p1, "forceShow"    # Z

    .line 197
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 198
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 4
    .param p1, "groupDividerEnabled"    # Z

    .line 420
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 421
    nop

    .line 422
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mHasListDivider:Z

    if-nez v1, :cond_d

    if-eqz p1, :cond_d

    const/4 v1, 0x0

    goto :goto_f

    :cond_d
    const/16 v1, 0x8

    .line 421
    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    :cond_12
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 294
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    move v0, v1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 295
    .local v0, "showIcon":Z
    :goto_11
    if-nez v0, :cond_18

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_18

    .line 296
    return-void

    .line 299
    :cond_18
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_23

    if-nez p1, :cond_23

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v3, :cond_23

    .line 300
    return-void

    .line 303
    :cond_23
    if-nez v2, :cond_28

    .line 304
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertIconView()V

    .line 307
    :cond_28
    if-nez p1, :cond_37

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_2f

    goto :goto_37

    .line 314
    :cond_2f
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4e

    .line 308
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3d

    move-object v3, p1

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4e

    .line 311
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    :cond_4e
    :goto_4e
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 6
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .line 281
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 282
    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    const/16 v0, 0x8

    .line 284
    .local v0, "newVisibility":I
    :goto_e
    if-nez v0, :cond_1b

    .line 285
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_28

    .line 289
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :cond_28
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 201
    if-eqz p1, :cond_16

    .line 202
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25

    .line 206
    :cond_16
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :cond_25
    :goto_25
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    .line 379
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
