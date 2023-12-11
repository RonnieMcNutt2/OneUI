.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridView$StretchMode;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GridView"


# instance fields
.field private mAddDeleteGridAnimator:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

.field private mColumnWidth:I

.field private mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mSelectZeroPositionOnKeyTab:Z

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDndGridAnimator(Landroid/widget/GridView;)Lcom/samsung/android/animation/SemDragAndDropGridAnimator;
    .registers 1

    iget-object p0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 159
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 128
    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 130
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 138
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 139
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 141
    const v3, 0x800003

    iput v3, p0, Landroid/widget/GridView;->mGravity:I

    .line 143
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 149
    iput-boolean v1, p0, Landroid/widget/GridView;->mSelectZeroPositionOnKeyTab:Z

    .line 169
    sget-object v3, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 171
    .local v3, "a":Landroid/content/res/TypedArray;
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/GridView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 174
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 176
    .local v5, "hSpacing":I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 178
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 180
    .local v6, "vSpacing":I
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 182
    const/4 v7, 0x3

    invoke-virtual {v3, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 183
    .local v2, "index":I
    if-ltz v2, :cond_4b

    .line 184
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 187
    :cond_4b
    const/4 v7, 0x4

    invoke-virtual {v3, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 188
    .local v7, "columnWidth":I
    if-lez v7, :cond_55

    .line 189
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 192
    :cond_55
    const/4 v8, 0x5

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 193
    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 195
    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 196
    .end local v2    # "index":I
    .local v0, "index":I
    if-ltz v0, :cond_66

    .line 197
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setGravity(I)V

    .line 200
    :cond_66
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .registers 8
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .line 859
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_18

    .line 863
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    .line 867
    .local v0, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, p3

    .line 868
    .local v1, "spaceBelow":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 871
    .local v2, "offset":I
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 873
    .end local v0    # "spaceAbove":I
    .end local v1    # "spaceBelow":I
    .end local v2    # "offset":I
    :cond_18
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .registers 7
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .line 887
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_19

    .line 890
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p2, v0

    .line 894
    .local v0, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v1, p3, v1

    .line 895
    .local v1, "spaceBelow":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 898
    .local v2, "offset":I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 900
    .end local v0    # "spaceAbove":I
    .end local v1    # "spaceBelow":I
    .end local v2    # "offset":I
    :cond_19
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .registers 6

    .line 2516
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2518
    .local v0, "childCount":I
    if-lez v0, :cond_4a

    .line 2522
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_23

    .line 2525
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2526
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 2527
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v3, :cond_1f

    .line 2530
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2532
    :cond_1f
    if-gez v2, :cond_44

    .line 2534
    const/4 v2, 0x0

    goto :goto_44

    .line 2538
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_23
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2539
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 2541
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v4, :cond_41

    .line 2544
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2547
    :cond_41
    if-lez v2, :cond_44

    .line 2549
    const/4 v2, 0x0

    .line 2553
    :cond_44
    :goto_44
    if-eqz v2, :cond_4a

    .line 2554
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 2557
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_4a
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1870
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1871
    return v1

    .line 1874
    :cond_6
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v0, :cond_d

    .line 1875
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1878
    :cond_d
    const/4 v0, 0x0

    .line 1879
    .local v0, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1880
    .local v2, "action":I
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_37

    .line 1881
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_37

    if-eq v2, v4, :cond_37

    .line 1882
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 1883
    if-nez v0, :cond_37

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_37

    .line 1884
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    .line 1885
    const/4 v0, 0x1

    .line 1889
    :cond_37
    iget-boolean v3, p0, Landroid/widget/GridView;->mIsHoveredByMouse:Z

    if-eqz v3, :cond_45

    .line 1890
    iput-boolean v1, p0, Landroid/widget/GridView;->mIsHoveredByMouse:Z

    .line 1891
    const-string v3, "GridView"

    const-string/jumbo v5, "mIsHoveredByMouse false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_45
    if-nez v0, :cond_1ee

    if-eq v2, v4, :cond_1ee

    .line 1896
    const/16 v3, 0x82

    const/16 v5, 0x21

    const/4 v6, 0x2

    sparse-switch p1, :sswitch_data_20c

    goto/16 :goto_1ee

    .line 1960
    :sswitch_53
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1ee

    .line 1961
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_68

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_66

    goto :goto_68

    :cond_66
    move v3, v1

    goto :goto_69

    :cond_68
    :goto_68
    move v3, v4

    :goto_69
    move v0, v3

    goto/16 :goto_1ee

    .line 1954
    :sswitch_6c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1ee

    .line 1955
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_81

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_7f

    goto :goto_81

    :cond_7f
    move v3, v1

    goto :goto_82

    :cond_81
    :goto_81
    move v3, v4

    :goto_82
    move v0, v3

    goto/16 :goto_1ee

    .line 1946
    :sswitch_85
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 1947
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_9a

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_98

    goto :goto_9a

    :cond_98
    move v3, v1

    goto :goto_9b

    :cond_9a
    :goto_9a
    move v3, v4

    :goto_9b
    move v0, v3

    goto/16 :goto_1ee

    .line 1948
    :cond_9e
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_1ee

    .line 1949
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_b3

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_b1

    goto :goto_b3

    :cond_b1
    move v3, v1

    goto :goto_b4

    :cond_b3
    :goto_b3
    move v3, v4

    :goto_b4
    move v0, v3

    goto/16 :goto_1ee

    .line 1938
    :sswitch_b7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 1939
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_cc

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_ca

    goto :goto_cc

    :cond_ca
    move v3, v1

    goto :goto_cd

    :cond_cc
    :goto_cc
    move v3, v4

    :goto_cd
    move v0, v3

    goto/16 :goto_1ee

    .line 1940
    :cond_d0
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1ee

    .line 1941
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_e5

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_e3

    goto :goto_e5

    :cond_e3
    move v3, v1

    goto :goto_e6

    :cond_e5
    :goto_e5
    move v3, v4

    :goto_e6
    move v0, v3

    goto/16 :goto_1ee

    .line 1973
    :sswitch_e9
    iget-boolean v3, p0, Landroid/widget/GridView;->mSelectZeroPositionOnKeyTab:Z

    if-eqz v3, :cond_fc

    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v3, v5, :cond_fc

    .line 1974
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 1975
    return v4

    .line 1979
    :cond_fc
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_115

    .line 1980
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_111

    .line 1981
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v3

    if-eqz v3, :cond_10f

    goto :goto_111

    :cond_10f
    move v3, v1

    goto :goto_112

    :cond_111
    :goto_111
    move v3, v4

    :goto_112
    move v0, v3

    goto/16 :goto_1ee

    .line 1982
    :cond_115
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1ee

    .line 1983
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_12a

    .line 1984
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v3

    if-eqz v3, :cond_128

    goto :goto_12a

    :cond_128
    move v3, v1

    goto :goto_12b

    :cond_12a
    :goto_12a
    move v3, v4

    :goto_12b
    move v0, v3

    goto/16 :goto_1ee

    .line 1907
    :sswitch_12e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_13a

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1ee

    .line 1909
    :cond_13a
    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/GridView;->mSemCurrentFocusPosition:I

    .line 1911
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_14f

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_14d

    goto :goto_14f

    :cond_14d
    move v3, v1

    goto :goto_150

    :cond_14f
    :goto_14f
    move v3, v4

    :goto_150
    move v0, v3

    goto/16 :goto_1ee

    .line 1898
    :sswitch_153
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_15f

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1ee

    .line 1900
    :cond_15f
    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/GridView;->mSemCurrentFocusPosition:I

    .line 1902
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_174

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_172

    goto :goto_174

    :cond_172
    move v3, v1

    goto :goto_175

    :cond_174
    :goto_174
    move v3, v4

    :goto_175
    move v0, v3

    goto/16 :goto_1ee

    .line 1927
    :sswitch_178
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_19e

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_185

    goto :goto_19e

    .line 1932
    :cond_185
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_1ee

    .line 1933
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_19a

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_198

    goto :goto_19a

    :cond_198
    move v3, v1

    goto :goto_19b

    :cond_19a
    :goto_19a
    move v3, v4

    :goto_19b
    move v0, v3

    goto/16 :goto_1ee

    .line 1929
    :cond_19e
    :goto_19e
    iget v5, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/GridView;->mSemCurrentFocusPosition:I

    .line 1931
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1b1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1af

    goto :goto_1b1

    :cond_1af
    move v3, v1

    goto :goto_1b2

    :cond_1b1
    :goto_1b1
    move v3, v4

    :goto_1b2
    move v0, v3

    goto :goto_1ee

    .line 1916
    :sswitch_1b4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_1d9

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1c1

    goto :goto_1d9

    .line 1921
    :cond_1c1
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1ee

    .line 1922
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_1d6

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1d4

    goto :goto_1d6

    :cond_1d4
    move v3, v1

    goto :goto_1d7

    :cond_1d6
    :goto_1d6
    move v3, v4

    :goto_1d7
    move v0, v3

    goto :goto_1ee

    .line 1918
    :cond_1d9
    :goto_1d9
    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/GridView;->mSemCurrentFocusPosition:I

    .line 1920
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_1ec

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1ea

    goto :goto_1ec

    :cond_1ea
    move v3, v1

    goto :goto_1ed

    :cond_1ec
    :goto_1ec
    move v3, v4

    :goto_1ed
    move v0, v3

    .line 1990
    :cond_1ee
    :goto_1ee
    if-eqz v0, :cond_1f1

    .line 1991
    return v4

    .line 1994
    :cond_1f1
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1f8

    .line 1995
    return v4

    .line 1998
    :cond_1f8
    packed-switch v2, :pswitch_data_232

    .line 2006
    return v1

    .line 2004
    :pswitch_1fc
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2002
    :pswitch_201
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2000
    :pswitch_206
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_20c
    .sparse-switch
        0x13 -> :sswitch_1b4
        0x14 -> :sswitch_178
        0x15 -> :sswitch_153
        0x16 -> :sswitch_12e
        0x3d -> :sswitch_e9
        0x5c -> :sswitch_b7
        0x5d -> :sswitch_85
        0x7a -> :sswitch_6c
        0x7b -> :sswitch_53
    .end sparse-switch

    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_206
        :pswitch_201
        :pswitch_1fc
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .registers 14
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .line 671
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 672
    .local v0, "lastPosition":I
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_5f

    if-lez p3, :cond_5f

    .line 674
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 677
    .local v2, "lastChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 679
    .local v3, "lastBottom":I
    iget v4, p0, Landroid/widget/GridView;->mBottom:I

    iget v5, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 683
    .local v4, "end":I
    sub-int v5, v4, v3

    .line 685
    .local v5, "bottomOffset":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 686
    .local v6, "firstChild":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 690
    .local v7, "firstTop":I
    if-lez v5, :cond_5f

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v8, :cond_37

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_5f

    .line 691
    :cond_37
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v8, :cond_44

    .line 693
    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 697
    :cond_44
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 698
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v8, :cond_5f

    .line 701
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_52

    goto :goto_53

    :cond_52
    move v1, p1

    :goto_53
    sub-int/2addr v8, v1

    .line 702
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, p2

    .line 701
    invoke-direct {p0, v8, v1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 704
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 708
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "lastBottom":I
    .end local v4    # "end":I
    .end local v5    # "bottomOffset":I
    .end local v6    # "firstChild":Landroid/view/View;
    .end local v7    # "firstTop":I
    :cond_5f
    return-void
.end method

.method private correctTooLow(III)V
    .registers 14
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .line 711
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_5d

    if-lez p3, :cond_5d

    .line 713
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 716
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 719
    .local v1, "firstTop":I
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 722
    .local v2, "start":I
    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    iget v4, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 726
    .local v3, "end":I
    sub-int v4, v1, v2

    .line 727
    .local v4, "topOffset":I
    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 728
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 729
    .local v6, "lastBottom":I
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, p3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 733
    .local v7, "lastPosition":I
    if-lez v4, :cond_5d

    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_37

    if-le v6, v3, :cond_5d

    .line 734
    :cond_37
    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-ne v7, v9, :cond_42

    .line 736
    sub-int v9, v6, v3

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 740
    :cond_42
    neg-int v9, v4

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 741
    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-ge v7, v9, :cond_5d

    .line 744
    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v9, :cond_50

    goto :goto_51

    :cond_50
    move v8, p1

    :goto_51
    add-int/2addr v8, v7

    .line 745
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    .line 744
    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 747
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 751
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstTop":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "topOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastBottom":I
    .end local v7    # "lastPosition":I
    :cond_5d
    return-void
.end method

.method private determineColumns(I)Z
    .registers 10
    .param p1, "availableSpace"    # I

    .line 1021
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 1022
    .local v0, "requestedHorizontalSpacing":I
    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 1023
    .local v1, "stretchMode":I
    iget v2, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 1024
    .local v2, "requestedColumnWidth":I
    const/4 v3, 0x0

    .line 1026
    .local v3, "didNotInitiallyFit":Z
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    .line 1027
    if-lez v2, :cond_16

    .line 1029
    add-int v4, p1, v0

    add-int v5, v2, v0

    div-int/2addr v4, v5

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_1c

    .line 1033
    :cond_16
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_1c

    .line 1037
    :cond_1a
    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1040
    :goto_1c
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v5, 0x1

    if-gtz v4, :cond_23

    .line 1041
    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1044
    :cond_23
    packed-switch v1, :pswitch_data_66

    .line 1052
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int v6, v4, v2

    sub-int v6, p1, v6

    add-int/lit8 v7, v4, -0x1

    mul-int/2addr v7, v0

    sub-int/2addr v6, v7

    .line 1055
    .local v6, "spaceLeftOver":I
    if-gez v6, :cond_39

    .line 1056
    const/4 v3, 0x1

    goto :goto_39

    .line 1047
    .end local v6    # "spaceLeftOver":I
    :pswitch_34
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1048
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1049
    goto :goto_65

    .line 1059
    .restart local v6    # "spaceLeftOver":I
    :cond_39
    :goto_39
    packed-switch v1, :pswitch_data_6c

    goto :goto_65

    .line 1079
    :pswitch_3d
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1080
    if-le v4, v5, :cond_48

    .line 1081
    add-int/2addr v4, v5

    div-int v4, v6, v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_65

    .line 1084
    :cond_48
    add-int v4, v0, v6

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_65

    .line 1062
    :pswitch_4d
    div-int v4, v6, v4

    add-int/2addr v4, v2

    iput v4, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1063
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1064
    goto :goto_65

    .line 1068
    :pswitch_55
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1069
    if-le v4, v5, :cond_60

    .line 1070
    sub-int/2addr v4, v5

    div-int v4, v6, v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_65

    .line 1073
    :cond_60
    add-int v4, v0, v6

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1075
    nop

    .line 1091
    .end local v6    # "spaceLeftOver":I
    :goto_65
    return v3

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_34
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_55
        :pswitch_4d
        :pswitch_3d
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/GridView;->mBottom:I

    iget v2, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v1, v2

    .line 357
    .local v1, "end":I
    iget v2, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_12

    .line 358
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 361
    :cond_12
    :goto_12
    const/4 v2, 0x1

    if-ge p2, v1, :cond_2e

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v3, :cond_2e

    .line 362
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 363
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_20

    .line 364
    move-object v0, v2

    .line 369
    :cond_20
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 371
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 372
    .end local v2    # "temp":Landroid/view/View;
    goto :goto_12

    .line 374
    :cond_2e
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 375
    return-object v0
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .registers 6
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .line 502
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 503
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 505
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 506
    .local v0, "invertedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int/2addr v1, v2

    .line 508
    .end local p1    # "lastPosition":I
    .local v1, "lastPosition":I
    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 16
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .line 764
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 765
    .local v0, "fadingEdgeLength":I
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 766
    .local v1, "selectedPosition":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 767
    .local v2, "numColumns":I
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 770
    .local v3, "verticalSpacing":I
    const/4 v4, -0x1

    .line 772
    .local v4, "rowEnd":I
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v6, 0x1

    if-nez v5, :cond_15

    .line 773
    rem-int v5, v1, v2

    sub-int v5, v1, v5

    .local v5, "rowStart":I
    goto :goto_2b

    .line 775
    .end local v5    # "rowStart":I
    :cond_15
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    .line 777
    .local v5, "invertedSelection":I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v6

    rem-int v8, v5, v2

    sub-int v8, v5, v8

    sub-int v4, v7, v8

    .line 778
    sub-int v7, v4, v2

    add-int/2addr v7, v6

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v5, v7

    .line 784
    .local v5, "rowStart":I
    :goto_2b
    invoke-direct {p0, p2, v0, v5}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v7

    .line 785
    .local v7, "topSelectionPixel":I
    invoke-direct {p0, p3, v0, v2, v5}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v8

    .line 788
    .local v8, "bottomSelectionPixel":I
    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_39

    move v9, v4

    goto :goto_3a

    :cond_39
    move v9, v5

    :goto_3a
    invoke-direct {p0, v9, p1, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v6

    .line 790
    .local v6, "sel":Landroid/view/View;
    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 792
    iget-object v9, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 793
    .local v9, "referenceView":Landroid/view/View;
    invoke-direct {p0, v9, v7, v8}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 794
    invoke-direct {p0, v9, v7, v8}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 796
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_64

    .line 797
    sub-int v10, v5, v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 798
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 799
    add-int v10, v5, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_7b

    .line 801
    :cond_64
    add-int v10, v4, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 802
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 803
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 807
    :goto_7b
    return-object v6
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 5
    .param p1, "nextTop"    # I

    .line 492
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 493
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 494
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 495
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 497
    :cond_1d
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 498
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .registers 16
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .line 512
    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v0

    .line 513
    .local v0, "selectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 514
    .local v1, "numColumns":I
    iget v2, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 517
    .local v2, "verticalSpacing":I
    const/4 v3, -0x1

    .line 519
    .local v3, "rowEnd":I
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v5, 0x1

    if-nez v4, :cond_13

    .line 520
    rem-int v4, v0, v1

    sub-int v4, v0, v4

    .local v4, "rowStart":I
    goto :goto_29

    .line 522
    .end local v4    # "rowStart":I
    :cond_13
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    .line 524
    .local v4, "invertedSelection":I
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v5

    rem-int v7, v4, v1

    sub-int v7, v4, v7

    sub-int v3, v6, v7

    .line 525
    sub-int v6, v3, v1

    add-int/2addr v6, v5

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v4, v6

    .line 528
    .local v4, "rowStart":I
    :goto_29
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 529
    .local v6, "fadingEdgeLength":I
    invoke-direct {p0, p1, v6, v4}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v7

    .line 531
    .local v7, "topSelectionPixel":I
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_37

    move v8, v3

    goto :goto_38

    :cond_37
    move v8, v4

    :goto_38
    invoke-direct {p0, v8, v7, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v5

    .line 532
    .local v5, "sel":Landroid/view/View;
    iput v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 534
    iget-object v8, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 536
    .local v8, "referenceView":Landroid/view/View;
    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v9, :cond_5f

    .line 537
    add-int v9, v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v10, v2

    invoke-direct {p0, v9, v10}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 538
    invoke-direct {p0, p2}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 539
    sub-int v9, v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-direct {p0, v9, v10}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 540
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_86

    .line 542
    :cond_5f
    invoke-direct {p0, p2, v6, v1, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v9

    .line 544
    .local v9, "bottomSelectionPixel":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v10, v9, v10

    .line 545
    .local v10, "offset":I
    invoke-virtual {p0, v10}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 546
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-direct {p0, v11, v12}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 547
    invoke-direct {p0, p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 548
    add-int v11, v3, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v12, v2

    invoke-direct {p0, v11, v12}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 549
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 552
    .end local v9    # "bottomSelectionPixel":I
    .end local v10    # "offset":I
    :goto_86
    return-object v5
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "top"    # I

    .line 610
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 613
    .local v0, "numColumns":I
    const/4 v1, -0x1

    .line 615
    .local v1, "motionRowEnd":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x1

    if-nez v2, :cond_d

    .line 616
    rem-int v2, p1, v0

    sub-int v2, p1, v2

    .local v2, "motionRowStart":I
    goto :goto_23

    .line 618
    .end local v2    # "motionRowStart":I
    :cond_d
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    .line 620
    .local v2, "invertedSelection":I
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v3

    rem-int v5, v2, v0

    sub-int v5, v2, v5

    sub-int v1, v4, v5

    .line 621
    sub-int v4, v1, v0

    add-int/2addr v4, v3

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v2, v4

    .line 624
    .local v2, "motionRowStart":I
    :goto_23
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v4, :cond_29

    move v4, v1

    goto :goto_2a

    :cond_29
    move v4, v2

    :goto_2a
    invoke-direct {p0, v4, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v3

    .line 627
    .local v3, "temp":Landroid/view/View;
    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 629
    iget-object v4, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 631
    .local v4, "referenceView":Landroid/view/View;
    if-nez v4, :cond_36

    .line 632
    const/4 v5, 0x0

    return-object v5

    .line 635
    :cond_36
    iget v5, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 640
    .local v5, "verticalSpacing":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_5f

    .line 641
    sub-int v6, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-direct {p0, v6, v7}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 642
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 643
    add-int v7, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v5

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 645
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    .line 646
    .local v8, "childCount":I
    if-lez v8, :cond_5e

    .line 647
    invoke-direct {p0, v0, v5, v8}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 649
    .end local v8    # "childCount":I
    :cond_5e
    goto :goto_81

    .line 650
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    :cond_5f
    add-int v6, v1, v0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v5

    invoke-direct {p0, v6, v7}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 651
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 652
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-direct {p0, v6, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 654
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    .line 655
    .restart local v8    # "childCount":I
    if-lez v8, :cond_81

    .line 656
    invoke-direct {p0, v0, v5, v8}, Landroid/widget/GridView;->correctTooLow(III)V

    .line 660
    .end local v8    # "childCount":I
    :cond_81
    :goto_81
    if-eqz v3, :cond_84

    .line 661
    return-object v3

    .line 662
    :cond_84
    if-eqz v6, :cond_87

    .line 663
    return-object v6

    .line 665
    :cond_87
    return-object v7
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 8
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .line 454
    const/4 v0, 0x0

    .line 456
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 457
    .local v1, "end":I
    iget v2, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 458
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 461
    :cond_d
    :goto_d
    const/4 v2, 0x0

    if-le p2, v1, :cond_29

    if-ltz p1, :cond_29

    .line 463
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 464
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_19

    .line 465
    move-object v0, v2

    .line 468
    :cond_19
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 470
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 472
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 473
    .end local v2    # "temp":Landroid/view/View;
    goto :goto_d

    .line 475
    :cond_29
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_35

    .line 476
    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 479
    :cond_35
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 480
    return-object v0
.end method

.method private getBottomSelectionPixel(IIII)I
    .registers 8
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .line 822
    move v0, p1

    .line 823
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    .line 824
    sub-int/2addr v0, p2

    .line 826
    :cond_c
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .line 839
    move v0, p1

    .line 840
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_4

    .line 841
    add-int/2addr v0, p2

    .line 843
    :cond_4
    return v0
.end method

.method private isCandidateSelection(II)Z
    .registers 10
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .line 2246
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2247
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, p1

    .line 2252
    .local v1, "invertedIndex":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1a

    .line 2253
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v5, p1, v2

    sub-int v5, p1, v5

    .line 2254
    .local v5, "rowStart":I
    add-int/2addr v2, v5

    sub-int/2addr v2, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "rowEnd":I
    goto :goto_2a

    .line 2256
    .end local v2    # "rowEnd":I
    .end local v5    # "rowStart":I
    :cond_1a
    add-int/lit8 v2, v0, -0x1

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v6, v1, v5

    sub-int v6, v1, v6

    sub-int/2addr v2, v6

    .line 2257
    .restart local v2    # "rowEnd":I
    sub-int v5, v2, v5

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2260
    .restart local v5    # "rowStart":I
    :goto_2a
    sparse-switch p2, :sswitch_data_56

    .line 2281
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2267
    :sswitch_35
    if-nez v5, :cond_38

    move v3, v4

    :cond_38
    return v3

    .line 2264
    :sswitch_39
    if-ne p1, v5, :cond_3c

    move v3, v4

    :cond_3c
    return v3

    .line 2273
    :sswitch_3d
    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_42

    move v3, v4

    :cond_42
    return v3

    .line 2270
    :sswitch_43
    if-ne p1, v2, :cond_46

    move v3, v4

    :cond_46
    return v3

    .line 2276
    :sswitch_47
    if-ne p1, v5, :cond_4c

    if-nez v5, :cond_4c

    move v3, v4

    :cond_4c
    return v3

    .line 2279
    :sswitch_4d
    if-ne p1, v2, :cond_54

    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_54

    move v3, v4

    :cond_54
    return v3

    nop

    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_4d
        0x2 -> :sswitch_47
        0x11 -> :sswitch_43
        0x21 -> :sswitch_3d
        0x42 -> :sswitch_39
        0x82 -> :sswitch_35
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .registers 19
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .line 1643
    move-object v9, p0

    move v10, p1

    iget-boolean v0, v9, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v0, :cond_1e

    .line 1645
    iget-object v0, v9, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v11

    .line 1646
    .local v11, "activeView":Landroid/view/View;
    if-eqz v11, :cond_1e

    .line 1649
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v11

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 1650
    return-object v11

    .line 1656
    .end local v11    # "activeView":Landroid/view/View;
    :cond_1e
    iget-object v0, v9, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v11

    .line 1659
    .local v11, "child":Landroid/view/View;
    iget-object v0, v9, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    move-object v0, p0

    move-object v1, v11

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 1661
    return-object v11
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .registers 27
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .line 379
    move-object/from16 v7, p0

    iget v8, v7, Landroid/widget/GridView;->mColumnWidth:I

    .line 380
    .local v8, "columnWidth":I
    iget v9, v7, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 382
    .local v9, "horizontalSpacing":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v10

    .line 387
    .local v10, "isLayoutRtl":Z
    const/4 v0, 0x3

    const/4 v11, 0x0

    if-eqz v10, :cond_21

    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    iget-object v2, v7, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v8

    .line 389
    iget v2, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v2, v0, :cond_1e

    move v0, v9

    goto :goto_1f

    :cond_1e
    move v0, v11

    :goto_1f
    sub-int/2addr v1, v0

    .local v1, "nextLeft":I
    goto :goto_2d

    .line 391
    .end local v1    # "nextLeft":I
    :cond_21
    iget-object v1, v7, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 392
    iget v2, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v2, v0, :cond_2b

    move v0, v9

    goto :goto_2c

    :cond_2b
    move v0, v11

    :goto_2c
    add-int/2addr v1, v0

    .line 395
    .restart local v1    # "nextLeft":I
    :goto_2d
    iget-boolean v0, v7, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v13, 0x1

    if-nez v0, :cond_40

    .line 396
    iget v0, v7, Landroid/widget/GridView;->mNumColumns:I

    add-int v0, p1, v0

    iget v2, v7, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move/from16 v14, p1

    move v15, v0

    .local v0, "last":I
    goto :goto_63

    .line 398
    .end local v0    # "last":I
    :cond_40
    add-int/lit8 v0, p1, 0x1

    .line 399
    .restart local v0    # "last":I
    iget v2, v7, Landroid/widget/GridView;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/2addr v2, v13

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 401
    .end local p1    # "startPos":I
    .local v2, "startPos":I
    sub-int v3, v0, v2

    iget v4, v7, Landroid/widget/GridView;->mNumColumns:I

    if-ge v3, v4, :cond_61

    .line 402
    sub-int v3, v0, v2

    sub-int/2addr v4, v3

    add-int v3, v8, v9

    mul-int/2addr v4, v3

    .line 403
    .local v4, "deltaLeft":I
    if-eqz v10, :cond_5b

    const/4 v3, -0x1

    goto :goto_5c

    :cond_5b
    move v3, v13

    :goto_5c
    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    move v15, v0

    move v14, v2

    goto :goto_63

    .line 401
    .end local v4    # "deltaLeft":I
    :cond_61
    move v15, v0

    move v14, v2

    .line 407
    .end local v0    # "last":I
    .end local v2    # "startPos":I
    .local v14, "startPos":I
    .local v15, "last":I
    :goto_63
    const/4 v0, 0x0

    .line 409
    .local v0, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v16

    .line 410
    .local v16, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v17

    .line 411
    .local v17, "inClick":Z
    iget v5, v7, Landroid/widget/GridView;->mSelectedPosition:I

    .line 413
    .local v5, "selectedPosition":I
    const/4 v2, 0x0

    .line 414
    .local v2, "child":Landroid/view/View;
    if-eqz v10, :cond_73

    const/4 v3, -0x1

    goto :goto_74

    :cond_73
    move v3, v13

    :goto_74
    move/from16 v18, v3

    .line 415
    .local v18, "nextChildDir":I
    move v3, v14

    move-object/from16 v19, v0

    move/from16 v20, v1

    move-object v4, v2

    .end local v0    # "selectedView":Landroid/view/View;
    .end local v1    # "nextLeft":I
    .end local v2    # "child":Landroid/view/View;
    .local v3, "pos":I
    .local v4, "child":Landroid/view/View;
    .local v19, "selectedView":Landroid/view/View;
    .local v20, "nextLeft":I
    :goto_7c
    if-ge v3, v15, :cond_ba

    .line 417
    if-ne v3, v5, :cond_82

    move v0, v13

    goto :goto_83

    :cond_82
    move v0, v11

    :goto_83
    move/from16 v21, v0

    .line 420
    .local v21, "selected":Z
    if-eqz p3, :cond_89

    const/4 v6, -0x1

    goto :goto_8c

    :cond_89
    sub-int v0, v3, v14

    move v6, v0

    .line 421
    .local v6, "where":I
    :goto_8c
    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, p2

    move v11, v3

    .end local v3    # "pos":I
    .local v11, "pos":I
    move/from16 v3, p3

    move-object v12, v4

    .end local v4    # "child":Landroid/view/View;
    .local v12, "child":Landroid/view/View;
    move/from16 v4, v20

    move/from16 v22, v5

    .end local v5    # "selectedPosition":I
    .local v22, "selectedPosition":I
    move/from16 v5, v21

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v4

    .line 423
    .end local v12    # "child":Landroid/view/View;
    .restart local v4    # "child":Landroid/view/View;
    mul-int v0, v18, v8

    add-int v20, v20, v0

    .line 424
    add-int/lit8 v0, v15, -0x1

    if-ge v11, v0, :cond_ab

    .line 425
    mul-int v0, v18, v9

    add-int v20, v20, v0

    .line 428
    :cond_ab
    if-eqz v21, :cond_b4

    if-nez v16, :cond_b1

    if-eqz v17, :cond_b4

    .line 429
    :cond_b1
    move-object v0, v4

    move-object/from16 v19, v0

    .line 415
    .end local v6    # "where":I
    .end local v21    # "selected":Z
    :cond_b4
    add-int/lit8 v3, v11, 0x1

    move/from16 v5, v22

    const/4 v11, 0x0

    .end local v11    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_7c

    .end local v22    # "selectedPosition":I
    .restart local v5    # "selectedPosition":I
    :cond_ba
    move v11, v3

    move-object v12, v4

    move/from16 v22, v5

    .line 433
    .end local v3    # "pos":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "selectedPosition":I
    .restart local v12    # "child":Landroid/view/View;
    .restart local v22    # "selectedPosition":I
    iput-object v12, v7, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 435
    if-eqz v19, :cond_c4

    .line 436
    iput-object v12, v7, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 439
    :cond_c4
    return-object v19
.end method

.method private moveSelection(III)Landroid/view/View;
    .registers 21
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .line 936
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 937
    .local v1, "fadingEdgeLength":I
    iget v2, v0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 938
    .local v2, "selectedPosition":I
    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 939
    .local v3, "numColumns":I
    iget v4, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 943
    .local v4, "verticalSpacing":I
    const/4 v5, -0x1

    .line 945
    .local v5, "rowEnd":I
    iget-boolean v6, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_1e

    .line 946
    sub-int v6, v2, p1

    sub-int v9, v2, p1

    rem-int/2addr v9, v3

    sub-int/2addr v6, v9

    .line 948
    .local v6, "oldRowStart":I
    rem-int v9, v2, v3

    sub-int v9, v2, v9

    .local v9, "rowStart":I
    goto :goto_47

    .line 950
    .end local v6    # "oldRowStart":I
    .end local v9    # "rowStart":I
    :cond_1e
    iget v6, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v8

    sub-int/2addr v6, v2

    .line 952
    .local v6, "invertedSelection":I
    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    rem-int v10, v6, v3

    sub-int v10, v6, v10

    sub-int v5, v9, v10

    .line 953
    sub-int v9, v5, v3

    add-int/2addr v9, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 955
    .restart local v9    # "rowStart":I
    iget v10, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v10, v8

    sub-int v11, v2, p1

    sub-int/2addr v10, v11

    .line 956
    .end local v6    # "invertedSelection":I
    .local v10, "invertedSelection":I
    iget v6, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v8

    rem-int v11, v10, v3

    sub-int v11, v10, v11

    sub-int/2addr v6, v11

    .line 957
    .local v6, "oldRowStart":I
    sub-int v11, v6, v3

    add-int/2addr v11, v8

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 960
    .end local v10    # "invertedSelection":I
    :goto_47
    sub-int v10, v9, v6

    .line 962
    .local v10, "rowDelta":I
    move/from16 v11, p2

    invoke-direct {v0, v11, v1, v9}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v12

    .line 963
    .local v12, "topSelectionPixel":I
    move/from16 v13, p3

    invoke-direct {v0, v13, v1, v3, v9}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v14

    .line 967
    .local v14, "bottomSelectionPixel":I
    iput v9, v0, Landroid/widget/GridView;->mFirstPosition:I

    .line 972
    if-lez v10, :cond_78

    .line 977
    iget-object v15, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v15, :cond_5e

    goto :goto_62

    .line 978
    :cond_5e
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v7

    :goto_62
    nop

    .line 980
    .local v7, "oldBottom":I
    iget-boolean v15, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v15, :cond_69

    move v15, v5

    goto :goto_6a

    :cond_69
    move v15, v9

    :goto_6a
    move/from16 v16, v1

    .end local v1    # "fadingEdgeLength":I
    .local v16, "fadingEdgeLength":I
    add-int v1, v7, v4

    invoke-direct {v0, v15, v1, v8}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v1

    .line 981
    .local v1, "sel":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 983
    .local v8, "referenceView":Landroid/view/View;
    invoke-direct {v0, v8, v12, v14}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 984
    .end local v7    # "oldBottom":I
    goto :goto_b2

    .end local v8    # "referenceView":Landroid/view/View;
    .end local v16    # "fadingEdgeLength":I
    .local v1, "fadingEdgeLength":I
    :cond_78
    move/from16 v16, v1

    .end local v1    # "fadingEdgeLength":I
    .restart local v16    # "fadingEdgeLength":I
    if-gez v10, :cond_9a

    .line 988
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v1, :cond_82

    .line 989
    move v1, v7

    goto :goto_86

    :cond_82
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 991
    .local v1, "oldTop":I
    :goto_86
    iget-boolean v8, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_8c

    move v8, v5

    goto :goto_8d

    :cond_8c
    move v8, v9

    :goto_8d
    sub-int v15, v1, v4

    invoke-direct {v0, v8, v15, v7}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v7

    .line 992
    .local v7, "sel":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 994
    .restart local v8    # "referenceView":Landroid/view/View;
    invoke-direct {v0, v8, v12, v14}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 995
    .end local v1    # "oldTop":I
    move-object v1, v7

    goto :goto_b2

    .line 999
    .end local v7    # "sel":Landroid/view/View;
    .end local v8    # "referenceView":Landroid/view/View;
    :cond_9a
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v1, :cond_9f

    .line 1000
    goto :goto_a3

    :cond_9f
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    :goto_a3
    move v1, v7

    .line 1002
    .restart local v1    # "oldTop":I
    iget-boolean v7, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v7, :cond_aa

    move v7, v5

    goto :goto_ab

    :cond_aa
    move v7, v9

    :goto_ab
    invoke-direct {v0, v7, v1, v8}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v7

    .line 1003
    .restart local v7    # "sel":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v1, v7

    .line 1006
    .end local v7    # "sel":Landroid/view/View;
    .local v1, "sel":Landroid/view/View;
    .restart local v8    # "referenceView":Landroid/view/View;
    :goto_b2
    iget-boolean v7, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v7, :cond_ce

    .line 1007
    sub-int v7, v9, v3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 1008
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1009
    add-int v7, v9, v3

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_e5

    .line 1011
    :cond_ce
    add-int v7, v5, v3

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 1012
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1013
    add-int/lit8 v7, v9, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 1016
    :goto_e5
    return-object v1
.end method

.method private pinToBottom(I)V
    .registers 5
    .param p1, "childrenBottom"    # I

    .line 566
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 567
    .local v0, "count":I
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v1, v2, :cond_1c

    .line 568
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 569
    .local v1, "bottom":I
    sub-int v2, p1, v1

    .line 570
    .local v2, "offset":I
    if-lez v2, :cond_1c

    .line 571
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 574
    .end local v1    # "bottom":I
    .end local v2    # "offset":I
    :cond_1c
    return-void
.end method

.method private pinToTop(I)V
    .registers 4
    .param p1, "childrenTop"    # I

    .line 556
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_14

    .line 557
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 558
    .local v0, "top":I
    sub-int v1, p1, v0

    .line 559
    .local v1, "offset":I
    if-gez v1, :cond_14

    .line 560
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 563
    .end local v0    # "top":I
    .end local v1    # "offset":I
    :cond_14
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .registers 26
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "isAttachedToWindow"    # Z
    .param p8, "where"    # I

    .line 1684
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p8

    const-string/jumbo v4, "setupGridItem"

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1686
    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz p6, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v8

    if-eqz v8, :cond_1c

    move v8, v4

    goto :goto_1d

    :cond_1c
    move v8, v7

    .line 1687
    .local v8, "isSelected":Z
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eq v8, v9, :cond_25

    move v9, v4

    goto :goto_26

    :cond_25
    move v9, v7

    .line 1688
    .local v9, "updateChildSelected":Z
    :goto_26
    iget v10, v0, Landroid/widget/GridView;->mTouchMode:I

    .line 1689
    .local v10, "mode":I
    if-lez v10, :cond_33

    const/4 v11, 0x3

    if-ge v10, v11, :cond_33

    iget v11, v0, Landroid/widget/GridView;->mMotionPosition:I

    if-ne v11, v2, :cond_33

    move v11, v4

    goto :goto_34

    :cond_33
    move v11, v7

    .line 1691
    .local v11, "isPressed":Z
    :goto_34
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v12

    if-eq v11, v12, :cond_3c

    move v12, v4

    goto :goto_3d

    :cond_3c
    move v12, v7

    .line 1692
    .local v12, "updateChildPressed":Z
    :goto_3d
    if-eqz p7, :cond_4a

    if-nez v9, :cond_4a

    .line 1693
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v13

    if-eqz v13, :cond_48

    goto :goto_4a

    :cond_48
    move v13, v7

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v13, v4

    .line 1697
    .local v13, "needToMeasure":Z
    :goto_4b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1698
    .local v14, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v14, :cond_5a

    .line 1699
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1701
    :cond_5a
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1702
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1707
    if-eqz v9, :cond_74

    .line 1708
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1709
    if-eqz v8, :cond_74

    .line 1710
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    .line 1714
    :cond_74
    if-eqz v12, :cond_79

    .line 1715
    invoke-virtual {v1, v11}, Landroid/view/View;->setPressed(Z)V

    .line 1718
    :cond_79
    iget v15, v0, Landroid/widget/GridView;->mChoiceMode:I

    if-eqz v15, :cond_a9

    iget-object v15, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_a9

    .line 1719
    instance-of v15, v1, Landroid/widget/Checkable;

    if-eqz v15, :cond_92

    .line 1720
    move-object v15, v1

    check-cast v15, Landroid/widget/Checkable;

    iget-object v5, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v15, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_a9

    .line 1721
    :cond_92
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_a9

    .line 1723
    iget-object v5, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    .line 1727
    :cond_a9
    :goto_a9
    if-eqz p7, :cond_c2

    iget-boolean v5, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-nez v5, :cond_c2

    .line 1728
    invoke-virtual {v0, v1, v3, v14}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1732
    if-eqz p7, :cond_be

    .line 1733
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v5, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v5, v2, :cond_c7

    .line 1735
    :cond_be
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_c7

    .line 1738
    :cond_c2
    iput-boolean v7, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1739
    invoke-virtual {v0, v1, v3, v14, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1742
    :cond_c7
    :goto_c7
    if-eqz v13, :cond_e6

    .line 1743
    nop

    .line 1744
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1743
    invoke-static {v5, v7, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1746
    .local v5, "childHeightSpec":I
    iget v6, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1747
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v6, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1746
    invoke-static {v6, v7, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 1748
    .local v6, "childWidthSpec":I
    invoke-virtual {v1, v6, v5}, Landroid/view/View;->measure(II)V

    .line 1749
    .end local v5    # "childHeightSpec":I
    .end local v6    # "childWidthSpec":I
    goto :goto_e9

    .line 1750
    :cond_e6
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    .line 1753
    :goto_e9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1754
    .local v5, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1757
    .local v6, "h":I
    if-eqz p4, :cond_f6

    move/from16 v7, p3

    goto :goto_f8

    :cond_f6
    sub-int v7, p3, v6

    .line 1759
    .local v7, "childTop":I
    :goto_f8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v15

    .line 1760
    .local v15, "layoutDirection":I
    iget v4, v0, Landroid/widget/GridView;->mGravity:I

    invoke-static {v4, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    .line 1761
    .local v4, "absoluteGravity":I
    and-int/lit8 v16, v4, 0x7

    packed-switch v16, :pswitch_data_150

    .line 1772
    :pswitch_107
    move/from16 v2, p5

    .local v2, "childLeft":I
    goto :goto_11b

    .line 1769
    .end local v2    # "childLeft":I
    :pswitch_10a
    iget v2, v0, Landroid/widget/GridView;->mColumnWidth:I

    add-int v2, p5, v2

    sub-int/2addr v2, v5

    .line 1770
    .restart local v2    # "childLeft":I
    goto :goto_11b

    .line 1763
    .end local v2    # "childLeft":I
    :pswitch_110
    move/from16 v2, p5

    .line 1764
    .restart local v2    # "childLeft":I
    goto :goto_11b

    .line 1766
    .end local v2    # "childLeft":I
    :pswitch_113
    iget v2, v0, Landroid/widget/GridView;->mColumnWidth:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int v2, p5, v2

    .line 1767
    .restart local v2    # "childLeft":I
    nop

    .line 1776
    :goto_11b
    if-eqz v13, :cond_127

    .line 1777
    add-int v3, v2, v5

    .line 1778
    .local v3, "childRight":I
    move/from16 v16, v4

    .end local v4    # "absoluteGravity":I
    .local v16, "absoluteGravity":I
    add-int v4, v7, v6

    .line 1779
    .local v4, "childBottom":I
    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1780
    .end local v3    # "childRight":I
    .end local v4    # "childBottom":I
    goto :goto_13b

    .line 1781
    .end local v16    # "absoluteGravity":I
    .local v4, "absoluteGravity":I
    :cond_127
    move/from16 v16, v4

    .end local v4    # "absoluteGravity":I
    .restart local v16    # "absoluteGravity":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1782
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v7, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1785
    :goto_13b
    iget-boolean v3, v0, Landroid/widget/GridView;->mCachingStarted:Z

    if-eqz v3, :cond_149

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_149

    .line 1786
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1789
    :cond_149
    const-wide/16 v3, 0x8

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1790
    return-void

    nop

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_113
        :pswitch_107
        :pswitch_110
        :pswitch_107
        :pswitch_10a
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .registers 12
    .param p1, "direction"    # I

    .line 2072
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 2073
    .local v0, "selectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2078
    .local v1, "numColumns":I
    const/4 v2, 0x0

    .line 2080
    .local v2, "moved":Z
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1a

    .line 2081
    div-int v3, v0, v1

    mul-int/2addr v3, v1

    .line 2082
    .local v3, "startOfRowPos":I
    add-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "endOfRowPos":I
    goto :goto_30

    .line 2084
    .end local v3    # "startOfRowPos":I
    .end local v5    # "endOfRowPos":I
    :cond_1a
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    .line 2085
    .local v3, "invertedSelection":I
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    div-int v6, v3, v1

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    .line 2086
    .restart local v5    # "endOfRowPos":I
    sub-int v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v3, v6

    .line 2089
    .local v3, "startOfRowPos":I
    :goto_30
    const/4 v6, 0x6

    sparse-switch p1, :sswitch_data_a6

    goto :goto_5a

    .line 2098
    :sswitch_35
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_5a

    .line 2099
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2100
    add-int v7, v0, v1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2101
    const/4 v2, 0x1

    goto :goto_5a

    .line 2091
    :sswitch_4c
    if-lez v3, :cond_5a

    .line 2092
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2093
    sub-int v7, v0, v1

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2094
    const/4 v2, 0x1

    .line 2106
    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v7

    .line 2107
    .local v7, "isLayoutRtl":Z
    const/16 v8, 0x42

    const/16 v9, 0x11

    if-le v0, v3, :cond_79

    if-ne p1, v9, :cond_68

    if-eqz v7, :cond_6c

    :cond_68
    if-ne p1, v8, :cond_79

    if-eqz v7, :cond_79

    .line 2109
    :cond_6c
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2110
    add-int/lit8 v6, v0, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2111
    const/4 v2, 0x1

    goto :goto_93

    .line 2112
    :cond_79
    if-ge v0, v5, :cond_93

    if-ne p1, v9, :cond_7f

    if-nez v7, :cond_83

    :cond_7f
    if-ne p1, v8, :cond_93

    if-nez v7, :cond_93

    .line 2114
    :cond_83
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2115
    add-int/lit8 v4, v0, 0x1

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2116
    const/4 v2, 0x1

    .line 2119
    :cond_93
    :goto_93
    if-eqz v2, :cond_9f

    .line 2120
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 2121
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 2124
    :cond_9f
    if-eqz v2, :cond_a4

    .line 2125
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 2128
    :cond_a4
    return v2

    nop

    :sswitch_data_a6
    .sparse-switch
        0x21 -> :sswitch_4c
        0x82 -> :sswitch_35
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .line 1187
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1190
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_e

    .line 1191
    new-instance v1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {v1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    move-object v0, v1

    .line 1192
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1195
    :cond_e
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1196
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1197
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1198
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, p4, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1200
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_2d

    .line 1201
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v1, p3, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1202
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, p3, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_44

    .line 1204
    :cond_2d
    add-int/lit8 v1, p4, -0x1

    sub-int/2addr v1, p3

    .line 1206
    .local v1, "invertedIndex":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v3, v2, -0x1

    rem-int v2, v1, v2

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1207
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1209
    .end local v1    # "invertedIndex":I
    :goto_44
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 11

    .line 2561
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2562
    .local v0, "count":I
    const/4 v1, 0x0

    if-lez v0, :cond_43

    .line 2563
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2564
    .local v2, "numColumns":I
    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v2

    .line 2566
    .local v3, "rowCount":I
    mul-int/lit8 v4, v3, 0x64

    .line 2568
    .local v4, "extent":I
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2569
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2570
    .local v5, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v6, v7

    .line 2571
    .local v6, "height":I
    if-lez v6, :cond_25

    .line 2572
    mul-int/lit8 v7, v5, 0x64

    div-int/2addr v7, v6

    add-int/2addr v4, v7

    .line 2575
    :cond_25
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2576
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 2577
    .local v7, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v8, v9

    .line 2578
    .end local v6    # "height":I
    .local v8, "height":I
    if-lez v8, :cond_42

    .line 2579
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v6

    sub-int v6, v7, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v8

    sub-int/2addr v4, v6

    .line 2582
    :cond_42
    return v4

    .line 2584
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "numColumns":I
    .end local v3    # "rowCount":I
    .end local v4    # "extent":I
    .end local v5    # "top":I
    .end local v7    # "bottom":I
    .end local v8    # "height":I
    :cond_43
    return v1
.end method

.method protected computeVerticalScrollOffset()I
    .registers 12

    .line 2589
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_51

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_51

    .line 2590
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2591
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2592
    .local v2, "top":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v4

    .line 2593
    .local v3, "height":I
    if-lez v3, :cond_51

    .line 2594
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2595
    .local v4, "numColumns":I
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v4

    .line 2599
    .local v5, "rowCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v6

    if-eqz v6, :cond_30

    mul-int v6, v5, v4

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v7

    goto :goto_31

    .line 2600
    :cond_30
    move v6, v1

    :goto_31
    nop

    .line 2601
    .local v6, "oddItemsOnFirstRow":I
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v6

    div-int/2addr v7, v4

    .line 2602
    .local v7, "whichRow":I
    mul-int/lit8 v8, v7, 0x64

    mul-int/lit8 v9, v2, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v9, v9

    .line 2603
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v5

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 2602
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 2606
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "top":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "oddItemsOnFirstRow":I
    .end local v7    # "whichRow":I
    :cond_51
    return v1
.end method

.method protected computeVerticalScrollRange()I
    .registers 6

    .line 2612
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2613
    .local v0, "numColumns":I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    .line 2614
    .local v1, "rowCount":I
    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2615
    .local v2, "result":I
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v3, :cond_27

    .line 2617
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 2619
    :cond_27
    return v2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1308
    iget-object v0, p0, Landroid/widget/GridView;->mAddDeleteGridAnimator:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    if-eqz v0, :cond_7

    .line 1309
    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 1312
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1314
    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_11

    .line 1315
    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1317
    :cond_11
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 1285
    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_c

    .line 1286
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 1289
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1291
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v1, :cond_17

    .line 1292
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1295
    :cond_17
    return v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 2702
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2703
    const-string/jumbo v0, "numColumns"

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2704
    return-void
.end method

.method fillGap(Z)V
    .registers 9
    .param p1, "down"    # Z

    .line 305
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 306
    .local v0, "numColumns":I
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 308
    .local v1, "verticalSpacing":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 310
    .local v2, "count":I
    const/16 v3, 0x22

    if-eqz p1, :cond_3a

    .line 311
    const/4 v4, 0x0

    .line 312
    .local v4, "paddingTop":I
    iget v5, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_16

    .line 313
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v4

    .line 315
    :cond_16
    if-lez v2, :cond_24

    .line 316
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_25

    :cond_24
    move v3, v4

    .line 317
    .local v3, "startOffset":I
    :goto_25
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v5, v2

    .line 318
    .local v5, "position":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v6, :cond_2f

    .line 319
    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    .line 321
    :cond_2f
    invoke-direct {p0, v5, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 322
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 323
    .end local v3    # "startOffset":I
    .end local v4    # "paddingTop":I
    .end local v5    # "position":I
    goto :goto_6a

    .line 324
    :cond_3a
    const/4 v4, 0x0

    .line 325
    .local v4, "paddingBottom":I
    iget v5, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_44

    .line 326
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v4

    .line 328
    :cond_44
    if-lez v2, :cond_51

    .line 329
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_56

    :cond_51
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    .line 330
    .restart local v3    # "startOffset":I
    :goto_56
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 331
    .restart local v5    # "position":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_5e

    .line 332
    sub-int/2addr v5, v0

    goto :goto_60

    .line 334
    :cond_5e
    add-int/lit8 v5, v5, -0x1

    .line 336
    :goto_60
    invoke-direct {p0, v5, v3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 337
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/GridView;->correctTooLow(III)V

    .line 339
    .end local v3    # "startOffset":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "position":I
    :goto_6a
    return-void
.end method

.method findMotionRow(I)I
    .registers 6
    .param p1, "y"    # I

    .line 578
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 579
    .local v0, "childCount":I
    if-lez v0, :cond_34

    .line 581
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 582
    .local v1, "numColumns":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_20

    .line 583
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1f

    .line 584
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1d

    .line 585
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v2

    return v3

    .line 583
    :cond_1d
    add-int/2addr v2, v1

    goto :goto_d

    .end local v2    # "i":I
    :cond_1f
    goto :goto_34

    .line 589
    :cond_20
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    :goto_22
    if-ltz v2, :cond_34

    .line 590
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_32

    .line 591
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v2

    return v3

    .line 589
    :cond_32
    sub-int/2addr v2, v1

    goto :goto_22

    .line 596
    .end local v1    # "numColumns":I
    .end local v2    # "i":I
    :cond_34
    :goto_34
    const/4 v1, -0x1

    return v1
.end method

.method fullScroll(I)Z
    .registers 5
    .param p1, "direction"    # I

    .line 2043
    const/4 v0, 0x0

    .line 2044
    .local v0, "moved":Z
    const/16 v1, 0x21

    const/4 v2, 0x2

    if-ne p1, v1, :cond_11

    .line 2045
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2046
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2047
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 2048
    const/4 v0, 0x1

    goto :goto_22

    .line 2049
    :cond_11
    const/16 v1, 0x82

    if-ne p1, v1, :cond_22

    .line 2050
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2051
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2052
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 2053
    const/4 v0, 0x1

    .line 2056
    :cond_22
    :goto_22
    if-eqz v0, :cond_27

    .line 2057
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 2060
    :cond_27
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 2624
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 77
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 1264
    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 1266
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getColumnWidth()I
    .registers 2

    .line 2462
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .line 2312
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .registers 2

    .line 2349
    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 2508
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .registers 2

    .line 2479
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .registers 2

    .line 2369
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .registers 2

    .line 2430
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .registers 2

    .line 2402
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .registers 27

    .line 1348
    move-object/from16 v1, p0

    iget-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1349
    .local v2, "blockLayoutRequests":Z
    const/4 v0, 0x1

    if-nez v2, :cond_9

    .line 1350
    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1354
    :cond_9
    const/4 v3, 0x0

    :try_start_a
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1356
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    .line 1358
    iget-object v4, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_2e3

    if-nez v4, :cond_24

    .line 1359
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1360
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1f

    .line 1619
    if-nez v2, :cond_1e

    .line 1620
    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1361
    :cond_1e
    return-void

    .line 1619
    :catchall_1f
    move-exception v0

    move/from16 v19, v2

    goto/16 :goto_2e6

    .line 1364
    :cond_24
    :try_start_24
    iget-object v4, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 1365
    .local v4, "childrenTop":I
    iget v5, v1, Landroid/widget/GridView;->mBottom:I

    iget v6, v1, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 1367
    .local v5, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    .line 1369
    .local v6, "childCount":I
    const/4 v7, 0x0

    .line 1372
    .local v7, "delta":I
    const/4 v8, 0x0

    .line 1373
    .local v8, "oldSel":Landroid/view/View;
    const/4 v9, 0x0

    .line 1374
    .local v9, "oldFirst":Landroid/view/View;
    const/4 v10, 0x0

    .line 1377
    .local v10, "newSel":Landroid/view/View;
    iget v11, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v11, :pswitch_data_2ec

    .line 1396
    iget v11, v1, Landroid/widget/GridView;->mSelectedPosition:I
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_2e3

    goto :goto_5d

    .line 1390
    :pswitch_42
    :try_start_42
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    if-ltz v11, :cond_6e

    .line 1391
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/GridView;->mSelectedPosition:I

    sub-int v7, v11, v12

    goto :goto_6e

    .line 1379
    :pswitch_4d
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v11, v12

    .line 1380
    .local v11, "index":I
    if-ltz v11, :cond_6e

    if-ge v11, v6, :cond_6e

    .line 1381
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_1f

    move-object v10, v12

    goto :goto_6e

    .line 1388
    .end local v11    # "index":I
    :pswitch_5c
    goto :goto_6e

    .line 1396
    :goto_5d
    :try_start_5d
    iget v12, v1, Landroid/widget/GridView;->mFirstPosition:I
    :try_end_5f
    .catchall {:try_start_5d .. :try_end_5f} :catchall_2e3

    sub-int/2addr v11, v12

    .line 1397
    .restart local v11    # "index":I
    if-ltz v11, :cond_69

    if-ge v11, v6, :cond_69

    .line 1398
    :try_start_64
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_1f

    move-object v8, v12

    .line 1402
    :cond_69
    :try_start_69
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    .line 1405
    .end local v11    # "index":I
    :cond_6e
    :goto_6e
    iget-boolean v11, v1, Landroid/widget/GridView;->mDataChanged:Z
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_2e3

    .line 1406
    .local v11, "dataChanged":Z
    if-eqz v11, :cond_75

    .line 1407
    :try_start_72
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_1f

    .line 1412
    :cond_75
    :try_start_75
    iget v12, v1, Landroid/widget/GridView;->mItemCount:I
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_2e3

    if-nez v12, :cond_84

    .line 1413
    :try_start_79
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1414
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_1f

    .line 1619
    if-nez v2, :cond_83

    .line 1620
    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1415
    :cond_83
    return-void

    .line 1418
    :cond_84
    :try_start_84
    iget v12, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    invoke-virtual {v1, v12}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1420
    const/4 v12, 0x0

    .line 1421
    .local v12, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v13, 0x0

    .line 1422
    .local v13, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v14, -0x1

    .line 1424
    .local v14, "accessibilityFocusPosition":I
    const/4 v15, 0x0

    .line 1430
    .local v15, "mInsideViewAccFocused":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v16
    :try_end_91
    .catchall {:try_start_84 .. :try_end_91} :catchall_2e3

    .line 1431
    .local v16, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v16, :cond_d1

    .line 1432
    :try_start_93
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1433
    .local v18, "focusHost":Landroid/view/View;
    move-object/from16 v3, v18

    .end local v18    # "focusHost":Landroid/view/View;
    .local v3, "focusHost":Landroid/view/View;
    if-eqz v3, :cond_ce

    .line 1434
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v19, v18

    .line 1436
    .local v19, "focusChild":Landroid/view/View;
    move-object/from16 v0, v19

    .end local v19    # "focusChild":Landroid/view/View;
    .local v0, "focusChild":Landroid/view/View;
    if-eq v3, v0, :cond_a8

    .line 1437
    const/4 v15, 0x1

    .line 1440
    :cond_a8
    if-eqz v0, :cond_cb

    .line 1441
    if-eqz v11, :cond_bc

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v19

    if-nez v19, :cond_bc

    move-object/from16 v19, v12

    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v19, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-boolean v12, v1, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    if-eqz v12, :cond_b9

    goto :goto_be

    :cond_b9
    move-object/from16 v12, v19

    goto :goto_c4

    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_bc
    move-object/from16 v19, v12

    .line 1445
    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_be
    move-object v13, v3

    .line 1446
    nop

    .line 1447
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v12

    .line 1451
    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_c4
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v19
    :try_end_c8
    .catchall {:try_start_93 .. :try_end_c8} :catchall_1f

    move/from16 v14, v19

    goto :goto_d5

    .line 1440
    :cond_cb
    move-object/from16 v19, v12

    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_d5

    .line 1433
    .end local v0    # "focusChild":Landroid/view/View;
    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_ce
    move-object/from16 v19, v12

    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_d3

    .line 1431
    .end local v3    # "focusHost":Landroid/view/View;
    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_d1
    move-object/from16 v19, v12

    .line 1458
    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_d3
    move-object/from16 v12, v19

    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_d5
    :try_start_d5
    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1459
    .local v0, "firstPosition":I
    iget-object v3, v1, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;
    :try_end_d9
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_2e3

    .line 1461
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v11, :cond_fc

    .line 1462
    const/16 v19, 0x0

    move/from16 v20, v11

    move/from16 v11, v19

    .local v11, "i":I
    .local v20, "dataChanged":Z
    :goto_e1
    if-ge v11, v6, :cond_f7

    .line 1463
    move/from16 v19, v2

    .end local v2    # "blockLayoutRequests":Z
    .local v19, "blockLayoutRequests":Z
    :try_start_e5
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move/from16 v21, v15

    .end local v15    # "mInsideViewAccFocused":Z
    .local v21, "mInsideViewAccFocused":Z
    add-int v15, v0, v11

    invoke-virtual {v3, v2, v15}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1462
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v19

    move/from16 v15, v21

    goto :goto_e1

    .end local v19    # "blockLayoutRequests":Z
    .end local v21    # "mInsideViewAccFocused":Z
    .restart local v2    # "blockLayoutRequests":Z
    .restart local v15    # "mInsideViewAccFocused":Z
    :cond_f7
    move/from16 v19, v2

    move/from16 v21, v15

    .end local v2    # "blockLayoutRequests":Z
    .end local v11    # "i":I
    .end local v15    # "mInsideViewAccFocused":Z
    .restart local v19    # "blockLayoutRequests":Z
    .restart local v21    # "mInsideViewAccFocused":Z
    goto :goto_105

    .line 1466
    .end local v19    # "blockLayoutRequests":Z
    .end local v20    # "dataChanged":Z
    .end local v21    # "mInsideViewAccFocused":Z
    .restart local v2    # "blockLayoutRequests":Z
    .local v11, "dataChanged":Z
    .restart local v15    # "mInsideViewAccFocused":Z
    :cond_fc
    move/from16 v19, v2

    move/from16 v20, v11

    move/from16 v21, v15

    .end local v2    # "blockLayoutRequests":Z
    .end local v11    # "dataChanged":Z
    .end local v15    # "mInsideViewAccFocused":Z
    .restart local v19    # "blockLayoutRequests":Z
    .restart local v20    # "dataChanged":Z
    .restart local v21    # "mInsideViewAccFocused":Z
    invoke-virtual {v3, v6, v0}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1470
    :goto_105
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1471
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1473
    iget v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    const/4 v11, -0x1

    packed-switch v2, :pswitch_data_2fc

    .line 1501
    if-nez v6, :cond_18e

    .line 1502
    iget-boolean v2, v1, Landroid/widget/GridView;->mStackFromBottom:Z

    goto :goto_15b

    .line 1498
    :pswitch_116
    invoke-direct {v1, v7, v4, v5}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v2

    .line 1499
    .local v2, "sel":Landroid/view/View;
    goto/16 :goto_1c2

    .line 1494
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_11c
    iget v2, v1, Landroid/widget/GridView;->mSyncPosition:I

    iget v15, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v15}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1495
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_1c2

    .line 1491
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_126
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v15, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v15}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1492
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_1c2

    .line 1487
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_130
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    .line 1488
    .restart local v2    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1489
    goto/16 :goto_1c2

    .line 1475
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_13d
    if-eqz v10, :cond_149

    .line 1476
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_1c2

    .line 1478
    .end local v2    # "sel":Landroid/view/View;
    :cond_149
    invoke-direct {v1, v4, v5}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v2

    .line 1480
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_1c2

    .line 1482
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_14f
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1483
    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .line 1484
    .restart local v2    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1485
    goto/16 :goto_1c2

    .line 1502
    .end local v2    # "sel":Landroid/view/View;
    :goto_15b
    if-nez v2, :cond_173

    .line 1503
    iget-object v2, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_16a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_168

    goto :goto_16a

    .line 1504
    :cond_168
    const/4 v2, 0x0

    goto :goto_16b

    :cond_16a
    :goto_16a
    move v2, v11

    .line 1503
    :goto_16b
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1505
    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto :goto_1c2

    .line 1507
    .end local v2    # "sel":Landroid/view/View;
    :cond_173
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    .line 1508
    .local v2, "last":I
    iget-object v15, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v15, :cond_184

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v15

    if-eqz v15, :cond_182

    goto :goto_184

    .line 1509
    :cond_182
    move v15, v2

    goto :goto_185

    :cond_184
    :goto_184
    move v15, v11

    .line 1508
    :goto_185
    invoke-virtual {v1, v15}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1510
    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v15

    move-object v2, v15

    .line 1511
    .local v2, "sel":Landroid/view/View;
    goto :goto_1c2

    .line 1513
    .end local v2    # "sel":Landroid/view/View;
    :cond_18e
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-ltz v2, :cond_1a7

    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v15, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v15, :cond_1a7

    .line 1514
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-nez v8, :cond_19e

    .line 1515
    move v15, v4

    goto :goto_1a2

    :cond_19e
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    .line 1514
    :goto_1a2
    invoke-direct {v1, v2, v15}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto :goto_1c2

    .line 1516
    .end local v2    # "sel":Landroid/view/View;
    :cond_1a7
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    iget v15, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v15, :cond_1bc

    .line 1517
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v9, :cond_1b3

    .line 1518
    move v15, v4

    goto :goto_1b7

    :cond_1b3
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v15

    .line 1517
    :goto_1b7
    invoke-direct {v1, v2, v15}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto :goto_1c2

    .line 1520
    .end local v2    # "sel":Landroid/view/View;
    :cond_1bc
    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v15

    move-object v2, v15

    .line 1527
    .restart local v2    # "sel":Landroid/view/View;
    :goto_1c2
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1529
    if-eqz v2, :cond_1d3

    .line 1530
    invoke-virtual {v1, v11, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1531
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v15

    iput v15, v1, Landroid/widget/GridView;->mSelectedTop:I

    move/from16 v23, v0

    goto :goto_218

    .line 1533
    :cond_1d3
    iget v15, v1, Landroid/widget/GridView;->mTouchMode:I

    if-lez v15, :cond_1de

    iget v15, v1, Landroid/widget/GridView;->mTouchMode:I

    const/4 v11, 0x3

    if-ge v15, v11, :cond_1de

    const/4 v11, 0x1

    goto :goto_1df

    :cond_1de
    const/4 v11, 0x0

    .line 1535
    .local v11, "inTouchMode":Z
    :goto_1df
    if-eqz v11, :cond_1f4

    .line 1537
    iget v15, v1, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v23, v0

    .end local v0    # "firstPosition":I
    .local v23, "firstPosition":I
    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v15, v0

    invoke-virtual {v1, v15}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1538
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1f3

    .line 1539
    iget v15, v1, Landroid/widget/GridView;->mMotionPosition:I

    invoke-virtual {v1, v15, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1541
    .end local v0    # "child":Landroid/view/View;
    :cond_1f3
    goto :goto_218

    .end local v23    # "firstPosition":I
    .local v0, "firstPosition":I
    :cond_1f4
    move/from16 v23, v0

    .end local v0    # "firstPosition":I
    .restart local v23    # "firstPosition":I
    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v0, v15, :cond_210

    iget-boolean v0, v1, Landroid/widget/GridView;->mIsHoveredByMouse:Z

    if-nez v0, :cond_210

    .line 1545
    iget v0, v1, Landroid/widget/GridView;->mSelectorPosition:I

    iget v15, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v0, v15

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1546
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_20f

    .line 1547
    iget v15, v1, Landroid/widget/GridView;->mSelectorPosition:I

    invoke-virtual {v1, v15, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1549
    .end local v0    # "child":Landroid/view/View;
    :cond_20f
    goto :goto_218

    .line 1551
    :cond_210
    const/4 v15, 0x0

    iput v15, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1552
    iget-object v0, v1, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1557
    .end local v11    # "inTouchMode":Z
    :goto_218
    const/4 v0, 0x0

    if-eqz v16, :cond_2b2

    .line 1558
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v11

    .line 1559
    .local v11, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v11, :cond_278

    .line 1560
    if-eqz v13, :cond_257

    .line 1561
    invoke-virtual {v13}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v15

    if-eqz v15, :cond_252

    .line 1562
    nop

    .line 1563
    invoke-virtual {v13}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v15

    .line 1564
    .local v15, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v12, :cond_24a

    if-eqz v15, :cond_24a

    .line 1565
    nop

    .line 1566
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v24

    .line 1565
    invoke-static/range {v24 .. v25}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v18

    move/from16 v22, v18

    .line 1567
    .local v22, "virtualViewId":I
    move-object/from16 v24, v2

    .end local v2    # "sel":Landroid/view/View;
    .local v24, "sel":Landroid/view/View;
    const/16 v2, 0x40

    move-object/from16 v25, v3

    move/from16 v3, v22

    .end local v22    # "virtualViewId":I
    .local v3, "virtualViewId":I
    .local v25, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {v15, v3, v2, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1569
    nop

    .end local v3    # "virtualViewId":I
    goto :goto_277

    .line 1564
    .end local v24    # "sel":Landroid/view/View;
    .end local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v2    # "sel":Landroid/view/View;
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_24a
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .line 1570
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v24    # "sel":Landroid/view/View;
    .restart local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {v13}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_277

    .line 1561
    .end local v15    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v24    # "sel":Landroid/view/View;
    .end local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v2    # "sel":Landroid/view/View;
    .restart local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_252
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v24    # "sel":Landroid/view/View;
    .restart local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    goto :goto_25b

    .line 1560
    .end local v24    # "sel":Landroid/view/View;
    .end local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v2    # "sel":Landroid/view/View;
    .restart local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_257
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .line 1572
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v24    # "sel":Landroid/view/View;
    .restart local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :goto_25b
    const/4 v2, -0x1

    if-eq v14, v2, :cond_277

    .line 1574
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int v2, v14, v2

    .line 1576
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    .line 1574
    const/4 v15, 0x0

    invoke-static {v2, v15, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 1577
    .local v2, "position":I
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1578
    .local v3, "restoreView":Landroid/view/View;
    if-eqz v3, :cond_276

    .line 1579
    invoke-virtual {v3}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 1581
    .end local v2    # "position":I
    .end local v3    # "restoreView":Landroid/view/View;
    :cond_276
    goto :goto_2b6

    .line 1572
    :cond_277
    :goto_277
    goto :goto_2b6

    .line 1583
    .end local v24    # "sel":Landroid/view/View;
    .end local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v2, "sel":Landroid/view/View;
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_278
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v24    # "sel":Landroid/view/View;
    .restart local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    const/4 v2, -0x1

    if-eq v14, v2, :cond_2b6

    .line 1584
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int v2, v14, v2

    .line 1585
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    .line 1584
    const/4 v15, 0x0

    invoke-static {v2, v15, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 1587
    .local v2, "position":I
    if-eqz v21, :cond_29d

    .line 1588
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .local v3, "restoreView":Landroid/view/View;
    goto :goto_2a1

    .line 1590
    .end local v3    # "restoreView":Landroid/view/View;
    :cond_29d
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1592
    .restart local v3    # "restoreView":Landroid/view/View;
    :goto_2a1
    invoke-virtual {v11}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v15

    if-eqz v15, :cond_2b6

    if-eq v11, v3, :cond_2b6

    .line 1593
    invoke-virtual {v11}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 1594
    if-eqz v3, :cond_2b6

    .line 1595
    invoke-virtual {v3}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_2b6

    .line 1557
    .end local v11    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v24    # "sel":Landroid/view/View;
    .end local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v2, "sel":Landroid/view/View;
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_2b2
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .line 1602
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v24    # "sel":Landroid/view/View;
    .restart local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_2b6
    :goto_2b6
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    .line 1603
    iput-boolean v2, v1, Landroid/widget/GridView;->mDataChanged:Z

    .line 1604
    iget-object v2, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_2c6

    .line 1605
    iget-object v2, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 1606
    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1608
    :cond_2c6
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mNeedSync:Z

    .line 1609
    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1611
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1613
    iget v0, v1, Landroid/widget/GridView;->mItemCount:I

    if-lez v0, :cond_2d8

    .line 1614
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1617
    :cond_2d8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_2db
    .catchall {:try_start_e5 .. :try_end_2db} :catchall_2e1

    .line 1619
    .end local v4    # "childrenTop":I
    .end local v5    # "childrenBottom":I
    .end local v6    # "childCount":I
    .end local v7    # "delta":I
    .end local v8    # "oldSel":Landroid/view/View;
    .end local v9    # "oldFirst":Landroid/view/View;
    .end local v10    # "newSel":Landroid/view/View;
    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v14    # "accessibilityFocusPosition":I
    .end local v16    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v20    # "dataChanged":Z
    .end local v21    # "mInsideViewAccFocused":Z
    .end local v23    # "firstPosition":I
    .end local v24    # "sel":Landroid/view/View;
    .end local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-nez v19, :cond_2e0

    .line 1620
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1623
    :cond_2e0
    return-void

    .line 1619
    :catchall_2e1
    move-exception v0

    goto :goto_2e6

    .end local v19    # "blockLayoutRequests":Z
    .local v2, "blockLayoutRequests":Z
    :catchall_2e3
    move-exception v0

    move/from16 v19, v2

    .end local v2    # "blockLayoutRequests":Z
    .restart local v19    # "blockLayoutRequests":Z
    :goto_2e6
    if-nez v19, :cond_2eb

    .line 1620
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1622
    :cond_2eb
    throw v0

    :pswitch_data_2ec
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_4d
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_42
    .end packed-switch

    :pswitch_data_2fc
    .packed-switch 0x1
        :pswitch_14f
        :pswitch_13d
        :pswitch_130
        :pswitch_126
        :pswitch_11c
        :pswitch_116
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 6
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 289
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 290
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_15

    .line 294
    :cond_c
    if-ltz p1, :cond_14

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, v2, :cond_13

    goto :goto_14

    .line 297
    :cond_13
    return p1

    .line 295
    :cond_14
    :goto_14
    return v1

    .line 291
    :cond_15
    :goto_15
    return v1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 11
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2192
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2194
    const/4 v0, -0x1

    .line 2195
    .local v0, "closestChildIndex":I
    if-eqz p1, :cond_37

    if-eqz p3, :cond_37

    .line 2196
    iget v1, p0, Landroid/widget/GridView;->mScrollX:I

    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2200
    iget-object v1, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 2201
    .local v1, "otherRect":Landroid/graphics/Rect;
    const v2, 0x7fffffff

    .line 2202
    .local v2, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    .line 2203
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_37

    .line 2205
    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v5

    if-nez v5, :cond_22

    .line 2206
    goto :goto_34

    .line 2209
    :cond_22
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2210
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2211
    invoke-virtual {p0, v5, v1}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2212
    invoke-static {p3, v1, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 2214
    .local v6, "distance":I
    if-ge v6, v2, :cond_34

    .line 2215
    move v2, v6

    .line 2216
    move v0, v4

    .line 2203
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "distance":I
    :cond_34
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 2221
    .end local v1    # "otherRect":Landroid/graphics/Rect;
    .end local v2    # "minDistance":I
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_37
    if-ltz v0, :cond_40

    .line 2222
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_43

    .line 2224
    :cond_40
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 2227
    :goto_43
    if-eqz p1, :cond_51

    iget-object v1, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v1, :cond_51

    .line 2228
    new-instance v1, Landroid/widget/GridView$3;

    invoke-direct {v1, p0}, Landroid/widget/GridView$3;-><init>(Landroid/widget/GridView;)V

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 2235
    :cond_51
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2673
    move-object v0, p0

    move/from16 v1, p2

    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2675
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v2

    .line 2676
    .local v2, "count":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v3

    .line 2677
    .local v3, "columnsCount":I
    div-int v4, v2, v3

    .line 2681
    .local v4, "rowsCount":I
    iget-boolean v5, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v5, :cond_19

    .line 2682
    rem-int v5, v1, v3

    .line 2683
    .local v5, "column":I
    div-int v6, v1, v3

    .local v6, "row":I
    goto :goto_28

    .line 2685
    .end local v5    # "column":I
    .end local v6    # "row":I
    :cond_19
    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v1

    .line 2687
    .local v5, "invertedIndex":I
    add-int/lit8 v6, v3, -0x1

    rem-int v7, v5, v3

    sub-int/2addr v6, v7

    .line 2688
    .local v6, "column":I
    add-int/lit8 v7, v4, -0x1

    div-int v8, v5, v3

    sub-int/2addr v7, v8

    move v5, v6

    move v6, v7

    .line 2691
    .local v5, "column":I
    .local v6, "row":I
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/AbsListView$LayoutParams;

    .line 2692
    .local v7, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v7, :cond_37

    iget v8, v7, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_37

    const/4 v8, 0x1

    goto :goto_38

    :cond_37
    const/4 v8, 0x0

    :goto_38
    move v12, v8

    .line 2693
    .local v12, "isHeading":Z
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v14

    .line 2694
    .local v14, "isSelected":Z
    const/4 v9, 0x1

    const/4 v11, 0x1

    move v8, v6

    move v10, v5

    move v13, v14

    invoke-static/range {v8 .. v13}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v8

    .line 2696
    .local v8, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    move-object/from16 v9, p3

    invoke-virtual {v9, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 2697
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2630
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2632
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 2633
    .local v0, "columnsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v1

    div-int/2addr v1, v0

    .line 2634
    .local v1, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    move-result v2

    .line 2635
    .local v2, "selectionMode":I
    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v3

    .line 2637
    .local v3, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2639
    if-gtz v0, :cond_1c

    if-lez v1, :cond_21

    .line 2640
    :cond_1c
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2642
    :cond_21
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1228
    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    .line 1230
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1856
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1861
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1866
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1097
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1099
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1100
    .local v1, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1101
    .local v2, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1102
    .local v3, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1104
    .local v4, "heightSize":I
    if-nez v1, :cond_34

    .line 1105
    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    if-lez v5, :cond_26

    .line 1106
    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    .end local v3    # "widthSize":I
    .local v5, "widthSize":I
    goto :goto_2f

    .line 1108
    .end local v5    # "widthSize":I
    .restart local v3    # "widthSize":I
    :cond_26
    iget-object v5, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    .line 1110
    .end local v3    # "widthSize":I
    .restart local v5    # "widthSize":I
    :goto_2f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v3, v5

    .line 1113
    .end local v5    # "widthSize":I
    .restart local v3    # "widthSize":I
    :cond_34
    iget-object v5, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 1114
    .local v5, "childWidth":I
    invoke-direct {v0, v5}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v6

    .line 1116
    .local v6, "didNotInitiallyFit":Z
    const/4 v7, 0x0

    .line 1117
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1119
    .local v8, "childState":I
    iget-object v9, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v9, :cond_4c

    move v9, v10

    goto :goto_52

    :cond_4c
    iget-object v9, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    :goto_52
    iput v9, v0, Landroid/widget/GridView;->mItemCount:I

    .line 1120
    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    .line 1121
    .local v9, "count":I
    const/4 v12, 0x1

    if-lez v9, :cond_bf

    .line 1122
    iget-object v13, v0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {v0, v10, v13}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    .line 1124
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1125
    .local v14, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v14, :cond_71

    .line 1126
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1127
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1129
    :cond_71
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v10}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1130
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v10}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1131
    iput-boolean v12, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1133
    nop

    .line 1134
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v15

    iget v12, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1133
    invoke-static {v15, v10, v12}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v12

    .line 1136
    .local v12, "childHeightSpec":I
    iget v15, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1137
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1136
    invoke-static {v11, v10, v15}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v10

    .line 1138
    .local v10, "childWidthSpec":I
    invoke-virtual {v13, v10, v12}, Landroid/view/View;->measure(II)V

    .line 1140
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1141
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v8, v11}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v8

    .line 1143
    iget-object v11, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v11, v15}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_bf

    .line 1144
    iget-object v11, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v15, -0x1

    invoke-virtual {v11, v13, v15}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1148
    .end local v10    # "childWidthSpec":I
    .end local v12    # "childHeightSpec":I
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_bf
    if-nez v2, :cond_d3

    .line 1149
    iget-object v10, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    add-int/2addr v10, v7

    .line 1150
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    add-int v4, v10, v11

    .line 1153
    :cond_d3
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_f4

    .line 1154
    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    .line 1156
    .local v11, "ourSize":I
    iget v12, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 1157
    .local v12, "numColumns":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_e3
    if-ge v13, v9, :cond_f3

    .line 1158
    add-int/2addr v11, v7

    .line 1159
    add-int v14, v13, v12

    if-ge v14, v9, :cond_ed

    .line 1160
    iget v14, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v11, v14

    .line 1162
    :cond_ed
    if-lt v11, v4, :cond_f1

    .line 1163
    move v11, v4

    .line 1164
    goto :goto_f3

    .line 1157
    :cond_f1
    add-int/2addr v13, v12

    goto :goto_e3

    .line 1167
    .end local v13    # "i":I
    :cond_f3
    :goto_f3
    move v4, v11

    .line 1170
    .end local v11    # "ourSize":I
    .end local v12    # "numColumns":I
    :cond_f4
    if-ne v1, v10, :cond_115

    iget v10, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_115

    .line 1171
    iget v11, v0, Landroid/widget/GridView;->mColumnWidth:I

    mul-int/2addr v11, v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    iget v12, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    mul-int/2addr v10, v12

    add-int/2addr v11, v10

    iget-object v10, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iget-object v10, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v10

    .line 1174
    .restart local v11    # "ourSize":I
    if-gt v11, v3, :cond_112

    if-eqz v6, :cond_115

    .line 1175
    :cond_112
    const/high16 v10, 0x1000000

    or-int/2addr v3, v10

    .line 1179
    .end local v11    # "ourSize":I
    :cond_115
    invoke-virtual {v0, v3, v4}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 1180
    move/from16 v10, p1

    iput v10, v0, Landroid/widget/GridView;->mWidthMeasureSpec:I

    .line 1181
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1244
    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    .line 1246
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .line 1334
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V

    .line 1336
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_11

    .line 1337
    new-instance v0, Landroid/widget/GridView$2;

    invoke-direct {v0, p0}, Landroid/widget/GridView$2;-><init>(Landroid/widget/GridView;)V

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 1343
    :cond_11
    return-void
.end method

.method pageScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2017
    const/4 v0, -0x1

    .line 2019
    .local v0, "nextPage":I
    const/16 v1, 0x21

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_13

    .line 2020
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_25

    .line 2021
    :cond_13
    const/16 v1, 0x82

    if-ne p1, v1, :cond_25

    .line 2022
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v2

    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2025
    :cond_25
    :goto_25
    if-ltz v0, :cond_31

    .line 2026
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2027
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 2028
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 2029
    return v2

    .line 2032
    :cond_31
    return v3
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 2647
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2648
    return v1

    .line 2651
    :cond_8
    packed-switch p1, :pswitch_data_2a

    goto :goto_28

    .line 2655
    :pswitch_c
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 2656
    .local v0, "numColumns":I
    const-string v2, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2657
    .local v2, "row":I
    mul-int v3, v2, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2658
    .local v3, "position":I
    if-ltz v2, :cond_28

    .line 2661
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 2662
    return v1

    .line 2667
    .end local v0    # "numColumns":I
    .end local v2    # "row":I
    .end local v3    # "position":I
    :cond_28
    :goto_28
    const/4 v0, 0x0

    return v0

    :pswitch_data_2a
    .packed-switch 0x1020037
        :pswitch_c
    .end packed-switch
.end method

.method public semEnableSelectZeroOnLastFocusTab(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2779
    iput-boolean p1, p0, Landroid/widget/GridView;->mSelectZeroPositionOnKeyTab:Z

    .line 2780
    return-void
.end method

.method public semSetAppWidgetEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2716
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetEnabled(Z)V

    .line 2717
    return-void
.end method

.method public semSetFastScrollEnabledForAppWidget(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2750
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledForAppWidget(Z)V

    .line 2751
    return-void
.end method

.method public semSetGoToTopEnabledForAppWidget(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2727
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetGoToTopEnabledForAppWidget(Z)V

    .line 2728
    return-void
.end method

.method public semSetGoToTopOffsetForAppWidget(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2739
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetGoToTopOffsetForAppWidget(I)V

    .line 2740
    return-void
.end method

.method public semSetScrollBarBottomPadding(I)V
    .registers 2
    .param p1, "scrollBarBottomPadding"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2760
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetScrollBarBottomPadding(I)V

    .line 2761
    return-void
.end method

.method public semSetScrollBarTopPadding(I)V
    .registers 2
    .param p1, "scrollBarTopPadding"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2770
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetScrollBarTopPadding(I)V

    .line 2771
    return-void
.end method

.method sequenceScroll(I)Z
    .registers 13
    .param p1, "direction"    # I

    .line 2137
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 2138
    .local v0, "selectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2139
    .local v1, "numColumns":I
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    .line 2143
    .local v2, "count":I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_19

    .line 2144
    div-int v3, v0, v1

    mul-int/2addr v3, v1

    .line 2145
    .local v3, "startOfRow":I
    add-int v6, v3, v1

    sub-int/2addr v6, v5

    add-int/lit8 v7, v2, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "endOfRow":I
    goto :goto_2a

    .line 2147
    .end local v3    # "startOfRow":I
    .end local v6    # "endOfRow":I
    :cond_19
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v0

    .line 2148
    .local v3, "invertedSelection":I
    add-int/lit8 v6, v2, -0x1

    div-int v7, v3, v1

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    .line 2149
    .restart local v6    # "endOfRow":I
    sub-int v7, v6, v1

    add-int/2addr v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v3, v7

    .line 2152
    .local v3, "startOfRow":I
    :goto_2a
    const/4 v7, 0x0

    .line 2153
    .local v7, "moved":Z
    const/4 v8, 0x0

    .line 2154
    .local v8, "showScroll":Z
    const/4 v9, 0x6

    packed-switch p1, :pswitch_data_62

    goto :goto_50

    .line 2156
    :pswitch_31
    add-int/lit8 v10, v2, -0x1

    if-ge v0, v10, :cond_50

    .line 2158
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2159
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2160
    const/4 v7, 0x1

    .line 2162
    if-ne v0, v6, :cond_40

    move v4, v5

    :cond_40
    move v8, v4

    goto :goto_50

    .line 2167
    :pswitch_42
    if-lez v0, :cond_50

    .line 2169
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2170
    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2171
    const/4 v7, 0x1

    .line 2173
    if-ne v0, v3, :cond_4f

    move v4, v5

    :cond_4f
    move v8, v4

    .line 2178
    :cond_50
    :goto_50
    if-eqz v7, :cond_5c

    .line 2179
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 2180
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 2183
    :cond_5c
    if-eqz v8, :cond_61

    .line 2184
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 2187
    :cond_61
    return v7

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_42
        :pswitch_31
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 77
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 244
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_f

    .line 245
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 248
    :cond_f
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 249
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 250
    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    .line 253
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    .line 256
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6d

    .line 259
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    iput v0, p0, Landroid/widget/GridView;->mOldItemCount:I

    .line 260
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mItemCount:I

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    .line 262
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 264
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 265
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 267
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 270
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    .line 271
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    goto :goto_63

    .line 273
    .end local v0    # "position":I
    :cond_5f
    invoke-virtual {p0, v2, v0}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 275
    .restart local v0    # "position":I
    :goto_63
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 276
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 277
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 278
    .end local v0    # "position":I
    goto :goto_73

    .line 279
    :cond_6d
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 281
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 284
    :goto_73
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 285
    return-void
.end method

.method public setAddDeleteGridAnimator(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V
    .registers 2
    .param p1, "animator"    # Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    .line 206
    iput-object p1, p0, Landroid/widget/GridView;->mAddDeleteGridAnimator:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    .line 207
    return-void
.end method

.method public setColumnWidth(I)V
    .registers 3
    .param p1, "columnWidth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2442
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_9

    .line 2443
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 2444
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2446
    :cond_9
    return-void
.end method

.method public setDndGridAnimator(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V
    .registers 4
    .param p1, "animator"    # Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    .line 211
    iput-object p1, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setChildrenDrawingOrderEnabled(Z)V

    .line 213
    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    new-instance v1, Landroid/widget/GridView$1;

    invoke-direct {v1, p0}, Landroid/widget/GridView$1;-><init>(Landroid/widget/GridView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V

    .line 219
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2297
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 2298
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 2299
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2301
    :cond_9
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3
    .param p1, "horizontalSpacing"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2326
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_9

    .line 2327
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 2328
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2330
    :cond_9
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3
    .param p1, "numColumns"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2491
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_9

    .line 2492
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 2493
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2495
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 234
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 235
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .line 1802
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1803
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    goto :goto_c

    .line 1805
    :cond_a
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    .line 1807
    :goto_c
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1808
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_18

    .line 1809
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1811
    :cond_18
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1813
    invoke-virtual {p0}, Landroid/widget/GridView;->semShowGoToTOP()V

    .line 1815
    return-void
.end method

.method setSelectionInt(I)V
    .registers 9
    .param p1, "position"    # I

    .line 1824
    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1826
    .local v0, "previousSelectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 1829
    .local v1, "tmpFirstPosition":I
    iget-object v2, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_d

    .line 1830
    iget-object v2, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1833
    :cond_d
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1834
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1836
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_1f

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int/2addr v2, v3

    goto :goto_21

    .line 1837
    :cond_1f
    iget v2, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    :goto_21
    nop

    .line 1838
    .local v2, "next":I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_2c

    .line 1839
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    goto :goto_2d

    :cond_2c
    move v3, v0

    .line 1841
    .local v3, "previous":I
    :goto_2d
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v5, v2, v4

    .line 1842
    .local v5, "nextRow":I
    div-int v4, v3, v4

    .line 1845
    .local v4, "previousRow":I
    iget v6, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eq v1, v6, :cond_3a

    invoke-virtual {p0}, Landroid/widget/GridView;->semShowGoToTOP()V

    .line 1848
    :cond_3a
    if-eq v5, v4, :cond_3f

    .line 1849
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1852
    :cond_3f
    return-void
.end method

.method public setStretchMode(I)V
    .registers 3
    .param p1, "stretchMode"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2415
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_9

    .line 2416
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 2417
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2419
    :cond_9
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 3
    .param p1, "verticalSpacing"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2385
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_9

    .line 2386
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 2387
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2389
    :cond_9
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 919
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 920
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 909
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 910
    return-void
.end method
