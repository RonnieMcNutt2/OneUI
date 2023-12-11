.class public Landroid/widget/SemHorizontalListView;
.super Landroid/widget/SemHorizontalAbsListView;
.source "SemHorizontalListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;,
        Landroid/widget/SemHorizontalListView$FixedViewInfo;,
        Landroid/widget/SemHorizontalListView$FocusSelector;,
        Landroid/widget/SemHorizontalListView$ItemInfoTag;
    }
.end annotation


# static fields
.field private static final BITS_PER_LONG:I = 0x40

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemHorizontalListView"

.field private static final XML_FIXED_SIZE_ITEMS_ATTRIBUTE:Ljava/lang/String; = "fixed_size_items"

.field private static final XML_SEC_ANDROID_NAMESPACE:Ljava/lang/String; = "http://schemas.android.samsung.com.samsung.android"


# instance fields
.field private mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

.field private final mFixedSizeItems:Z

.field private mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field mIsFolderTypeFeature:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDndListAnimator(Landroid/widget/SemHorizontalListView;)Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 145
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 146
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    .line 165
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 168
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    .line 172
    new-instance v2, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;-><init>(Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult-IA;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    .line 305
    sget-object v2, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 308
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 310
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_3d

    .line 311
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    :cond_3d
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 316
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_46

    .line 318
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 321
    :cond_46
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 323
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_50

    .line 324
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :cond_50
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 329
    .local v6, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_5a

    .line 330
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 334
    :cond_5a
    const/4 v7, 0x2

    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 336
    .local v7, "dividerHeight":I
    if-eqz v7, :cond_64

    .line 337
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->setDividerHeight(I)V

    .line 340
    :cond_64
    const/4 v8, 0x3

    invoke-virtual {v2, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    .line 341
    const/4 v8, 0x4

    invoke-virtual {v2, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    .line 343
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    if-eqz p2, :cond_82

    .line 346
    const-string v0, "http://schemas.android.samsung.com.samsung.android"

    const-string v8, "fixed_size_items"

    invoke-interface {p2, v0, v8, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    goto :goto_84

    .line 349
    :cond_82
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    .line 351
    :goto_84
    return-void
.end method

.method private addViewLeftSide(Landroid/view/View;I)Landroid/view/View;
    .registers 14
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 4273
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_7

    .line 4274
    add-int/lit8 v0, p2, 0x1

    .local v0, "abovePosition":I
    goto :goto_9

    .line 4275
    .end local v0    # "abovePosition":I
    :cond_7
    add-int/lit8 v0, p2, -0x1

    .line 4276
    .restart local v0    # "abovePosition":I
    :goto_9
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 4277
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int v10, v1, v2

    .line 4279
    .local v10, "edgeOfNewChild":I
    if-eqz v9, :cond_2b

    .line 4280
    const/4 v5, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    const/4 v7, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v8, v1, v2

    move-object v1, p0

    move-object v2, v9

    move v3, v0

    move v4, v10

    invoke-direct/range {v1 .. v8}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4283
    :cond_2b
    return-object v9
.end method

.method private addViewRightSide(Landroid/view/View;I)Landroid/view/View;
    .registers 14
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 4287
    add-int/lit8 v8, p2, 0x1

    .line 4288
    .local v8, "belowPosition":I
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 4289
    .local v9, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 4290
    .local v0, "edgeOfNewChild":I
    if-eqz p1, :cond_15

    .line 4291
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int v0, v1, v2

    move v10, v0

    goto :goto_16

    .line 4290
    :cond_15
    move v10, v0

    .line 4293
    .end local v0    # "edgeOfNewChild":I
    .local v10, "edgeOfNewChild":I
    :goto_16
    if-eqz v9, :cond_2a

    .line 4294
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4297
    :cond_2a
    return-object v9
.end method

.method private adjustViewsLeftOrRight()V
    .registers 6

    .line 371
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 374
    .local v0, "childCount":I
    if-lez v0, :cond_8b

    .line 377
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_46

    .line 380
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 382
    .local v1, "child":Landroid/view/View;
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_22

    .line 383
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .local v2, "delta":I
    goto :goto_2b

    .line 385
    .end local v2    # "delta":I
    :cond_22
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 387
    .restart local v2    # "delta":I
    :goto_2b
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-eqz v3, :cond_3a

    .line 390
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_37

    .line 391
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    goto :goto_3a

    .line 393
    :cond_37
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 395
    :cond_3a
    :goto_3a
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_42

    .line 396
    if-lez v2, :cond_85

    .line 397
    const/4 v2, 0x0

    goto :goto_85

    .line 399
    :cond_42
    if-gez v2, :cond_85

    .line 402
    const/4 v2, 0x0

    goto :goto_85

    .line 407
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_46
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 409
    .restart local v1    # "child":Landroid/view/View;
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_5a

    .line 410
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .restart local v2    # "delta":I
    goto :goto_68

    .line 411
    .end local v2    # "delta":I
    :cond_5a
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 412
    .restart local v2    # "delta":I
    :goto_68
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v3, v4, :cond_7a

    .line 415
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_77

    .line 416
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    goto :goto_7a

    .line 418
    :cond_77
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 421
    :cond_7a
    :goto_7a
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_82

    .line 422
    if-gez v2, :cond_85

    .line 423
    const/4 v2, 0x0

    goto :goto_85

    .line 425
    :cond_82
    if-lez v2, :cond_85

    .line 428
    const/4 v2, 0x0

    .line 433
    :cond_85
    :goto_85
    if-eqz v2, :cond_8b

    .line 434
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 437
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_8b
    return-void
.end method

.method private amountToScroll(II)I
    .registers 14
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .line 3772
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 3773
    .local v0, "listRight":I
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 3775
    .local v1, "listLeft":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    .line 3777
    .local v2, "numChildren":I
    const/16 v3, 0x42

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_b3

    .line 3778
    add-int/lit8 v3, v2, -0x1

    .line 3779
    .local v3, "indexToMakeVisible":I
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_1e

    .line 3780
    const/4 v3, 0x0

    .line 3782
    :cond_1e
    if-eq p2, v4, :cond_24

    .line 3783
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v6

    .line 3785
    :cond_24
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_3e

    .line 3786
    :goto_28
    if-gez v3, :cond_51

    .line 3788
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v6, v7}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    .line 3789
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 3790
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v6

    goto :goto_28

    .line 3793
    :cond_3e
    :goto_3e
    if-gt v2, v3, :cond_51

    .line 3795
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    .line 3796
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 3799
    :cond_51
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v3

    .line 3800
    .local v6, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3802
    .local v7, "viewToMakeVisible":Landroid/view/View;
    move v8, v0

    .line 3803
    .local v8, "goalRight":I
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_60

    if-lez v6, :cond_6b

    goto :goto_66

    :cond_60
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_6b

    .line 3804
    :goto_66
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v9

    sub-int/2addr v8, v9

    .line 3807
    :cond_6b
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    if-gt v9, v8, :cond_72

    .line 3809
    return v5

    .line 3812
    :cond_72
    if-eq p2, v4, :cond_81

    .line 3813
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v8, v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v4, v9, :cond_81

    .line 3815
    return v5

    .line 3818
    :cond_81
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, v8

    .line 3820
    .local v4, "amountToScroll":I
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_8f

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v9, :cond_aa

    goto :goto_96

    :cond_8f
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v2

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ne v9, v10, :cond_aa

    .line 3822
    :goto_96
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_9b

    goto :goto_9d

    :cond_9b
    add-int/lit8 v5, v2, -0x1

    :goto_9d
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v0

    .line 3823
    .local v5, "max":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3826
    .end local v5    # "max":I
    :cond_aa
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5

    .line 3828
    .end local v3    # "indexToMakeVisible":I
    .end local v4    # "amountToScroll":I
    .end local v6    # "positionToMakeVisible":I
    .end local v7    # "viewToMakeVisible":Landroid/view/View;
    .end local v8    # "goalRight":I
    :cond_b3
    const/4 v3, 0x0

    .line 3829
    .restart local v3    # "indexToMakeVisible":I
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_ba

    .line 3830
    add-int/lit8 v3, v2, -0x1

    .line 3832
    :cond_ba
    if-eq p2, v4, :cond_c0

    .line 3833
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v6

    .line 3835
    :cond_c0
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_d7

    .line 3836
    :goto_c4
    if-gt v2, v3, :cond_ed

    .line 3838
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    .line 3839
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    .line 3842
    :cond_d7
    :goto_d7
    if-gez v3, :cond_ed

    .line 3844
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v6, v7}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    .line 3845
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 3846
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v6

    goto :goto_d7

    .line 3849
    :cond_ed
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v3

    .line 3850
    .restart local v6    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3851
    .restart local v7    # "viewToMakeVisible":Landroid/view/View;
    move v8, v1

    .line 3852
    .local v8, "goalLeft":I
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_100

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_107

    goto :goto_102

    :cond_100
    if-lez v6, :cond_107

    .line 3853
    :goto_102
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v9

    add-int/2addr v8, v9

    .line 3855
    :cond_107
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    if-lt v9, v8, :cond_10e

    .line 3857
    return v5

    .line 3860
    :cond_10e
    if-eq p2, v4, :cond_11c

    .line 3861
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v4, v9, :cond_11c

    .line 3863
    return v5

    .line 3866
    :cond_11c
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v8, v4

    .line 3867
    .restart local v4    # "amountToScroll":I
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_12e

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v2

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ne v9, v10, :cond_146

    goto :goto_132

    :cond_12e
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v9, :cond_146

    .line 3869
    :goto_132
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_138

    add-int/lit8 v5, v2, -0x1

    :cond_138
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v1, v5

    .line 3870
    .restart local v5    # "max":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3872
    .end local v5    # "max":I
    :cond_146
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .registers 7
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .line 4081
    const/4 v0, 0x0

    .line 4082
    .local v0, "amountToScroll":I
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4083
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4084
    const/16 v1, 0x11

    if-ne p1, v1, :cond_36

    .line 4085
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_5d

    .line 4086
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    .line 4087
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_2e

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_5d

    goto :goto_30

    :cond_2e
    if-lez p3, :cond_5d

    .line 4088
    :goto_30
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5d

    .line 4092
    :cond_36
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 4093
    .local v1, "listRight":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_5d

    .line 4094
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v1

    .line 4095
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_52

    if-lez p3, :cond_5d

    goto :goto_58

    :cond_52
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_5d

    .line 4096
    :goto_58
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 4100
    .end local v1    # "listRight":I
    :cond_5d
    :goto_5d
    return v0
.end method

.method private arrowScrollFocused(I)Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;
    .registers 9
    .param p1, "direction"    # I

    .line 3979
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3981
    .local v0, "selectedView":Landroid/view/View;
    const/16 v1, 0x42

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3982
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3983
    .local v2, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3984
    .local v2, "newFocus":Landroid/view/View;
    goto/16 :goto_86

    .line 3985
    .end local v2    # "newFocus":Landroid/view/View;
    :cond_1c
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_48

    .line 3986
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v4, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    .line 3987
    .local v2, "leftFadingEdgeShowing":Z
    :goto_26
    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 3988
    if-eqz v2, :cond_31

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_32

    :cond_31
    move v5, v3

    :goto_32
    add-int/2addr v4, v5

    .line 3990
    .local v4, "listLeft":I
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v4, :cond_40

    .line 3991
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_41

    .line 3992
    :cond_40
    move v5, v4

    :goto_41
    nop

    .line 3993
    .local v5, "xSearchPoint":I
    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v3, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3994
    .end local v2    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    .end local v5    # "xSearchPoint":I
    goto :goto_7c

    .line 3995
    :cond_48
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 3996
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v4, v5, :cond_55

    goto :goto_56

    :cond_55
    move v2, v3

    .line 3997
    .local v2, "rightFadingEdgeShowing":Z
    :goto_56
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 3998
    if-eqz v2, :cond_66

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_67

    :cond_66
    move v5, v3

    :goto_67
    sub-int/2addr v4, v5

    .line 4000
    .local v4, "listRight":I
    if-eqz v0, :cond_75

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v4, :cond_75

    .line 4001
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_76

    .line 4002
    :cond_75
    move v5, v4

    :goto_76
    nop

    .line 4003
    .restart local v5    # "xSearchPoint":I
    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v3, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4005
    .end local v2    # "rightFadingEdgeShowing":Z
    .end local v4    # "listRight":I
    .end local v5    # "xSearchPoint":I
    :goto_7c
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v2

    .line 4008
    .local v2, "newFocus":Landroid/view/View;
    :goto_86
    const/4 v3, 0x0

    if-eqz v2, :cond_cd

    .line 4009
    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v4

    .line 4013
    .local v4, "positionOfNewFocus":I
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a7

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eq v4, v5, :cond_a7

    .line 4014
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v5

    .line 4015
    .local v5, "selectablePosition":I
    if-eq v5, v6, :cond_a7

    if-ne p1, v1, :cond_a0

    if-lt v5, v4, :cond_a6

    :cond_a0
    const/16 v1, 0x11

    if-ne p1, v1, :cond_a7

    if-le v5, v4, :cond_a7

    .line 4018
    :cond_a6
    return-object v3

    .line 4022
    .end local v5    # "selectablePosition":I
    :cond_a7
    invoke-direct {p0, p1, v2, v4}, Landroid/widget/SemHorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    .line 4024
    .local v1, "focusScroll":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v5

    .line 4025
    .local v5, "maxScrollAmount":I
    if-ge v1, v5, :cond_bc

    .line 4027
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 4028
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v1}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 4029
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    return-object v3

    .line 4030
    :cond_bc
    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-ge v6, v5, :cond_cd

    .line 4035
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 4036
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v5}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 4037
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    return-object v3

    .line 4040
    .end local v1    # "focusScroll":I
    .end local v4    # "positionOfNewFocus":I
    .end local v5    # "maxScrollAmount":I
    :cond_cd
    return-object v3
.end method

.method private arrowScrollImpl(I)Z
    .registers 13
    .param p1, "direction"    # I

    .line 3555
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 3556
    return v1

    .line 3559
    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3560
    .local v0, "selectedView":Landroid/view/View;
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    .line 3562
    .local v2, "selectedPos":I
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/SemHorizontalListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v3

    .line 3563
    .local v3, "nextSelectedPosition":I
    invoke-direct {p0, p1, v3}, Landroid/widget/SemHorizontalListView;->amountToScroll(II)I

    move-result v4

    .line 3566
    .local v4, "amountToScroll":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_1f

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->arrowScrollFocused(I)Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    .line 3567
    .local v5, "focusResult":Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;
    :goto_20
    if-eqz v5, :cond_2a

    .line 3568
    invoke-virtual {v5}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    .line 3569
    invoke-virtual {v5}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    .line 3572
    :cond_2a
    const/4 v6, 0x1

    if-eqz v5, :cond_2f

    move v7, v6

    goto :goto_30

    :cond_2f
    move v7, v1

    .line 3573
    .local v7, "needToRedraw":Z
    :goto_30
    const/4 v8, -0x1

    if-eq v3, v8, :cond_59

    .line 3574
    if-eqz v5, :cond_37

    move v9, v6

    goto :goto_38

    :cond_37
    move v9, v1

    :goto_38
    invoke-direct {p0, v0, p1, v3, v9}, Landroid/widget/SemHorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 3575
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 3576
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 3577
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3578
    move v2, v3

    .line 3579
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_55

    if-nez v5, :cond_55

    .line 3582
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v9

    .line 3583
    .local v9, "focused":Landroid/view/View;
    if-eqz v9, :cond_55

    .line 3584
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 3587
    .end local v9    # "focused":Landroid/view/View;
    :cond_55
    const/4 v7, 0x1

    .line 3588
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    .line 3591
    :cond_59
    if-lez v4, :cond_66

    .line 3592
    const/16 v9, 0x11

    if-ne p1, v9, :cond_61

    move v9, v4

    goto :goto_62

    :cond_61
    neg-int v9, v4

    :goto_62
    invoke-direct {p0, v9}, Landroid/widget/SemHorizontalListView;->scrollListItemsBy(I)V

    .line 3593
    const/4 v7, 0x1

    .line 3598
    :cond_66
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_87

    if-nez v5, :cond_87

    if-eqz v0, :cond_87

    .line 3599
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_87

    .line 3600
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 3601
    .restart local v9    # "focused":Landroid/view/View;
    invoke-direct {p0, v9, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_84

    invoke-direct {p0, v9}, Landroid/widget/SemHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v10

    if-lez v10, :cond_87

    .line 3602
    :cond_84
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 3607
    .end local v9    # "focused":Landroid/view/View;
    :cond_87
    if-ne v3, v8, :cond_9c

    if-eqz v0, :cond_9c

    .line 3608
    invoke-direct {p0, v0, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_9c

    .line 3609
    const/4 v0, 0x0

    .line 3610
    iget-object v9, p0, Landroid/widget/SemHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 3611
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->hideSelector()V

    .line 3615
    iput v8, p0, Landroid/widget/SemHorizontalListView;->mResurrectToPosition:I

    .line 3618
    :cond_9c
    if-eqz v7, :cond_b6

    .line 3619
    if-eqz v0, :cond_a9

    .line 3620
    invoke-virtual {p0, v2, v0}, Landroid/widget/SemHorizontalListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 3621
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    .line 3623
    :cond_a9
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_b2

    .line 3624
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 3626
    :cond_b2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    .line 3627
    return v6

    .line 3630
    :cond_b6
    return v1
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 777
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1f

    .line 778
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 780
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 781
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 782
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 783
    .local v3, "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-eqz v3, :cond_1c

    .line 784
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 780
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 788
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 3187
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1dd

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_1dd

    .line 3191
    :cond_d
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    if-eqz v0, :cond_14

    .line 3192
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    .line 3195
    :cond_14
    const/4 v0, 0x0

    .line 3196
    .local v0, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 3198
    .local v2, "action":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1c0

    .line 3199
    const/4 v4, 0x2

    const/16 v5, 0x42

    const/16 v6, 0x11

    sparse-switch p1, :sswitch_data_1de

    goto/16 :goto_1c0

    .line 3297
    :sswitch_26
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 3298
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_3b

    :cond_39
    move v4, v1

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v4, v3

    :goto_3c
    move v0, v4

    goto/16 :goto_1c0

    .line 3291
    :sswitch_3f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 3292
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_54

    :cond_52
    move v4, v1

    goto :goto_55

    :cond_54
    :goto_54
    move v4, v3

    :goto_55
    move v0, v4

    goto/16 :goto_1c0

    .line 3283
    :sswitch_58
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 3284
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_6d

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_6b

    goto :goto_6d

    :cond_6b
    move v4, v1

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v4, v3

    :goto_6e
    move v0, v4

    goto/16 :goto_1c0

    .line 3285
    :cond_71
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 3286
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_86

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_84

    goto :goto_86

    :cond_84
    move v4, v1

    goto :goto_87

    :cond_86
    :goto_86
    move v4, v3

    :goto_87
    move v0, v4

    goto/16 :goto_1c0

    .line 3275
    :sswitch_8a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 3276
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_9f

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_9d

    goto :goto_9f

    :cond_9d
    move v4, v1

    goto :goto_a0

    :cond_9f
    :goto_9f
    move v4, v3

    :goto_a0
    move v0, v4

    goto/16 :goto_1c0

    .line 3277
    :cond_a3
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 3278
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b8

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_b6

    goto :goto_b8

    :cond_b6
    move v4, v1

    goto :goto_b9

    :cond_b8
    :goto_b8
    move v4, v3

    :goto_b9
    move v0, v4

    goto/16 :goto_1c0

    .line 3264
    :sswitch_bc
    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_c8

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1c0

    .line 3265
    :cond_c8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 3266
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_dd

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_db

    goto :goto_dd

    :cond_db
    move v4, v1

    goto :goto_de

    :cond_dd
    :goto_dd
    move v4, v3

    :goto_de
    move v0, v4

    goto :goto_f7

    .line 3267
    :cond_e0
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 3268
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_f5

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f3

    goto :goto_f5

    :cond_f3
    move v4, v1

    goto :goto_f6

    :cond_f5
    :goto_f5
    move v4, v3

    :goto_f6
    move v0, v4

    .line 3270
    :cond_f7
    :goto_f7
    const/4 v0, 0x1

    goto/16 :goto_1c0

    .line 3253
    :sswitch_fa
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 3254
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 3255
    if-nez v0, :cond_1c0

    .line 3256
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1c0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1c0

    .line 3257
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->keyPressed()V

    .line 3258
    const/4 v0, 0x1

    goto/16 :goto_1c0

    .line 3219
    :sswitch_118
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-nez v6, :cond_13e

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_125

    goto :goto_13e

    .line 3231
    :cond_125
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 3232
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_13a

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_138

    goto :goto_13a

    :cond_138
    move v4, v1

    goto :goto_13b

    :cond_13a
    :goto_13a
    move v4, v3

    :goto_13b
    move v0, v4

    goto/16 :goto_1c0

    .line 3220
    :cond_13e
    :goto_13e
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    .line 3221
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 3222
    if-nez v0, :cond_1c0

    .line 3223
    :goto_148
    add-int/lit8 v4, p2, -0x1

    .end local p2    # "count":I
    .local v4, "count":I
    if-lez p2, :cond_191

    .line 3224
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_191

    .line 3225
    const/4 v0, 0x1

    move p2, v4

    goto :goto_148

    .line 3201
    .end local v4    # "count":I
    .restart local p2    # "count":I
    :sswitch_155
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_17a

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_162

    goto :goto_17a

    .line 3213
    :cond_162
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 3214
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_177

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_175

    goto :goto_177

    :cond_175
    move v4, v1

    goto :goto_178

    :cond_177
    :goto_177
    move v4, v3

    :goto_178
    move v0, v4

    goto :goto_1c0

    .line 3202
    :cond_17a
    :goto_17a
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    .line 3203
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 3204
    if-nez v0, :cond_1c0

    .line 3205
    :goto_184
    add-int/lit8 v4, p2, -0x1

    .end local p2    # "count":I
    .restart local v4    # "count":I
    if-lez p2, :cond_191

    .line 3206
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_191

    .line 3207
    const/4 v0, 0x1

    move p2, v4

    goto :goto_184

    .line 3320
    :cond_191
    move p2, v4

    goto :goto_1c0

    .line 3244
    .end local v4    # "count":I
    .restart local p2    # "count":I
    :sswitch_193
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_19f

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 3245
    :cond_19f
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    .line 3246
    const/16 v4, 0x82

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v0

    goto :goto_1c0

    .line 3237
    :sswitch_1aa
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_1b6

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 3238
    :cond_1b6
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    .line 3239
    const/16 v4, 0x21

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v0

    .line 3320
    :cond_1c0
    :goto_1c0
    if-eqz v0, :cond_1c3

    .line 3321
    return v3

    .line 3324
    :cond_1c3
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/SemHorizontalListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1ca

    .line 3325
    return v3

    .line 3328
    :cond_1ca
    packed-switch v2, :pswitch_data_210

    .line 3339
    return v1

    .line 3336
    :pswitch_1ce
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 3333
    :pswitch_1d3
    invoke-super {p0, p1, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 3330
    :pswitch_1d8
    invoke-super {p0, p1, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 3188
    .end local v0    # "handled":Z
    .end local v2    # "action":I
    :cond_1dd
    :goto_1dd
    return v1

    :sswitch_data_1de
    .sparse-switch
        0x13 -> :sswitch_1aa
        0x14 -> :sswitch_193
        0x15 -> :sswitch_155
        0x16 -> :sswitch_118
        0x17 -> :sswitch_fa
        0x3e -> :sswitch_bc
        0x42 -> :sswitch_fa
        0x5c -> :sswitch_8a
        0x5d -> :sswitch_58
        0x7a -> :sswitch_3f
        0x7b -> :sswitch_26
        0xa0 -> :sswitch_fa
    .end sparse-switch

    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_1d8
        :pswitch_1d3
        :pswitch_1ce
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .registers 12
    .param p1, "childCount"    # I

    .line 1929
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1930
    .local v0, "lastPosition":I
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5d

    if-lez p1, :cond_5d

    .line 1933
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1936
    .local v1, "lastChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1939
    .local v2, "lastRight":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 1943
    .local v3, "end":I
    sub-int v4, v3, v2

    .line 1944
    .local v4, "rightOffset":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1945
    .local v5, "firstChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1949
    .local v6, "firstLeft":I
    if-lez v4, :cond_5d

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v7, :cond_38

    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_5d

    .line 1950
    :cond_38
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v7, :cond_45

    .line 1952
    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1955
    :cond_45
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 1956
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v7, :cond_5d

    .line 1959
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1961
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1966
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastRight":I
    .end local v3    # "end":I
    .end local v4    # "rightOffset":I
    .end local v5    # "firstChild":Landroid/view/View;
    .end local v6    # "firstLeft":I
    :cond_5d
    return-void
.end method

.method private correctTooHighRTL(I)V
    .registers 13
    .param p1, "childCount"    # I

    .line 1971
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1972
    .local v0, "lastPosition":I
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5b

    if-lez p1, :cond_5b

    .line 1975
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1978
    .local v1, "lastChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1980
    .local v2, "lastLeft":I
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 1983
    .local v3, "start":I
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 1987
    .local v4, "end":I
    sub-int v5, v2, v3

    .line 1989
    .local v5, "leftOffset":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1991
    .local v6, "firstChild":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1997
    .local v7, "firstRight":I
    if-lez v5, :cond_5b

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v8, :cond_38

    if-le v7, v4, :cond_5b

    .line 1999
    :cond_38
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_42

    .line 2001
    sub-int v8, v7, v4

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2004
    :cond_42
    neg-int v8, v5

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 2006
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v8, :cond_5b

    .line 2008
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    .line 2010
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 2018
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastLeft":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "leftOffset":I
    .end local v6    # "firstChild":Landroid/view/View;
    .end local v7    # "firstRight":I
    :cond_5b
    return-void
.end method

.method private correctTooLow(I)V
    .registers 13
    .param p1, "childCount"    # I

    .line 2029
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v0, :cond_68

    if-lez p1, :cond_68

    .line 2032
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2035
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2038
    .local v1, "firstLeft":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2041
    .local v2, "start":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 2045
    .local v3, "end":I
    sub-int v4, v1, v2

    .line 2046
    .local v4, "leftOffset":I
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2047
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    .line 2048
    .local v6, "lastRight":I
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    .line 2052
    .local v7, "lastPosition":I
    if-lez v4, :cond_68

    .line 2053
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_43

    if-le v6, v3, :cond_39

    goto :goto_43

    .line 2067
    :cond_39
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_68

    .line 2068
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_68

    .line 2054
    :cond_43
    :goto_43
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_4f

    .line 2056
    sub-int v8, v6, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2059
    :cond_4f
    neg-int v8, v4

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 2060
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_68

    .line 2063
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 2065
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 2072
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstLeft":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "leftOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastRight":I
    .end local v7    # "lastPosition":I
    :cond_68
    :goto_68
    return-void
.end method

.method private correctTooLowRTL(I)V
    .registers 13
    .param p1, "childCount"    # I

    .line 2078
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v0, :cond_6e

    if-lez p1, :cond_6e

    .line 2081
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2084
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2087
    .local v1, "firstRight":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 2090
    .local v2, "start":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 2094
    .local v3, "end":I
    sub-int v4, v3, v1

    .line 2095
    .local v4, "rightOffset":I
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2096
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 2097
    .local v6, "lastLeft":I
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    .line 2102
    .local v7, "lastPosition":I
    if-lez v4, :cond_6e

    .line 2104
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_47

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v6, v8, :cond_3d

    goto :goto_47

    .line 2119
    :cond_3d
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_6e

    .line 2120
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_6e

    .line 2106
    :cond_47
    :goto_47
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_56

    .line 2108
    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v6

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2111
    :cond_56
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 2113
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_6e

    .line 2115
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 2117
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 2125
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstRight":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "rightOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastLeft":I
    .end local v7    # "lastPosition":I
    :cond_6e
    :goto_6e
    return-void
.end method

.method private distanceToView(Landroid/view/View;)I
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;

    .line 4111
    const/4 v0, 0x0

    .line 4112
    .local v0, "distance":I
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4113
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4114
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 4115
    .local v1, "listRight":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_2a

    .line 4116
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    goto :goto_36

    .line 4117
    :cond_2a
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_36

    .line 4118
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v1

    .line 4120
    :cond_36
    :goto_36
    return v0
.end method

.method private fillFromLeft(I)Landroid/view/View;
    .registers 4
    .param p1, "nextLeft"    # I

    .line 1118
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1119
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1120
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 1121
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1123
    :cond_1d
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .registers 11
    .param p1, "childrenLeft"    # I
    .param p2, "childrenRight"    # I

    .line 1147
    sub-int v0, p2, p1

    .line 1149
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->reconcileSelectedPosition()I

    move-result v7

    .line 1151
    .local v7, "position":I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1153
    .local v1, "sel":Landroid/view/View;
    iput v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1155
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1156
    .local v2, "selWidth":I
    if-gt v2, v0, :cond_22

    .line 1157
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1160
    :cond_22
    invoke-direct {p0, v1, v7}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 1162
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_3d

    .line 1163
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_35

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    goto :goto_50

    .line 1164
    :cond_35
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    goto :goto_50

    .line 1166
    :cond_3d
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_49

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_50

    .line 1167
    :cond_49
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    .line 1170
    :goto_50
    return-object v1
.end method

.method private fillFromRight(I)Landroid/view/View;
    .registers 5
    .param p1, "nextRight"    # I

    .line 1126
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1127
    .local v0, "last":I
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1128
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1129
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gez v1, :cond_21

    .line 1130
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1133
    :cond_21
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 14
    .param p1, "selectedLeft"    # I
    .param p2, "childrenLeft"    # I
    .param p3, "childrenRight"    # I

    .line 1218
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 1219
    .local v0, "fadingEdgeLength":I
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    .line 1223
    .local v7, "selectedPosition":I
    invoke-direct {p0, p2, v0, v7}, Landroid/widget/SemHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v8

    .line 1225
    .local v8, "leftSelectionPixel":I
    invoke-direct {p0, p3, v0, v7}, Landroid/widget/SemHorizontalListView;->getRightSelectionPixel(III)I

    move-result v9

    .line 1228
    .local v9, "rightSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1232
    .local v1, "sel":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v9, :cond_34

    .line 1235
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v8

    .line 1239
    .local v2, "spaceLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v9

    .line 1240
    .local v3, "spaceRight":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1243
    .local v4, "offset":I
    neg-int v5, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .end local v2    # "spaceLeft":I
    .end local v3    # "spaceRight":I
    .end local v4    # "offset":I
    goto :goto_4e

    .line 1244
    :cond_34
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v8, :cond_4e

    .line 1247
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v8, v2

    .line 1251
    .restart local v2    # "spaceLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v3, v9, v3

    .line 1252
    .restart local v3    # "spaceRight":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1255
    .restart local v4    # "offset":I
    invoke-virtual {v1, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4f

    .line 1244
    .end local v2    # "spaceLeft":I
    .end local v3    # "spaceRight":I
    .end local v4    # "offset":I
    :cond_4e
    :goto_4e
    nop

    .line 1259
    :goto_4f
    invoke-direct {p0, v1, v7}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 1261
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v2, :cond_6a

    .line 1262
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_62

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_7d

    .line 1263
    :cond_62
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    goto :goto_7d

    .line 1265
    :cond_6a
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_76

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    goto :goto_7d

    .line 1266
    :cond_76
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    .line 1269
    :goto_7d
    return-object v1
.end method

.method private fillLeft(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .line 1056
    const/4 v0, 0x0

    .line 1058
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 1059
    .local v1, "end":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 1060
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 1063
    :cond_d
    :goto_d
    const/4 v2, 0x1

    if-le p2, v1, :cond_3a

    if-ltz p1, :cond_3a

    .line 1065
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    move v8, v2

    .line 1066
    .local v8, "selected":Z
    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 1068
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_36

    .line 1069
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v3, v4

    .line 1070
    .end local p2    # "nextRight":I
    .local v3, "nextRight":I
    if-eqz v8, :cond_35

    .line 1071
    move-object p2, v2

    move-object v0, p2

    move p2, v3

    .end local v0    # "selectedView":Landroid/view/View;
    .local p2, "selectedView":Landroid/view/View;
    goto :goto_36

    .line 1070
    .end local p2    # "selectedView":Landroid/view/View;
    .restart local v0    # "selectedView":Landroid/view/View;
    :cond_35
    move p2, v3

    .line 1074
    .end local v3    # "nextRight":I
    .local p2, "nextRight":I
    :cond_36
    :goto_36
    nop

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "selected":Z
    add-int/lit8 p1, p1, -0x1

    .line 1075
    goto :goto_d

    .line 1077
    :cond_3a
    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1078
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    .line 1079
    return-object v0
.end method

.method private fillLeftAndRight(Landroid/view/View;I)V
    .registers 6
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 1181
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1182
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_3a

    .line 1183
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_22

    .line 1184
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    .line 1185
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1186
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    goto :goto_6d

    .line 1188
    :cond_22
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 1189
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1190
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    goto :goto_6d

    .line 1194
    :cond_3a
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_56

    .line 1195
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1196
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1197
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    goto :goto_6d

    .line 1199
    :cond_56
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1200
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1201
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1204
    :goto_6d
    return-void
.end method

.method private fillLeftRTL(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .line 1082
    const/4 v0, 0x0

    .line 1084
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 1085
    .local v1, "end":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 1086
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 1089
    :cond_d
    :goto_d
    const/4 v2, 0x1

    if-le p2, v1, :cond_3c

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge p1, v3, :cond_3c

    .line 1091
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    move v8, v2

    .line 1093
    .local v8, "selected":Z
    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 1095
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_38

    .line 1096
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v3, v4

    .line 1098
    .end local p2    # "nextRight":I
    .local v3, "nextRight":I
    if-eqz v8, :cond_37

    .line 1099
    move-object p2, v2

    move-object v0, p2

    move p2, v3

    .end local v0    # "selectedView":Landroid/view/View;
    .local p2, "selectedView":Landroid/view/View;
    goto :goto_38

    .line 1098
    .end local p2    # "selectedView":Landroid/view/View;
    .restart local v0    # "selectedView":Landroid/view/View;
    :cond_37
    move p2, v3

    .line 1102
    .end local v3    # "nextRight":I
    .local p2, "nextRight":I
    :cond_38
    :goto_38
    nop

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "selected":Z
    add-int/lit8 p1, p1, 0x1

    .line 1103
    goto :goto_d

    .line 1106
    :cond_3c
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    .line 1107
    return-object v0
.end method

.method private fillRight(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .line 989
    const/4 v0, 0x0

    .line 991
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    .line 992
    .local v1, "end":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_12

    .line 993
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 996
    :cond_12
    :goto_12
    const/4 v2, 0x1

    if-ge p2, v1, :cond_41

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge p1, v3, :cond_41

    .line 998
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    move v8, v2

    .line 999
    .local v8, "selected":Z
    const/4 v5, 0x1

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 1001
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_3d

    .line 1002
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v3, v4

    .line 1003
    .end local p2    # "nextLeft":I
    .local v3, "nextLeft":I
    if-eqz v8, :cond_3c

    .line 1004
    move-object p2, v2

    move-object v0, p2

    move p2, v3

    .end local v0    # "selectedView":Landroid/view/View;
    .local p2, "selectedView":Landroid/view/View;
    goto :goto_3d

    .line 1003
    .end local p2    # "selectedView":Landroid/view/View;
    .restart local v0    # "selectedView":Landroid/view/View;
    :cond_3c
    move p2, v3

    .line 1007
    .end local v3    # "nextLeft":I
    .local p2, "nextLeft":I
    :cond_3d
    :goto_3d
    nop

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "selected":Z
    add-int/lit8 p1, p1, 0x1

    .line 1008
    goto :goto_12

    .line 1010
    :cond_41
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    .line 1011
    return-object v0
.end method

.method private fillRightRTL(II)Landroid/view/View;
    .registers 13
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .line 1015
    const/4 v0, 0x0

    .line 1017
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    .line 1018
    .local v1, "end":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_12

    .line 1019
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1022
    :cond_12
    const/4 v2, 0x0

    .line 1023
    .local v2, "isin":Z
    :goto_13
    const/4 v3, 0x1

    if-ge p2, v1, :cond_40

    if-ltz p1, :cond_40

    .line 1026
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v4, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    move v9, v3

    .line 1027
    .local v9, "selected":Z
    const/4 v6, 0x1

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v3

    .line 1030
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_3c

    .line 1031
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v4, v5

    .line 1032
    .end local p2    # "nextLeft":I
    .local v4, "nextLeft":I
    if-eqz v9, :cond_3b

    .line 1033
    move-object p2, v3

    move-object v0, p2

    move p2, v4

    .end local v0    # "selectedView":Landroid/view/View;
    .local p2, "selectedView":Landroid/view/View;
    goto :goto_3c

    .line 1032
    .end local p2    # "selectedView":Landroid/view/View;
    .restart local v0    # "selectedView":Landroid/view/View;
    :cond_3b
    move p2, v4

    .line 1036
    .end local v4    # "nextLeft":I
    .local p2, "nextLeft":I
    :cond_3c
    :goto_3c
    add-int/lit8 p1, p1, -0x1

    .line 1037
    const/4 v2, 0x1

    .line 1038
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "selected":Z
    goto :goto_13

    .line 1040
    :cond_40
    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1042
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    .line 1043
    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "left"    # I

    .line 1828
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 1829
    .local v0, "tempIsSelected":Z
    :goto_7
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1831
    .local v1, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1836
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1837
    .local v2, "dividerHeight":I
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_3f

    .line 1838
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v3

    .line 1840
    .local v3, "leftSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1841
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v4

    .line 1842
    .local v4, "rightSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 1843
    .local v5, "childCount":I
    if-lez v5, :cond_3e

    .line 1844
    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    .line 1846
    .end local v5    # "childCount":I
    :cond_3e
    goto :goto_61

    .line 1847
    .end local v3    # "leftSide":Landroid/view/View;
    .end local v4    # "rightSide":Landroid/view/View;
    :cond_3f
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v4

    .line 1849
    .restart local v4    # "rightSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1850
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {p0, v3, v5}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v3

    .line 1851
    .restart local v3    # "leftSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 1852
    .restart local v5    # "childCount":I
    if-lez v5, :cond_61

    .line 1853
    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    .line 1857
    .end local v5    # "childCount":I
    :cond_61
    :goto_61
    if-eqz v0, :cond_64

    .line 1858
    return-object v1

    .line 1859
    :cond_64
    if-eqz v3, :cond_67

    .line 1860
    return-object v3

    .line 1862
    :cond_67
    return-object v4
.end method

.method private fillSpecificRTL(II)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "right"    # I

    .line 1866
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 1869
    .local v0, "tempIsSelected":Z
    :goto_7
    const/4 v4, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1872
    .local v1, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1877
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1879
    .local v2, "dividerHeight":I
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_3f

    .line 1882
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v3

    .line 1883
    .local v3, "rightSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1884
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v4

    .line 1889
    .local v4, "leftSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 1890
    .local v5, "childCount":I
    if-lez v5, :cond_3e

    .line 1891
    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    .line 1893
    .end local v5    # "childCount":I
    :cond_3e
    goto :goto_61

    .line 1895
    .end local v3    # "rightSide":Landroid/view/View;
    .end local v4    # "leftSide":Landroid/view/View;
    :cond_3f
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v4

    .line 1898
    .restart local v4    # "leftSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1899
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v3, v5}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v3

    .line 1901
    .restart local v3    # "rightSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 1902
    .restart local v5    # "childCount":I
    if-lez v5, :cond_61

    .line 1903
    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    .line 1907
    .end local v5    # "childCount":I
    :cond_61
    :goto_61
    if-eqz v0, :cond_64

    .line 1908
    return-object v1

    .line 1909
    :cond_64
    if-eqz v4, :cond_67

    .line 1910
    return-object v4

    .line 1912
    :cond_67
    return-object v3
.end method

.method private getArrowScrollPreviewLength()I
    .registers 3

    .line 3756
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getChildCountAndOrder(Landroid/view/View;[BI)J
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # [B
    .param p3, "visibility"    # I

    .line 5375
    const-wide/16 v0, 0x0

    .line 5377
    .local v0, "count":J
    if-nez p1, :cond_5

    .line 5378
    return-wide v0

    .line 5381
    :cond_5
    instance-of v2, p1, Landroid/view/ViewGroup;

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1f

    .line 5382
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, p3, :cond_17

    .line 5383
    aget-byte v2, p2, v5

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    .line 5385
    :cond_17
    aget-byte v2, p2, v5

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p2, v5

    .line 5387
    return-wide v0

    .line 5390
    :cond_1f
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 5391
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-ne v6, p3, :cond_2c

    .line 5392
    aget-byte v6, p2, v5

    shl-long/2addr v3, v6

    or-long/2addr v0, v3

    .line 5394
    :cond_2c
    aget-byte v3, p2, v5

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p2, v5

    .line 5396
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_46

    .line 5397
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5398
    .local v4, "v":Landroid/view/View;
    invoke-direct {p0, v4, p2, p3}, Landroid/widget/SemHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 5396
    .end local v4    # "v":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 5401
    .end local v3    # "i":I
    :cond_46
    return-wide v0
.end method

.method private getChildHeightSpec(Landroid/view/View;)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 5405
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5407
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_e

    .line 5408
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 5412
    :cond_e
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    return v1
.end method

.method private getChildWidthSpec(Landroid/view/View;)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 5416
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5418
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_e

    .line 5419
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 5424
    :cond_e
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5426
    .local v1, "lpWidth":I
    if-lez v1, :cond_19

    .line 5427
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .local v2, "childWidthSpec":I
    goto :goto_1e

    .line 5429
    .end local v2    # "childWidthSpec":I
    :cond_19
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 5432
    .restart local v2    # "childWidthSpec":I
    :goto_1e
    return v2
.end method

.method private getLeftSelectionPixel(III)I
    .registers 6
    .param p1, "childrenLeft"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 1299
    move v0, p1

    .line 1300
    .local v0, "leftSelectionPixel":I
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_f

    goto :goto_e

    :cond_c
    if-lez p3, :cond_f

    .line 1301
    :goto_e
    add-int/2addr v0, p2

    .line 1303
    :cond_f
    return v0
.end method

.method private getRightSelectionPixel(III)I
    .registers 6
    .param p1, "childrenRight"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 1282
    move v0, p1

    .line 1283
    .local v0, "rightSelectionPixel":I
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_8

    if-lez p3, :cond_f

    goto :goto_e

    :cond_8
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_f

    .line 1284
    :goto_e
    sub-int/2addr v0, p2

    .line 1286
    :cond_f
    return v0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .registers 16
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .line 3648
    const/4 v0, -0x1

    if-eq p3, v0, :cond_45

    .line 3659
    const/4 v0, 0x0

    .line 3660
    .local v0, "leftSelected":Z
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .line 3661
    .local v1, "selectedIndex":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v2, p3, v2

    .line 3662
    .local v2, "nextSelectedIndex":I
    const/16 v3, 0x11

    if-ne p2, v3, :cond_1a

    .line 3663
    move v3, v2

    .line 3664
    .local v3, "leftViewIndex":I
    move v4, v1

    .line 3665
    .local v4, "rightViewIndex":I
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3666
    .local v5, "leftView":Landroid/view/View;
    move-object v6, p1

    .line 3667
    .local v6, "rightView":Landroid/view/View;
    const/4 v0, 0x1

    goto :goto_21

    .line 3669
    .end local v3    # "leftViewIndex":I
    .end local v4    # "rightViewIndex":I
    .end local v5    # "leftView":Landroid/view/View;
    .end local v6    # "rightView":Landroid/view/View;
    :cond_1a
    move v3, v1

    .line 3670
    .restart local v3    # "leftViewIndex":I
    move v4, v2

    .line 3671
    .restart local v4    # "rightViewIndex":I
    move-object v5, p1

    .line 3672
    .restart local v5    # "leftView":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3675
    .restart local v6    # "rightView":Landroid/view/View;
    :goto_21
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v7

    .line 3678
    .local v7, "numChildren":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_36

    .line 3679
    if-nez p4, :cond_2f

    if-eqz v0, :cond_2f

    move v10, v8

    goto :goto_30

    :cond_2f
    move v10, v9

    :goto_30
    invoke-virtual {v5, v10}, Landroid/view/View;->setSelected(Z)V

    .line 3680
    invoke-direct {p0, v5, v3, v7}, Landroid/widget/SemHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 3684
    :cond_36
    if-eqz v6, :cond_44

    .line 3685
    if-nez p4, :cond_3d

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v8, v9

    :goto_3e
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 3686
    invoke-direct {p0, v6, v4, v7}, Landroid/widget/SemHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 3688
    :cond_44
    return-void

    .line 3649
    .end local v0    # "leftSelected":Z
    .end local v1    # "selectedIndex":I
    .end local v2    # "nextSelectedIndex":I
    .end local v3    # "leftViewIndex":I
    .end local v4    # "rightViewIndex":I
    .end local v5    # "leftView":Landroid/view/View;
    .end local v6    # "rightView":Landroid/view/View;
    .end local v7    # "numChildren":I
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .registers 9
    .param p1, "direction"    # I

    .line 3441
    const/16 v0, 0x21

    if-eq p1, v0, :cond_11

    const/16 v0, 0x82

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 3442
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3446
    :cond_11
    :goto_11
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 3447
    .local v0, "numChildren":I
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_80

    if-lez v0, :cond_80

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_80

    .line 3448
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 3449
    .local v1, "selectedView":Landroid/view/View;
    if-eqz v1, :cond_80

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_80

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_80

    .line 3452
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 3453
    .local v3, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 3455
    .local v4, "nextFocus":Landroid/view/View;
    if-eqz v4, :cond_6b

    .line 3457
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3458
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v5}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3459
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3460
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 3461
    if-eq v3, v4, :cond_62

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    if-eqz v5, :cond_62

    .line 3462
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 3464
    :cond_62
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->playSoundEffect(I)V

    .line 3465
    const/4 v2, 0x1

    return v2

    .line 3472
    :cond_6b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    .line 3473
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 3472
    invoke-virtual {v5, v6, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 3474
    .local v5, "globalNextFocus":Landroid/view/View;
    if-eqz v5, :cond_80

    .line 3475
    invoke-direct {p0, v5, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    return v2

    .line 3479
    .end local v1    # "selectedView":Landroid/view/View;
    .end local v3    # "currentFocus":Landroid/view/View;
    .end local v4    # "nextFocus":Landroid/view/View;
    .end local v5    # "globalNextFocus":Landroid/view/View;
    :cond_80
    return v2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .line 2610
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2611
    .local v0, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2612
    .local v1, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    const/4 v3, 0x1

    if-ge v2, v1, :cond_18

    .line 2613
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v4, v4, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v4, :cond_15

    .line 2614
    return v3

    .line 2612
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2618
    .end local v2    # "i":I
    :cond_18
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2619
    .local v2, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2620
    .local v4, "numFooters":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    if-ge v5, v4, :cond_2f

    .line 2621
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v6, v6, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v6, :cond_2c

    .line 2622
    return v3

    .line 2620
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 2626
    .end local v5    # "i":I
    :cond_2f
    const/4 v3, 0x0

    return v3
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .line 4063
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 4064
    return v0

    .line 4067
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 4068
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .registers 10
    .param p1, "direction"    # I

    .line 3909
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 3910
    .local v0, "firstPosition":I
    const/16 v1, 0x42

    const/4 v2, -0x1

    if-ne p1, v1, :cond_5f

    .line 3911
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eq v1, v2, :cond_10

    .line 3912
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 3913
    :cond_10
    move v1, v0

    :goto_11
    nop

    .line 3914
    .local v1, "startPos":I
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1b

    .line 3915
    return v2

    .line 3917
    :cond_1b
    if-ge v1, v0, :cond_1e

    .line 3918
    move v1, v0

    .line 3921
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    .line 3922
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3923
    .local v4, "adapter":Landroid/widget/ListAdapter;
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_44

    .line 3924
    move v5, v1

    .local v5, "pos":I
    :goto_2b
    if-lt v5, v0, :cond_43

    .line 3925
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_40

    sub-int v6, v5, v0

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_40

    .line 3926
    return v5

    .line 3924
    :cond_40
    add-int/lit8 v5, v5, -0x1

    goto :goto_2b

    .end local v5    # "pos":I
    :cond_43
    goto :goto_5d

    .line 3931
    :cond_44
    move v5, v1

    .restart local v5    # "pos":I
    :goto_45
    if-gt v5, v3, :cond_5d

    .line 3932
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_5a

    sub-int v6, v5, v0

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5a

    .line 3933
    return v5

    .line 3931
    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 3937
    .end local v1    # "startPos":I
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "pos":I
    :cond_5d
    :goto_5d
    goto/16 :goto_c4

    .line 3938
    :cond_5f
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 3939
    .local v1, "last":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    .line 3940
    .restart local v3    # "lastVisiblePos":I
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eq v4, v2, :cond_73

    .line 3941
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v4, v4, -0x1

    goto :goto_7a

    .line 3942
    :cond_73
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_7a
    nop

    .line 3943
    .local v4, "startPos":I
    if-ltz v4, :cond_c5

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_86

    goto :goto_c5

    .line 3946
    :cond_86
    if-le v4, v1, :cond_89

    .line 3947
    move v4, v1

    .line 3950
    :cond_89
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 3951
    .local v5, "adapter":Landroid/widget/ListAdapter;
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_ab

    .line 3952
    move v6, v4

    .local v6, "pos":I
    :goto_92
    if-gt v6, v3, :cond_aa

    .line 3953
    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a7

    sub-int v7, v6, v0

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_a7

    .line 3954
    return v6

    .line 3952
    :cond_a7
    add-int/lit8 v6, v6, 0x1

    goto :goto_92

    .end local v6    # "pos":I
    :cond_aa
    goto :goto_c4

    .line 3959
    :cond_ab
    move v6, v4

    .restart local v6    # "pos":I
    :goto_ac
    if-lt v6, v0, :cond_c4

    .line 3960
    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_c1

    sub-int v7, v6, v0

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_c1

    .line 3961
    return v6

    .line 3959
    :cond_c1
    add-int/lit8 v6, v6, -0x1

    goto :goto_ac

    .line 3966
    .end local v1    # "last":I
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "startPos":I
    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .end local v6    # "pos":I
    :cond_c4
    :goto_c4
    return v2

    .line 3944
    .restart local v1    # "last":I
    .restart local v3    # "lastVisiblePos":I
    .restart local v4    # "startPos":I
    :cond_c5
    :goto_c5
    return v2
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "x"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenTop"    # I
    .param p5, "selected"    # Z

    .line 2647
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    if-nez v0, :cond_18

    .line 2649
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v0

    .line 2650
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_18

    .line 2653
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2655
    return-object v0

    .line 2660
    .end local v0    # "child":Landroid/view/View;
    :cond_18
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 2664
    .restart local v0    # "child":Landroid/view/View;
    if-eqz v0, :cond_2f

    .line 2666
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v8, v1, v2

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2668
    :cond_2f
    return-object v0
.end method

.method private measureAndAdjustRight(Landroid/view/View;II)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .line 3698
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 3699
    .local v0, "oldWidth":I
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->measureItem(Landroid/view/View;)V

    .line 3700
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v0, :cond_23

    .line 3702
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 3705
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3706
    .local v1, "widthDelta":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_17
    if-ge v2, p3, :cond_23

    .line 3707
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3706
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3710
    .end local v1    # "widthDelta":I
    .end local v2    # "i":I
    :cond_23
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 3718
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3719
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_e

    .line 3720
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 3725
    :cond_e
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3727
    .local v1, "childHeightSpec":I
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3729
    .local v2, "lpWidth":I
    if-lez v2, :cond_2a

    .line 3730
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childWidthSpec":I
    goto :goto_2f

    .line 3732
    .end local v3    # "childWidthSpec":I
    :cond_2a
    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3734
    .restart local v3    # "childWidthSpec":I
    :goto_2f
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V

    .line 3735
    return-void
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 1653
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 1654
    .local v0, "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-nez v0, :cond_12

    .line 1655
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 1656
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1658
    :cond_12
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 1659
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    .line 1661
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->height:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1663
    .local v1, "childHeightSpec":I
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->width:I

    .line 1665
    .local v2, "lpWidth":I
    if-lez v2, :cond_37

    .line 1666
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childWidthSpec":I
    goto :goto_3c

    .line 1668
    .end local v3    # "childWidthSpec":I
    :cond_37
    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1670
    .restart local v3    # "childWidthSpec":I
    :goto_3c
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V

    .line 1671
    return-void
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .registers 20
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenLeft"    # I
    .param p5, "childrenRight"    # I

    .line 1353
    move-object v6, p0

    move/from16 v7, p4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v8

    .line 1354
    .local v8, "fadingEdgeLength":I
    iget v9, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    .line 1358
    .local v9, "selectedPosition":I
    invoke-direct {p0, v7, v8, v9}, Landroid/widget/SemHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v10

    .line 1360
    .local v10, "leftSelectionPixel":I
    invoke-direct {p0, v7, v8, v9}, Landroid/widget/SemHorizontalListView;->getRightSelectionPixel(III)I

    move-result v11

    .line 1363
    .local v11, "rightSelectionPixel":I
    if-lez p3, :cond_98

    .line 1385
    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v12

    .line 1388
    .end local p1    # "oldSel":Landroid/view/View;
    .local v12, "oldSel":Landroid/view/View;
    iget v13, v6, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1391
    .local v13, "dividerHeight":I
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v0

    add-int v2, v0, v13

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1395
    .local v0, "sel":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v11, :cond_5b

    .line 1398
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v10

    .line 1401
    .local v1, "spaceLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v11

    .line 1404
    .local v2, "spaceRight":I
    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    .line 1405
    .local v3, "halfHorizontalSpace":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1406
    .local v4, "offset":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1409
    neg-int v5, v4

    invoke-virtual {v12, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1411
    neg-int v5, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1415
    .end local v1    # "spaceLeft":I
    .end local v2    # "spaceRight":I
    .end local v3    # "halfHorizontalSpace":I
    .end local v4    # "offset":I
    :cond_5b
    iget-boolean v1, v6, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_7b

    .line 1416
    iget v1, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1417
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1418
    iget v1, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    goto :goto_96

    .line 1420
    :cond_7b
    iget v1, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1421
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1422
    iget v1, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1424
    .end local v13    # "dividerHeight":I
    :goto_96
    goto/16 :goto_10b

    .end local v0    # "sel":Landroid/view/View;
    .end local v12    # "oldSel":Landroid/view/View;
    .restart local p1    # "oldSel":Landroid/view/View;
    :cond_98
    if-gez p3, :cond_e3

    .line 1445
    if-eqz p2, :cond_ad

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "sel":Landroid/view/View;
    goto :goto_bd

    .line 1452
    .end local v0    # "sel":Landroid/view/View;
    :cond_ad
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1457
    .restart local v0    # "sel":Landroid/view/View;
    :goto_bd
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v10, :cond_de

    .line 1459
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v10, v1

    .line 1462
    .restart local v1    # "spaceLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v2, v11, v2

    .line 1465
    .restart local v2    # "spaceRight":I
    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    .line 1466
    .restart local v3    # "halfHorizontalSpace":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1467
    .restart local v4    # "offset":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1470
    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1474
    .end local v1    # "spaceLeft":I
    .end local v2    # "spaceRight":I
    .end local v3    # "halfHorizontalSpace":I
    .end local v4    # "offset":I
    :cond_de
    invoke-direct {p0, v0, v9}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    move-object v12, p1

    goto :goto_10b

    .line 1477
    .end local v0    # "sel":Landroid/view/View;
    :cond_e3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 1482
    .local v12, "oldLeft":I
    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    move v2, v12

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1485
    .restart local v0    # "sel":Landroid/view/View;
    if-ge v12, v7, :cond_107

    .line 1488
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1489
    .local v1, "newRight":I
    add-int/lit8 v2, v7, 0x14

    if-ge v1, v2, :cond_107

    .line 1491
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v7, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1496
    .end local v1    # "newRight":I
    :cond_107
    invoke-direct {p0, v0, v9}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    move-object v12, p1

    .line 1499
    .end local p1    # "oldSel":Landroid/view/View;
    .local v12, "oldSel":Landroid/view/View;
    :goto_10b
    return-object v0
.end method

.method private needToMeasureChild(Landroid/view/View;ZZ)Z
    .registers 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "updateChildSelected"    # Z
    .param p3, "recycled"    # Z

    .line 5279
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_c

    if-eqz p2, :cond_a

    goto :goto_c

    :cond_a
    move v4, v3

    goto :goto_d

    :cond_c
    :goto_c
    move v4, v2

    .line 5280
    .local v4, "needToMeasure":Z
    :goto_d
    if-eqz v4, :cond_10

    return v2

    .line 5282
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    .line 5284
    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    if-eqz v5, :cond_8d

    .line 5290
    const/high16 v5, 0x10000000

    .line 5291
    .local v5, "key":I
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 5293
    .local v6, "listViewItemTag":Ljava/lang/Object;
    if-nez v6, :cond_29

    .line 5294
    new-instance v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    invoke-direct {v7, p0}, Landroid/widget/SemHorizontalListView$ItemInfoTag;-><init>(Landroid/widget/SemHorizontalListView;)V

    move-object v6, v7

    .line 5295
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5298
    :cond_29
    instance-of v7, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    if-eqz v7, :cond_89

    .line 5300
    move-object v7, v6

    check-cast v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    .line 5302
    .local v7, "itemInfoTag":Landroid/widget/SemHorizontalListView$ItemInfoTag;
    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalListView;->getChildWidthSpec(Landroid/view/View;)I

    move-result v8

    .line 5303
    .local v8, "currentWidthSpec":I
    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalListView;->getChildHeightSpec(Landroid/view/View;)I

    move-result v9

    .line 5305
    .local v9, "currentHeightSpec":I
    new-array v2, v2, [B

    aput-byte v3, v2, v3

    .line 5306
    .local v2, "offset":[B
    const/16 v10, 0x8

    invoke-direct {p0, v1, v2, v10}, Landroid/widget/SemHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v10

    .line 5307
    .local v10, "currentChildrenVisibilityBitsGone":J
    aget-byte v3, v2, v3

    .line 5309
    .local v3, "currentChildrenNumberTotal":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 5311
    .local v12, "currentConfiguration":Landroid/content/res/Configuration;
    iget v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mWidthSpec:I

    if-ne v8, v13, :cond_77

    iget v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mHeightSpec:I

    if-ne v9, v13, :cond_77

    iget-wide v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    cmp-long v13, v10, v13

    if-nez v13, :cond_77

    if-lez v3, :cond_77

    const/16 v13, 0x40

    if-gt v3, v13, :cond_77

    iget v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    if-ne v3, v13, :cond_77

    iget-object v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    .line 5316
    invoke-virtual {v12, v13}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v13

    if-nez v13, :cond_77

    iget v13, v0, Landroid/widget/SemHorizontalListView;->mLastScrollState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_77

    .line 5319
    const/4 v4, 0x0

    goto :goto_88

    .line 5322
    :cond_77
    iput v8, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mWidthSpec:I

    .line 5323
    iput v9, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mHeightSpec:I

    .line 5324
    iput-wide v10, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    .line 5325
    iput v3, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    .line 5326
    iget-object v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v13, v12}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5328
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->forceLayout()V

    .line 5330
    const/4 v4, 0x1

    .line 5332
    .end local v2    # "offset":[B
    .end local v3    # "currentChildrenNumberTotal":I
    .end local v7    # "itemInfoTag":Landroid/widget/SemHorizontalListView$ItemInfoTag;
    .end local v8    # "currentWidthSpec":I
    .end local v9    # "currentHeightSpec":I
    .end local v10    # "currentChildrenVisibilityBitsGone":J
    .end local v12    # "currentConfiguration":Landroid/content/res/Configuration;
    :goto_88
    goto :goto_8d

    .line 5342
    :cond_89
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->forceLayout()V

    .line 5343
    const/4 v4, 0x1

    .line 5347
    .end local v5    # "key":I
    .end local v6    # "listViewItemTag":Ljava/lang/Object;
    :cond_8d
    :goto_8d
    return v4
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .registers 10
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .line 3515
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/16 v2, 0x42

    if-ne p3, v2, :cond_3b

    .line 3516
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 3517
    .local v3, "listRight":I
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    if-gt v4, v3, :cond_3a

    .line 3518
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    .line 3519
    .local v4, "lastPos":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_2c

    .line 3520
    if-eq p2, v1, :cond_2a

    if-gt p2, v4, :cond_2a

    add-int/lit8 v5, p2, -0x1

    goto :goto_2b

    :cond_2a
    move v5, v4

    .local v5, "nextSelected":I
    :goto_2b
    goto :goto_38

    .line 3522
    .end local v5    # "nextSelected":I
    :cond_2c
    if-eq p2, v1, :cond_35

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_35

    add-int/lit8 v5, p2, 0x1

    goto :goto_37

    .line 3523
    :cond_35
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    :goto_37
    nop

    .line 3524
    .end local v4    # "lastPos":I
    .restart local v5    # "nextSelected":I
    :goto_38
    nop

    .line 3527
    .end local v3    # "listRight":I
    goto :goto_69

    .line 3525
    .end local v5    # "nextSelected":I
    .restart local v3    # "listRight":I
    :cond_3a
    return v1

    .line 3528
    .end local v3    # "listRight":I
    :cond_3b
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 3529
    .local v3, "listLeft":I
    if-eqz p1, :cond_7e

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v4, v3, :cond_7e

    .line 3530
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    .line 3531
    .restart local v4    # "lastPos":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_60

    .line 3532
    if-eq p2, v1, :cond_5c

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_5c

    add-int/lit8 v5, p2, 0x1

    goto :goto_5e

    .line 3533
    :cond_5c
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    :goto_5e
    nop

    .restart local v5    # "nextSelected":I
    goto :goto_68

    .line 3535
    .end local v5    # "nextSelected":I
    :cond_60
    if-eq p2, v1, :cond_67

    if-gt p2, v4, :cond_67

    add-int/lit8 v5, p2, -0x1

    goto :goto_68

    :cond_67
    move v5, v4

    .line 3536
    .end local v4    # "lastPos":I
    .restart local v5    # "nextSelected":I
    :goto_68
    nop

    .line 3541
    .end local v3    # "listLeft":I
    :goto_69
    if-ltz v5, :cond_7d

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v5, v3, :cond_74

    goto :goto_7d

    .line 3544
    :cond_74
    if-ne p3, v2, :cond_77

    goto :goto_78

    :cond_77
    const/4 v0, 0x0

    :goto_78
    invoke-virtual {p0, v5, v0}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0

    .line 3542
    :cond_7d
    :goto_7d
    return v1

    .line 3537
    .end local v5    # "nextSelected":I
    .restart local v3    # "listLeft":I
    :cond_7e
    return v1
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .registers 6
    .param p1, "newFocus"    # Landroid/view/View;

    .line 4048
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 4049
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_18

    .line 4050
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4051
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4052
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 4049
    .end local v2    # "child":Landroid/view/View;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4055
    .end local v1    # "i":I
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;

    .line 3743
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 3744
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 3745
    .local v1, "h":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 3746
    .local v2, "childLeft":I
    add-int v3, v2, v0

    .line 3747
    .local v3, "childRight":I
    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 3748
    .local v4, "childTop":I
    add-int v5, v4, v1

    .line 3749
    .local v5, "childBottom":I
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 3750
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 543
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 544
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_18

    .line 545
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    .line 546
    .local v2, "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    iget-object v3, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    .line 547
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 548
    goto :goto_18

    .line 544
    .end local v2    # "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 551
    .end local v1    # "i":I
    :cond_18
    :goto_18
    return-void
.end method

.method private scrollListItemsBy(I)V
    .registers 12
    .param p1, "amount"    # I

    .line 4131
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 4133
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 4134
    .local v0, "listRight":I
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 4135
    .local v1, "listLeft":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 4137
    .local v2, "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    const/4 v3, 0x0

    if-gez p1, :cond_d2

    .line 4141
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    .line 4143
    .local v4, "numChildren":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_3b

    .line 4144
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4145
    .local v5, "last":Landroid/view/View;
    :goto_21
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v0, :cond_5a

    .line 4147
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v6, :cond_31

    .line 4148
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 4150
    :cond_31
    if-nez v5, :cond_34

    .line 4151
    return-void

    .line 4152
    :cond_34
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_21

    .line 4157
    .end local v5    # "last":Landroid/view/View;
    :cond_3b
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4158
    .restart local v5    # "last":Landroid/view/View;
    :goto_41
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v0, :cond_5a

    .line 4159
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    .line 4160
    .local v6, "lastVisiblePosition":I
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_5a

    .line 4161
    invoke-direct {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 4162
    nop

    .end local v6    # "lastVisiblePosition":I
    add-int/lit8 v4, v4, 0x1

    .line 4166
    goto :goto_41

    .line 4172
    :cond_5a
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v0, :cond_69

    .line 4173
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 4177
    :cond_69
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4178
    .local v6, "first":Landroid/view/View;
    iget-boolean v7, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_77

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4180
    :cond_77
    if-nez v6, :cond_7a

    .line 4181
    return-void

    .line 4183
    :cond_7a
    iget-boolean v7, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_a9

    .line 4184
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 4185
    .local v3, "lastIndex":I
    :goto_84
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v7, v1, :cond_a8

    .line 4186
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 4187
    .local v7, "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v8, v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 4188
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, v3

    invoke-virtual {v2, v6, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4190
    :cond_9e
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 4191
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4192
    .end local v7    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_84

    .line 4193
    .end local v3    # "lastIndex":I
    :cond_a8
    goto :goto_d0

    .line 4194
    :cond_a9
    :goto_a9
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v7, v1, :cond_d0

    .line 4195
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 4196
    .restart local v7    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v8, v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_c2

    .line 4197
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {v2, v6, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4199
    :cond_c2
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 4200
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4201
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 4202
    .end local v7    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_a9

    .line 4204
    .end local v4    # "numChildren":I
    .end local v5    # "last":Landroid/view/View;
    .end local v6    # "first":Landroid/view/View;
    :cond_d0
    :goto_d0
    goto/16 :goto_18f

    .line 4207
    :cond_d2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    .line 4208
    .restart local v4    # "numChildren":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_e1

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "first":Landroid/view/View;
    goto :goto_e5

    .line 4209
    .end local v5    # "first":Landroid/view/View;
    :cond_e1
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4211
    .restart local v5    # "first":Landroid/view/View;
    :goto_e5
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_105

    .line 4212
    :goto_e9
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v1, :cond_11f

    .line 4213
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    .line 4214
    .local v6, "lastVisiblePosition":I
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_11f

    .line 4215
    invoke-direct {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 4216
    if-nez v5, :cond_101

    .line 4217
    return-void

    .line 4218
    :cond_101
    nop

    .end local v6    # "lastVisiblePosition":I
    add-int/lit8 v4, v4, 0x1

    .line 4222
    goto :goto_e9

    .line 4225
    :cond_105
    :goto_105
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v1, :cond_11f

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v6, :cond_11f

    .line 4226
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 4230
    if-nez v5, :cond_118

    .line 4231
    return-void

    .line 4232
    :cond_118
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_105

    .line 4238
    :cond_11f
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v1, :cond_12e

    .line 4239
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 4242
    :cond_12e
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 4243
    .local v6, "lastIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4244
    .local v7, "last":Landroid/view/View;
    iget-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v8, :cond_169

    .line 4245
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4246
    :goto_140
    if-eqz v7, :cond_18f

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v0, :cond_18f

    .line 4247
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 4248
    .local v8, "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v9, v8, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_15b

    .line 4249
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {v2, v7, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4251
    :cond_15b
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 4252
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4253
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 4255
    .end local v8    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_140

    .line 4259
    :cond_169
    :goto_169
    if-eqz v7, :cond_18f

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v3, v0, :cond_18f

    .line 4260
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 4261
    .local v3, "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v8, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_185

    .line 4262
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, v6

    invoke-virtual {v2, v7, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4264
    :cond_185
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 4265
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4266
    .end local v3    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_169

    .line 4269
    .end local v4    # "numChildren":I
    .end local v5    # "first":Landroid/view/View;
    .end local v6    # "lastIndex":I
    .end local v7    # "last":Landroid/view/View;
    :cond_18f
    :goto_18f
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .registers 27
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "flowRightSide"    # Z
    .param p5, "childrenTop"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .line 2687
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    const-string/jumbo v5, "setupListItem"

    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2689
    const/4 v5, 0x1

    const/4 v8, 0x0

    if-eqz p6, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->shouldShowSelector()Z

    move-result v9

    if-eqz v9, :cond_1e

    move v9, v5

    goto :goto_1f

    :cond_1e
    move v9, v8

    .line 2690
    .local v9, "isSelected":Z
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v10

    if-eq v9, v10, :cond_27

    move v10, v5

    goto :goto_28

    :cond_27
    move v10, v8

    .line 2691
    .local v10, "updateChildSelected":Z
    :goto_28
    iget v11, v0, Landroid/widget/SemHorizontalListView;->mTouchMode:I

    .line 2692
    .local v11, "mode":I
    if-lez v11, :cond_35

    const/4 v12, 0x3

    if-ge v11, v12, :cond_35

    iget v12, v0, Landroid/widget/SemHorizontalListView;->mMotionPosition:I

    if-ne v12, v2, :cond_35

    move v12, v5

    goto :goto_36

    :cond_35
    move v12, v8

    .line 2694
    .local v12, "isPressed":Z
    :goto_36
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v13

    if-eq v12, v13, :cond_3e

    move v13, v5

    goto :goto_3f

    :cond_3e
    move v13, v8

    .line 2695
    .local v13, "updateChildPressed":Z
    :goto_3f
    invoke-direct {v0, v1, v10, v4}, Landroid/widget/SemHorizontalListView;->needToMeasureChild(Landroid/view/View;ZZ)Z

    move-result v14

    .line 2699
    .local v14, "needToMeasure":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 2700
    .local v15, "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-nez v15, :cond_53

    .line 2701
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 2703
    :cond_53
    iget-object v6, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    iput v6, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 2705
    if-eqz v4, :cond_61

    iget-boolean v7, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    if-eqz v7, :cond_6a

    :cond_61
    iget-boolean v7, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    const/4 v6, -0x2

    if-eqz v7, :cond_80

    iget v7, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    if-ne v7, v6, :cond_80

    .line 2707
    :cond_6a
    iget-boolean v6, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_77

    .line 2708
    if-nez p4, :cond_72

    const/4 v6, -0x1

    goto :goto_73

    :cond_72
    move v6, v8

    :goto_73
    invoke-virtual {v0, v1, v6, v15}, Landroid/widget/SemHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9d

    .line 2710
    :cond_77
    if-eqz p4, :cond_7b

    const/4 v6, -0x1

    goto :goto_7c

    :cond_7b
    move v6, v8

    :goto_7c
    invoke-virtual {v0, v1, v6, v15}, Landroid/widget/SemHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9d

    .line 2712
    :cond_80
    iput-boolean v8, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    .line 2713
    iget v7, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    if-ne v7, v6, :cond_88

    .line 2714
    iput-boolean v5, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2716
    :cond_88
    iget-boolean v6, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_95

    .line 2717
    if-nez p4, :cond_90

    const/4 v6, -0x1

    goto :goto_91

    :cond_90
    move v6, v8

    :goto_91
    invoke-virtual {v0, v1, v6, v15, v5}, Landroid/widget/SemHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_9d

    .line 2719
    :cond_95
    if-eqz p4, :cond_99

    const/4 v6, -0x1

    goto :goto_9a

    :cond_99
    move v6, v8

    :goto_9a
    invoke-virtual {v0, v1, v6, v15, v5}, Landroid/widget/SemHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2722
    :goto_9d
    if-eqz v10, :cond_ab

    .line 2723
    invoke-virtual {v1, v9}, Landroid/view/View;->setSelected(Z)V

    .line 2724
    if-eqz v9, :cond_ab

    iget-boolean v6, v0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    if-eqz v6, :cond_ab

    .line 2725
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestFocus()Z

    .line 2728
    :cond_ab
    if-eqz v13, :cond_b0

    .line 2729
    invoke-virtual {v1, v12}, Landroid/view/View;->setPressed(Z)V

    .line 2732
    :cond_b0
    iget v6, v0, Landroid/widget/SemHorizontalListView;->mChoiceMode:I

    if-eqz v6, :cond_e0

    iget-object v6, v0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_e0

    .line 2733
    instance-of v6, v1, Landroid/widget/Checkable;

    if-eqz v6, :cond_c9

    .line 2734
    move-object v6, v1

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, v0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_e0

    .line 2735
    :cond_c9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_e0

    .line 2737
    iget-object v6, v0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setActivated(Z)V

    .line 2741
    :cond_e0
    :goto_e0
    if-eqz v14, :cond_106

    .line 2742
    iget v6, v0, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    iget-object v7, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v5

    iget v5, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->height:I

    invoke-static {v6, v7, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 2744
    .local v5, "childHeightSpec":I
    iget v6, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->width:I

    .line 2746
    .local v6, "lpWidth":I
    if-lez v6, :cond_fe

    .line 2747
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .local v7, "childWidthSpec":I
    goto :goto_102

    .line 2749
    .end local v7    # "childWidthSpec":I
    :cond_fe
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 2751
    .restart local v7    # "childWidthSpec":I
    :goto_102
    invoke-virtual {v1, v7, v5}, Landroid/view/View;->measure(II)V

    .line 2752
    .end local v5    # "childHeightSpec":I
    .end local v6    # "lpWidth":I
    .end local v7    # "childWidthSpec":I
    goto :goto_109

    .line 2753
    :cond_106
    invoke-virtual/range {p0 .. p1}, Landroid/widget/SemHorizontalListView;->cleanupLayoutState(Landroid/view/View;)V

    .line 2756
    :goto_109
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2757
    .local v5, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 2760
    .local v6, "h":I
    iget-boolean v7, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_142

    .line 2761
    if-eqz p4, :cond_11a

    add-int v7, p3, v5

    goto :goto_11c

    :cond_11a
    move/from16 v7, p3

    .line 2762
    .local v7, "childRight":I
    :goto_11c
    if-eqz p4, :cond_121

    move/from16 v8, p3

    goto :goto_123

    :cond_121
    sub-int v8, p3, v5

    .line 2764
    .local v8, "childLeft":I
    :goto_123
    if-eqz v14, :cond_12d

    .line 2766
    move/from16 v18, v9

    .end local v9    # "isSelected":Z
    .local v18, "isSelected":Z
    add-int v9, v3, v6

    .line 2767
    .local v9, "childBottom":I
    invoke-virtual {v1, v8, v3, v7, v9}, Landroid/view/View;->layout(IIII)V

    .line 2768
    .end local v9    # "childBottom":I
    goto :goto_168

    .line 2769
    .end local v18    # "isSelected":Z
    .local v9, "isSelected":Z
    :cond_12d
    move/from16 v18, v9

    .end local v9    # "isSelected":Z
    .restart local v18    # "isSelected":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2770
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_168

    .line 2774
    .end local v7    # "childRight":I
    .end local v8    # "childLeft":I
    .end local v18    # "isSelected":Z
    .restart local v9    # "isSelected":Z
    :cond_142
    move/from16 v18, v9

    .end local v9    # "isSelected":Z
    .restart local v18    # "isSelected":Z
    if-eqz p4, :cond_149

    move/from16 v7, p3

    goto :goto_14b

    :cond_149
    sub-int v7, p3, v5

    :goto_14b
    move v8, v7

    .line 2775
    .restart local v8    # "childLeft":I
    add-int v7, v8, v5

    .line 2777
    .restart local v7    # "childRight":I
    if-eqz v14, :cond_156

    .line 2779
    add-int v9, v3, v6

    .line 2780
    .local v9, "childBottom":I
    invoke-virtual {v1, v8, v3, v7, v9}, Landroid/view/View;->layout(IIII)V

    .line 2781
    .end local v9    # "childBottom":I
    goto :goto_168

    .line 2782
    :cond_156
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2783
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2787
    :goto_168
    iget-boolean v9, v0, Landroid/widget/SemHorizontalListView;->mCachingStarted:Z

    if-eqz v9, :cond_176

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v9

    if-nez v9, :cond_176

    .line 2788
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2790
    :cond_176
    if-eqz v4, :cond_185

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v9, v9, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v9, v2, :cond_185

    .line 2791
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2794
    :cond_185
    const-wide/16 v16, 0x8

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 2795
    return-void
.end method

.method private shouldAdjustWidthForDivider(I)Z
    .registers 23
    .param p1, "itemIndex"    # I

    .line 5116
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 5117
    .local v2, "dividerHeight":I
    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 5118
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 5119
    .local v4, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_e

    const/4 v7, 0x1

    goto :goto_f

    :cond_e
    const/4 v7, 0x0

    .line 5120
    .local v7, "drawOverscrollHeader":Z
    :goto_f
    if-eqz v4, :cond_13

    const/4 v8, 0x1

    goto :goto_14

    :cond_13
    const/4 v8, 0x0

    .line 5121
    .local v8, "drawOverscrollFooter":Z
    :goto_14
    if-lez v2, :cond_1c

    iget-object v9, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1c

    const/4 v9, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v9, 0x0

    .line 5123
    .local v9, "drawDividers":Z
    :goto_1d
    if-eqz v9, :cond_da

    .line 5124
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->isOpaque()Z

    move-result v10

    if-eqz v10, :cond_2d

    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v10

    if-nez v10, :cond_2d

    const/4 v10, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v10, 0x0

    .line 5125
    .local v10, "fillForMissingDividers":Z
    :goto_2e
    iget v11, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    .line 5126
    .local v11, "itemCount":I
    iget-object v12, v0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 5127
    .local v12, "headerCount":I
    iget-object v13, v0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v11, v13

    .line 5128
    .local v13, "footerLimit":I
    if-ge v1, v12, :cond_42

    const/4 v14, 0x1

    goto :goto_43

    :cond_42
    const/4 v14, 0x0

    .line 5129
    .local v14, "isHeader":Z
    :goto_43
    if-lt v1, v13, :cond_47

    const/4 v15, 0x1

    goto :goto_48

    :cond_47
    const/4 v15, 0x0

    .line 5130
    .local v15, "isFooter":Z
    :goto_48
    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    .line 5131
    .local v5, "headerDividers":Z
    iget-boolean v6, v0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    .line 5132
    .local v6, "footerDividers":Z
    if-nez v5, :cond_57

    if-nez v14, :cond_51

    goto :goto_57

    :cond_51
    move/from16 v17, v2

    move-object/from16 v18, v3

    goto/16 :goto_de

    :cond_57
    :goto_57
    if-nez v6, :cond_5b

    if-nez v15, :cond_51

    .line 5133
    :cond_5b
    move/from16 v17, v2

    .end local v2    # "dividerHeight":I
    .local v17, "dividerHeight":I
    iget-object v2, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5134
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v18, v3

    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v18, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, v0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_9d

    .line 5135
    add-int/lit8 v3, v11, -0x1

    if-ne v1, v3, :cond_6b

    const/4 v3, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v3, 0x0

    .line 5136
    .local v3, "isLastItem":Z
    :goto_6c
    if-eqz v8, :cond_70

    if-nez v3, :cond_9c

    .line 5137
    :cond_70
    add-int/lit8 v0, v1, 0x1

    .line 5141
    .local v0, "nextIndex":I
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_97

    if-nez v5, :cond_82

    if-nez v14, :cond_7f

    if-lt v0, v12, :cond_7f

    goto :goto_82

    :cond_7f
    const/16 v16, 0x1

    goto :goto_99

    :cond_82
    :goto_82
    if-nez v3, :cond_94

    .line 5143
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_91

    if-nez v6, :cond_90

    if-nez v15, :cond_91

    if-ge v0, v13, :cond_91

    :cond_90
    goto :goto_94

    :cond_91
    const/16 v16, 0x1

    goto :goto_99

    .line 5145
    :cond_94
    :goto_94
    const/16 v16, 0x1

    return v16

    .line 5141
    :cond_97
    const/16 v16, 0x1

    .line 5146
    :goto_99
    if-eqz v10, :cond_9c

    .line 5147
    return v16

    .line 5150
    .end local v0    # "nextIndex":I
    .end local v3    # "isLastItem":Z
    :cond_9c
    goto :goto_de

    .line 5151
    :cond_9d
    if-eqz v7, :cond_a1

    const/4 v0, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v0, 0x0

    .line 5152
    .local v0, "start":I
    :goto_a2
    if-ne v1, v0, :cond_a6

    const/4 v3, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v3, 0x0

    .line 5153
    .local v3, "isFirstItem":Z
    :goto_a7
    if-nez v3, :cond_d7

    .line 5154
    move/from16 v19, v0

    .end local v0    # "start":I
    .local v19, "start":I
    add-int/lit8 v0, v1, -0x1

    .line 5158
    .local v0, "previousIndex":I
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_d2

    if-nez v5, :cond_bd

    if-nez v14, :cond_ba

    if-lt v0, v12, :cond_ba

    goto :goto_bd

    :cond_ba
    const/16 v16, 0x1

    goto :goto_d4

    :cond_bd
    :goto_bd
    if-nez v3, :cond_cf

    .line 5160
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_cc

    if-nez v6, :cond_cb

    if-nez v15, :cond_cc

    if-ge v0, v13, :cond_cc

    :cond_cb
    goto :goto_cf

    :cond_cc
    const/16 v16, 0x1

    goto :goto_d4

    .line 5162
    :cond_cf
    :goto_cf
    const/16 v16, 0x1

    return v16

    .line 5158
    :cond_d2
    const/16 v16, 0x1

    .line 5163
    :goto_d4
    if-eqz v10, :cond_de

    .line 5164
    return v16

    .line 5153
    .end local v19    # "start":I
    .local v0, "start":I
    :cond_d7
    move/from16 v19, v0

    .end local v0    # "start":I
    .restart local v19    # "start":I
    goto :goto_de

    .line 5123
    .end local v5    # "headerDividers":Z
    .end local v6    # "footerDividers":Z
    .end local v10    # "fillForMissingDividers":Z
    .end local v11    # "itemCount":I
    .end local v12    # "headerCount":I
    .end local v13    # "footerLimit":I
    .end local v14    # "isHeader":Z
    .end local v15    # "isFooter":Z
    .end local v17    # "dividerHeight":I
    .end local v18    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v19    # "start":I
    .local v2, "dividerHeight":I
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_da
    move/from16 v17, v2

    move-object/from16 v18, v3

    .line 5171
    .end local v2    # "dividerHeight":I
    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "dividerHeight":I
    .restart local v18    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_de
    :goto_de
    const/4 v0, 0x0

    return v0
.end method

.method private showingLeftFadingEdge()Z
    .registers 8

    .line 794
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    .line 795
    .local v0, "listLeft":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    .line 796
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 797
    .local v2, "rightOfRightChild":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 798
    .local v3, "lastVisiblePosition":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_29

    .line 799
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v5, v4

    if-lt v3, v5, :cond_28

    if-ge v2, v0, :cond_27

    goto :goto_28

    :cond_27
    move v4, v6

    :cond_28
    :goto_28
    return v4

    .line 801
    :cond_29
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v5, :cond_39

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v0, :cond_38

    goto :goto_39

    :cond_38
    move v4, v6

    :cond_39
    :goto_39
    return v4
.end method

.method private showingRightFadingEdge()Z
    .registers 8

    .line 809
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 810
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 811
    .local v1, "rightOfRightChild":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 813
    .local v2, "lastVisiblePosition":I
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 815
    .local v4, "listRight":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_35

    .line 816
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v5, :cond_34

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v4, :cond_33

    goto :goto_34

    :cond_33
    move v3, v6

    :cond_34
    :goto_34
    return v3

    .line 818
    :cond_35
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v5, v3

    if-lt v2, v5, :cond_3e

    if-ge v1, v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v3, v6

    :cond_3e
    :goto_3e
    return v3
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 614
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SemHorizontalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 615
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 574
    new-instance v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$FixedViewInfo;-><init>(Landroid/widget/SemHorizontalListView;)V

    .line 575
    .local v0, "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 576
    iput-object p2, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 577
    iput-boolean p3, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 578
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 582
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_35

    .line 583
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_2c

    .line 584
    new-instance v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 589
    :cond_2c
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_35

    .line 590
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 593
    :cond_35
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SemHorizontalListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 501
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    new-instance v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$FixedViewInfo;-><init>(Landroid/widget/SemHorizontalListView;)V

    .line 461
    .local v0, "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 462
    iput-object p2, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 463
    iput-boolean p3, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 464
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 468
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_35

    .line 469
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_2c

    .line 470
    new-instance v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 475
    :cond_2c
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_35

    .line 476
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 479
    :cond_35
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4773
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4741
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .registers 5
    .param p1, "direction"    # I

    .line 3491
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mInLayout:Z

    .line 3492
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 3493
    .local v0, "handled":Z
    if-eqz v0, :cond_11

    .line 3494
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->playSoundEffect(I)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_15

    .line 3496
    :cond_11
    nop

    .line 3498
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mInLayout:Z

    .line 3496
    return v0

    .line 3498
    .end local v0    # "handled":Z
    :catchall_15
    move-exception v0

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mInLayout:Z

    .line 3499
    throw v0
.end method

.method protected canAnimate()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2808
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4424
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroid/widget/SemHorizontalListView;->mCachingStarted:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    .line 4425
    iput-boolean v3, v0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    .line 4429
    :cond_b
    iget v2, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 4430
    .local v2, "dividerHeight":I
    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4431
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4432
    .local v5, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_15

    move v7, v3

    goto :goto_16

    :cond_15
    const/4 v7, 0x0

    .line 4433
    .local v7, "drawOverscrollHeader":Z
    :goto_16
    if-eqz v5, :cond_1a

    move v8, v3

    goto :goto_1b

    :cond_1a
    const/4 v8, 0x0

    .line 4434
    .local v8, "drawOverscrollFooter":Z
    :goto_1b
    if-lez v2, :cond_23

    iget-object v9, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_23

    move v9, v3

    goto :goto_24

    :cond_23
    const/4 v9, 0x0

    .line 4436
    .local v9, "drawDividers":Z
    :goto_24
    if-nez v9, :cond_36

    if-nez v7, :cond_36

    if-eqz v8, :cond_2b

    goto :goto_36

    :cond_2b
    move-object/from16 v27, v4

    move-object v6, v5

    move/from16 v31, v7

    move/from16 v25, v8

    move/from16 v33, v9

    goto/16 :goto_2e6

    .line 4438
    :cond_36
    :goto_36
    iget-object v10, v0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 4439
    .local v10, "bounds":Landroid/graphics/Rect;
    iget v11, v0, Landroid/widget/SemHorizontalListView;->mPaddingTop:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 4440
    iget v11, v0, Landroid/widget/SemHorizontalListView;->mBottom:I

    iget v12, v0, Landroid/widget/SemHorizontalListView;->mTop:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/widget/SemHorizontalListView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 4442
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v11

    .line 4443
    .local v11, "count":I
    iget-object v12, v0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4444
    .local v12, "headerCount":I
    iget v13, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    .line 4445
    .local v13, "itemCount":I
    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int v14, v13, v14

    sub-int/2addr v14, v3

    .line 4446
    .local v14, "footerLimit":I
    iget-boolean v15, v0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    .line 4447
    .local v15, "headerDividers":Z
    iget-boolean v3, v0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    .line 4448
    .local v3, "footerDividers":Z
    iget v6, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 4449
    .local v6, "first":I
    move-object/from16 v17, v5

    .end local v5    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v17, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 4450
    .local v5, "areAllItemsSelectable":Z
    move/from16 v18, v5

    .end local v5    # "areAllItemsSelectable":Z
    .local v18, "areAllItemsSelectable":Z
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4455
    .local v5, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_78

    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v19

    if-nez v19, :cond_78

    const/16 v19, 0x1

    goto :goto_7a

    :cond_78
    const/16 v19, 0x0

    .line 4457
    .local v19, "fillForMissingDividers":Z
    :goto_7a
    if-eqz v19, :cond_9a

    move/from16 v20, v13

    .end local v13    # "itemCount":I
    .local v20, "itemCount":I
    iget-object v13, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v13, :cond_97

    iget-boolean v13, v0, Landroid/widget/SemHorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v13, :cond_97

    .line 4458
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    iput-object v13, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 4459
    move-object/from16 v21, v5

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .local v21, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getCacheColorHint()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9e

    .line 4457
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    :cond_97
    move-object/from16 v21, v5

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_9e

    .end local v20    # "itemCount":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    .restart local v13    # "itemCount":I
    :cond_9a
    move-object/from16 v21, v5

    move/from16 v20, v13

    .line 4461
    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .end local v13    # "itemCount":I
    .restart local v20    # "itemCount":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    :goto_9e
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 4463
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x0

    .line 4464
    .local v13, "effectivePaddingLeft":I
    const/16 v22, 0x0

    .line 4465
    .local v22, "effectivePaddingRight":I
    move/from16 v23, v13

    .end local v13    # "effectivePaddingLeft":I
    .local v23, "effectivePaddingLeft":I
    iget v13, v0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    move-object/from16 v24, v5

    .end local v5    # "paint":Landroid/graphics/Paint;
    .local v24, "paint":Landroid/graphics/Paint;
    const/16 v5, 0x22

    and-int/2addr v13, v5

    if-ne v13, v5, :cond_b9

    .line 4466
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v5, Landroid/graphics/Rect;->left:I

    .line 4467
    .end local v23    # "effectivePaddingLeft":I
    .restart local v13    # "effectivePaddingLeft":I
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move/from16 v22, v5

    .end local v22    # "effectivePaddingRight":I
    .local v5, "effectivePaddingRight":I
    goto :goto_bb

    .line 4465
    .end local v5    # "effectivePaddingRight":I
    .end local v13    # "effectivePaddingLeft":I
    .restart local v22    # "effectivePaddingRight":I
    .restart local v23    # "effectivePaddingLeft":I
    :cond_b9
    move/from16 v13, v23

    .line 4470
    .end local v23    # "effectivePaddingLeft":I
    .restart local v13    # "effectivePaddingLeft":I
    :goto_bb
    iget v5, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    move/from16 v23, v13

    .end local v13    # "effectivePaddingLeft":I
    .restart local v23    # "effectivePaddingLeft":I
    iget v13, v0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v5, v13

    sub-int v5, v5, v22

    iget v13, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    add-int/2addr v5, v13

    .line 4471
    .local v5, "listRight":I
    iget-boolean v13, v0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    move/from16 v25, v8

    .end local v8    # "drawOverscrollFooter":Z
    .local v25, "drawOverscrollFooter":Z
    if-nez v13, :cond_1d7

    .line 4472
    const/4 v13, 0x0

    .line 4475
    .local v13, "right":I
    iget v8, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    .line 4476
    .local v8, "scrollX":I
    if-lez v11, :cond_f0

    if-gez v8, :cond_f0

    .line 4477
    if-eqz v7, :cond_e1

    .line 4478
    move/from16 v27, v13

    const/4 v13, 0x0

    .end local v13    # "right":I
    .local v27, "right":I
    iput v13, v10, Landroid/graphics/Rect;->right:I

    .line 4479
    iput v8, v10, Landroid/graphics/Rect;->left:I

    .line 4480
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/SemHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_f2

    .line 4481
    .end local v27    # "right":I
    .restart local v13    # "right":I
    :cond_e1
    move/from16 v27, v13

    const/4 v13, 0x0

    .end local v13    # "right":I
    .restart local v27    # "right":I
    if-eqz v9, :cond_f2

    .line 4482
    iput v13, v10, Landroid/graphics/Rect;->right:I

    .line 4483
    neg-int v13, v2

    iput v13, v10, Landroid/graphics/Rect;->left:I

    .line 4484
    const/4 v13, -0x1

    invoke-virtual {v0, v1, v10, v13}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_f2

    .line 4476
    .end local v27    # "right":I
    .restart local v13    # "right":I
    :cond_f0
    move/from16 v27, v13

    .line 4488
    .end local v13    # "right":I
    .restart local v27    # "right":I
    :cond_f2
    :goto_f2
    const/4 v13, 0x0

    move/from16 v26, v8

    move/from16 v8, v27

    .end local v27    # "right":I
    .local v8, "right":I
    .local v13, "i":I
    .local v26, "scrollX":I
    :goto_f7
    if-ge v13, v11, :cond_1a8

    .line 4489
    move-object/from16 v27, v4

    .end local v4    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v27, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    add-int v4, v6, v13

    .line 4490
    .local v4, "itemIndex":I
    if-ge v4, v12, :cond_102

    const/16 v28, 0x1

    goto :goto_104

    :cond_102
    const/16 v28, 0x0

    .line 4491
    .local v28, "isHeader":Z
    :goto_104
    if-lt v4, v14, :cond_109

    const/16 v29, 0x1

    goto :goto_10b

    :cond_109
    const/16 v29, 0x0

    .line 4492
    .local v29, "isFooter":Z
    :goto_10b
    if-nez v15, :cond_10f

    if-nez v28, :cond_114

    :cond_10f
    if-nez v3, :cond_120

    if-nez v29, :cond_114

    goto :goto_120

    .line 4488
    .end local v4    # "itemIndex":I
    .end local v28    # "isHeader":Z
    .end local v29    # "isFooter":Z
    :cond_114
    move/from16 v32, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    goto/16 :goto_198

    .line 4493
    .restart local v4    # "itemIndex":I
    .restart local v28    # "isHeader":Z
    .restart local v29    # "isFooter":Z
    :cond_120
    :goto_120
    invoke-virtual {v0, v13}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 4494
    .local v30, "child":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getRight()I

    move-result v8

    .line 4495
    move/from16 v31, v7

    .end local v7    # "drawOverscrollHeader":Z
    .local v31, "drawOverscrollHeader":Z
    add-int/lit8 v7, v11, -0x1

    if-ne v13, v7, :cond_130

    const/4 v7, 0x1

    goto :goto_131

    :cond_130
    const/4 v7, 0x0

    .line 4497
    .local v7, "isLastItem":Z
    :goto_131
    if-eqz v9, :cond_18e

    if-ge v8, v5, :cond_18e

    if-eqz v25, :cond_143

    if-nez v7, :cond_13a

    goto :goto_143

    :cond_13a
    move/from16 v32, v5

    move/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    goto :goto_198

    .line 4499
    :cond_143
    :goto_143
    move/from16 v32, v5

    .end local v5    # "listRight":I
    .local v32, "listRight":I
    add-int/lit8 v5, v4, 0x1

    .line 4503
    .local v5, "nextIndex":I
    move/from16 v33, v9

    move-object/from16 v9, v21

    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .local v33, "drawDividers":Z
    invoke-interface {v9, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_17b

    if-nez v15, :cond_15b

    if-nez v28, :cond_158

    if-lt v5, v12, :cond_158

    goto :goto_15b

    :cond_158
    move/from16 v21, v4

    goto :goto_17d

    :cond_15b
    :goto_15b
    if-nez v7, :cond_16d

    .line 4505
    invoke-interface {v9, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_16a

    if-nez v3, :cond_169

    if-nez v29, :cond_16a

    if-ge v5, v14, :cond_16a

    :cond_169
    goto :goto_16d

    :cond_16a
    move/from16 v21, v4

    goto :goto_17d

    .line 4507
    :cond_16d
    :goto_16d
    iput v8, v10, Landroid/graphics/Rect;->left:I

    .line 4508
    move/from16 v21, v4

    .end local v4    # "itemIndex":I
    .local v21, "itemIndex":I
    add-int v4, v8, v2

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 4509
    invoke-virtual {v0, v1, v10, v13}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    move-object/from16 v4, v24

    goto :goto_198

    .line 4503
    .end local v21    # "itemIndex":I
    .restart local v4    # "itemIndex":I
    :cond_17b
    move/from16 v21, v4

    .line 4510
    .end local v4    # "itemIndex":I
    .restart local v21    # "itemIndex":I
    :goto_17d
    if-eqz v19, :cond_18b

    .line 4511
    iput v8, v10, Landroid/graphics/Rect;->left:I

    .line 4512
    add-int v4, v8, v2

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 4513
    move-object/from16 v4, v24

    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_198

    .line 4510
    .end local v4    # "paint":Landroid/graphics/Paint;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_18b
    move-object/from16 v4, v24

    .end local v24    # "paint":Landroid/graphics/Paint;
    .restart local v4    # "paint":Landroid/graphics/Paint;
    goto :goto_198

    .line 4497
    .end local v32    # "listRight":I
    .end local v33    # "drawDividers":Z
    .local v4, "itemIndex":I
    .local v5, "listRight":I
    .local v9, "drawDividers":Z
    .local v21, "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_18e
    move/from16 v32, v5

    move/from16 v33, v9

    move-object/from16 v9, v21

    move/from16 v21, v4

    move-object/from16 v4, v24

    .line 4488
    .end local v5    # "listRight":I
    .end local v7    # "isLastItem":Z
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .end local v28    # "isHeader":Z
    .end local v29    # "isFooter":Z
    .end local v30    # "child":Landroid/view/View;
    .local v4, "paint":Landroid/graphics/Paint;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .restart local v32    # "listRight":I
    .restart local v33    # "drawDividers":Z
    :goto_198
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v24, v4

    move-object/from16 v21, v9

    move-object/from16 v4, v27

    move/from16 v7, v31

    move/from16 v5, v32

    move/from16 v9, v33

    goto/16 :goto_f7

    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v31    # "drawOverscrollHeader":Z
    .end local v32    # "listRight":I
    .end local v33    # "drawDividers":Z
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "listRight":I
    .local v7, "drawOverscrollHeader":Z
    .local v9, "drawDividers":Z
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1a8
    move-object/from16 v27, v4

    move/from16 v32, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    .line 4519
    .end local v5    # "listRight":I
    .end local v7    # "drawOverscrollHeader":Z
    .end local v13    # "i":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v31    # "drawOverscrollHeader":Z
    .restart local v32    # "listRight":I
    .restart local v33    # "drawDividers":Z
    iget v5, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v7, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    add-int/2addr v5, v7

    .line 4520
    .local v5, "overFooterRight":I
    if-eqz v25, :cond_1d0

    add-int v7, v6, v11

    move/from16 v13, v20

    .end local v20    # "itemCount":I
    .local v13, "itemCount":I
    if-ne v7, v13, :cond_1cd

    if-le v5, v8, :cond_1cd

    .line 4522
    iput v8, v10, Landroid/graphics/Rect;->left:I

    .line 4523
    iput v5, v10, Landroid/graphics/Rect;->right:I

    .line 4524
    move-object/from16 v7, v17

    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v7, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1, v7, v10}, Landroid/widget/SemHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_1d4

    .line 4520
    .end local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_1cd
    move-object/from16 v7, v17

    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    goto :goto_1d4

    .end local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v13    # "itemCount":I
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "itemCount":I
    :cond_1d0
    move-object/from16 v7, v17

    move/from16 v13, v20

    .line 4526
    .end local v5    # "overFooterRight":I
    .end local v8    # "right":I
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v20    # "itemCount":I
    .end local v26    # "scrollX":I
    .restart local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "itemCount":I
    :goto_1d4
    move-object v6, v7

    goto/16 :goto_2e6

    .line 4529
    .end local v13    # "itemCount":I
    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v31    # "drawOverscrollHeader":Z
    .end local v32    # "listRight":I
    .end local v33    # "drawDividers":Z
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v5, "listRight":I
    .local v7, "drawOverscrollHeader":Z
    .local v9, "drawDividers":Z
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "itemCount":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1d7
    move-object/from16 v27, v4

    move/from16 v32, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v7, v17

    move/from16 v13, v20

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    .end local v5    # "listRight":I
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v20    # "itemCount":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    .local v7, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .restart local v13    # "itemCount":I
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v31    # "drawOverscrollHeader":Z
    .restart local v32    # "listRight":I
    .restart local v33    # "drawDividers":Z
    iget v5, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    .line 4531
    .local v5, "scrollX":I
    if-lez v11, :cond_200

    if-eqz v31, :cond_200

    .line 4532
    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 4533
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v10, Landroid/graphics/Rect;->right:I

    .line 4534
    move-object/from16 v8, v27

    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v8, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1, v8, v10}, Landroid/widget/SemHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_202

    .line 4531
    .end local v8    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_200
    move-object/from16 v8, v27

    .line 4537
    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :goto_202
    if-eqz v31, :cond_207

    const/16 v16, 0x1

    goto :goto_209

    :cond_207
    const/16 v16, 0x0

    :goto_209
    move/from16 v20, v16

    .line 4538
    .local v20, "start":I
    move-object/from16 v27, v8

    move/from16 v8, v16

    .local v8, "i":I
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :goto_20f
    if-ge v8, v11, :cond_2b0

    .line 4539
    move/from16 v16, v13

    .end local v13    # "itemCount":I
    .local v16, "itemCount":I
    add-int v13, v6, v8

    .line 4540
    .local v13, "itemIndex":I
    if-ge v13, v12, :cond_21a

    const/16 v21, 0x1

    goto :goto_21c

    :cond_21a
    const/16 v21, 0x0

    .line 4541
    .local v21, "isHeader":Z
    :goto_21c
    if-lt v13, v14, :cond_221

    const/16 v24, 0x1

    goto :goto_223

    :cond_221
    const/16 v24, 0x0

    .line 4542
    .local v24, "isFooter":Z
    :goto_223
    if-nez v15, :cond_232

    if-nez v21, :cond_228

    goto :goto_232

    :cond_228
    move/from16 v35, v3

    move/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v34, v20

    goto/16 :goto_2a2

    :cond_232
    :goto_232
    if-nez v3, :cond_236

    if-nez v24, :cond_228

    .line 4543
    :cond_236
    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 4544
    .local v28, "child":Landroid/view/View;
    move/from16 v29, v6

    .end local v6    # "first":I
    .local v29, "first":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 4545
    .local v6, "left":I
    if-eqz v33, :cond_29c

    move-object/from16 v30, v7

    move/from16 v7, v23

    .end local v23    # "effectivePaddingLeft":I
    .local v7, "effectivePaddingLeft":I
    .local v30, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-le v6, v7, :cond_295

    .line 4546
    move/from16 v23, v7

    move/from16 v7, v20

    .end local v20    # "start":I
    .local v7, "start":I
    .restart local v23    # "effectivePaddingLeft":I
    if-ne v8, v7, :cond_251

    const/16 v20, 0x1

    goto :goto_253

    :cond_251
    const/16 v20, 0x0

    .line 4547
    .local v20, "isFirstItem":Z
    :goto_253
    move/from16 v34, v7

    .end local v7    # "start":I
    .local v34, "start":I
    add-int/lit8 v7, v13, -0x1

    .line 4551
    .local v7, "previousIndex":I
    invoke-interface {v9, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_287

    if-nez v15, :cond_267

    if-nez v21, :cond_264

    if-lt v7, v12, :cond_264

    goto :goto_267

    :cond_264
    move/from16 v35, v3

    goto :goto_289

    :cond_267
    :goto_267
    if-nez v20, :cond_279

    .line 4553
    invoke-interface {v9, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_276

    if-nez v3, :cond_275

    if-nez v24, :cond_276

    if-ge v7, v14, :cond_276

    :cond_275
    goto :goto_279

    :cond_276
    move/from16 v35, v3

    goto :goto_289

    .line 4555
    :cond_279
    :goto_279
    move/from16 v35, v3

    .end local v3    # "footerDividers":Z
    .local v35, "footerDividers":Z
    sub-int v3, v6, v2

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 4556
    iput v6, v10, Landroid/graphics/Rect;->right:I

    .line 4561
    add-int/lit8 v3, v8, -0x1

    invoke-virtual {v0, v1, v10, v3}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_2a2

    .line 4551
    .end local v35    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    :cond_287
    move/from16 v35, v3

    .line 4562
    .end local v3    # "footerDividers":Z
    .restart local v35    # "footerDividers":Z
    :goto_289
    if-eqz v19, :cond_2a2

    .line 4563
    sub-int v3, v6, v2

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 4564
    iput v6, v10, Landroid/graphics/Rect;->right:I

    .line 4565
    invoke-virtual {v1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2a2

    .line 4545
    .end local v23    # "effectivePaddingLeft":I
    .end local v34    # "start":I
    .end local v35    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    .local v7, "effectivePaddingLeft":I
    .local v20, "start":I
    :cond_295
    move/from16 v35, v3

    move/from16 v23, v7

    move/from16 v34, v20

    .end local v3    # "footerDividers":Z
    .end local v7    # "effectivePaddingLeft":I
    .end local v20    # "start":I
    .restart local v23    # "effectivePaddingLeft":I
    .restart local v34    # "start":I
    .restart local v35    # "footerDividers":Z
    goto :goto_2a2

    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v34    # "start":I
    .end local v35    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    .local v7, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "start":I
    :cond_29c
    move/from16 v35, v3

    move-object/from16 v30, v7

    move/from16 v34, v20

    .line 4538
    .end local v3    # "footerDividers":Z
    .end local v6    # "left":I
    .end local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v13    # "itemIndex":I
    .end local v20    # "start":I
    .end local v21    # "isHeader":Z
    .end local v24    # "isFooter":Z
    .end local v28    # "child":Landroid/view/View;
    .restart local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v34    # "start":I
    .restart local v35    # "footerDividers":Z
    :cond_2a2
    :goto_2a2
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v16

    move/from16 v6, v29

    move-object/from16 v7, v30

    move/from16 v20, v34

    move/from16 v3, v35

    goto/16 :goto_20f

    .end local v16    # "itemCount":I
    .end local v29    # "first":I
    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v34    # "start":I
    .end local v35    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    .local v6, "first":I
    .restart local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v13, "itemCount":I
    .restart local v20    # "start":I
    :cond_2b0
    move/from16 v35, v3

    move/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v16, v13

    move/from16 v34, v20

    .line 4571
    .end local v3    # "footerDividers":Z
    .end local v6    # "first":I
    .end local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v8    # "i":I
    .end local v13    # "itemCount":I
    .end local v20    # "start":I
    .restart local v16    # "itemCount":I
    .restart local v29    # "first":I
    .restart local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v34    # "start":I
    .restart local v35    # "footerDividers":Z
    if-lez v11, :cond_2e2

    if-lez v5, :cond_2e2

    .line 4572
    if-eqz v25, :cond_2ce

    .line 4573
    iget v3, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    .line 4574
    .local v3, "absListRight":I
    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 4575
    add-int v6, v3, v5

    iput v6, v10, Landroid/graphics/Rect;->right:I

    .line 4576
    move-object/from16 v6, v30

    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v6, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1, v6, v10}, Landroid/widget/SemHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 4577
    .end local v3    # "absListRight":I
    goto :goto_2e6

    .end local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_2ce
    move-object/from16 v6, v30

    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_2df

    .line 4578
    move/from16 v3, v32

    .end local v32    # "listRight":I
    .local v3, "listRight":I
    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 4579
    add-int v7, v3, v2

    iput v7, v10, Landroid/graphics/Rect;->right:I

    .line 4580
    const/4 v7, -0x1

    invoke-virtual {v0, v1, v10, v7}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_2e6

    .line 4577
    .end local v3    # "listRight":I
    .restart local v32    # "listRight":I
    :cond_2df
    move/from16 v3, v32

    .end local v32    # "listRight":I
    .restart local v3    # "listRight":I
    goto :goto_2e6

    .line 4571
    .end local v3    # "listRight":I
    .end local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v32    # "listRight":I
    :cond_2e2
    move-object/from16 v6, v30

    move/from16 v3, v32

    .line 4586
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "scrollX":I
    .end local v9    # "adapter":Landroid/widget/ListAdapter;
    .end local v10    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "count":I
    .end local v12    # "headerCount":I
    .end local v14    # "footerLimit":I
    .end local v15    # "headerDividers":Z
    .end local v16    # "itemCount":I
    .end local v18    # "areAllItemsSelectable":Z
    .end local v19    # "fillForMissingDividers":Z
    .end local v22    # "effectivePaddingRight":I
    .end local v23    # "effectivePaddingLeft":I
    .end local v29    # "first":I
    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v32    # "listRight":I
    .end local v34    # "start":I
    .end local v35    # "footerDividers":Z
    .restart local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :goto_2e6
    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    if-eqz v3, :cond_2ed

    .line 4587
    invoke-virtual {v3, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 4591
    :cond_2ed
    invoke-super/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4593
    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v3, :cond_2f7

    .line 4594
    invoke-virtual {v3, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4596
    :cond_2f7
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3105
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 3106
    .local v0, "handled":Z
    if-nez v0, :cond_1a

    .line 3108
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 3109
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    .line 3112
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/SemHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3115
    .end local v1    # "focused":Landroid/view/View;
    :cond_1a
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4615
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4616
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 4619
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 4620
    .local v0, "more":Z
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v2, :cond_1a

    .line 4621
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    .line 4624
    :cond_1a
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v1, :cond_21

    .line 4625
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 4628
    :cond_21
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 4642
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4644
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4645
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4646
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 4397
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 4399
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4400
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4402
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 4403
    .local v1, "span":I
    if-ge v1, v0, :cond_16

    .line 4404
    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 4407
    :cond_16
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4408
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4410
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4411
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 4380
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 4382
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4383
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4385
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 4386
    .local v1, "span":I
    if-ge v1, v0, :cond_16

    .line 4387
    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 4390
    :cond_16
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4391
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4393
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4394
    return-void
.end method

.method fillGap(Z)V
    .registers 6
    .param p1, "rightSide"    # Z

    .line 933
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 934
    .local v0, "count":I
    const/16 v1, 0x22

    if-eqz p1, :cond_32

    .line 935
    const/4 v2, 0x0

    .line 936
    .local v2, "paddingLeft":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_12

    .line 937
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingLeft()I

    move-result v2

    .line 939
    :cond_12
    if-lez v0, :cond_22

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v1, v3

    goto :goto_23

    .line 940
    :cond_22
    move v1, v2

    :goto_23
    nop

    .line 941
    .local v1, "startOffset":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 942
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    .line 943
    .end local v1    # "startOffset":I
    .end local v2    # "paddingLeft":I
    goto :goto_5f

    .line 944
    :cond_32
    const/4 v2, 0x0

    .line 945
    .local v2, "paddingRight":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3c

    .line 946
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingRight()I

    move-result v2

    .line 948
    :cond_3c
    if-lez v0, :cond_4b

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v1, v3

    goto :goto_50

    .line 949
    :cond_4b
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_50
    nop

    .line 950
    .restart local v1    # "startOffset":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 951
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    .line 953
    .end local v1    # "startOffset":I
    .end local v2    # "paddingRight":I
    :goto_5f
    return-void
.end method

.method fillGapRTL(Z)V
    .registers 6
    .param p1, "rightSide"    # Z

    .line 955
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 957
    .local v0, "count":I
    const/16 v1, 0x22

    if-eqz p1, :cond_31

    .line 958
    const/4 v2, 0x0

    .line 959
    .local v2, "paddingLeft":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_12

    .line 960
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingLeft()I

    move-result v2

    .line 962
    :cond_12
    if-lez v0, :cond_21

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v1, v3

    goto :goto_22

    :cond_21
    move v1, v2

    .line 963
    .local v1, "startOffset":I
    :goto_22
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    .line 964
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    .line 965
    .end local v1    # "startOffset":I
    .end local v2    # "paddingLeft":I
    goto :goto_5d

    .line 966
    :cond_31
    const/4 v2, 0x0

    .line 967
    .local v2, "paddingRight":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3b

    .line 968
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingRight()I

    move-result v2

    .line 970
    :cond_3b
    if-lez v0, :cond_4b

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v1, v3

    goto :goto_50

    :cond_4b
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    .line 972
    .restart local v1    # "startOffset":I
    :goto_50
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 973
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    .line 975
    .end local v1    # "startOffset":I
    .end local v2    # "paddingRight":I
    :goto_5d
    return-void
.end method

.method findMotionRow(I)I
    .registers 6
    .param p1, "x"    # I

    .line 1776
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 1777
    .local v0, "childCount":I
    if-lez v0, :cond_67

    .line 1778
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_39

    .line 1779
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_23

    .line 1780
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_22

    .line 1781
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1782
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_1f

    .line 1783
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1780
    .end local v2    # "v":Landroid/view/View;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .end local v1    # "i":I
    :cond_22
    goto :goto_67

    .line 1787
    :cond_23
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_25
    if-ltz v1, :cond_38

    .line 1788
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1789
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_35

    .line 1790
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1787
    .end local v2    # "v":Landroid/view/View;
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    .end local v1    # "i":I
    :cond_38
    goto :goto_67

    .line 1796
    :cond_39
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_52

    .line 1797
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3e
    if-ge v1, v0, :cond_51

    .line 1798
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1799
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_4e

    .line 1800
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1797
    .end local v2    # "v":Landroid/view/View;
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .end local v1    # "i":I
    :cond_51
    goto :goto_67

    .line 1804
    :cond_52
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_54
    if-ltz v1, :cond_67

    .line 1805
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1806
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_64

    .line 1807
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1804
    .end local v2    # "v":Landroid/view/View;
    :cond_64
    add-int/lit8 v1, v1, -0x1

    goto :goto_54

    .line 1813
    .end local v1    # "i":I
    :cond_67
    :goto_67
    const/4 v1, -0x1

    return v1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 5087
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_23

    .line 5088
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5091
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_23

    .line 5092
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 5094
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_20

    .line 5095
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 5097
    if-eqz v2, :cond_20

    .line 5098
    return-object v2

    .line 5091
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5103
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 5
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 5066
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 5067
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_18

    .line 5068
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/SemHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 5069
    if-eqz v0, :cond_f

    .line 5070
    return-object v0

    .line 5073
    :cond_f
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/SemHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 5074
    if-eqz v0, :cond_18

    .line 5075
    return-object v0

    .line 5078
    :cond_18
    return-object v0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 7
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 4988
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 4989
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4992
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 4993
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4995
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4996
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4998
    if-eqz v2, :cond_1e

    .line 4999
    return-object v2

    .line 4992
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5004
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 4970
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 4971
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_18

    .line 4972
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4973
    if-eqz v0, :cond_f

    .line 4974
    return-object v0

    .line 4976
    :cond_f
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4977
    if-eqz v0, :cond_18

    .line 4978
    return-object v0

    .line 4981
    :cond_18
    return-object v0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 5037
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 5038
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5041
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 5042
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 5044
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 5045
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 5047
    if-eqz v2, :cond_1e

    .line 5048
    return-object v2

    .line 5041
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5053
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 4
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 5016
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 5017
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_18

    .line 5018
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 5019
    if-eqz v0, :cond_f

    .line 5020
    return-object v0

    .line 5023
    :cond_f
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 5024
    if-eqz v0, :cond_18

    .line 5025
    return-object v0

    .line 5028
    :cond_18
    return-object v0
.end method

.method fullScroll(I)Z
    .registers 6
    .param p1, "direction"    # I

    .line 3400
    const/4 v0, 0x0

    .line 3401
    .local v0, "moved":Z
    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1d

    .line 3402
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eqz v1, :cond_3a

    .line 3403
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 3404
    .local v1, "position":I
    if-ltz v1, :cond_1b

    .line 3405
    iput v3, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 3406
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    .line 3407
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    .line 3409
    :cond_1b
    const/4 v0, 0x1

    .line 3410
    .end local v1    # "position":I
    goto :goto_3a

    .line 3411
    :cond_1d
    const/16 v1, 0x42

    if-ne p1, v1, :cond_3a

    .line 3412
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v1, v3

    .line 3413
    .local v1, "lastItem":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ge v3, v1, :cond_3a

    .line 3414
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 3416
    .local v2, "position":I
    if-ltz v2, :cond_39

    .line 3417
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 3418
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    .line 3419
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    .line 3421
    :cond_39
    const/4 v0, 0x1

    .line 3425
    .end local v1    # "lastItem":I
    .end local v2    # "position":I
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_48

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_48

    .line 3426
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    .line 3427
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 3430
    :cond_48
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 670
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2217
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 2219
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4659
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4693
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 626
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 513
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4327
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4830
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4802
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getWidthForPosition(I)I
    .registers 4
    .param p1, "position"    # I

    .line 5108
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getWidthForPosition(I)I

    move-result v0

    .line 5109
    .local v0, "width":I
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->shouldAdjustWidthForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5110
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    .line 5112
    :cond_e
    return v0
.end method

.method public isOpaque()Z
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4348
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4349
    :cond_14
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    .line 4350
    .local v0, "retValue":Z
    :goto_1d
    if-eqz v0, :cond_a5

    .line 4352
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_65

    .line 4353
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v4, :cond_30

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    goto :goto_32

    :cond_30
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mPaddingRight:I

    :goto_32
    sub-int/2addr v3, v4

    .line 4354
    .local v3, "listRight":I
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4355
    .local v4, "first":Landroid/view/View;
    if-eqz v4, :cond_64

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v3, :cond_45

    goto :goto_64

    .line 4358
    :cond_45
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_4e

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    goto :goto_50

    :cond_4e
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    .line 4359
    .local v5, "listLeft":I
    :goto_50
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4360
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_63

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ge v6, v5, :cond_62

    goto :goto_63

    .line 4363
    .end local v1    # "last":Landroid/view/View;
    .end local v3    # "listRight":I
    .end local v4    # "first":Landroid/view/View;
    .end local v5    # "listLeft":I
    :cond_62
    goto :goto_a5

    .line 4361
    .restart local v1    # "last":Landroid/view/View;
    .restart local v3    # "listRight":I
    .restart local v4    # "first":Landroid/view/View;
    .restart local v5    # "listLeft":I
    :cond_63
    :goto_63
    return v2

    .line 4356
    .end local v1    # "last":Landroid/view/View;
    .end local v5    # "listLeft":I
    :cond_64
    :goto_64
    return v2

    .line 4364
    .end local v3    # "listRight":I
    .end local v4    # "first":Landroid/view/View;
    :cond_65
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_6e

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_70

    :cond_6e
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    .line 4365
    .local v3, "listLeft":I
    :goto_70
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4366
    .restart local v4    # "first":Landroid/view/View;
    if-eqz v4, :cond_a4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v3, :cond_7d

    goto :goto_a4

    .line 4369
    :cond_7d
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_8a

    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    goto :goto_8c

    :cond_8a
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mPaddingRight:I

    :goto_8c
    sub-int/2addr v5, v6

    .line 4370
    .local v5, "listRight":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4371
    .restart local v1    # "last":Landroid/view/View;
    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v6, v5, :cond_a5

    .line 4372
    :cond_a3
    return v2

    .line 4367
    .end local v1    # "last":Landroid/view/View;
    .end local v5    # "listRight":I
    :cond_a4
    :goto_a4
    return v2

    .line 4376
    .end local v3    # "listLeft":I
    .end local v4    # "first":Landroid/view/View;
    :cond_a5
    :goto_a5
    return v0
.end method

.method protected layoutChildren()V
    .registers 29
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2229
    move-object/from16 v7, p0

    iget-boolean v8, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    .line 2230
    .local v8, "blockLayoutRequests":Z
    if-eqz v8, :cond_7

    .line 2231
    return-void

    .line 2233
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    .line 2234
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    .line 2237
    const/4 v9, 0x0

    :try_start_11
    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 2239
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 2241
    iget-object v1, v7, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_26

    .line 2242
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    .line 2243
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_494

    .line 2599
    if-nez v8, :cond_25

    .line 2600
    iput-boolean v9, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    .line 2244
    :cond_25
    return-void

    .line 2247
    :cond_26
    :try_start_26
    iget-object v1, v7, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move v10, v1

    .line 2248
    .local v10, "childrenLeft":I
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v11, v1, v2

    .line 2249
    .local v11, "childrenRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    move v12, v1

    .line 2251
    .local v12, "childCount":I
    const/4 v1, 0x0

    .line 2252
    .local v1, "index":I
    const/4 v2, 0x0

    .line 2255
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 2256
    .local v3, "oldSel":Landroid/view/View;
    const/4 v4, 0x0

    .line 2257
    .local v4, "oldFirst":Landroid/view/View;
    const/4 v5, 0x0

    .line 2260
    .local v5, "newSel":Landroid/view/View;
    iget v6, v7, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    packed-switch v6, :pswitch_data_49c

    .line 2275
    iget v6, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    goto :goto_6f

    .line 2262
    :pswitch_48
    iget v6, v7, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v1, v6, v13

    .line 2263
    if-ltz v1, :cond_5f

    if-ge v1, v12, :cond_5f

    .line 2264
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_99

    .line 2291
    :cond_5f
    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_99

    .line 2271
    :pswitch_67
    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_99

    .line 2275
    :goto_6f
    iget v13, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v1, v6, v13

    .line 2276
    if-ltz v1, :cond_7c

    if-ge v1, v12, :cond_7c

    .line 2277
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 2281
    :cond_7c
    invoke-virtual {v7, v9}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 2283
    iget v6, v7, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    if-ltz v6, :cond_8b

    .line 2284
    iget v6, v7, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    sub-int/2addr v6, v13

    move v2, v6

    .line 2288
    :cond_8b
    add-int v6, v1, v2

    invoke-virtual {v7, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 2291
    .end local v1    # "index":I
    .end local v2    # "delta":I
    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "oldFirst":Landroid/view/View;
    .end local v5    # "newSel":Landroid/view/View;
    .local v13, "index":I
    .local v14, "delta":I
    .local v15, "oldSel":Landroid/view/View;
    .local v16, "oldFirst":Landroid/view/View;
    .local v17, "newSel":Landroid/view/View;
    :goto_99
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    move/from16 v18, v1

    .line 2292
    .local v18, "dataChanged":Z
    if-eqz v18, :cond_a2

    .line 2293
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->handleDataChanged()V

    .line 2298
    :cond_a2
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-nez v1, :cond_b1

    .line 2299
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    .line 2300
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_ac
    .catchall {:try_start_26 .. :try_end_ac} :catchall_494

    .line 2599
    if-nez v8, :cond_b0

    .line 2600
    iput-boolean v9, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    .line 2301
    :cond_b0
    return-void

    .line 2302
    :cond_b1
    :try_start_b1
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_44f

    .line 2311
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 2313
    const/4 v1, 0x0

    .line 2314
    .local v1, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v2, 0x0

    .line 2315
    .local v2, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v3, -0x1

    .line 2316
    .local v3, "accessibilityFocusPosition":I
    const/4 v4, 0x0

    .line 2320
    .local v4, "mInsideViewAccFocused":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    move-object/from16 v19, v5

    .line 2321
    .local v19, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v19, :cond_107

    .line 2322
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v5

    .line 2323
    .local v5, "focusHost":Landroid/view/View;
    if-eqz v5, :cond_107

    .line 2324
    invoke-virtual {v7, v5}, Landroid/widget/SemHorizontalListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 2325
    .local v6, "focusChild":Landroid/view/View;
    if-eq v5, v6, :cond_d9

    .line 2326
    const/4 v4, 0x1

    .line 2328
    :cond_d9
    if-eqz v6, :cond_100

    .line 2329
    if-eqz v18, :cond_ed

    invoke-direct {v7, v6}, Landroid/widget/SemHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_ed

    .line 2330
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v20

    if-nez v20, :cond_ed

    iget-boolean v9, v7, Landroid/widget/SemHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v9, :cond_f4

    .line 2333
    :cond_ed
    move-object v2, v5

    .line 2334
    nop

    .line 2335
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    move-object v1, v9

    .line 2340
    :cond_f4
    invoke-virtual {v7, v6}, Landroid/widget/SemHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    move v3, v9

    move-object v9, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    goto :goto_10d

    .line 2328
    :cond_100
    move-object v9, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    goto :goto_10d

    .line 2345
    .end local v5    # "focusHost":Landroid/view/View;
    .end local v6    # "focusChild":Landroid/view/View;
    :cond_107
    move-object v9, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    .end local v1    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v3    # "accessibilityFocusPosition":I
    .end local v4    # "mInsideViewAccFocused":Z
    .local v6, "accessibilityFocusPosition":I
    .local v9, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v21, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v22, "mInsideViewAccFocused":Z
    :goto_10d
    const/4 v1, 0x0

    .line 2346
    .local v1, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/4 v2, 0x0

    .line 2351
    .local v2, "focusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    .line 2352
    .local v5, "focusedChild":Landroid/view/View;
    if-eqz v5, :cond_130

    .line 2358
    if-eqz v18, :cond_11e

    invoke-direct {v7, v5}, Landroid/widget/SemHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 2359
    :cond_11e
    move-object v1, v5

    .line 2361
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->findFocus()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 2362
    if-eqz v2, :cond_129

    .line 2364
    invoke-virtual {v2}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2367
    :cond_129
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->requestFocus()Z

    move-object v4, v1

    move-object/from16 v23, v2

    goto :goto_133

    .line 2352
    :cond_130
    move-object v4, v1

    move-object/from16 v23, v2

    .line 2372
    .end local v1    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v2    # "focusLayoutRestoreView":Landroid/view/View;
    .local v4, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v23, "focusLayoutRestoreView":Landroid/view/View;
    :goto_133
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move v3, v1

    .line 2373
    .local v3, "firstPosition":I
    iget-object v1, v7, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object v2, v1

    .line 2374
    .local v2, "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    if-eqz v18, :cond_152

    .line 2375
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13c
    if-ge v1, v12, :cond_14f

    .line 2376
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v24, v4

    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    add-int v4, v3, v1

    invoke-virtual {v2, v0, v4}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2375
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v24

    const/4 v0, 0x1

    goto :goto_13c

    .end local v24    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    :cond_14f
    move-object/from16 v24, v4

    .end local v1    # "i":I
    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v24    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    goto :goto_157

    .line 2379
    .end local v24    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    :cond_152
    move-object/from16 v24, v4

    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v24    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-virtual {v2, v12, v3}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 2383
    :goto_157
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->detachAllViewsFromParent()V

    .line 2384
    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    .line 2386
    iget v0, v7, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    packed-switch v0, :pswitch_data_4aa

    .line 2427
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .local v0, "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .local v25, "firstPosition":I
    .local v26, "index":I
    .local v27, "delta":I
    if-nez v12, :cond_299

    .line 2428
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    goto/16 :goto_242

    .line 2424
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_174
    move-object/from16 v1, p0

    move-object v0, v2

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    move-object v2, v15

    move/from16 v25, v3

    .end local v3    # "firstPosition":I
    .restart local v25    # "firstPosition":I
    move-object/from16 v3, v17

    move/from16 v26, v13

    move-object/from16 v13, v24

    .end local v24    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v26    # "index":I
    move v4, v14

    move-object/from16 v24, v5

    .end local v5    # "focusedChild":Landroid/view/View;
    .local v24, "focusedChild":Landroid/view/View;
    move v5, v10

    move/from16 v27, v14

    move v14, v6

    .end local v6    # "accessibilityFocusPosition":I
    .local v14, "accessibilityFocusPosition":I
    .restart local v27    # "delta":I
    move v6, v11

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    .line 2425
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_306

    .line 2395
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_18e
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .restart local v25    # "firstPosition":I
    .restart local v26    # "index":I
    .restart local v27    # "delta":I
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_1a8

    .line 2396
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_306

    .line 2398
    .end local v1    # "sel":Landroid/view/View;
    :cond_1a8
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .line 2399
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_306

    .line 2418
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_1b2
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .restart local v25    # "firstPosition":I
    .restart local v26    # "index":I
    .restart local v27    # "delta":I
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_1ce

    .line 2419
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_306

    .line 2421
    .end local v1    # "sel":Landroid/view/View;
    :cond_1ce
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .line 2422
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_306

    .line 2401
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_1da
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .restart local v25    # "firstPosition":I
    .restart local v26    # "index":I
    .restart local v27    # "delta":I
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_1f3

    .line 2402
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v10}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_1fb

    .line 2404
    .end local v1    # "sel":Landroid/view/View;
    :cond_1f3
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v11}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v1

    .line 2405
    .restart local v1    # "sel":Landroid/view/View;
    :goto_1fb
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 2406
    goto/16 :goto_306

    .line 2388
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_200
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .restart local v25    # "firstPosition":I
    .restart local v26    # "index":I
    .restart local v27    # "delta":I
    if-eqz v17, :cond_218

    .line 2389
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-direct {v7, v1, v10, v11}, Landroid/widget/SemHorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_306

    .line 2391
    .end local v1    # "sel":Landroid/view/View;
    :cond_218
    invoke-direct {v7, v10, v11}, Landroid/widget/SemHorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    .line 2393
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_306

    .line 2408
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_21e
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .restart local v25    # "firstPosition":I
    .restart local v26    # "index":I
    .restart local v27    # "delta":I
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_236

    .line 2409
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 2410
    invoke-direct {v7, v11}, Landroid/widget/SemHorizontalListView;->fillFromRight(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_23d

    .line 2412
    .end local v1    # "sel":Landroid/view/View;
    :cond_236
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 2413
    invoke-direct {v7, v10}, Landroid/widget/SemHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v1

    .line 2415
    .restart local v1    # "sel":Landroid/view/View;
    :goto_23d
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 2416
    goto/16 :goto_306

    .line 2428
    .end local v1    # "sel":Landroid/view/View;
    :goto_242
    if-eqz v1, :cond_26d

    .line 2429
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_258

    .line 2430
    const/4 v1, 0x0

    invoke-virtual {v7, v1, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v2

    move v1, v2

    .line 2431
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 2432
    invoke-direct {v7, v11}, Landroid/widget/SemHorizontalListView;->fillFromRight(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 2433
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_306

    .line 2434
    .end local v1    # "sel":Landroid/view/View;
    :cond_258
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2435
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 2436
    iget v3, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v3, v2

    invoke-direct {v7, v3, v10}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 2437
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_306

    .line 2439
    .end local v1    # "sel":Landroid/view/View;
    :cond_26d
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_282

    .line 2440
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v3

    move v1, v3

    .line 2441
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 2442
    invoke-direct {v7, v10}, Landroid/widget/SemHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 2443
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_306

    .line 2444
    .end local v1    # "sel":Landroid/view/View;
    :cond_282
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2445
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 2446
    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v7, v2, v11}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 2447
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_306

    .line 2451
    .end local v1    # "sel":Landroid/view/View;
    :cond_299
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_2d2

    .line 2452
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ltz v1, :cond_2b6

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_2b6

    .line 2453
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-nez v15, :cond_2ad

    move v2, v11

    goto :goto_2b1

    :cond_2ad
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_2b1
    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_306

    .line 2454
    .end local v1    # "sel":Landroid/view/View;
    :cond_2b6
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_2cb

    .line 2455
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v16, :cond_2c2

    move v2, v11

    goto :goto_2c6

    :cond_2c2
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_2c6
    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_306

    .line 2457
    .end local v1    # "sel":Landroid/view/View;
    :cond_2cb
    const/4 v1, 0x0

    invoke-direct {v7, v1, v11}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_306

    .line 2461
    .end local v1    # "sel":Landroid/view/View;
    :cond_2d2
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ltz v1, :cond_2eb

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_2eb

    .line 2462
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-nez v15, :cond_2e2

    move v2, v10

    goto :goto_2e6

    :cond_2e2
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_2e6
    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_306

    .line 2463
    .end local v1    # "sel":Landroid/view/View;
    :cond_2eb
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_300

    .line 2465
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v16, :cond_2f7

    move v2, v10

    goto :goto_2fb

    :cond_2f7
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_2fb
    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_306

    .line 2467
    .end local v1    # "sel":Landroid/view/View;
    :cond_300
    const/4 v1, 0x0

    invoke-direct {v7, v1, v10}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 2475
    .restart local v1    # "sel":Landroid/view/View;
    :goto_306
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->scrapActiveViews()V

    .line 2477
    const/4 v2, -0x1

    if-eqz v1, :cond_352

    .line 2480
    iget-boolean v3, v7, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v3, :cond_348

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_348

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_348

    .line 2481
    if-ne v1, v13, :cond_326

    if-eqz v23, :cond_326

    .line 2483
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_32c

    :cond_326
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_32e

    :cond_32c
    const/4 v3, 0x1

    goto :goto_32f

    :cond_32e
    const/4 v3, 0x0

    .line 2484
    .local v3, "focusWasTaken":Z
    :goto_32f
    if-nez v3, :cond_33e

    .line 2488
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    .line 2489
    .local v4, "focused":Landroid/view/View;
    if-eqz v4, :cond_33a

    .line 2490
    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 2492
    :cond_33a
    invoke-virtual {v7, v2, v1}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2493
    .end local v4    # "focused":Landroid/view/View;
    goto :goto_347

    .line 2494
    :cond_33e
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 2495
    iget-object v4, v7, Landroid/widget/SemHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 2497
    .end local v3    # "focusWasTaken":Z
    :goto_347
    goto :goto_34b

    .line 2498
    :cond_348
    invoke-virtual {v7, v2, v1}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2500
    :goto_34b
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v7, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    goto :goto_39b

    .line 2502
    :cond_352
    iget v3, v7, Landroid/widget/SemHorizontalListView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_35f

    iget v3, v7, Landroid/widget/SemHorizontalListView;->mTouchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_35d

    goto :goto_35f

    :cond_35d
    const/4 v3, 0x0

    goto :goto_360

    :cond_35f
    :goto_35f
    const/4 v3, 0x1

    .line 2504
    .local v3, "inTouchMode":Z
    :goto_360
    if-eqz v3, :cond_373

    .line 2506
    iget v4, v7, Landroid/widget/SemHorizontalListView;->mMotionPosition:I

    iget v5, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2507
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_372

    .line 2508
    iget v5, v7, Landroid/widget/SemHorizontalListView;->mMotionPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2510
    .end local v4    # "child":Landroid/view/View;
    :cond_372
    goto :goto_390

    :cond_373
    iget v4, v7, Landroid/widget/SemHorizontalListView;->mSelectorPosition:I

    if-eq v4, v2, :cond_388

    .line 2514
    iget v4, v7, Landroid/widget/SemHorizontalListView;->mSelectorPosition:I

    iget v5, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2515
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_387

    .line 2516
    iget v5, v7, Landroid/widget/SemHorizontalListView;->mSelectorPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2518
    .end local v4    # "child":Landroid/view/View;
    :cond_387
    goto :goto_390

    .line 2520
    :cond_388
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    .line 2521
    iget-object v4, v7, Landroid/widget/SemHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 2526
    :goto_390
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_39b

    if-eqz v23, :cond_39b

    .line 2527
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    .line 2532
    .end local v3    # "inTouchMode":Z
    :cond_39b
    :goto_39b
    const/4 v3, 0x0

    if-eqz v19, :cond_419

    .line 2533
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v4

    .line 2534
    .local v4, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v4, :cond_3e5

    .line 2535
    if-eqz v21, :cond_3c9

    .line 2536
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_3c9

    .line 2537
    nop

    .line 2538
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 2539
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v9, :cond_3c5

    if-eqz v2, :cond_3c5

    .line 2540
    nop

    .line 2541
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    .line 2540
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 2542
    .local v5, "virtualViewId":I
    const/16 v6, 0x40

    invoke-virtual {v2, v5, v6, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 2544
    nop

    .end local v5    # "virtualViewId":I
    goto :goto_3e4

    .line 2545
    :cond_3c5
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_3e4

    .line 2547
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3c9
    if-eq v14, v2, :cond_3e4

    .line 2549
    iget v2, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v6, v14, v2

    .line 2551
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 2549
    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 2552
    .local v2, "position":I
    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2553
    .local v5, "restoreView":Landroid/view/View;
    if-eqz v5, :cond_3e3

    .line 2554
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2556
    .end local v2    # "position":I
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_3e3
    goto :goto_419

    .line 2547
    :cond_3e4
    :goto_3e4
    goto :goto_419

    .line 2557
    :cond_3e5
    if-eq v14, v2, :cond_419

    .line 2558
    iget v2, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v6, v14, v2

    .line 2559
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 2558
    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 2561
    .restart local v2    # "position":I
    if-eqz v22, :cond_405

    .line 2562
    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "restoreView":Landroid/view/View;
    goto :goto_409

    .line 2564
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_405
    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2566
    .restart local v5    # "restoreView":Landroid/view/View;
    :goto_409
    invoke-virtual {v4}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v6

    if-eqz v6, :cond_419

    if-eq v4, v5, :cond_419

    .line 2567
    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2568
    if-eqz v5, :cond_419

    .line 2569
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2577
    .end local v2    # "position":I
    .end local v4    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_419
    :goto_419
    if-eqz v23, :cond_424

    .line 2578
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_424

    .line 2579
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2582
    :cond_424
    const/4 v2, 0x0

    iput v2, v7, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 2583
    iput-boolean v2, v7, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    .line 2584
    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_434

    .line 2585
    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 2586
    iput-object v3, v7, Landroid/widget/SemHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2588
    :cond_434
    const/4 v2, 0x0

    iput-boolean v2, v7, Landroid/widget/SemHorizontalListView;->mNeedSync:Z

    .line 2589
    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2591
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->updateScrollIndicators()V

    .line 2593
    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-lez v2, :cond_446

    .line 2594
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    .line 2597
    :cond_446
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_449
    .catchall {:try_start_b1 .. :try_end_449} :catchall_494

    .line 2599
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10    # "childrenLeft":I
    .end local v11    # "childrenRight":I
    .end local v12    # "childCount":I
    .end local v13    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v14    # "accessibilityFocusPosition":I
    .end local v15    # "oldSel":Landroid/view/View;
    .end local v16    # "oldFirst":Landroid/view/View;
    .end local v17    # "newSel":Landroid/view/View;
    .end local v18    # "dataChanged":Z
    .end local v19    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v21    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v22    # "mInsideViewAccFocused":Z
    .end local v23    # "focusLayoutRestoreView":Landroid/view/View;
    .end local v24    # "focusedChild":Landroid/view/View;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    if-nez v8, :cond_44e

    .line 2600
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    .line 2603
    :cond_44e
    return-void

    .line 2303
    .restart local v10    # "childrenLeft":I
    .restart local v11    # "childrenRight":I
    .restart local v12    # "childCount":I
    .local v13, "index":I
    .local v14, "delta":I
    .restart local v15    # "oldSel":Landroid/view/View;
    .restart local v16    # "oldFirst":Landroid/view/View;
    .restart local v17    # "newSel":Landroid/view/View;
    .restart local v18    # "dataChanged":Z
    :cond_44f
    move/from16 v26, v13

    move/from16 v27, v14

    .end local v13    # "index":I
    .end local v14    # "delta":I
    .restart local v26    # "index":I
    .restart local v27    # "delta":I
    :try_start_453
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content of the adapter has changed but SemHorizontalListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in SemHorizontalListView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2307
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with Adapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2308
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v8    # "blockLayoutRequests":Z
    .end local p0    # "this":Landroid/widget/SemHorizontalListView;
    throw v0
    :try_end_494
    .catchall {:try_start_453 .. :try_end_494} :catchall_494

    .line 2599
    .end local v10    # "childrenLeft":I
    .end local v11    # "childrenRight":I
    .end local v12    # "childCount":I
    .end local v15    # "oldSel":Landroid/view/View;
    .end local v16    # "oldFirst":Landroid/view/View;
    .end local v17    # "newSel":Landroid/view/View;
    .end local v18    # "dataChanged":Z
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v8    # "blockLayoutRequests":Z
    .restart local p0    # "this":Landroid/widget/SemHorizontalListView;
    :catchall_494
    move-exception v0

    if-nez v8, :cond_49a

    .line 2600
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    .line 2602
    :cond_49a
    throw v0

    nop

    :pswitch_data_49c
    .packed-switch 0x1
        :pswitch_67
        :pswitch_48
        :pswitch_67
        :pswitch_67
        :pswitch_67
    .end packed-switch

    :pswitch_data_4aa
    .packed-switch 0x1
        :pswitch_21e
        :pswitch_200
        :pswitch_1da
        :pswitch_1b2
        :pswitch_18e
        :pswitch_174
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 8
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 2953
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2954
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_64

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_64

    .line 2958
    :cond_c
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2960
    .local v2, "count":I
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_5d

    .line 2961
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3b

    .line 2962
    if-eqz p2, :cond_2c

    .line 2963
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2964
    :goto_21
    if-ltz p1, :cond_5d

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 2965
    add-int/lit8 p1, p1, -0x1

    goto :goto_21

    .line 2968
    :cond_2c
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2969
    :goto_30
    if-ge p1, v2, :cond_5d

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 2970
    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    .line 2975
    :cond_3b
    if-eqz p2, :cond_4c

    .line 2976
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2977
    :goto_41
    if-ge p1, v2, :cond_5d

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 2978
    add-int/lit8 p1, p1, 0x1

    goto :goto_41

    .line 2981
    :cond_4c
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2982
    :goto_52
    if-ltz p1, :cond_5d

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 2983
    add-int/lit8 p1, p1, -0x1

    goto :goto_52

    .line 2988
    :cond_5d
    if-ltz p1, :cond_63

    if-lt p1, v2, :cond_62

    goto :goto_63

    .line 2992
    :cond_62
    return p1

    .line 2989
    :cond_63
    :goto_63
    return v1

    .line 2955
    .end local v2    # "count":I
    :cond_64
    :goto_64
    return v1
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .registers 10
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .line 3008
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3009
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_7c

    .line 3014
    :cond_d
    invoke-virtual {p0, p2, p3}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3015
    .local v2, "after":I
    if-eq v2, v1, :cond_14

    .line 3016
    return v2

    .line 3020
    :cond_14
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 3021
    .local v3, "count":I
    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 3022
    iget-boolean v4, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_4f

    .line 3023
    if-eqz p3, :cond_39

    .line 3024
    add-int/lit8 v4, p2, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3025
    :goto_2b
    if-ge p2, p1, :cond_36

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_36

    .line 3026
    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    .line 3028
    :cond_36
    if-lt p2, p1, :cond_7b

    .line 3029
    return v1

    .line 3032
    :cond_39
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3033
    :goto_41
    if-le p2, p1, :cond_4c

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 3034
    add-int/lit8 p2, p2, -0x1

    goto :goto_41

    .line 3036
    :cond_4c
    if-gt p2, p1, :cond_7b

    .line 3037
    return v1

    .line 3042
    :cond_4f
    if-eqz p3, :cond_67

    .line 3043
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3044
    :goto_59
    if-le p2, p1, :cond_64

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_64

    .line 3045
    add-int/lit8 p2, p2, -0x1

    goto :goto_59

    .line 3047
    :cond_64
    if-gt p2, p1, :cond_7b

    .line 3048
    return v1

    .line 3051
    :cond_67
    add-int/lit8 v4, p2, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3052
    :goto_6d
    if-ge p2, p1, :cond_78

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_78

    .line 3053
    add-int/lit8 p2, p2, 0x1

    goto :goto_6d

    .line 3055
    :cond_78
    if-lt p2, p1, :cond_7b

    .line 3056
    return v1

    .line 3060
    :cond_7b
    return p2

    .line 3010
    .end local v2    # "after":I
    .end local v3    # "count":I
    :cond_7c
    :goto_7c
    return v1
.end method

.method final measureWidthOfChildren(IIIII)I
    .registers 22
    .param p1, "heightMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxWidth"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .line 1712
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1713
    .local v3, "adapter":Landroid/widget/ListAdapter;
    if-nez v3, :cond_14

    .line 1714
    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    return v4

    .line 1718
    :cond_14
    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 1719
    .local v4, "returnedWidth":I
    iget v5, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    if-lez v5, :cond_26

    iget-object v6, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_26

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    .line 1722
    .local v5, "dividerHeight":I
    :goto_27
    const/4 v6, 0x0

    .line 1727
    .local v6, "prevWidthWithoutPartialChild":I
    const/4 v7, -0x1

    move/from16 v8, p3

    if-ne v8, v7, :cond_34

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_35

    :cond_34
    move v9, v8

    :goto_35
    move v8, v9

    .line 1728
    .end local p3    # "endPosition":I
    .local v8, "endPosition":I
    iget-object v9, v0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 1729
    .local v9, "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->recycleOnMeasure()Z

    move-result v10

    .line 1730
    .local v10, "recyle":Z
    iget-object v11, v0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    .line 1732
    .local v11, "isScrap":[Z
    move/from16 v12, p2

    .local v12, "i":I
    :goto_40
    if-gt v12, v8, :cond_82

    .line 1733
    invoke-virtual {v0, v12, v11}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    .line 1735
    .local v13, "child":Landroid/view/View;
    move/from16 v14, p1

    invoke-direct {v0, v13, v12, v14}, Landroid/widget/SemHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1737
    if-lez v12, :cond_54

    .line 1739
    iget-boolean v15, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v15, :cond_53

    .line 1740
    sub-int/2addr v4, v5

    goto :goto_54

    .line 1742
    :cond_53
    add-int/2addr v4, v5

    .line 1746
    :cond_54
    :goto_54
    if-eqz v10, :cond_67

    .line 1747
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 1746
    invoke-virtual {v9, v15}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v15

    if-eqz v15, :cond_67

    .line 1748
    invoke-virtual {v9, v13, v7}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1751
    :cond_67
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v4, v15

    .line 1753
    if-lt v4, v1, :cond_7a

    .line 1759
    if-ltz v2, :cond_78

    if-le v12, v2, :cond_78

    if-lez v6, :cond_78

    if-eq v4, v1, :cond_78

    .line 1760
    move v7, v6

    goto :goto_79

    .line 1761
    :cond_78
    move v7, v1

    .line 1756
    :goto_79
    return v7

    .line 1764
    :cond_7a
    if-ltz v2, :cond_7f

    if-lt v12, v2, :cond_7f

    .line 1765
    move v6, v4

    .line 1732
    :cond_7f
    add-int/lit8 v12, v12, 0x1

    goto :goto_40

    .line 1771
    .end local v13    # "child":Landroid/view/View;
    :cond_82
    move/from16 v14, p1

    return v4
.end method

.method protected onFinishInflate()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4950
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->onFinishInflate()V

    .line 4952
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 4953
    .local v0, "count":I
    if-lez v0, :cond_19

    .line 4954
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 4955
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->addHeaderView(Landroid/view/View;)V

    .line 4954
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4957
    .end local v1    # "i":I
    :cond_16
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->removeAllViews()V

    .line 4959
    :cond_19
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 14
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4856
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4858
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4859
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    .line 4860
    .local v1, "closetChildIndex":I
    const/4 v2, 0x0

    .line 4861
    .local v2, "closestChildLeft":I
    if-eqz v0, :cond_57

    if-eqz p1, :cond_57

    if-eqz p3, :cond_57

    .line 4862
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mScrollY:I

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 4866
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_27

    .line 4867
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 4868
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    .line 4873
    :cond_27
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 4874
    .local v3, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 4875
    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 4876
    .local v5, "childCount":I
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 4878
    .local v6, "firstPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_33
    if-ge v7, v5, :cond_57

    .line 4880
    add-int v8, v6, v7

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_3e

    .line 4881
    goto :goto_54

    .line 4884
    :cond_3e
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4885
    .local v8, "other":Landroid/view/View;
    invoke-virtual {v8, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4886
    invoke-virtual {p0, v8, v3}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4887
    invoke-static {p3, v3, p2}, Landroid/widget/SemHorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v9

    .line 4889
    .local v9, "distance":I
    if-ge v9, v4, :cond_54

    .line 4890
    move v4, v9

    .line 4891
    move v1, v7

    .line 4892
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 4878
    .end local v8    # "other":Landroid/view/View;
    .end local v9    # "distance":I
    :cond_54
    :goto_54
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 4897
    .end local v3    # "otherRect":Landroid/graphics/Rect;
    .end local v4    # "minDistance":I
    .end local v5    # "childCount":I
    .end local v6    # "firstPosition":I
    .end local v7    # "i":I
    :cond_57
    if-ltz v1, :cond_60

    .line 4898
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v2}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    goto :goto_63

    .line 4900
    :cond_60
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    .line 4903
    :goto_63
    if-eqz p1, :cond_71

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v3, :cond_71

    .line 4904
    new-instance v3, Landroid/widget/SemHorizontalListView$2;

    invoke-direct {v3, p0}, Landroid/widget/SemHorizontalListView$2;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 4910
    :cond_71
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5206
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5207
    const-class v0, Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 5208
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5247
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5248
    const-class v0, Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 5250
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    .line 5251
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectionModeForAccessibility()I

    move-result v1

    .line 5252
    .local v1, "selectionMode":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    .line 5253
    .local v2, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 5254
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5267
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5269
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 5270
    .local v0, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-eqz v0, :cond_12

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    move v6, v1

    .line 5271
    .local v6, "isHeading":Z
    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalListView;->isItemChecked(I)Z

    move-result v1

    .line 5272
    .local v1, "isSelected":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    move v4, p2

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    .line 5274
    .local v2, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 5275
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2164
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    .line 2166
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3138
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3161
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3183
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1603
    move-object v6, p0

    move/from16 v7, p2

    invoke-super/range {p0 .. p2}, Landroid/widget/SemHorizontalAbsListView;->onMeasure(II)V

    .line 1605
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1606
    .local v8, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1607
    .local v9, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1608
    .local v0, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1610
    .local v1, "heightSize":I
    const/4 v2, 0x0

    .line 1611
    .local v2, "childWidth":I
    const/4 v3, 0x0

    .line 1612
    .local v3, "childHeight":I
    const/4 v4, 0x0

    .line 1614
    .local v4, "childState":I
    iget-object v5, v6, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v5, :cond_20

    move v5, v10

    goto :goto_26

    :cond_20
    iget-object v5, v6, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    :goto_26
    iput v5, v6, Landroid/widget/SemHorizontalListView;->mItemCount:I

    .line 1615
    iget v5, v6, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-lez v5, :cond_65

    if-eqz v8, :cond_30

    if-nez v9, :cond_65

    .line 1617
    :cond_30
    iget-object v5, v6, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v10, v5}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v5

    .line 1619
    .local v5, "child":Landroid/view/View;
    invoke-direct {p0, v5, v10, v7}, Landroid/widget/SemHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1621
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1622
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1623
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    invoke-static {v4, v10}, Landroid/widget/SemHorizontalListView;->combineMeasuredStates(II)I

    move-result v4

    .line 1625
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->recycleOnMeasure()Z

    move-result v10

    if-eqz v10, :cond_65

    iget-object v10, v6, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 1626
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v11, v11, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 1625
    invoke-virtual {v10, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_65

    .line 1627
    iget-object v10, v6, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    const/4 v11, -0x1

    invoke-virtual {v10, v5, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1631
    .end local v5    # "child":Landroid/view/View;
    :cond_65
    move v10, v2

    move v11, v3

    move v12, v4

    .end local v2    # "childWidth":I
    .end local v3    # "childHeight":I
    .end local v4    # "childState":I
    .local v10, "childWidth":I
    .local v11, "childHeight":I
    .local v12, "childState":I
    if-nez v9, :cond_7b

    .line 1632
    iget-object v2, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    .line 1633
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v3

    add-int/2addr v2, v3

    move v13, v2

    .end local v1    # "heightSize":I
    .local v2, "heightSize":I
    goto :goto_80

    .line 1635
    .end local v2    # "heightSize":I
    .restart local v1    # "heightSize":I
    :cond_7b
    const/high16 v2, -0x1000000

    and-int/2addr v2, v12

    or-int/2addr v2, v1

    move v13, v2

    .line 1638
    .end local v1    # "heightSize":I
    .local v13, "heightSize":I
    :goto_80
    if-nez v8, :cond_96

    .line 1639
    iget-object v1, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, v10

    .line 1640
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    move v14, v0

    goto :goto_97

    .line 1638
    :cond_96
    move v14, v0

    .line 1643
    .end local v0    # "widthSize":I
    .local v14, "widthSize":I
    :goto_97
    const/high16 v0, -0x80000000

    if-ne v8, v0, :cond_a6

    .line 1645
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v1, p2

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v14

    .line 1648
    :cond_a6
    invoke-virtual {p0, v14, v13}, Landroid/widget/SemHorizontalListView;->setMeasuredDimension(II)V

    .line 1649
    iput v7, v6, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    .line 1650
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1532
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_45

    .line 1533
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1534
    .local v0, "focusedChild":Landroid/view/View;
    if-eqz v0, :cond_45

    .line 1535
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1536
    .local v1, "childPosition":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1537
    .local v2, "childRight":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    sub-int v3, p1, v3

    sub-int v3, v2, v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1539
    .local v3, "offset":I
    iget-boolean v4, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v4, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    .local v4, "left":I
    goto :goto_30

    .line 1540
    .end local v4    # "left":I
    :cond_2b
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1541
    .restart local v4    # "left":I
    :goto_30
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    if-nez v5, :cond_3c

    .line 1542
    new-instance v5, Landroid/widget/SemHorizontalListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/SemHorizontalListView$FocusSelector;-><init>(Landroid/widget/SemHorizontalListView;Landroid/widget/SemHorizontalListView$FocusSelector-IA;)V

    iput-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    .line 1544
    :cond_3c
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/SemHorizontalListView$FocusSelector;->setup(II)Landroid/widget/SemHorizontalListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 1547
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "childPosition":I
    .end local v2    # "childRight":I
    .end local v3    # "offset":I
    .end local v4    # "left":I
    :cond_45
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->onSizeChanged(IIII)V

    .line 1548
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2192
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    .line 2194
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4928
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onWindowFocusChanged(Z)V

    .line 4930
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_11

    .line 4931
    new-instance v0, Landroid/widget/SemHorizontalListView$3;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$3;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 4937
    :cond_11
    return-void
.end method

.method pageScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 3353
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_14

    .line 3354
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3355
    .local v0, "nextPage":I
    const/4 v3, 0x0

    .local v3, "rightSide":Z
    goto :goto_28

    .line 3356
    .end local v0    # "nextPage":I
    .end local v3    # "rightSide":Z
    :cond_14
    const/16 v0, 0x42

    if-ne p1, v0, :cond_67

    .line 3357
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v0, v2

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3358
    .restart local v0    # "nextPage":I
    const/4 v3, 0x1

    .line 3363
    .restart local v3    # "rightSide":Z
    :goto_28
    if-ltz v0, :cond_66

    .line 3364
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v4, v0, v3}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v4

    .line 3365
    .local v4, "position":I
    if-ltz v4, :cond_66

    .line 3366
    const/4 v1, 0x4

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 3367
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    .line 3369
    if-eqz v3, :cond_4c

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    sub-int/2addr v1, v5

    if-le v4, v1, :cond_4c

    .line 3370
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 3373
    :cond_4c
    if-nez v3, :cond_56

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_56

    .line 3374
    iput v2, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 3377
    :cond_56
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    .line 3378
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    .line 3379
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_65

    .line 3380
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 3383
    :cond_65
    return v2

    .line 3387
    .end local v4    # "position":I
    :cond_66
    return v1

    .line 3360
    .end local v0    # "nextPage":I
    .end local v3    # "rightSide":Z
    :cond_67
    return v1
.end method

.method protected recycleOnMeasure()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .line 1680
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 641
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 644
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 645
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 647
    :cond_20
    const/4 v0, 0x1

    .line 649
    :cond_21
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 650
    return v0

    .line 652
    .end local v0    # "result":Z
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 528
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 531
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 532
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 534
    :cond_20
    const/4 v0, 0x1

    .line 536
    :cond_21
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 537
    return v0

    .line 539
    .end local v0    # "result":Z
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 852
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 855
    .local v0, "rectLeftWithinChild":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 856
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 858
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v1

    .line 859
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getScrollX()I

    move-result v2

    .line 860
    .local v2, "listUnfadedLeft":I
    add-int v3, v2, v1

    .line 861
    .local v3, "listUnfadedRight":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    .line 863
    .local v4, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->showingLeftFadingEdge()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 865
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-gtz v5, :cond_34

    if-le v0, v4, :cond_35

    .line 866
    :cond_34
    add-int/2addr v2, v4

    .line 870
    :cond_35
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 871
    .local v5, "childCount":I
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    .line 873
    .local v6, "rightOfRightChild":I
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->showingRightFadingEdge()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_58

    .line 875
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_57

    iget v7, p2, Landroid/graphics/Rect;->right:I

    sub-int v9, v6, v4

    if-ge v7, v9, :cond_58

    .line 877
    :cond_57
    sub-int/2addr v3, v4

    .line 881
    :cond_58
    const/4 v7, 0x0

    .line 883
    .local v7, "scrollXDelta":I
    iget v9, p2, Landroid/graphics/Rect;->right:I

    const/4 v10, 0x0

    if-le v9, v3, :cond_78

    iget v9, p2, Landroid/graphics/Rect;->left:I

    if-le v9, v2, :cond_78

    .line 888
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-le v9, v1, :cond_6d

    .line 890
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v2

    add-int/2addr v7, v9

    goto :goto_71

    .line 893
    :cond_6d
    iget v9, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    add-int/2addr v7, v9

    .line 897
    :goto_71
    sub-int v9, v6, v3

    .line 898
    .local v9, "distanceToRight":I
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 899
    .end local v9    # "distanceToRight":I
    :cond_77
    goto :goto_9f

    :cond_78
    iget v9, p2, Landroid/graphics/Rect;->left:I

    if-ge v9, v2, :cond_77

    iget v9, p2, Landroid/graphics/Rect;->right:I

    if-ge v9, v3, :cond_77

    .line 904
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-le v9, v1, :cond_8c

    .line 906
    iget v9, p2, Landroid/graphics/Rect;->right:I

    sub-int v9, v3, v9

    sub-int/2addr v7, v9

    goto :goto_91

    .line 909
    :cond_8c
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int v9, v2, v9

    sub-int/2addr v7, v9

    .line 913
    :goto_91
    invoke-virtual {p0, v10}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 914
    .local v9, "left":I
    sub-int v11, v9, v2

    .line 915
    .local v11, "deltaToLeft":I
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 918
    .end local v9    # "left":I
    .end local v11    # "deltaToLeft":I
    :goto_9f
    if-eqz v7, :cond_a2

    goto :goto_a3

    :cond_a2
    move v8, v10

    .line 919
    .local v8, "scroll":Z
    :goto_a3
    if-eqz v8, :cond_b6

    .line 920
    neg-int v9, v7

    invoke-direct {p0, v9}, Landroid/widget/SemHorizontalListView;->scrollListItemsBy(I)V

    .line 921
    const/4 v9, -0x1

    invoke-virtual {p0, v9, p1}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 922
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    .line 923
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 925
    :cond_b6
    return v8
.end method

.method resetList()V
    .registers 2

    .line 768
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 769
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 771
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->resetList()V

    .line 773
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 774
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 706
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_f

    .line 707
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 710
    :cond_f
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    .line 711
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clear()V

    .line 713
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    goto :goto_2b

    .line 716
    :cond_28
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_36

    .line 714
    :cond_2b
    :goto_2b
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 719
    :goto_36
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mOldSelectedPosition:I

    .line 720
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/SemHorizontalListView;->mOldSelectedRowId:J

    .line 722
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_a6

    .line 723
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 724
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mOldItemCount:I

    .line 725
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    .line 726
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkFocus()V

    .line 728
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    .line 729
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 731
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 734
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_8b

    .line 735
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_83

    .line 736
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    goto :goto_98

    .line 738
    .end local v0    # "position":I
    :cond_83
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_98

    .line 740
    .end local v0    # "position":I
    :cond_8b
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_94

    .line 741
    invoke-virtual {p0, v2, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_98

    .line 742
    .end local v0    # "position":I
    :cond_94
    invoke-virtual {p0, v2, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 744
    .restart local v0    # "position":I
    :goto_98
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 745
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 747
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-nez v1, :cond_a5

    .line 749
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    .line 751
    .end local v0    # "position":I
    :cond_a5
    goto :goto_ae

    .line 752
    :cond_a6
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 753
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkFocus()V

    .line 755
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    .line 758
    :goto_ae
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    .line 759
    return-void
.end method

.method public setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V
    .registers 2
    .param p1, "animator"    # Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    .line 182
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    .line 183
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4673
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 4674
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    goto :goto_c

    .line 4676
    :cond_a
    iput v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 4678
    :goto_c
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4679
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    :cond_17
    const/4 v0, 0x1

    :cond_18
    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDividerIsOpaque:Z

    .line 4680
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    .line 4681
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 4682
    return-void
.end method

.method public setDividerHeight(I)V
    .registers 2
    .param p1, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4707
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 4708
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    .line 4709
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 4710
    return-void
.end method

.method public setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V
    .registers 4
    .param p1, "animator"    # Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    .line 187
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setChildrenDrawingOrderEnabled(Z)V

    .line 189
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    new-instance v1, Landroid/widget/SemHorizontalListView$1;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalListView$1;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V

    .line 195
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .registers 2
    .param p1, "footerDividersEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4758
    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    .line 4759
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 4760
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .registers 2
    .param p1, "headerDividersEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4726
    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    .line 4727
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 4728
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .registers 3
    .param p1, "itemsCanFocus"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4311
    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    .line 4312
    if-nez p1, :cond_9

    .line 4313
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setDescendantFocusability(I)V

    .line 4315
    :cond_9
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4817
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4818
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 4819
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4787
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4788
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    if-gez v0, :cond_9

    .line 4789
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 4791
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 684
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 685
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2824
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    .line 2825
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3072
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3073
    .local v0, "count":I
    if-lez v0, :cond_c

    .line 3074
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    .line 3075
    return-void

    .line 3078
    :cond_c
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_14

    .line 3079
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setSelection(I)V

    goto :goto_19

    .line 3081
    :cond_14
    iput v0, p0, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    .line 3082
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 3085
    :goto_19
    return-void
.end method

.method public setSelectionFromStart(II)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "x"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2882
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 2883
    return-void

    .line 2886
    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2887
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2888
    if-ltz p1, :cond_18

    .line 2889
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_18

    .line 2892
    :cond_16
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mResurrectToPosition:I

    .line 2895
    :cond_18
    :goto_18
    if-ltz p1, :cond_4a

    .line 2896
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 2897
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    goto :goto_30

    .line 2898
    :cond_29
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    .line 2900
    :goto_30
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_3e

    .line 2901
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    .line 2902
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemHorizontalListView;->mSyncRowId:J

    .line 2905
    :cond_3e
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_47

    .line 2906
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 2908
    :cond_47
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    .line 2910
    :cond_4a
    return-void
.end method

.method public setSelectionFromTop(II)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "x"    # I

    .line 2838
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 2839
    return-void

    .line 2842
    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2843
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2844
    if-ltz p1, :cond_18

    .line 2845
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_18

    .line 2848
    :cond_16
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mResurrectToPosition:I

    .line 2851
    :cond_18
    :goto_18
    if-ltz p1, :cond_4a

    .line 2852
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 2853
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    goto :goto_30

    .line 2854
    :cond_29
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    .line 2856
    :goto_30
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_3e

    .line 2857
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    .line 2858
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemHorizontalListView;->mSyncRowId:J

    .line 2861
    :cond_3e
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_47

    .line 2862
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 2864
    :cond_47
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    .line 2866
    :cond_4a
    return-void
.end method

.method setSelectionInt(I)V
    .registers 5
    .param p1, "position"    # I

    .line 2919
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2920
    const/4 v0, 0x0

    .line 2922
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    .line 2924
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_13

    .line 2925
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_e

    .line 2926
    const/4 v0, 0x1

    goto :goto_13

    .line 2927
    :cond_e
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_13

    .line 2928
    const/4 v0, 0x1

    .line 2932
    :cond_13
    :goto_13
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1c

    .line 2933
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 2936
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    .line 2938
    if-eqz v0, :cond_24

    .line 2939
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    .line 2941
    :cond_24
    return-void
.end method

.method shouldCorrectTooHigh()Z
    .registers 2

    .line 1916
    const/4 v0, 0x1

    return v0
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1331
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollByOffset(I)V

    .line 1332
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1317
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 1318
    return-void
.end method
