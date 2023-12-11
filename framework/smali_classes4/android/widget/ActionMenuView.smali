.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;,
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mIsThemeDeviceDefaultFamily:Z

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mOriginalEndPadding:I

.field private mOriginalOverflowEndPadding:I

.field private mOriginalOverflowStartPadding:I

.field private mOriginalStartPadding:I

.field private mOverflowBadgeText:Ljava/lang/String;

.field private mOverflowButtonMinWidth:I

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmMenuBuilderCallback(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .registers 1

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnMenuItemClickListener(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 97
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    .line 98
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 99
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 100
    iput v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 103
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 104
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11200d7

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 106
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v5, v0

    :goto_37
    iput-boolean v5, p0, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    .line 110
    .end local v2    # "outValue":Landroid/util/TypedValue;
    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    const v3, 0x10102d8

    invoke-virtual {p1, p2, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 112
    .local v2, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x44

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ActionMenuView;->mOriginalStartPadding:I

    .line 114
    const/16 v4, 0x45

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    .line 116
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    const v6, 0x10102f6

    invoke-virtual {p1, p2, v5, v6, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    .line 121
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    .line 123
    const/16 v3, 0x24

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    .line 125
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1040c87

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mOverflowBadgeText:Ljava/lang/String;

    .line 130
    return-void
.end method

.method private getNumericValue(Ljava/lang/String;)I
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 1008
    if-nez p1, :cond_4

    .line 1009
    const/4 v0, 0x0

    return v0

    .line 1012
    :cond_4
    const/4 v0, 0x0

    .line 1014
    .local v0, "num":I
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_c

    move v0, v1

    .line 1017
    nop

    .line 1018
    return v0

    .line 1015
    :catch_c
    move-exception v1

    .line 1016
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    return v2
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .registers 20
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .line 514
    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView$LayoutParams;

    .line 516
    .local v2, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v3, v3, p4

    .line 518
    .local v3, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 519
    .local v4, "childHeightMode":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 521
    .local v5, "childHeightSpec":I
    instance-of v6, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_1f

    .line 522
    move-object v6, v0

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuItemView;

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    .line 523
    .local v6, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_20
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_2c

    move v9, v8

    goto :goto_2d

    :cond_2c
    move v9, v7

    .line 525
    .local v9, "hasText":Z
    :goto_2d
    const/4 v10, 0x0

    .line 526
    .local v10, "cellsUsed":I
    if-lez v1, :cond_51

    const/4 v11, 0x2

    if-eqz v9, :cond_35

    if-lt v1, v11, :cond_51

    .line 527
    :cond_35
    mul-int v12, p1, v1

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 529
    .local v12, "childWidthSpec":I
    invoke-virtual {p0, v12, v5}, Landroid/view/View;->measure(II)V

    .line 531
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 532
    .local v13, "measuredWidth":I
    div-int v10, v13, p1

    .line 533
    rem-int v14, v13, p1

    if-eqz v14, :cond_4c

    add-int/lit8 v10, v10, 0x1

    .line 534
    :cond_4c
    if-eqz v9, :cond_51

    if-ge v10, v11, :cond_51

    const/4 v10, 0x2

    .line 537
    .end local v12    # "childWidthSpec":I
    .end local v13    # "measuredWidth":I
    :cond_51
    iget-boolean v11, v2, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_58

    if-eqz v9, :cond_58

    move v7, v8

    .line 538
    .local v7, "expandable":Z
    :cond_58
    iput-boolean v7, v2, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 540
    iput v10, v2, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 541
    mul-int v8, v10, p1

    .line 542
    .local v8, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v5}, Landroid/view/View;->measure(II)V

    .line 544
    return v10
.end method

.method private onMeasureExactFormat(II)V
    .registers 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 281
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 282
    .local v1, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 283
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 285
    .local v3, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 286
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 288
    .local v5, "heightPadding":I
    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    .line 291
    .local v6, "itemHeightSpec":I
    sub-int/2addr v2, v4

    .line 294
    iget v8, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    div-int v9, v2, v8

    .line 295
    .local v9, "cellCount":I
    rem-int v10, v2, v8

    .line 297
    .local v10, "cellSizeRemaining":I
    const/4 v11, 0x0

    if-nez v9, :cond_35

    .line 299
    invoke-virtual {v0, v2, v11}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 300
    return-void

    .line 303
    :cond_35
    div-int v12, v10, v9

    add-int/2addr v8, v12

    .line 305
    .local v8, "cellSize":I
    move v12, v9

    .line 306
    .local v12, "cellsRemaining":I
    const/4 v13, 0x0

    .line 307
    .local v13, "maxChildHeight":I
    const/4 v14, 0x0

    .line 308
    .local v14, "maxCellsUsed":I
    const/4 v15, 0x0

    .line 309
    .local v15, "expandableItemCount":I
    const/16 v16, 0x0

    .line 310
    .local v16, "visibleItemCount":I
    const/16 v17, 0x0

    .line 313
    .local v17, "hasOverflow":Z
    const-wide/16 v18, 0x0

    .line 315
    .local v18, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v11

    .line 316
    .local v11, "childCount":I
    const/16 v21, 0x0

    move/from16 v36, v16

    move/from16 v16, v3

    move/from16 v3, v36

    move/from16 v37, v21

    move/from16 v21, v4

    move/from16 v4, v37

    .local v3, "visibleItemCount":I
    .local v4, "i":I
    .local v16, "heightSize":I
    .local v21, "widthPadding":I
    :goto_54
    if-ge v4, v11, :cond_ec

    .line 317
    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 318
    .local v7, "child":Landroid/view/View;
    move/from16 v23, v9

    .end local v9    # "cellCount":I
    .local v23, "cellCount":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v24, v10

    .end local v10    # "cellSizeRemaining":I
    .local v24, "cellSizeRemaining":I
    const/16 v10, 0x8

    if-ne v9, v10, :cond_68

    goto/16 :goto_e2

    .line 320
    :cond_68
    instance-of v9, v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 321
    .local v9, "isGeneratedItem":Z
    add-int/lit8 v3, v3, 0x1

    .line 323
    if-eqz v9, :cond_77

    .line 326
    iget v10, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "visibleItemCount":I
    .local v25, "visibleItemCount":I
    invoke-virtual {v7, v10, v3, v10, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_7a

    .line 323
    .end local v25    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_77
    move/from16 v25, v3

    const/4 v3, 0x0

    .line 329
    .end local v3    # "visibleItemCount":I
    .restart local v25    # "visibleItemCount":I
    :goto_7a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/ActionMenuView$LayoutParams;

    .line 330
    .local v10, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 331
    iput v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 332
    iput v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 333
    iput-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 334
    iput v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 335
    iput v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 336
    if-eqz v9, :cond_99

    move-object v3, v7

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_99

    const/4 v3, 0x1

    goto :goto_9a

    :cond_99
    const/4 v3, 0x0

    :goto_9a
    iput-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 338
    iget-boolean v3, v0, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_a2

    .line 339
    iput-boolean v9, v10, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 343
    :cond_a2
    iget-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_a8

    const/4 v3, 0x1

    goto :goto_a9

    :cond_a8
    move v3, v12

    .line 345
    .local v3, "cellsAvailable":I
    :goto_a9
    move/from16 v26, v9

    .end local v9    # "isGeneratedItem":Z
    .local v26, "isGeneratedItem":Z
    invoke-static {v7, v8, v3, v6, v5}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 348
    .local v9, "cellsUsed":I
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 349
    move/from16 v27, v3

    .end local v3    # "cellsAvailable":I
    .local v27, "cellsAvailable":I
    iget-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v3, :cond_bb

    add-int/lit8 v15, v15, 0x1

    .line 350
    :cond_bb
    iget-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_c1

    const/16 v17, 0x1

    .line 352
    :cond_c1
    sub-int/2addr v12, v9

    .line 353
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 354
    .end local v13    # "maxChildHeight":I
    .local v3, "maxChildHeight":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_db

    shl-int/2addr v13, v4

    move/from16 v28, v9

    move-object/from16 v22, v10

    .end local v9    # "cellsUsed":I
    .end local v10    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .local v22, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .local v28, "cellsUsed":I
    int-to-long v9, v13

    or-long v9, v18, v9

    move v13, v3

    move-wide/from16 v18, v9

    move/from16 v3, v25

    .end local v18    # "smallestItemsAt":J
    .local v9, "smallestItemsAt":J
    goto :goto_e2

    .end local v22    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v28    # "cellsUsed":I
    .local v9, "cellsUsed":I
    .restart local v10    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v18    # "smallestItemsAt":J
    :cond_db
    move/from16 v28, v9

    move-object/from16 v22, v10

    .end local v9    # "cellsUsed":I
    .end local v10    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v22    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v28    # "cellsUsed":I
    move v13, v3

    move/from16 v3, v25

    .line 316
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v25    # "visibleItemCount":I
    .end local v26    # "isGeneratedItem":Z
    .end local v27    # "cellsAvailable":I
    .end local v28    # "cellsUsed":I
    .local v3, "visibleItemCount":I
    .restart local v13    # "maxChildHeight":I
    :goto_e2
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, p2

    move/from16 v9, v23

    move/from16 v10, v24

    goto/16 :goto_54

    .end local v23    # "cellCount":I
    .end local v24    # "cellSizeRemaining":I
    .local v9, "cellCount":I
    .local v10, "cellSizeRemaining":I
    :cond_ec
    move/from16 v23, v9

    move/from16 v24, v10

    .line 359
    .end local v4    # "i":I
    .end local v9    # "cellCount":I
    .end local v10    # "cellSizeRemaining":I
    .restart local v23    # "cellCount":I
    .restart local v24    # "cellSizeRemaining":I
    const/4 v4, 0x2

    if-eqz v17, :cond_f7

    if-ne v3, v4, :cond_f7

    const/4 v7, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v7, 0x0

    .line 364
    .local v7, "centerSingleExpandedItem":Z
    :goto_f8
    const/4 v9, 0x0

    .line 365
    .local v9, "needsExpansion":Z
    :goto_f9
    const-wide/16 v25, 0x0

    if-lez v15, :cond_1cb

    if-lez v12, :cond_1cb

    .line 366
    const v10, 0x7fffffff

    .line 367
    .local v10, "minCells":I
    const-wide/16 v27, 0x0

    .line 368
    .local v27, "minCellsAt":J
    const/16 v29, 0x0

    .line 369
    .local v29, "minCellsItemCount":I
    const/16 v30, 0x0

    move/from16 v4, v29

    move/from16 v36, v30

    move/from16 v30, v5

    move/from16 v5, v36

    .end local v29    # "minCellsItemCount":I
    .local v4, "minCellsItemCount":I
    .local v5, "i":I
    .local v30, "heightPadding":I
    :goto_110
    if-ge v5, v11, :cond_15e

    .line 370
    invoke-virtual {v0, v5}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 371
    .local v31, "child":Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    move/from16 v33, v9

    .end local v9    # "needsExpansion":Z
    .local v33, "needsExpansion":Z
    move-object/from16 v9, v32

    check-cast v9, Landroid/widget/ActionMenuView$LayoutParams;

    .line 374
    .local v9, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move/from16 v32, v15

    .end local v15    # "expandableItemCount":I
    .local v32, "expandableItemCount":I
    iget-boolean v15, v9, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v15, :cond_12b

    move/from16 v34, v1

    move/from16 v35, v2

    goto :goto_153

    .line 377
    :cond_12b
    iget v15, v9, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v15, v10, :cond_141

    .line 378
    iget v10, v9, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 379
    move/from16 v22, v10

    const/4 v15, 0x1

    .end local v10    # "minCells":I
    .local v22, "minCells":I
    shl-int v10, v15, v5

    move/from16 v34, v1

    move/from16 v35, v2

    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .local v34, "heightMode":I
    .local v35, "widthSize":I
    int-to-long v1, v10

    .line 380
    .end local v27    # "minCellsAt":J
    .local v1, "minCellsAt":J
    const/4 v4, 0x1

    move-wide/from16 v27, v1

    move/from16 v10, v22

    goto :goto_153

    .line 381
    .end local v22    # "minCells":I
    .end local v34    # "heightMode":I
    .end local v35    # "widthSize":I
    .local v1, "heightMode":I
    .restart local v2    # "widthSize":I
    .restart local v10    # "minCells":I
    .restart local v27    # "minCellsAt":J
    :cond_141
    move/from16 v34, v1

    move/from16 v35, v2

    const/4 v15, 0x1

    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .restart local v34    # "heightMode":I
    .restart local v35    # "widthSize":I
    iget v1, v9, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v1, v10, :cond_153

    .line 382
    shl-int v1, v15, v5

    int-to-long v1, v1

    or-long v1, v27, v1

    .line 383
    .end local v27    # "minCellsAt":J
    .local v1, "minCellsAt":J
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v27, v1

    .line 369
    .end local v1    # "minCellsAt":J
    .end local v9    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v31    # "child":Landroid/view/View;
    .restart local v27    # "minCellsAt":J
    :cond_153
    :goto_153
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v32

    move/from16 v9, v33

    move/from16 v1, v34

    move/from16 v2, v35

    goto :goto_110

    .end local v32    # "expandableItemCount":I
    .end local v33    # "needsExpansion":Z
    .end local v34    # "heightMode":I
    .end local v35    # "widthSize":I
    .local v1, "heightMode":I
    .restart local v2    # "widthSize":I
    .local v9, "needsExpansion":Z
    .restart local v15    # "expandableItemCount":I
    :cond_15e
    move/from16 v34, v1

    move/from16 v35, v2

    move/from16 v33, v9

    move/from16 v32, v15

    .line 388
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v5    # "i":I
    .end local v9    # "needsExpansion":Z
    .end local v15    # "expandableItemCount":I
    .restart local v32    # "expandableItemCount":I
    .restart local v33    # "needsExpansion":Z
    .restart local v34    # "heightMode":I
    .restart local v35    # "widthSize":I
    or-long v18, v18, v27

    .line 390
    if-le v4, v12, :cond_16c

    goto/16 :goto_1d5

    .line 393
    :cond_16c
    add-int/lit8 v10, v10, 0x1

    .line 395
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16f
    if-ge v1, v11, :cond_1bd

    .line 396
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 397
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/ActionMenuView$LayoutParams;

    .line 398
    .local v5, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v9, 0x1

    shl-int v15, v9, v1

    move/from16 v31, v10

    .end local v10    # "minCells":I
    .local v31, "minCells":I
    int-to-long v9, v15

    and-long v9, v27, v9

    cmp-long v9, v9, v25

    if-nez v9, :cond_199

    .line 400
    iget v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v10, v31

    .end local v31    # "minCells":I
    .restart local v10    # "minCells":I
    if-ne v9, v10, :cond_196

    const/4 v9, 0x1

    shl-int v15, v9, v1

    move/from16 v31, v10

    .end local v10    # "minCells":I
    .restart local v31    # "minCells":I
    int-to-long v9, v15

    or-long v18, v18, v9

    goto :goto_1b8

    .end local v31    # "minCells":I
    .restart local v10    # "minCells":I
    :cond_196
    move/from16 v31, v10

    .end local v10    # "minCells":I
    .restart local v31    # "minCells":I
    goto :goto_1b8

    .line 404
    :cond_199
    if-eqz v7, :cond_1ae

    iget-boolean v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v9, :cond_1ae

    const/4 v9, 0x1

    if-ne v12, v9, :cond_1ae

    .line 406
    iget-boolean v9, v0, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v9, :cond_1ae

    .line 408
    iget v9, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v10, v9, v8

    const/4 v15, 0x0

    invoke-virtual {v2, v10, v15, v9, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 411
    :cond_1ae
    iget v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 412
    iput-boolean v10, v5, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 413
    add-int/lit8 v12, v12, -0x1

    .line 395
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :goto_1b8
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v31

    goto :goto_16f

    .end local v31    # "minCells":I
    .restart local v10    # "minCells":I
    :cond_1bd
    move/from16 v31, v10

    .line 416
    .end local v1    # "i":I
    .end local v10    # "minCells":I
    .restart local v31    # "minCells":I
    const/4 v9, 0x1

    .line 417
    .end local v4    # "minCellsItemCount":I
    .end local v27    # "minCellsAt":J
    .end local v31    # "minCells":I
    .end local v33    # "needsExpansion":Z
    .restart local v9    # "needsExpansion":Z
    move/from16 v5, v30

    move/from16 v15, v32

    move/from16 v1, v34

    move/from16 v2, v35

    const/4 v4, 0x2

    goto/16 :goto_f9

    .line 365
    .end local v30    # "heightPadding":I
    .end local v32    # "expandableItemCount":I
    .end local v34    # "heightMode":I
    .end local v35    # "widthSize":I
    .local v1, "heightMode":I
    .local v2, "widthSize":I
    .local v5, "heightPadding":I
    .restart local v15    # "expandableItemCount":I
    :cond_1cb
    move/from16 v34, v1

    move/from16 v35, v2

    move/from16 v30, v5

    move/from16 v33, v9

    move/from16 v32, v15

    .line 422
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v5    # "heightPadding":I
    .end local v9    # "needsExpansion":Z
    .end local v15    # "expandableItemCount":I
    .restart local v30    # "heightPadding":I
    .restart local v32    # "expandableItemCount":I
    .restart local v33    # "needsExpansion":Z
    .restart local v34    # "heightMode":I
    .restart local v35    # "widthSize":I
    :goto_1d5
    if-nez v17, :cond_1dc

    const/4 v1, 0x1

    if-ne v3, v1, :cond_1dc

    const/4 v1, 0x1

    goto :goto_1dd

    :cond_1dc
    const/4 v1, 0x0

    .line 423
    .local v1, "singleItem":Z
    :goto_1dd
    if-lez v12, :cond_2a4

    cmp-long v2, v18, v25

    if-eqz v2, :cond_2a4

    add-int/lit8 v2, v3, -0x1

    if-lt v12, v2, :cond_1f0

    if-nez v1, :cond_1f0

    const/4 v2, 0x1

    if-le v14, v2, :cond_1ed

    goto :goto_1f0

    :cond_1ed
    move v10, v1

    goto/16 :goto_2a5

    .line 425
    :cond_1f0
    :goto_1f0
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    .line 427
    .local v2, "expandCount":F
    if-nez v1, :cond_231

    .line 429
    const-wide/16 v4, 0x1

    and-long v4, v18, v4

    cmp-long v4, v4, v25

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_212

    .line 430
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuView$LayoutParams;

    .line 431
    .local v9, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iget-boolean v10, v9, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_213

    sub-float/2addr v2, v5

    goto :goto_213

    .line 429
    .end local v9    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_212
    const/4 v4, 0x0

    .line 433
    :cond_213
    :goto_213
    add-int/lit8 v9, v11, -0x1

    const/4 v10, 0x1

    shl-int v9, v10, v9

    int-to-long v9, v9

    and-long v9, v18, v9

    cmp-long v9, v9, v25

    if-eqz v9, :cond_232

    .line 434
    add-int/lit8 v9, v11, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuView$LayoutParams;

    .line 435
    .restart local v9    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iget-boolean v10, v9, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_232

    sub-float/2addr v2, v5

    goto :goto_232

    .line 427
    .end local v9    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_231
    const/4 v4, 0x0

    .line 439
    :cond_232
    :goto_232
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_23d

    .line 440
    mul-int v4, v12, v8

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    goto :goto_23e

    :cond_23d
    nop

    .line 442
    .local v4, "extraPixels":I
    :goto_23e
    const/4 v5, 0x0

    move/from16 v9, v33

    .end local v33    # "needsExpansion":Z
    .local v5, "i":I
    .local v9, "needsExpansion":Z
    :goto_241
    if-ge v5, v11, :cond_29f

    .line 443
    const/4 v10, 0x1

    shl-int v15, v10, v5

    move v10, v1

    move/from16 v20, v2

    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .local v10, "singleItem":Z
    .local v20, "expandCount":F
    int-to-long v1, v15

    and-long v1, v18, v1

    cmp-long v1, v1, v25

    if-nez v1, :cond_253

    const/16 v27, 0x2

    goto :goto_299

    .line 445
    :cond_253
    invoke-virtual {v0, v5}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 446
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView$LayoutParams;

    .line 447
    .local v2, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    instance-of v15, v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v15, :cond_277

    .line 449
    iput v4, v2, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 450
    const/4 v15, 0x1

    iput-boolean v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 451
    if-nez v5, :cond_273

    iget-boolean v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v15, :cond_273

    .line 454
    neg-int v15, v4

    const/16 v27, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 456
    :cond_273
    const/4 v9, 0x1

    const/16 v27, 0x2

    goto :goto_299

    .line 457
    :cond_277
    iget-boolean v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_289

    .line 458
    iput v4, v2, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 459
    const/4 v15, 0x1

    iput-boolean v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 460
    neg-int v15, v4

    const/16 v27, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 461
    const/4 v9, 0x1

    goto :goto_299

    .line 466
    :cond_289
    const/16 v27, 0x2

    if-eqz v5, :cond_291

    .line 467
    div-int/lit8 v15, v4, 0x2

    iput v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 469
    :cond_291
    add-int/lit8 v15, v11, -0x1

    if-eq v5, v15, :cond_299

    .line 470
    div-int/lit8 v15, v4, 0x2

    iput v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 442
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_299
    :goto_299
    add-int/lit8 v5, v5, 0x1

    move v1, v10

    move/from16 v2, v20

    goto :goto_241

    .end local v10    # "singleItem":Z
    .end local v20    # "expandCount":F
    .local v1, "singleItem":Z
    .local v2, "expandCount":F
    :cond_29f
    move v10, v1

    move/from16 v20, v2

    .line 475
    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .end local v5    # "i":I
    .restart local v10    # "singleItem":Z
    .restart local v20    # "expandCount":F
    const/4 v12, 0x0

    goto :goto_2a7

    .line 423
    .end local v4    # "extraPixels":I
    .end local v9    # "needsExpansion":Z
    .end local v10    # "singleItem":Z
    .end local v20    # "expandCount":F
    .restart local v1    # "singleItem":Z
    .restart local v33    # "needsExpansion":Z
    :cond_2a4
    move v10, v1

    .line 479
    .end local v1    # "singleItem":Z
    .restart local v10    # "singleItem":Z
    :goto_2a5
    move/from16 v9, v33

    .end local v33    # "needsExpansion":Z
    .restart local v9    # "needsExpansion":Z
    :goto_2a7
    if-eqz v9, :cond_2d6

    .line 480
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2aa
    if-ge v2, v11, :cond_2d3

    .line 481
    invoke-virtual {v0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 482
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/ActionMenuView$LayoutParams;

    .line 484
    .local v5, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iget-boolean v15, v5, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v15, :cond_2bd

    move/from16 v22, v3

    goto :goto_2ce

    .line 486
    :cond_2bd
    iget v15, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v15, v8

    iget v1, v5, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v15, v1

    .line 487
    .local v15, "width":I
    move/from16 v22, v3

    const/high16 v1, 0x40000000    # 2.0f

    .end local v3    # "visibleItemCount":I
    .local v22, "visibleItemCount":I
    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 480
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v15    # "width":I
    :goto_2ce
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v22

    goto :goto_2aa

    .end local v22    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_2d3
    move/from16 v22, v3

    .end local v3    # "visibleItemCount":I
    .restart local v22    # "visibleItemCount":I
    goto :goto_2d8

    .line 479
    .end local v2    # "i":I
    .end local v22    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_2d6
    move/from16 v22, v3

    .line 492
    .end local v3    # "visibleItemCount":I
    .restart local v22    # "visibleItemCount":I
    :goto_2d8
    move/from16 v1, v34

    const/high16 v2, 0x40000000    # 2.0f

    .end local v34    # "heightMode":I
    .local v1, "heightMode":I
    if-eq v1, v2, :cond_2e0

    .line 493
    move v3, v13

    .end local v16    # "heightSize":I
    .local v3, "heightSize":I
    goto :goto_2e2

    .line 492
    .end local v3    # "heightSize":I
    .restart local v16    # "heightSize":I
    :cond_2e0
    move/from16 v3, v16

    .line 496
    .end local v16    # "heightSize":I
    .restart local v3    # "heightSize":I
    :goto_2e2
    move/from16 v2, v35

    .end local v35    # "widthSize":I
    .local v2, "widthSize":I
    invoke-virtual {v0, v2, v3}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 497
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 720
    if-eqz p1, :cond_8

    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public dismissPopupMenus()V
    .registers 2

    .line 830
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_7

    .line 831
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 833
    :cond_7
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 56
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .registers 3

    .line 693
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 695
    .local v0, "params":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 696
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 56
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 701
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 706
    if-eqz p1, :cond_1e

    .line 707
    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_f

    .line 708
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    goto :goto_14

    .line 709
    :cond_f
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_14
    nop

    .line 710
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    iget v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1d

    .line 711
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 713
    :cond_1d
    return-object v0

    .line 715
    .end local v0    # "result":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .registers 3

    .line 725
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 726
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 727
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 5

    .line 758
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_40

    .line 759
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 760
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 761
    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$MenuBuilderCallback-IA;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 762
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 763
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 764
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_2a

    .line 765
    goto :goto_2f

    :cond_2a
    new-instance v2, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$ActionMenuPresenterCallback-IA;)V

    .line 764
    :goto_2f
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 766
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 767
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 770
    .end local v0    # "context":Landroid/content/Context;
    :cond_40
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverflowBadgeText()Ljava/lang/String;
    .registers 2

    .line 1034
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mOverflowBadgeText:Ljava/lang/String;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 676
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 677
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 841
    if-nez p1, :cond_4

    .line 842
    const/4 v0, 0x0

    return v0

    .line 844
    :cond_4
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 845
    .local v0, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 846
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 847
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_21

    instance-of v3, v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_21

    .line 848
    move-object v3, v0

    check-cast v3, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 850
    :cond_21
    if-lez p1, :cond_2f

    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2f

    .line 851
    move-object v3, v1

    check-cast v3, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 853
    :cond_2f
    return v2
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .line 807
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 746
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 747
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 732
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 733
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0

    .line 735
    :cond_a
    return v1
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .line 823
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 817
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    .line 683
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 170
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 172
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 175
    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 178
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 180
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 181
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 182
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 187
    :cond_22
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    const v3, 0x10102d8

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x44

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOriginalStartPadding:I

    .line 191
    const/16 v3, 0x45

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    iget-object v5, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/R$styleable;->View:[I

    const v7, 0x10102f6

    invoke-virtual {v5, v4, v6, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    .line 198
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    .line 200
    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    .line 202
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 655
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 656
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 657
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 27
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 549
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_a

    .line 550
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 551
    return-void

    .line 554
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 555
    .local v1, "childCount":I
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    .line 556
    .local v2, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    .line 557
    .local v3, "dividerWidth":I
    const/4 v4, 0x0

    .line 558
    .local v4, "overflowWidth":I
    const/4 v5, 0x0

    .line 559
    .local v5, "nonOverflowWidth":I
    const/4 v6, 0x0

    .line 560
    .local v6, "nonOverflowCount":I
    sub-int v7, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    .line 561
    .local v7, "widthRemaining":I
    const/4 v8, 0x0

    .line 562
    .local v8, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    move-result v9

    .line 563
    .local v9, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2b
    const/16 v11, 0x8

    if-ge v10, v1, :cond_a3

    .line 564
    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 565
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v11, :cond_3e

    .line 566
    move/from16 v16, v2

    move/from16 v17, v9

    goto :goto_9c

    .line 569
    :cond_3e
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuView$LayoutParams;

    .line 570
    .local v11, "p":Landroid/widget/ActionMenuView$LayoutParams;
    iget-boolean v13, v11, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v13, :cond_83

    .line 571
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 572
    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 573
    add-int/2addr v4, v3

    .line 576
    :cond_53
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 579
    .local v13, "height":I
    if-eqz v9, :cond_63

    .line 580
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v14

    iget v15, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    .line 581
    .local v14, "l":I
    add-int v15, v14, v4

    .local v15, "r":I
    goto :goto_72

    .line 583
    .end local v14    # "l":I
    .end local v15    # "r":I
    :cond_63
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v15, v14, v15

    .line 584
    .restart local v15    # "r":I
    sub-int v14, v15, v4

    .line 586
    .restart local v14    # "l":I
    :goto_72
    div-int/lit8 v16, v13, 0x2

    move/from16 v17, v9

    .end local v9    # "isLayoutRtl":Z
    .local v17, "isLayoutRtl":Z
    sub-int v9, v2, v16

    .line 587
    .local v9, "t":I
    move/from16 v16, v2

    .end local v2    # "midVertical":I
    .local v16, "midVertical":I
    add-int v2, v9, v13

    .line 588
    .local v2, "b":I
    invoke-virtual {v12, v14, v9, v15, v2}, Landroid/view/View;->layout(IIII)V

    .line 590
    sub-int/2addr v7, v4

    .line 591
    const/4 v2, 0x1

    .line 592
    .end local v8    # "hasOverflow":Z
    .end local v9    # "t":I
    .end local v13    # "height":I
    .end local v14    # "l":I
    .end local v15    # "r":I
    .local v2, "hasOverflow":Z
    move v8, v2

    goto :goto_9c

    .line 593
    .end local v16    # "midVertical":I
    .end local v17    # "isLayoutRtl":Z
    .local v2, "midVertical":I
    .restart local v8    # "hasOverflow":Z
    .local v9, "isLayoutRtl":Z
    :cond_83
    move/from16 v16, v2

    move/from16 v17, v9

    .end local v2    # "midVertical":I
    .end local v9    # "isLayoutRtl":Z
    .restart local v16    # "midVertical":I
    .restart local v17    # "isLayoutRtl":Z
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v9, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v9

    iget v9, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v9

    .line 594
    .local v2, "size":I
    add-int/2addr v5, v2

    .line 595
    sub-int/2addr v7, v2

    .line 596
    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 597
    add-int/2addr v5, v3

    .line 599
    :cond_9a
    add-int/lit8 v6, v6, 0x1

    .line 563
    .end local v2    # "size":I
    .end local v11    # "p":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v12    # "v":Landroid/view/View;
    :goto_9c
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    move/from16 v9, v17

    goto :goto_2b

    .end local v16    # "midVertical":I
    .end local v17    # "isLayoutRtl":Z
    .local v2, "midVertical":I
    .restart local v9    # "isLayoutRtl":Z
    :cond_a3
    move/from16 v16, v2

    move/from16 v17, v9

    .line 603
    .end local v2    # "midVertical":I
    .end local v9    # "isLayoutRtl":Z
    .end local v10    # "i":I
    .restart local v16    # "midVertical":I
    .restart local v17    # "isLayoutRtl":Z
    const/4 v2, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_cd

    if-nez v8, :cond_cd

    .line 605
    invoke-virtual {v0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 606
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 607
    .local v9, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 608
    .local v10, "height":I
    sub-int v11, p4, p2

    div-int/lit8 v11, v11, 0x2

    .line 609
    .local v11, "midHorizontal":I
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v11, v12

    .line 610
    .local v12, "l":I
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v16, v13

    .line 611
    .local v13, "t":I
    add-int v14, v12, v9

    add-int v15, v13, v10

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 612
    return-void

    .line 615
    .end local v2    # "v":Landroid/view/View;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "midHorizontal":I
    .end local v12    # "l":I
    .end local v13    # "t":I
    :cond_cd
    xor-int/lit8 v9, v8, 0x1

    sub-int v9, v6, v9

    .line 616
    .local v9, "spacerCount":I
    if-lez v9, :cond_d6

    div-int v10, v7, v9

    goto :goto_d7

    :cond_d6
    move v10, v2

    :goto_d7
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 618
    .local v2, "spacerSize":I
    if-eqz v17, :cond_134

    .line 619
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v10, v12

    .line 620
    .local v10, "startRight":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_e7
    if-ge v12, v1, :cond_12f

    .line 621
    invoke-virtual {v0, v12}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 622
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/ActionMenuView$LayoutParams;

    .line 623
    .local v14, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v11, :cond_122

    iget-boolean v15, v14, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_102

    .line 624
    move/from16 v19, v3

    move/from16 v20, v4

    goto :goto_126

    .line 627
    :cond_102
    iget v15, v14, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v15

    .line 628
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 629
    .local v15, "width":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 630
    .local v18, "height":I
    div-int/lit8 v19, v18, 0x2

    sub-int v11, v16, v19

    .line 631
    .local v11, "t":I
    move/from16 v19, v3

    .end local v3    # "dividerWidth":I
    .local v19, "dividerWidth":I
    sub-int v3, v10, v15

    move/from16 v20, v4

    .end local v4    # "overflowWidth":I
    .local v20, "overflowWidth":I
    add-int v4, v11, v18

    invoke-virtual {v13, v3, v11, v10, v4}, Landroid/view/View;->layout(IIII)V

    .line 632
    iget v3, v14, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v15

    add-int/2addr v3, v2

    sub-int/2addr v10, v3

    goto :goto_126

    .line 623
    .end local v11    # "t":I
    .end local v15    # "width":I
    .end local v18    # "height":I
    .end local v19    # "dividerWidth":I
    .end local v20    # "overflowWidth":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "overflowWidth":I
    :cond_122
    move/from16 v19, v3

    move/from16 v20, v4

    .line 620
    .end local v3    # "dividerWidth":I
    .end local v4    # "overflowWidth":I
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v19    # "dividerWidth":I
    .restart local v20    # "overflowWidth":I
    :goto_126
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    const/16 v11, 0x8

    goto :goto_e7

    .end local v19    # "dividerWidth":I
    .end local v20    # "overflowWidth":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "overflowWidth":I
    :cond_12f
    move/from16 v19, v3

    move/from16 v20, v4

    .line 634
    .end local v3    # "dividerWidth":I
    .end local v4    # "overflowWidth":I
    .end local v10    # "startRight":I
    .end local v12    # "i":I
    .restart local v19    # "dividerWidth":I
    .restart local v20    # "overflowWidth":I
    goto :goto_176

    .line 635
    .end local v19    # "dividerWidth":I
    .end local v20    # "overflowWidth":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "overflowWidth":I
    :cond_134
    move/from16 v19, v3

    move/from16 v20, v4

    .end local v3    # "dividerWidth":I
    .end local v4    # "overflowWidth":I
    .restart local v19    # "dividerWidth":I
    .restart local v20    # "overflowWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v3

    .line 636
    .local v3, "startLeft":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13d
    if-ge v4, v1, :cond_176

    .line 637
    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 638
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuView$LayoutParams;

    .line 639
    .local v11, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_171

    iget-boolean v12, v11, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_156

    .line 640
    goto :goto_171

    .line 643
    :cond_156
    iget v12, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v12

    .line 644
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 645
    .local v12, "width":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 646
    .local v14, "height":I
    div-int/lit8 v15, v14, 0x2

    sub-int v15, v16, v15

    .line 647
    .local v15, "t":I
    add-int v13, v3, v12

    add-int v0, v15, v14

    invoke-virtual {v10, v3, v15, v13, v0}, Landroid/view/View;->layout(IIII)V

    .line 648
    iget v0, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v12

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    .line 636
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v12    # "width":I
    .end local v14    # "height":I
    .end local v15    # "t":I
    :cond_171
    :goto_171
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_13d

    .line 651
    .end local v3    # "startLeft":I
    .end local v4    # "i":I
    :cond_176
    :goto_176
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 213
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 214
    .local v0, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v4

    :goto_f
    iput-boolean v1, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 216
    if-eq v0, v1, :cond_15

    .line 217
    iput v4, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 222
    :cond_15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 223
    .local v1, "widthSize":I
    iget-boolean v2, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_2a

    iget v5, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v5, :cond_2a

    .line 224
    iput v1, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 225
    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 228
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v2

    .line 229
    .local v2, "childCount":I
    iget-boolean v3, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v3, :cond_39

    if-lez v2, :cond_39

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto/16 :goto_cc

    .line 233
    :cond_39
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    if-ge v3, v2, :cond_c9

    .line 234
    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 235
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/ActionMenuView$LayoutParams;

    .line 236
    .local v6, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput v4, v6, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v4, v6, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 238
    instance-of v7, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v7, :cond_95

    .line 239
    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalStartPadding:I

    iget v8, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    invoke-virtual {v5, v7, v4, v8, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 241
    iget-boolean v7, p0, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v7, :cond_c5

    .line 242
    add-int/lit8 v7, v2, -0x1

    if-ne v3, v7, :cond_c5

    .line 243
    move-object v7, v5

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 244
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getLayoutDirection()I

    move-result v7

    if-nez v7, :cond_74

    .line 245
    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    iput v7, v6, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 246
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c5

    .line 248
    :cond_74
    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    iput v7, v6, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 249
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c5

    .line 252
    :cond_7c
    move-object v7, v5

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    iget v8, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/ActionMenuItemView;->setMinWidth(I)V

    .line 253
    move-object v7, v5

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v7, v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    move-object v7, v5

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    iget v8, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    iget v9, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v7, v8, v4, v9, v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPaddingRelative(IIII)V

    goto :goto_c5

    .line 260
    :cond_95
    iget-boolean v7, v6, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_c5

    .line 261
    instance-of v7, v5, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    if-eqz v7, :cond_b9

    .line 262
    move-object v7, v5

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 263
    .local v7, "child2":Landroid/view/View;
    iget v8, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    iget v9, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v7, v8, v4, v9, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 265
    iget v8, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 266
    move-object v8, v7

    check-cast v8, Landroid/widget/TextView;

    iget v9, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setWidth(I)V

    .line 267
    .end local v7    # "child2":Landroid/view/View;
    goto :goto_c5

    .line 268
    :cond_b9
    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    iget v8, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v5, v7, v4, v8, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 270
    iget v7, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v5, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 233
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_c5
    :goto_c5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3a

    .line 275
    .end local v3    # "i":I
    :cond_c9
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 277
    :goto_cc
    return-void
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2

    .line 789
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method semGetSumOfDigitsInBadges()I
    .registers 5

    .line 990
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_6

    .line 991
    const/4 v0, 0x0

    return v0

    .line 994
    :cond_6
    const/4 v0, 0x0

    .line 995
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 996
    iget-object v2, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 997
    .local v2, "itemImpl":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 998
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getBadgeText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/ActionMenuView;->getNumericValue(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 995
    .end local v2    # "itemImpl":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1001
    .end local v1    # "i":I
    :cond_2a
    return v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3
    .param p1, "exclusive"    # Z

    .line 864
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_7

    .line 865
    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 867
    :cond_7
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 3
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 779
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 780
    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 781
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 207
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 208
    return-void
.end method

.method public setOverflowBadgeText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .line 1026
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOverflowBadgeText:Ljava/lang/String;

    .line 1027
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 665
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 666
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 667
    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2
    .param p1, "reserveOverflow"    # Z

    .line 688
    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    .line 689
    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 140
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_16

    .line 141
    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 142
    if-nez p1, :cond_d

    .line 143
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_16

    .line 145
    :cond_d
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 148
    :cond_16
    :goto_16
    return-void
.end method

.method public setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .registers 2
    .param p1, "presenter"    # Landroid/widget/ActionMenuPresenter;

    .line 164
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 165
    invoke-virtual {p1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 166
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 798
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
