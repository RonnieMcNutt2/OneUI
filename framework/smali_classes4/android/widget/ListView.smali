.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FixedViewInfo;,
        Landroid/widget/ListView$FocusSelector;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field static final TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private mSelectZeroPositionOnKeyTab:Z

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDndListAnimator(Landroid/widget/ListView;)Lcom/samsung/android/animation/SemDragAndDropListAnimator;
    .registers 1

    iget-object p0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 257
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 265
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 190
    nop

    .line 191
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 192
    nop

    .line 193
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 215
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 220
    new-instance v2, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$ArrowScrollFocusResult-IA;)V

    iput-object v2, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 227
    iput-boolean v1, p0, Landroid/widget/ListView;->mSelectZeroPositionOnKeyTab:Z

    .line 267
    sget-object v2, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 269
    .local v2, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->ListView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/ListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 272
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 273
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_4a

    .line 274
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 277
    :cond_4a
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 278
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_53

    .line 281
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :cond_53
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 285
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_5d

    .line 286
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 289
    :cond_5d
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 290
    .local v6, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_67

    .line 291
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 295
    :cond_67
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 296
    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 298
    .local v1, "dividerHeight":I
    if-eqz v1, :cond_77

    .line 299
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 303
    .end local v1    # "dividerHeight":I
    :cond_77
    const/4 v1, 0x3

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 304
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 306
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .registers 14
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 3630
    add-int/lit8 v8, p2, -0x1

    .line 3631
    .local v8, "abovePosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 3632
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v10, v0, v1

    .line 3633
    .local v10, "edgeOfNewChild":I
    const/4 v4, 0x0

    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3635
    return-object v9
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .registers 14
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 3639
    add-int/lit8 v8, p2, 0x1

    .line 3640
    .local v8, "belowPosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 3641
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v10, v0, v1

    .line 3642
    .local v10, "edgeOfNewChild":I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3644
    return-object v9
.end method

.method private adjustViewsUpOrDown()V
    .registers 6

    .line 322
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 325
    .local v0, "childCount":I
    if-lez v0, :cond_4a

    .line 328
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_23

    .line 331
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 332
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 333
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_1f

    .line 336
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 338
    :cond_1f
    if-gez v2, :cond_44

    .line 340
    const/4 v2, 0x0

    goto :goto_44

    .line 344
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_23
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 345
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 347
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_41

    .line 350
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 353
    :cond_41
    if-lez v2, :cond_44

    .line 354
    const/4 v2, 0x0

    .line 358
    :cond_44
    :goto_44
    if-eqz v2, :cond_4a

    .line 359
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 362
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_4a
    return-void
.end method

.method private amountToScroll(II)I
    .registers 13
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .line 3231
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 3232
    .local v0, "listBottom":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 3234
    .local v1, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 3236
    .local v2, "numChildren":I
    const/16 v3, 0x82

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_7f

    .line 3237
    add-int/lit8 v3, v2, -0x1

    .line 3238
    .local v3, "indexToMakeVisible":I
    if-eq p2, v4, :cond_1f

    .line 3239
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v6

    .line 3241
    :cond_1f
    :goto_1f
    if-gt v2, v3, :cond_32

    .line 3243
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 3244
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 3246
    :cond_32
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v3

    .line 3247
    .local v6, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3249
    .local v7, "viewToMakeVisible":Landroid/view/View;
    move v8, v0

    .line 3250
    .local v8, "goalBottom":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_45

    .line 3251
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v9

    sub-int/2addr v8, v9

    .line 3254
    :cond_45
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-gt v9, v8, :cond_4c

    .line 3256
    return v5

    .line 3259
    :cond_4c
    if-eq p2, v4, :cond_5b

    .line 3260
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v8, v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v4, v9, :cond_5b

    .line 3262
    return v5

    .line 3265
    :cond_5b
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v4, v8

    .line 3267
    .local v4, "amountToScroll":I
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v5, v2

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v5, v9, :cond_76

    .line 3269
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v0

    .line 3270
    .local v5, "max":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3273
    .end local v5    # "max":I
    :cond_76
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5

    .line 3275
    .end local v3    # "indexToMakeVisible":I
    .end local v4    # "amountToScroll":I
    .end local v6    # "positionToMakeVisible":I
    .end local v7    # "viewToMakeVisible":Landroid/view/View;
    .end local v8    # "goalBottom":I
    :cond_7f
    const/4 v3, 0x0

    .line 3276
    .restart local v3    # "indexToMakeVisible":I
    if-eq p2, v4, :cond_86

    .line 3277
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v6

    .line 3279
    :cond_86
    :goto_86
    if-gez v3, :cond_9c

    .line 3281
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 3282
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3283
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v6

    goto :goto_86

    .line 3285
    :cond_9c
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v3

    .line 3286
    .restart local v6    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3287
    .restart local v7    # "viewToMakeVisible":Landroid/view/View;
    move v8, v1

    .line 3288
    .local v8, "goalTop":I
    if-lez v6, :cond_ab

    .line 3289
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v9

    add-int/2addr v8, v9

    .line 3291
    :cond_ab
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v9, v8, :cond_b2

    .line 3293
    return v5

    .line 3296
    :cond_b2
    if-eq p2, v4, :cond_c0

    .line 3297
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v4, v9, :cond_c0

    .line 3299
    return v5

    .line 3302
    :cond_c0
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v8, v4

    .line 3303
    .restart local v4    # "amountToScroll":I
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v9, :cond_d8

    .line 3305
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v1, v5

    .line 3306
    .restart local v5    # "max":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3308
    .end local v5    # "max":I
    :cond_d8
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

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

    .line 3500
    const/4 v0, 0x0

    .line 3501
    .local v0, "amountToScroll":I
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3502
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3503
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2b

    .line 3504
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_4b

    .line 3505
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    .line 3506
    if-lez p3, :cond_4b

    .line 3507
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4b

    .line 3511
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 3512
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_4b

    .line 3513
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3514
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_4b

    .line 3515
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3519
    .end local v1    # "listBottom":I
    :cond_4b
    :goto_4b
    return v0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .registers 9
    .param p1, "direction"    # I

    .line 3398
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3400
    .local v0, "selectedView":Landroid/view/View;
    const/16 v1, 0x82

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3401
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3402
    .local v2, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3403
    .local v2, "newFocus":Landroid/view/View;
    goto/16 :goto_86

    .line 3404
    .end local v2    # "newFocus":Landroid/view/View;
    :cond_1c
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_48

    .line 3405
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v4, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    .line 3406
    .local v2, "topFadingEdgeShowing":Z
    :goto_26
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 3407
    if-eqz v2, :cond_31

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_32

    :cond_31
    move v5, v3

    :goto_32
    add-int/2addr v4, v5

    .line 3409
    .local v4, "listTop":I
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v4, :cond_40

    .line 3410
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_41

    .line 3411
    :cond_40
    move v5, v4

    :goto_41
    nop

    .line 3412
    .local v5, "ySearchPoint":I
    iget-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3413
    .end local v2    # "topFadingEdgeShowing":Z
    .end local v4    # "listTop":I
    .end local v5    # "ySearchPoint":I
    goto :goto_7c

    .line 3414
    :cond_48
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3415
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v4, v5, :cond_55

    goto :goto_56

    :cond_55
    move v2, v3

    .line 3416
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_56
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 3417
    if-eqz v2, :cond_66

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_67

    :cond_66
    move v5, v3

    :goto_67
    sub-int/2addr v4, v5

    .line 3419
    .local v4, "listBottom":I
    if-eqz v0, :cond_75

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v4, :cond_75

    .line 3420
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_76

    .line 3421
    :cond_75
    move v5, v4

    :goto_76
    nop

    .line 3422
    .restart local v5    # "ySearchPoint":I
    iget-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3424
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v5    # "ySearchPoint":I
    :goto_7c
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v2

    .line 3427
    .local v2, "newFocus":Landroid/view/View;
    :goto_86
    const/4 v3, 0x0

    if-eqz v2, :cond_cd

    .line 3428
    invoke-direct {p0, v2}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v4

    .line 3432
    .local v4, "positionOfNewFocus":I
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a7

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v4, v5, :cond_a7

    .line 3433
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v5

    .line 3434
    .local v5, "selectablePosition":I
    if-eq v5, v6, :cond_a7

    if-ne p1, v1, :cond_a0

    if-lt v5, v4, :cond_a6

    :cond_a0
    const/16 v1, 0x21

    if-ne p1, v1, :cond_a7

    if-le v5, v4, :cond_a7

    .line 3437
    :cond_a6
    return-object v3

    .line 3441
    .end local v5    # "selectablePosition":I
    :cond_a7
    invoke-direct {p0, p1, v2, v4}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    .line 3443
    .local v1, "focusScroll":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v5

    .line 3444
    .local v5, "maxScrollAmount":I
    if-ge v1, v5, :cond_bc

    .line 3446
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3447
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3448
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v3

    .line 3449
    :cond_bc
    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-ge v6, v5, :cond_cd

    .line 3454
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3455
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3456
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v3

    .line 3459
    .end local v1    # "focusScroll":I
    .end local v4    # "positionOfNewFocus":I
    .end local v5    # "maxScrollAmount":I
    :cond_cd
    return-object v3
.end method

.method private arrowScrollImpl(I)Z
    .registers 14
    .param p1, "direction"    # I

    .line 2972
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 2973
    return v1

    .line 2976
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2977
    .local v0, "selectedView":Landroid/view/View;
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2979
    .local v2, "selectedPos":I
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v3

    .line 2980
    .local v3, "nextSelectedPosition":I
    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v4

    .line 2983
    .local v4, "amountToScroll":I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_1f

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    .line 2984
    .local v5, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_20
    if-eqz v5, :cond_2a

    .line 2985
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    .line 2986
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    .line 2990
    :cond_2a
    const/4 v6, 0x0

    .line 2991
    .local v6, "handledAppWidget":Z
    iget-boolean v7, p0, Landroid/widget/ListView;->mAppWidgetSnapScroll:Z

    const/16 v8, 0x21

    const/4 v9, 0x1

    if-eqz v7, :cond_8b

    .line 2992
    if-nez v0, :cond_35

    .line 2993
    return v1

    .line 2995
    :cond_35
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v10

    .line 2996
    .local v7, "listBottom":I
    if-ne p1, v8, :cond_6a

    if-lez v2, :cond_6a

    if-lez v4, :cond_6a

    .line 2997
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v11, v7, v11

    if-le v10, v11, :cond_63

    .line 2998
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    if-eqz v10, :cond_63

    .line 2999
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    add-int/2addr v10, v4

    if-lez v10, :cond_8b

    .line 3000
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    neg-int v4, v10

    goto :goto_8b

    .line 3003
    :cond_63
    add-int/lit8 v3, v2, -0x1

    .line 3004
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 3005
    const/4 v6, 0x1

    goto :goto_8b

    .line 3007
    :cond_6a
    const/16 v10, 0x82

    if-ne p1, v10, :cond_8b

    iget-object v10, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    sub-int/2addr v10, v9

    if-ge v2, v10, :cond_8b

    if-lez v4, :cond_8b

    .line 3009
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v11, v7, v11

    if-ne v10, v11, :cond_8b

    .line 3010
    add-int/lit8 v3, v2, 0x1

    .line 3011
    invoke-virtual {p0, v3, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 3012
    const/4 v6, 0x1

    .line 3016
    .end local v7    # "listBottom":I
    :cond_8b
    :goto_8b
    if-eqz v6, :cond_96

    invoke-virtual {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v7

    if-nez v7, :cond_96

    .line 3017
    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 3021
    :cond_96
    if-eqz v5, :cond_9a

    move v7, v9

    goto :goto_9b

    :cond_9a
    move v7, v1

    .line 3022
    .local v7, "needToRedraw":Z
    :goto_9b
    const/4 v10, -0x1

    if-eq v3, v10, :cond_c4

    .line 3023
    if-eqz v5, :cond_a2

    move v11, v9

    goto :goto_a3

    :cond_a2
    move v11, v1

    :goto_a3
    invoke-direct {p0, v0, p1, v3, v11}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 3024
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 3025
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 3026
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3027
    move v2, v3

    .line 3028
    iget-boolean v11, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v11, :cond_c0

    if-nez v5, :cond_c0

    .line 3031
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v11

    .line 3032
    .local v11, "focused":Landroid/view/View;
    if-eqz v11, :cond_c0

    .line 3033
    invoke-virtual {v11}, Landroid/view/View;->clearFocus()V

    .line 3036
    .end local v11    # "focused":Landroid/view/View;
    :cond_c0
    const/4 v7, 0x1

    .line 3037
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 3040
    :cond_c4
    if-lez v4, :cond_d4

    .line 3042
    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    .line 3044
    if-nez v6, :cond_d3

    .line 3045
    if-ne p1, v8, :cond_cf

    move v8, v4

    goto :goto_d0

    :cond_cf
    neg-int v8, v4

    :goto_d0
    invoke-direct {p0, v8}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 3047
    :cond_d3
    const/4 v7, 0x1

    .line 3052
    :cond_d4
    iget-boolean v8, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v8, :cond_f7

    if-nez v5, :cond_f7

    if-eqz v0, :cond_f7

    .line 3053
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_f7

    .line 3054
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 3055
    .local v8, "focused":Landroid/view/View;
    if-eqz v8, :cond_f7

    .line 3056
    invoke-direct {p0, v8, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_f4

    invoke-direct {p0, v8}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v11

    if-lez v11, :cond_f7

    .line 3057
    :cond_f4
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 3063
    .end local v8    # "focused":Landroid/view/View;
    :cond_f7
    if-ne v3, v10, :cond_10c

    if-eqz v0, :cond_10c

    .line 3064
    invoke-direct {p0, v0, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_10c

    .line 3065
    const/4 v0, 0x0

    .line 3067
    iget-object v8, p0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 3069
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 3073
    iput v10, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    .line 3076
    :cond_10c
    if-eqz v7, :cond_126

    .line 3077
    if-eqz v0, :cond_119

    .line 3078
    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 3079
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 3081
    :cond_119
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_122

    .line 3082
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3084
    :cond_122
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 3085
    return v9

    .line 3088
    :cond_126
    return v1
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 666
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_24

    .line 667
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 669
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_24

    .line 670
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 671
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 672
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 673
    move-object v4, v3

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 669
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 677
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 24
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2545
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    if-eqz v3, :cond_2d2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_2d2

    .line 2549
    :cond_13
    iget-boolean v3, v0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v3, :cond_1a

    .line 2550
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2553
    :cond_1a
    const/4 v3, 0x0

    .line 2554
    .local v3, "handled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 2555
    .local v5, "action":I
    invoke-static/range {p1 .. p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_44

    .line 2556
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_44

    if-eq v5, v7, :cond_44

    .line 2557
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    .line 2558
    if-nez v3, :cond_44

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_44

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_44

    .line 2559
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2560
    const/4 v3, 0x1

    .line 2564
    :cond_44
    iget-boolean v6, v0, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    if-eqz v6, :cond_52

    .line 2565
    iput-boolean v4, v0, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    .line 2566
    const-string v6, "ListView"

    const-string/jumbo v8, "mIsHoveredByMouse false"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    :cond_52
    if-nez v3, :cond_2b0

    if-eq v5, v7, :cond_2b0

    .line 2571
    const/16 v6, 0x82

    const/16 v8, 0x21

    const/4 v9, 0x2

    sparse-switch v1, :sswitch_data_2d4

    goto/16 :goto_2b0

    .line 2656
    :sswitch_60
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v8

    if-eqz v8, :cond_2b0

    .line 2657
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v8

    if-nez v8, :cond_75

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v6

    if-eqz v6, :cond_73

    goto :goto_75

    :cond_73
    move v6, v4

    goto :goto_76

    :cond_75
    :goto_75
    move v6, v7

    :goto_76
    move v3, v6

    move/from16 v6, p2

    goto/16 :goto_2b2

    .line 2650
    :sswitch_7b
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_2b0

    .line 2651
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v6

    if-nez v6, :cond_90

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v6

    if-eqz v6, :cond_8e

    goto :goto_90

    :cond_8e
    move v6, v4

    goto :goto_91

    :cond_90
    :goto_90
    move v6, v7

    :goto_91
    move v3, v6

    move/from16 v6, p2

    goto/16 :goto_2b2

    .line 2642
    :sswitch_96
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 2643
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v8

    if-nez v8, :cond_ab

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v6

    if-eqz v6, :cond_a9

    goto :goto_ab

    :cond_a9
    move v6, v4

    goto :goto_ac

    :cond_ab
    :goto_ab
    move v6, v7

    :goto_ac
    move v3, v6

    move/from16 v6, p2

    goto/16 :goto_2b2

    .line 2644
    :cond_b1
    invoke-virtual {v2, v9}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v8

    if-eqz v8, :cond_2b0

    .line 2645
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v8

    if-nez v8, :cond_c6

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v6

    if-eqz v6, :cond_c4

    goto :goto_c6

    :cond_c4
    move v6, v4

    goto :goto_c7

    :cond_c6
    :goto_c6
    move v6, v7

    :goto_c7
    move v3, v6

    move/from16 v6, p2

    goto/16 :goto_2b2

    .line 2634
    :sswitch_cc
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 2635
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v6

    if-nez v6, :cond_e1

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v6

    if-eqz v6, :cond_df

    goto :goto_e1

    :cond_df
    move v6, v4

    goto :goto_e2

    :cond_e1
    :goto_e1
    move v6, v7

    :goto_e2
    move v3, v6

    move/from16 v6, p2

    goto/16 :goto_2b2

    .line 2636
    :cond_e7
    invoke-virtual {v2, v9}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_2b0

    .line 2637
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v6

    if-nez v6, :cond_fc

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v6

    if-eqz v6, :cond_fa

    goto :goto_fc

    :cond_fa
    move v6, v4

    goto :goto_fd

    :cond_fc
    :goto_fc
    move v6, v7

    :goto_fd
    move v3, v6

    move/from16 v6, p2

    goto/16 :goto_2b2

    .line 2663
    :sswitch_102
    const/4 v10, 0x0

    .line 2664
    .local v10, "needArrowScroll":Z
    iget-boolean v11, v0, Landroid/widget/ListView;->mAppWidgetSnapScroll:Z

    if-eqz v11, :cond_18c

    .line 2665
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getDeepestFocusedChild()Landroid/view/View;

    move-result-object v11

    .line 2666
    .local v11, "deepestFocusedView":Landroid/view/View;
    invoke-virtual {v0, v11}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    iget v13, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-eq v12, v13, :cond_118

    .line 2667
    move-object/from16 v11, p0

    .line 2668
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->clearFocus()V

    .line 2670
    :cond_118
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v12

    invoke-virtual {v12, v0, v11, v9}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    .line 2672
    .local v12, "viewFocusedNext":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v13

    iget-object v14, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    .line 2673
    .local v13, "bottom":I
    if-eqz v12, :cond_188

    .line 2674
    new-array v14, v9, [I

    .line 2675
    .local v14, "rootLoc":[I
    new-array v9, v9, [I

    .line 2676
    .local v9, "childLoc":[I
    invoke-virtual {v0, v14}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 2677
    invoke-virtual {v12, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2678
    aget v15, v14, v7

    add-int/2addr v15, v13

    .line 2679
    .local v15, "rootBottom":I
    aget v16, v9, v7

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v8, v16, v17

    .line 2680
    .local v8, "childBottom":I
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2681
    .local v16, "firstVisibleView":Landroid/view/View;
    if-ge v15, v8, :cond_159

    .line 2682
    const/4 v10, 0x1

    .line 2683
    aget v6, v9, v7

    if-le v6, v15, :cond_188

    .line 2684
    iget v6, v0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v18

    aget v19, v9, v7

    sub-int v4, v18, v19

    invoke-virtual {v0, v6, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_188

    .line 2687
    :cond_159
    aget v4, v9, v7

    if-gez v4, :cond_188

    .line 2688
    if-eqz v16, :cond_188

    .line 2689
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    aget v6, v9, v7

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 2691
    .local v4, "childRelativeTop":I
    div-int/lit8 v6, v13, 0x3

    if-ge v4, v6, :cond_171

    .line 2692
    const/4 v4, 0x0

    .line 2693
    const/4 v3, 0x1

    goto :goto_17e

    .line 2695
    :cond_171
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    iget-object v7, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x3

    sub-int/2addr v4, v6

    .line 2696
    const/4 v3, 0x0

    .line 2698
    :goto_17e
    iget v6, v0, Landroid/widget/ListView;->mSelectedPosition:I

    neg-int v7, v4

    invoke-virtual {v0, v6, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2699
    move/from16 v6, p2

    goto/16 :goto_2b2

    .line 2703
    .end local v4    # "childRelativeTop":I
    .end local v8    # "childBottom":I
    .end local v9    # "childLoc":[I
    .end local v14    # "rootLoc":[I
    .end local v15    # "rootBottom":I
    .end local v16    # "firstVisibleView":Landroid/view/View;
    :cond_188
    :goto_188
    if-nez v10, :cond_18c

    .line 2704
    const/4 v4, 0x0

    return v4

    .line 2715
    .end local v11    # "deepestFocusedView":Landroid/view/View;
    .end local v12    # "viewFocusedNext":Landroid/view/View;
    .end local v13    # "bottom":I
    :cond_18c
    iget-boolean v4, v0, Landroid/widget/ListView;->mSelectZeroPositionOnKeyTab:Z

    if-eqz v4, :cond_1a1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v4, v6, :cond_1a1

    .line 2716
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 2717
    return v7

    .line 2721
    :cond_1a1
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1bb

    .line 2722
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1b8

    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1b6

    goto :goto_1b8

    :cond_1b6
    const/4 v4, 0x0

    goto :goto_1b9

    :cond_1b8
    :goto_1b8
    const/4 v4, 0x1

    :goto_1b9
    move v3, v4

    goto :goto_1d5

    .line 2723
    :cond_1bb
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_1d5

    .line 2724
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1d3

    const/16 v4, 0x21

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1d1

    goto :goto_1d3

    :cond_1d1
    const/4 v4, 0x0

    goto :goto_1d4

    :cond_1d3
    :goto_1d3
    const/4 v4, 0x1

    :goto_1d4
    move v3, v4

    .line 2727
    :cond_1d5
    :goto_1d5
    if-eqz v10, :cond_1d9

    const/4 v4, 0x0

    goto :goto_1da

    :cond_1d9
    move v4, v3

    :goto_1da
    move v3, v4

    move/from16 v6, p2

    goto/16 :goto_2b2

    .line 2622
    .end local v10    # "needArrowScroll":Z
    :sswitch_1df
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_1ec

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_2b0

    .line 2624
    :cond_1ec
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v4, v0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    .line 2626
    const/16 v4, 0x42

    invoke-direct {v0, v4}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v3

    .line 2628
    if-nez v3, :cond_1fc

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    :cond_1fc
    move/from16 v6, p2

    goto/16 :goto_2b2

    .line 2613
    :sswitch_200
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_20d

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_2b0

    .line 2615
    :cond_20d
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v4, v0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    .line 2617
    const/16 v4, 0x11

    invoke-direct {v0, v4}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v3

    move/from16 v6, p2

    goto/16 :goto_2b2

    .line 2593
    :sswitch_21b
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_246

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_229

    goto :goto_246

    .line 2607
    :cond_229
    invoke-virtual {v2, v9}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2b0

    .line 2608
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_240

    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_23e

    goto :goto_240

    :cond_23e
    const/4 v4, 0x0

    goto :goto_241

    :cond_240
    :goto_240
    const/4 v4, 0x1

    :goto_241
    move v3, v4

    move/from16 v6, p2

    goto/16 :goto_2b2

    .line 2595
    :cond_246
    :goto_246
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v4, v0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    .line 2597
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    .line 2598
    if-nez v3, :cond_262

    move v4, v3

    move/from16 v3, p2

    .line 2599
    .end local p2    # "count":I
    .local v3, "count":I
    .local v4, "handled":Z
    :goto_253
    add-int/lit8 v6, v3, -0x1

    .end local v3    # "count":I
    .local v6, "count":I
    if-lez v3, :cond_2ab

    .line 2600
    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v7

    if-eqz v7, :cond_2ab

    .line 2601
    const/4 v4, 0x1

    move v3, v6

    goto :goto_253

    .line 2598
    .end local v4    # "handled":Z
    .end local v6    # "count":I
    .local v3, "handled":Z
    .restart local p2    # "count":I
    :cond_262
    move/from16 v6, p2

    goto :goto_2b2

    .line 2573
    :sswitch_265
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_28f

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_273

    goto :goto_28f

    .line 2587
    :cond_273
    invoke-virtual {v2, v9}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2b0

    .line 2588
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_28a

    const/16 v4, 0x21

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_288

    goto :goto_28a

    :cond_288
    const/4 v4, 0x0

    goto :goto_28b

    :cond_28a
    :goto_28a
    const/4 v4, 0x1

    :goto_28b
    move v3, v4

    move/from16 v6, p2

    goto :goto_2b2

    .line 2575
    :cond_28f
    :goto_28f
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v4, v0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    .line 2577
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    .line 2578
    if-nez v3, :cond_2ad

    move v4, v3

    move/from16 v3, p2

    .line 2579
    .end local p2    # "count":I
    .local v3, "count":I
    .restart local v4    # "handled":Z
    :goto_29c
    add-int/lit8 v6, v3, -0x1

    .end local v3    # "count":I
    .restart local v6    # "count":I
    if-lez v3, :cond_2ab

    .line 2580
    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v7

    if-eqz v7, :cond_2ab

    .line 2581
    const/4 v4, 0x1

    move v3, v6

    goto :goto_29c

    .line 2733
    :cond_2ab
    move v3, v4

    goto :goto_2b2

    .line 2578
    .end local v4    # "handled":Z
    .end local v6    # "count":I
    .local v3, "handled":Z
    .restart local p2    # "count":I
    :cond_2ad
    move/from16 v6, p2

    goto :goto_2b2

    .line 2733
    :cond_2b0
    :goto_2b0
    move/from16 v6, p2

    .end local p2    # "count":I
    .restart local v6    # "count":I
    :goto_2b2
    if-eqz v3, :cond_2b6

    .line 2734
    const/4 v4, 0x1

    return v4

    .line 2737
    :cond_2b6
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_2be

    .line 2738
    return v4

    .line 2741
    :cond_2be
    packed-switch v5, :pswitch_data_2fa

    .line 2752
    const/4 v4, 0x0

    return v4

    .line 2749
    :pswitch_2c3
    invoke-super {v0, v1, v6, v2}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 2746
    :pswitch_2c8
    invoke-super {v0, v1, v2}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 2743
    :pswitch_2cd
    invoke-super {v0, v1, v2}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 2546
    .end local v3    # "handled":Z
    .end local v5    # "action":I
    .end local v6    # "count":I
    .restart local p2    # "count":I
    :cond_2d2
    :goto_2d2
    return v4

    nop

    :sswitch_data_2d4
    .sparse-switch
        0x13 -> :sswitch_265
        0x14 -> :sswitch_21b
        0x15 -> :sswitch_200
        0x16 -> :sswitch_1df
        0x3d -> :sswitch_102
        0x5c -> :sswitch_cc
        0x5d -> :sswitch_96
        0x7a -> :sswitch_7b
        0x7b -> :sswitch_60
    .end sparse-switch

    :pswitch_data_2fa
    .packed-switch 0x0
        :pswitch_2cd
        :pswitch_2c8
        :pswitch_2c3
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .registers 12
    .param p1, "childCount"    # I

    .line 1580
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1581
    .local v0, "lastPosition":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5d

    if-lez p1, :cond_5d

    .line 1584
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1587
    .local v1, "lastChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1590
    .local v2, "lastBottom":I
    iget v3, p0, Landroid/widget/ListView;->mBottom:I

    iget v4, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1594
    .local v3, "end":I
    sub-int v4, v3, v2

    .line 1595
    .local v4, "bottomOffset":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1596
    .local v5, "firstChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1600
    .local v6, "firstTop":I
    if-lez v4, :cond_5d

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_38

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_5d

    .line 1601
    :cond_38
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_45

    .line 1603
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1606
    :cond_45
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1607
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_5d

    .line 1610
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1612
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1617
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastBottom":I
    .end local v3    # "end":I
    .end local v4    # "bottomOffset":I
    .end local v5    # "firstChild":Landroid/view/View;
    .end local v6    # "firstTop":I
    :cond_5d
    return-void
.end method

.method private correctTooLow(I)V
    .registers 13
    .param p1, "childCount"    # I

    .line 1630
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v0, :cond_68

    if-lez p1, :cond_68

    .line 1633
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1636
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1639
    .local v1, "firstTop":I
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1642
    .local v2, "start":I
    iget v3, p0, Landroid/widget/ListView;->mBottom:I

    iget v4, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1646
    .local v3, "end":I
    sub-int v4, v1, v2

    .line 1647
    .local v4, "topOffset":I
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1648
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1649
    .local v6, "lastBottom":I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    .line 1653
    .local v7, "lastPosition":I
    if-lez v4, :cond_68

    .line 1654
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_43

    if-le v6, v3, :cond_39

    goto :goto_43

    .line 1668
    :cond_39
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_68

    .line 1669
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_68

    .line 1655
    :cond_43
    :goto_43
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_4f

    .line 1657
    sub-int v8, v6, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1660
    :cond_4f
    neg-int v8, v4

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1661
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_68

    .line 1664
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1666
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1673
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstTop":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "topOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastBottom":I
    .end local v7    # "lastPosition":I
    :cond_68
    :goto_68
    return-void
.end method

.method private distanceToView(Landroid/view/View;)I
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;

    .line 3530
    const/4 v0, 0x0

    .line 3531
    .local v0, "distance":I
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3532
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3533
    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 3534
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2a

    .line 3535
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    goto :goto_36

    .line 3536
    :cond_2a
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_36

    .line 3537
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    .line 3539
    :cond_36
    :goto_36
    return v0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .registers 6
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 940
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 941
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1e

    .line 942
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 943
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 944
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_35

    .line 946
    :cond_1e
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 947
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 948
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 950
    :goto_35
    return-void
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .line 821
    const/4 v0, 0x0

    .line 823
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    .line 824
    .local v1, "end":I
    iget v2, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_12

    .line 825
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 828
    :cond_12
    :goto_12
    const/4 v2, 0x1

    if-ge p2, v1, :cond_3c

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v3, :cond_3c

    .line 830
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    move v8, v2

    .line 831
    .local v8, "selected":Z
    const/4 v5, 0x1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 833
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v3, v4

    .line 834
    if-eqz v8, :cond_38

    .line 835
    move-object v0, v2

    .line 837
    :cond_38
    nop

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "selected":Z
    add-int/lit8 p1, p1, 0x1

    .line 838
    goto :goto_12

    .line 840
    :cond_3c
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 841
    return-object v0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .registers 11
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .line 908
    sub-int v0, p2, p1

    .line 910
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v7

    .line 912
    .local v7, "position":I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 914
    .local v1, "sel":Landroid/view/View;
    iput v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 916
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 917
    .local v2, "selHeight":I
    if-gt v2, v0, :cond_22

    .line 918
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 921
    :cond_22
    invoke-direct {p0, v1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 923
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_31

    .line 924
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_38

    .line 926
    :cond_31
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 929
    :goto_38
    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .line 964
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 965
    .local v0, "fadingEdgeLength":I
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 969
    .local v7, "selectedPosition":I
    invoke-direct {p0, p2, v0, v7}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v8

    .line 971
    .local v8, "topSelectionPixel":I
    invoke-direct {p0, p3, v0, v7}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v9

    .line 974
    .local v9, "bottomSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 978
    .local v1, "sel":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v9, :cond_34

    .line 981
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v8

    .line 985
    .local v2, "spaceAbove":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v9

    .line 986
    .local v3, "spaceBelow":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 989
    .local v4, "offset":I
    neg-int v5, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .end local v2    # "spaceAbove":I
    .end local v3    # "spaceBelow":I
    .end local v4    # "offset":I
    goto :goto_4e

    .line 990
    :cond_34
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-ge v2, v8, :cond_4e

    .line 993
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v8, v2

    .line 997
    .restart local v2    # "spaceAbove":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v3, v9, v3

    .line 998
    .restart local v3    # "spaceBelow":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1001
    .restart local v4    # "offset":I
    invoke-virtual {v1, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4f

    .line 990
    .end local v2    # "spaceAbove":I
    .end local v3    # "spaceBelow":I
    .end local v4    # "offset":I
    :cond_4e
    :goto_4e
    nop

    .line 1005
    :goto_4f
    invoke-direct {p0, v1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1007
    iget-boolean v2, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_5e

    .line 1008
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_65

    .line 1010
    :cond_5e
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 1013
    :goto_65
    return-object v1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 4
    .param p1, "nextTop"    # I

    .line 888
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 889
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 890
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 891
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 893
    :cond_1d
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "top"    # I

    .line 1531
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 1532
    .local v0, "tempIsSelected":Z
    :goto_7
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1534
    .local v1, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1539
    iget v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1540
    .local v2, "dividerHeight":I
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_3f

    .line 1541
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    .line 1543
    .local v3, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1544
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v4

    .line 1545
    .local v4, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 1546
    .local v5, "childCount":I
    if-lez v5, :cond_3e

    .line 1547
    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1549
    .end local v5    # "childCount":I
    :cond_3e
    goto :goto_61

    .line 1550
    .end local v3    # "above":Landroid/view/View;
    .end local v4    # "below":Landroid/view/View;
    :cond_3f
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v4

    .line 1552
    .restart local v4    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1553
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {p0, v3, v5}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    .line 1554
    .restart local v3    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 1555
    .restart local v5    # "childCount":I
    if-lez v5, :cond_61

    .line 1556
    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 1560
    .end local v5    # "childCount":I
    :cond_61
    :goto_61
    if-eqz v0, :cond_64

    .line 1561
    return-object v1

    .line 1562
    :cond_64
    if-eqz v3, :cond_67

    .line 1563
    return-object v3

    .line 1565
    :cond_67
    return-object v4
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .line 856
    const/4 v0, 0x0

    .line 858
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 859
    .local v1, "end":I
    iget v2, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 860
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 863
    :cond_d
    :goto_d
    const/4 v2, 0x1

    if-le p2, v1, :cond_35

    if-ltz p1, :cond_35

    .line 865
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    move v8, v2

    .line 866
    .local v8, "selected":Z
    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 867
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v3, v4

    .line 868
    if-eqz v8, :cond_31

    .line 869
    move-object v0, v2

    .line 871
    :cond_31
    nop

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "selected":Z
    add-int/lit8 p1, p1, -0x1

    .line 872
    goto :goto_d

    .line 874
    :cond_35
    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 875
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 876
    return-object v0
.end method

.method private getArrowScrollPreviewLength()I
    .registers 3

    .line 3215
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .registers 6
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 1026
    move v0, p1

    .line 1027
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_8

    .line 1028
    sub-int/2addr v0, p2

    .line 1030
    :cond_8
    return v0
.end method

.method private getDeepestFocusedChild()Landroid/view/View;
    .registers 4

    .line 4766
    move-object v0, p0

    .line 4767
    .local v0, "v":Landroid/view/View;
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 4768
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4769
    return-object v0

    .line 4771
    :cond_b
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    :cond_16
    move-object v0, v1

    goto :goto_1

    .line 4773
    :cond_18
    return-object v1
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 1043
    move v0, p1

    .line 1044
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_4

    .line 1045
    add-int/2addr v0, p2

    .line 1047
    :cond_4
    return v0
.end method

.method private getViewsToRemove(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V
    .registers 8
    .param p2, "unfocusedView"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 4748
    .local p1, "viewsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 4749
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4750
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 4751
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4752
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4755
    :cond_1c
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2e

    .line 4756
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 4757
    .local v2, "children":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x60000

    if-eq v3, v4, :cond_2e

    .line 4758
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->getViewsToRemove(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    .line 4748
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "children":Landroid/view/ViewGroup;
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4763
    .end local v0    # "i":I
    :cond_31
    return-void
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2859
    const/16 v0, 0x11

    if-eq p1, v0, :cond_11

    const/16 v0, 0x42

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 2860
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2864
    :cond_11
    :goto_11
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 2865
    .local v0, "numChildren":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v1, :cond_78

    if-lez v0, :cond_78

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_78

    .line 2866
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 2867
    .local v1, "selectedView":Landroid/view/View;
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_78

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_78

    .line 2870
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2871
    .local v2, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2873
    .local v3, "nextFocus":Landroid/view/View;
    if-eqz v3, :cond_63

    .line 2876
    if-eqz v2, :cond_52

    .line 2877
    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2878
    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2879
    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2882
    :cond_52
    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 2883
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->playSoundEffect(I)V

    .line 2884
    const/4 v4, 0x1

    return v4

    .line 2892
    :cond_63
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 2893
    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2892
    invoke-virtual {v4, v5, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2894
    .local v4, "globalNextFocus":Landroid/view/View;
    if-eqz v4, :cond_78

    .line 2895
    invoke-direct {p0, v4, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    return v5

    .line 2899
    .end local v1    # "selectedView":Landroid/view/View;
    .end local v2    # "currentFocus":Landroid/view/View;
    .end local v3    # "nextFocus":Landroid/view/View;
    .end local v4    # "globalNextFocus":Landroid/view/View;
    :cond_78
    const/4 v1, 0x0

    return v1
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .registers 16
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .line 3106
    const/4 v0, -0x1

    if-eq p3, v0, :cond_45

    .line 3117
    const/4 v0, 0x0

    .line 3118
    .local v0, "topSelected":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .line 3119
    .local v1, "selectedIndex":I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v2

    .line 3120
    .local v2, "nextSelectedIndex":I
    const/16 v3, 0x21

    if-ne p2, v3, :cond_1a

    .line 3121
    move v3, v2

    .line 3122
    .local v3, "topViewIndex":I
    move v4, v1

    .line 3123
    .local v4, "bottomViewIndex":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3124
    .local v5, "topView":Landroid/view/View;
    move-object v6, p1

    .line 3125
    .local v6, "bottomView":Landroid/view/View;
    const/4 v0, 0x1

    goto :goto_21

    .line 3127
    .end local v3    # "topViewIndex":I
    .end local v4    # "bottomViewIndex":I
    .end local v5    # "topView":Landroid/view/View;
    .end local v6    # "bottomView":Landroid/view/View;
    :cond_1a
    move v3, v1

    .line 3128
    .restart local v3    # "topViewIndex":I
    move v4, v2

    .line 3129
    .restart local v4    # "bottomViewIndex":I
    move-object v5, p1

    .line 3130
    .restart local v5    # "topView":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3133
    .restart local v6    # "bottomView":Landroid/view/View;
    :goto_21
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 3136
    .local v7, "numChildren":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_36

    .line 3137
    if-nez p4, :cond_2f

    if-eqz v0, :cond_2f

    move v10, v8

    goto :goto_30

    :cond_2f
    move v10, v9

    :goto_30
    invoke-virtual {v5, v10}, Landroid/view/View;->setSelected(Z)V

    .line 3138
    invoke-direct {p0, v5, v3, v7}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3142
    :cond_36
    if-eqz v6, :cond_44

    .line 3143
    if-nez p4, :cond_3d

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v8, v9

    :goto_3e
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 3144
    invoke-direct {p0, v6, v4, v7}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3146
    :cond_44
    return-void

    .line 3107
    .end local v0    # "topSelected":Z
    .end local v1    # "selectedIndex":I
    .end local v2    # "nextSelectedIndex":I
    .end local v3    # "topViewIndex":I
    .end local v4    # "bottomViewIndex":I
    .end local v5    # "topView":Landroid/view/View;
    .end local v6    # "bottomView":Landroid/view/View;
    .end local v7    # "numChildren":I
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .line 2180
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2181
    .local v0, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2182
    .local v1, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    const/4 v3, 0x1

    if-ge v2, v1, :cond_18

    .line 2183
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v4, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v4, :cond_15

    .line 2184
    return v3

    .line 2182
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2188
    .end local v2    # "i":I
    :cond_18
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2189
    .local v2, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2190
    .local v4, "numFooters":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    if-ge v5, v4, :cond_2f

    .line 2191
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView$FixedViewInfo;

    iget-object v6, v6, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v6, :cond_2c

    .line 2192
    return v3

    .line 2190
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 2196
    .end local v5    # "i":I
    :cond_2f
    const/4 v3, 0x0

    return v3
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .line 3482
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 3483
    return v0

    .line 3486
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3487
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .registers 9
    .param p1, "direction"    # I

    .line 3345
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3346
    .local v0, "firstPosition":I
    const/16 v1, 0x82

    const/4 v2, -0x1

    if-ne p1, v1, :cond_40

    .line 3347
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v1, v2, :cond_10

    .line 3348
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 3349
    :cond_10
    move v1, v0

    :goto_11
    nop

    .line 3350
    .local v1, "startPos":I
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1b

    .line 3351
    return v2

    .line 3353
    :cond_1b
    if-ge v1, v0, :cond_1e

    .line 3354
    move v1, v0

    .line 3357
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 3358
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3359
    .local v4, "adapter":Landroid/widget/ListAdapter;
    move v5, v1

    .local v5, "pos":I
    :goto_27
    if-gt v5, v3, :cond_3f

    .line 3360
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3c

    sub-int v6, v5, v0

    .line 3361
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3c

    .line 3362
    return v5

    .line 3359
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 3365
    .end local v1    # "startPos":I
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "pos":I
    :cond_3f
    goto :goto_83

    .line 3366
    :cond_40
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 3367
    .local v1, "last":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v3, v2, :cond_50

    .line 3368
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_57

    .line 3369
    :cond_50
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_57
    nop

    .line 3370
    .local v3, "startPos":I
    if-ltz v3, :cond_84

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_63

    goto :goto_84

    .line 3373
    :cond_63
    if-le v3, v1, :cond_66

    .line 3374
    move v3, v1

    .line 3377
    :cond_66
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3378
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    move v5, v3

    .restart local v5    # "pos":I
    :goto_6b
    if-lt v5, v0, :cond_83

    .line 3379
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_80

    sub-int v6, v5, v0

    .line 3380
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_80

    .line 3381
    return v5

    .line 3378
    :cond_80
    add-int/lit8 v5, v5, -0x1

    goto :goto_6b

    .line 3385
    .end local v1    # "last":I
    .end local v3    # "startPos":I
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "pos":I
    :cond_83
    :goto_83
    return v2

    .line 3371
    .restart local v1    # "last":I
    .restart local v3    # "startPos":I
    :cond_84
    :goto_84
    return v2
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .line 2216
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_18

    .line 2218
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v0

    .line 2219
    .local v0, "activeView":Landroid/view/View;
    if-eqz v0, :cond_18

    .line 2222
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2223
    return-object v0

    .line 2229
    .end local v0    # "activeView":Landroid/view/View;
    :cond_18
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 2233
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2f

    .line 2234
    iget-object v1, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v8, v1, v2

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2237
    :cond_2f
    return-object v0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .line 3156
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 3157
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 3158
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eq v1, v0, :cond_23

    .line 3160
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 3163
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3164
    .local v1, "heightDelta":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_17
    if-ge v2, p3, :cond_23

    .line 3165
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3164
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3168
    .end local v1    # "heightDelta":I
    .end local v2    # "i":I
    :cond_23
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;

    .line 3176
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3177
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_e

    .line 3178
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 3183
    :cond_e
    iget v1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3185
    .local v1, "childWidthSpec":I
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3187
    .local v2, "lpHeight":I
    if-lez v2, :cond_2a

    .line 3188
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    goto :goto_33

    .line 3190
    .end local v3    # "childHeightSpec":I
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 3193
    .restart local v3    # "childHeightSpec":I
    :goto_33
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 3194
    return-void
.end method

.method private measureScrapChild(Landroid/view/View;III)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightHint"    # I

    .line 1372
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1373
    .local v0, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_12

    .line 1374
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1375
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1377
    :cond_12
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1378
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1379
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1381
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1383
    .local v1, "childWidthSpec":I
    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1385
    .local v2, "lpHeight":I
    if-lez v2, :cond_3f

    .line 1386
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    goto :goto_44

    .line 1388
    .end local v3    # "childHeightSpec":I
    :cond_3f
    const/4 v3, 0x0

    invoke-static {p4, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1390
    .restart local v3    # "childHeightSpec":I
    :goto_44
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1394
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 1395
    return-void
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .registers 20
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    .line 1089
    move-object v6, p0

    move/from16 v7, p4

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 1090
    .local v8, "fadingEdgeLength":I
    iget v9, v6, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1094
    .local v9, "selectedPosition":I
    invoke-direct {p0, v7, v8, v9}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v10

    .line 1096
    .local v10, "topSelectionPixel":I
    invoke-direct {p0, v7, v8, v9}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v11

    .line 1099
    .local v11, "bottomSelectionPixel":I
    if-lez p3, :cond_98

    .line 1121
    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v12

    .line 1124
    .end local p1    # "oldSel":Landroid/view/View;
    .local v12, "oldSel":Landroid/view/View;
    iget v13, v6, Landroid/widget/ListView;->mDividerHeight:I

    .line 1127
    .local v13, "dividerHeight":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int v2, v0, v13

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1131
    .local v0, "sel":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v11, :cond_5b

    .line 1134
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v10

    .line 1137
    .local v1, "spaceAbove":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v11

    .line 1140
    .local v2, "spaceBelow":I
    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    .line 1141
    .local v3, "halfVerticalSpace":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1142
    .local v4, "offset":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1145
    neg-int v5, v4

    invoke-virtual {v12, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1147
    neg-int v5, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1151
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    .end local v3    # "halfVerticalSpace":I
    .end local v4    # "offset":I
    :cond_5b
    iget-boolean v1, v6, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_7b

    .line 1152
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1153
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1154
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_96

    .line 1156
    :cond_7b
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1157
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1158
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1160
    .end local v13    # "dividerHeight":I
    :goto_96
    goto/16 :goto_10b

    .end local v0    # "sel":Landroid/view/View;
    .end local v12    # "oldSel":Landroid/view/View;
    .restart local p1    # "oldSel":Landroid/view/View;
    :cond_98
    if-gez p3, :cond_e3

    .line 1181
    if-eqz p2, :cond_ad

    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "sel":Landroid/view/View;
    goto :goto_bd

    .line 1188
    .end local v0    # "sel":Landroid/view/View;
    :cond_ad
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1193
    .restart local v0    # "sel":Landroid/view/View;
    :goto_bd
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v10, :cond_de

    .line 1195
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v10, v1

    .line 1198
    .restart local v1    # "spaceAbove":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v2, v11, v2

    .line 1201
    .restart local v2    # "spaceBelow":I
    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    .line 1202
    .restart local v3    # "halfVerticalSpace":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1203
    .restart local v4    # "offset":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1206
    invoke-virtual {v0, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1210
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    .end local v3    # "halfVerticalSpace":I
    .end local v4    # "offset":I
    :cond_de
    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object v12, p1

    goto :goto_10b

    .line 1213
    .end local v0    # "sel":Landroid/view/View;
    :cond_e3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1218
    .local v12, "oldTop":I
    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    move v2, v12

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1221
    .restart local v0    # "sel":Landroid/view/View;
    if-ge v12, v7, :cond_107

    .line 1224
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1225
    .local v1, "newBottom":I
    add-int/lit8 v2, v7, 0x14

    if-ge v1, v2, :cond_107

    .line 1227
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v7, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1232
    .end local v1    # "newBottom":I
    :cond_107
    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object v12, p1

    .line 1235
    .end local p1    # "oldSel":Landroid/view/View;
    .local v12, "oldSel":Landroid/view/View;
    :goto_10b
    return-object v0
.end method

.method private final nextFocusedPositionForDirection(Landroid/view/View;II)I
    .registers 9
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .line 4786
    const/4 v0, -0x1

    .line 4788
    .local v0, "nextFocused":I
    const/16 v1, 0x82

    const/4 v2, -0x1

    if-ne p3, v1, :cond_25

    .line 4789
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    .line 4790
    .local v1, "listBottom":I
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt v3, v1, :cond_24

    .line 4791
    if-eq p2, v2, :cond_20

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, v3, :cond_20

    .line 4792
    add-int/lit8 v3, p2, 0x1

    goto :goto_22

    .line 4793
    :cond_20
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    :goto_22
    move v0, v3

    .line 4797
    .end local v1    # "listBottom":I
    goto :goto_44

    .line 4795
    .restart local v1    # "listBottom":I
    :cond_24
    return v2

    .line 4798
    .end local v1    # "listBottom":I
    :cond_25
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 4799
    .local v1, "listTop":I
    if-eqz p1, :cond_51

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v3, v1, :cond_51

    .line 4800
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 4801
    .local v3, "lastPos":I
    if-eq p2, v2, :cond_41

    if-gt p2, v3, :cond_41

    .line 4802
    add-int/lit8 v4, p2, -0x1

    goto :goto_42

    .line 4803
    :cond_41
    move v4, v3

    :goto_42
    move v0, v4

    .line 4804
    .end local v3    # "lastPos":I
    nop

    .line 4809
    .end local v1    # "listTop":I
    :goto_44
    if-ltz v0, :cond_50

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_4f

    goto :goto_50

    .line 4812
    :cond_4f
    return v0

    .line 4810
    :cond_50
    :goto_50
    return v2

    .line 4805
    .restart local v1    # "listTop":I
    :cond_51
    return v2
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .registers 10
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .line 2937
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne p3, v2, :cond_25

    .line 2938
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 2939
    .local v3, "listBottom":I
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v4, v3, :cond_24

    .line 2940
    if-eq p2, v1, :cond_20

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, v4, :cond_20

    .line 2941
    add-int/lit8 v4, p2, 0x1

    goto :goto_22

    .line 2942
    :cond_20
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    :goto_22
    nop

    .line 2946
    .end local v3    # "listBottom":I
    .local v4, "nextSelected":I
    goto :goto_43

    .line 2944
    .end local v4    # "nextSelected":I
    .restart local v3    # "listBottom":I
    :cond_24
    return v1

    .line 2947
    .end local v3    # "listBottom":I
    :cond_25
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2948
    .local v3, "listTop":I
    if-eqz p1, :cond_58

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v3, :cond_58

    .line 2949
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    .line 2950
    .local v4, "lastPos":I
    if-eq p2, v1, :cond_40

    if-gt p2, v4, :cond_40

    .line 2951
    add-int/lit8 v5, p2, -0x1

    goto :goto_41

    .line 2952
    :cond_40
    move v5, v4

    :goto_41
    move v4, v5

    .line 2953
    .local v4, "nextSelected":I
    nop

    .line 2958
    .end local v3    # "listTop":I
    :goto_43
    if-ltz v4, :cond_57

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v4, v3, :cond_4e

    goto :goto_57

    .line 2961
    :cond_4e
    if-ne p3, v2, :cond_51

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    invoke-virtual {p0, v4, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0

    .line 2959
    :cond_57
    :goto_57
    return v1

    .line 2954
    .end local v4    # "nextSelected":I
    .restart local v3    # "listTop":I
    :cond_58
    return v1
.end method

.method private pointerScroll(I)Z
    .registers 12
    .param p1, "direction"    # I

    .line 4816
    iget-object v0, p0, Landroid/widget/ListView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4817
    iget-object v0, p0, Landroid/widget/ListView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 4819
    :cond_d
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_15

    .line 4820
    return v1

    .line 4823
    :cond_15
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4824
    .local v0, "focusedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/ListView;->mNewFocusedPos:I

    .line 4825
    .local v1, "focusedPos":I
    invoke-direct {p0, v0, v1, p1}, Landroid/widget/ListView;->nextFocusedPositionForDirection(Landroid/view/View;II)I

    move-result v2

    .line 4826
    .local v2, "nextFocusedPosition":I
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v3

    .line 4827
    .local v3, "amountToScroll":I
    const/4 v4, 0x1

    if-nez v0, :cond_27

    .line 4828
    return v4

    .line 4830
    :cond_27
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 4831
    .local v5, "listBottom":I
    const/4 v6, 0x0

    .line 4832
    .local v6, "handled":Z
    const/16 v7, 0x21

    if-lez v3, :cond_6e

    .line 4833
    if-ne p1, v7, :cond_3d

    if-lez v1, :cond_3d

    .line 4834
    add-int/lit8 v2, v1, -0x1

    .line 4835
    const/4 v6, 0x1

    goto :goto_4d

    .line 4836
    :cond_3d
    const/16 v8, 0x82

    if-ne p1, v8, :cond_4d

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v4

    if-ge v1, v8, :cond_4d

    .line 4837
    add-int/lit8 v2, v1, 0x1

    .line 4838
    const/4 v6, 0x1

    .line 4841
    :cond_4d
    :goto_4d
    if-ne p1, v7, :cond_6e

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v9, v5, v9

    if-le v8, v9, :cond_6e

    .line 4842
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    if-eqz v8, :cond_6e

    .line 4843
    const/4 v6, 0x0

    .line 4844
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v8, v3

    if-ltz v8, :cond_6e

    .line 4845
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    neg-int v3, v8

    .line 4850
    :cond_6e
    if-eqz v6, :cond_74

    .line 4851
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 4852
    return v4

    .line 4855
    :cond_74
    if-lez v3, :cond_81

    .line 4856
    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    .line 4857
    if-ne p1, v7, :cond_7d

    move v7, v3

    goto :goto_7e

    :cond_7d
    neg-int v7, v3

    :goto_7e
    invoke-direct {p0, v7}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 4859
    :cond_81
    return v4
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .registers 6
    .param p1, "newFocus"    # Landroid/view/View;

    .line 3467
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3468
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_18

    .line 3469
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3470
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3471
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3468
    .end local v2    # "child":Landroid/view/View;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3474
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

    .line 3202
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 3203
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 3204
    .local v1, "h":I
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 3205
    .local v2, "childLeft":I
    add-int v3, v2, v0

    .line 3206
    .local v3, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 3207
    .local v4, "childTop":I
    add-int v5, v4, v1

    .line 3208
    .local v5, "childBottom":I
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 3209
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
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 454
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 455
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_18

    .line 456
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    .line 457
    .local v2, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    .line 458
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 459
    goto :goto_18

    .line 455
    .end local v2    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 462
    .end local v1    # "i":I
    :cond_18
    :goto_18
    return-void
.end method

.method private removeUnusedFixedViews(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 2159
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ListView$FixedViewInfo;>;"
    if-nez p1, :cond_3

    .line 2160
    return-void

    .line 2162
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_2e

    .line 2163
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 2164
    .local v1, "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    iget-object v2, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 2165
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 2166
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2b

    if-eqz v3, :cond_2b

    iget-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v4, :cond_2b

    .line 2167
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->removeDetachedView(Landroid/view/View;Z)V

    .line 2168
    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2162
    .end local v1    # "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 2172
    .end local v0    # "i":I
    :cond_2e
    return-void
.end method

.method private scrollListItemsBy(I)V
    .registers 13
    .param p1, "amount"    # I

    .line 3551
    iget v0, p0, Landroid/widget/ListView;->mScrollX:I

    .line 3552
    .local v0, "oldX":I
    iget v1, p0, Landroid/widget/ListView;->mScrollY:I

    .line 3554
    .local v1, "oldY":I
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3556
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 3557
    .local v2, "listBottom":I
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 3558
    .local v3, "listTop":I
    iget-object v4, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3560
    .local v4, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    const/4 v5, 0x0

    if-gez p1, :cond_77

    .line 3564
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 3565
    .local v6, "numChildren":I
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3566
    .local v7, "last":Landroid/view/View;
    :goto_23
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v8, v2, :cond_3c

    .line 3567
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    .line 3568
    .local v8, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_3c

    .line 3569
    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3570
    nop

    .end local v8    # "lastVisiblePosition":I
    add-int/lit8 v6, v6, 0x1

    .line 3574
    goto :goto_23

    .line 3579
    :cond_3c
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v8, v2, :cond_4b

    .line 3580
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3584
    :cond_4b
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3585
    .local v8, "first":Landroid/view/View;
    :goto_4f
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v3, :cond_76

    .line 3586
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    .line 3587
    .local v9, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v10, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v4, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 3588
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v4, v8, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3590
    :cond_68
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3591
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3592
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3593
    .end local v9    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_4f

    .line 3594
    .end local v6    # "numChildren":I
    .end local v7    # "last":Landroid/view/View;
    .end local v8    # "first":Landroid/view/View;
    :cond_76
    goto :goto_cf

    .line 3596
    :cond_77
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3599
    .local v5, "first":Landroid/view/View;
    :goto_7b
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v6, v3, :cond_92

    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v6, :cond_92

    .line 3600
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v5, v6}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 3601
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_7b

    .line 3606
    :cond_92
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v6, v3, :cond_a1

    .line 3607
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3610
    :cond_a1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 3611
    .local v6, "lastIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3614
    .restart local v7    # "last":Landroid/view/View;
    :goto_ab
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-le v8, v2, :cond_cf

    .line 3615
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    .line 3616
    .local v8, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v4, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 3617
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v6

    invoke-virtual {v4, v7, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3619
    :cond_c5
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3620
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3621
    .end local v8    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_ab

    .line 3623
    .end local v5    # "first":Landroid/view/View;
    .end local v6    # "lastIndex":I
    .end local v7    # "last":Landroid/view/View;
    :cond_cf
    :goto_cf
    invoke-virtual {v4}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 3624
    iget-object v5, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3625
    iget-object v5, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3626
    iget v5, p0, Landroid/widget/ListView;->mScrollX:I

    iget v6, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v0, v1}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 3627
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .registers 25
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "isAttachedToWindow"    # Z

    .line 2258
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const-string/jumbo v4, "setupListItem"

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2260
    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz p6, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v8

    if-eqz v8, :cond_1c

    move v8, v4

    goto :goto_1d

    :cond_1c
    move v8, v7

    .line 2261
    .local v8, "isSelected":Z
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eq v8, v9, :cond_25

    move v9, v4

    goto :goto_26

    :cond_25
    move v9, v7

    .line 2262
    .local v9, "updateChildSelected":Z
    :goto_26
    iget v10, v0, Landroid/widget/ListView;->mTouchMode:I

    .line 2263
    .local v10, "mode":I
    if-lez v10, :cond_33

    const/4 v11, 0x3

    if-ge v10, v11, :cond_33

    iget v11, v0, Landroid/widget/ListView;->mMotionPosition:I

    if-ne v11, v2, :cond_33

    move v11, v4

    goto :goto_34

    :cond_33
    move v11, v7

    .line 2265
    .local v11, "isPressed":Z
    :goto_34
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v12

    if-eq v11, v12, :cond_3c

    move v12, v4

    goto :goto_3d

    :cond_3c
    move v12, v7

    .line 2266
    .local v12, "updateChildPressed":Z
    :goto_3d
    if-eqz p7, :cond_4a

    if-nez v9, :cond_4a

    .line 2267
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

    .line 2271
    .local v13, "needToMeasure":Z
    :goto_4b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 2272
    .local v14, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v14, :cond_5a

    .line 2273
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 2275
    :cond_5a
    iget-object v15, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2276
    iget-object v15, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2281
    if-eqz v9, :cond_6f

    .line 2282
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2285
    :cond_6f
    if-eqz v12, :cond_74

    .line 2286
    invoke-virtual {v1, v11}, Landroid/view/View;->setPressed(Z)V

    .line 2289
    :cond_74
    iget v15, v0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v15, :cond_a4

    iget-object v15, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_a4

    .line 2290
    instance-of v15, v1, Landroid/widget/Checkable;

    if-eqz v15, :cond_8d

    .line 2291
    move-object v15, v1

    check-cast v15, Landroid/widget/Checkable;

    iget-object v5, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v15, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_a4

    .line 2292
    :cond_8d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_a4

    .line 2294
    iget-object v5, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    .line 2298
    :cond_a4
    :goto_a4
    const/4 v5, -0x1

    if-eqz p7, :cond_ab

    iget-boolean v6, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-eqz v6, :cond_b4

    :cond_ab
    iget-boolean v6, v14, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    const/4 v15, -0x2

    if-eqz v6, :cond_cb

    iget v6, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v6, v15, :cond_cb

    .line 2300
    :cond_b4
    if-eqz p4, :cond_b7

    goto :goto_b8

    :cond_b7
    move v5, v7

    :goto_b8
    invoke-virtual {v0, v1, v5, v14}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2304
    if-eqz p7, :cond_dd

    .line 2305
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v5, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v5, v2, :cond_dd

    .line 2307
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_dd

    .line 2310
    :cond_cb
    iput-boolean v7, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2311
    iget v6, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v6, v15, :cond_d3

    .line 2312
    iput-boolean v4, v14, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2314
    :cond_d3
    if-eqz p4, :cond_d6

    goto :goto_d7

    :cond_d6
    move v5, v7

    :goto_d7
    invoke-virtual {v0, v1, v5, v14, v4}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2316
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 2319
    :cond_dd
    :goto_dd
    if-eqz v13, :cond_107

    .line 2320
    iget v5, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v6, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v15

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v5, v6, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 2322
    .local v5, "childWidthSpec":I
    iget v6, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2324
    .local v6, "lpHeight":I
    if-lez v6, :cond_fb

    .line 2325
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .local v7, "childHeightSpec":I
    goto :goto_103

    .line 2327
    .end local v7    # "childHeightSpec":I
    :cond_fb
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v15

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 2330
    .restart local v7    # "childHeightSpec":I
    :goto_103
    invoke-virtual {v1, v5, v7}, Landroid/view/View;->measure(II)V

    .line 2331
    .end local v5    # "childWidthSpec":I
    .end local v6    # "lpHeight":I
    .end local v7    # "childHeightSpec":I
    goto :goto_10a

    .line 2332
    :cond_107
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    .line 2335
    :goto_10a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2336
    .local v5, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 2337
    .local v6, "h":I
    if-eqz p4, :cond_117

    move/from16 v7, p3

    goto :goto_119

    :cond_117
    sub-int v7, p3, v6

    .line 2339
    .local v7, "childTop":I
    :goto_119
    if-eqz v13, :cond_123

    .line 2340
    add-int v15, v3, v5

    .line 2341
    .local v15, "childRight":I
    add-int v4, v7, v6

    .line 2342
    .local v4, "childBottom":I
    invoke-virtual {v1, v3, v7, v15, v4}, Landroid/view/View;->layout(IIII)V

    .line 2343
    .end local v4    # "childBottom":I
    .end local v15    # "childRight":I
    goto :goto_135

    .line 2344
    :cond_123
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2345
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2348
    :goto_135
    iget-boolean v4, v0, Landroid/widget/ListView;->mCachingStarted:Z

    if-eqz v4, :cond_143

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    if-nez v4, :cond_143

    .line 2349
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2352
    :cond_143
    const-wide/16 v15, 0x8

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 2353
    return-void
.end method

.method private shouldAdjustHeightForDivider(I)Z
    .registers 23
    .param p1, "itemIndex"    # I

    .line 4376
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 4377
    .local v2, "dividerHeight":I
    iget-object v3, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4378
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4379
    .local v4, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_e

    const/4 v7, 0x1

    goto :goto_f

    :cond_e
    const/4 v7, 0x0

    .line 4380
    .local v7, "drawOverscrollHeader":Z
    :goto_f
    if-eqz v4, :cond_13

    const/4 v8, 0x1

    goto :goto_14

    :cond_13
    const/4 v8, 0x0

    .line 4381
    .local v8, "drawOverscrollFooter":Z
    :goto_14
    if-lez v2, :cond_1c

    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1c

    const/4 v9, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v9, 0x0

    .line 4383
    .local v9, "drawDividers":Z
    :goto_1d
    if-eqz v9, :cond_d8

    .line 4384
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v10

    if-eqz v10, :cond_2d

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v10

    if-nez v10, :cond_2d

    const/4 v10, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v10, 0x0

    .line 4385
    .local v10, "fillForMissingDividers":Z
    :goto_2e
    iget v11, v0, Landroid/widget/ListView;->mItemCount:I

    .line 4386
    .local v11, "itemCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v12

    .line 4387
    .local v12, "headerCount":I
    iget-object v13, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v11, v13

    .line 4388
    .local v13, "footerLimit":I
    if-ge v1, v12, :cond_40

    const/4 v14, 0x1

    goto :goto_41

    :cond_40
    const/4 v14, 0x0

    .line 4389
    .local v14, "isHeader":Z
    :goto_41
    if-lt v1, v13, :cond_45

    const/4 v15, 0x1

    goto :goto_46

    :cond_45
    const/4 v15, 0x0

    .line 4390
    .local v15, "isFooter":Z
    :goto_46
    iget-boolean v5, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 4391
    .local v5, "headerDividers":Z
    iget-boolean v6, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 4392
    .local v6, "footerDividers":Z
    if-nez v5, :cond_55

    if-nez v14, :cond_4f

    goto :goto_55

    :cond_4f
    move/from16 v17, v2

    move-object/from16 v18, v3

    goto/16 :goto_dc

    :cond_55
    :goto_55
    if-nez v6, :cond_59

    if-nez v15, :cond_4f

    .line 4393
    :cond_59
    move/from16 v17, v2

    .end local v2    # "dividerHeight":I
    .local v17, "dividerHeight":I
    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4394
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v18, v3

    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v18, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_9b

    .line 4395
    add-int/lit8 v3, v11, -0x1

    if-ne v1, v3, :cond_69

    const/4 v3, 0x1

    goto :goto_6a

    :cond_69
    const/4 v3, 0x0

    .line 4396
    .local v3, "isLastItem":Z
    :goto_6a
    if-eqz v8, :cond_6e

    if-nez v3, :cond_9a

    .line 4397
    :cond_6e
    add-int/lit8 v0, v1, 0x1

    .line 4401
    .local v0, "nextIndex":I
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_95

    if-nez v5, :cond_80

    if-nez v14, :cond_7d

    if-lt v0, v12, :cond_7d

    goto :goto_80

    :cond_7d
    const/16 v16, 0x1

    goto :goto_97

    :cond_80
    :goto_80
    if-nez v3, :cond_92

    .line 4403
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_8f

    if-nez v6, :cond_8e

    if-nez v15, :cond_8f

    if-ge v0, v13, :cond_8f

    :cond_8e
    goto :goto_92

    :cond_8f
    const/16 v16, 0x1

    goto :goto_97

    .line 4405
    :cond_92
    :goto_92
    const/16 v16, 0x1

    return v16

    .line 4401
    :cond_95
    const/16 v16, 0x1

    .line 4406
    :goto_97
    if-eqz v10, :cond_9a

    .line 4407
    return v16

    .line 4410
    .end local v0    # "nextIndex":I
    .end local v3    # "isLastItem":Z
    :cond_9a
    goto :goto_dc

    .line 4411
    :cond_9b
    if-eqz v7, :cond_9f

    const/4 v0, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v0, 0x0

    .line 4412
    .local v0, "start":I
    :goto_a0
    if-ne v1, v0, :cond_a4

    const/4 v3, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v3, 0x0

    .line 4413
    .local v3, "isFirstItem":Z
    :goto_a5
    if-nez v3, :cond_d5

    .line 4414
    move/from16 v19, v0

    .end local v0    # "start":I
    .local v19, "start":I
    add-int/lit8 v0, v1, -0x1

    .line 4418
    .local v0, "previousIndex":I
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_d0

    if-nez v5, :cond_bb

    if-nez v14, :cond_b8

    if-lt v0, v12, :cond_b8

    goto :goto_bb

    :cond_b8
    const/16 v16, 0x1

    goto :goto_d2

    :cond_bb
    :goto_bb
    if-nez v3, :cond_cd

    .line 4420
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_ca

    if-nez v6, :cond_c9

    if-nez v15, :cond_ca

    if-ge v0, v13, :cond_ca

    :cond_c9
    goto :goto_cd

    :cond_ca
    const/16 v16, 0x1

    goto :goto_d2

    .line 4422
    :cond_cd
    :goto_cd
    const/16 v16, 0x1

    return v16

    .line 4418
    :cond_d0
    const/16 v16, 0x1

    .line 4423
    :goto_d2
    if-eqz v10, :cond_dc

    .line 4424
    return v16

    .line 4413
    .end local v19    # "start":I
    .local v0, "start":I
    :cond_d5
    move/from16 v19, v0

    .end local v0    # "start":I
    .restart local v19    # "start":I
    goto :goto_dc

    .line 4383
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
    :cond_d8
    move/from16 v17, v2

    move-object/from16 v18, v3

    .line 4431
    .end local v2    # "dividerHeight":I
    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "dividerHeight":I
    .restart local v18    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_dc
    :goto_dc
    const/4 v0, 0x0

    return v0
.end method

.method private showingBottomFadingEdge()Z
    .registers 7

    .line 691
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 692
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 693
    .local v1, "bottomOfBottomChild":I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 695
    .local v2, "lastVisiblePosition":I
    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 697
    .local v4, "listBottom":I
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v5, v3

    if-lt v2, v5, :cond_28

    if-ge v1, v4, :cond_27

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :cond_28
    :goto_28
    return v3
.end method

.method private showingTopFadingEdge()Z
    .registers 4

    .line 683
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 684
    .local v0, "listTop":I
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 12
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 4714
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->addFocusables(Ljava/util/ArrayList;II)V

    .line 4715
    iget-boolean v0, p0, Landroid/widget/ListView;->mAppWidgetSnapScroll:Z

    if-eqz v0, :cond_89

    const/4 v0, 0x2

    if-ne p2, v0, :cond_89

    .line 4716
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4717
    .local v0, "firstVisibleView":Landroid/view/View;
    if-eqz v0, :cond_89

    .line 4718
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 4719
    .local v1, "cententH":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 4720
    .local v2, "childH":I
    if-ne v1, v2, :cond_89

    .line 4721
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4722
    .local v3, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f
    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_45

    .line 4723
    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4722
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 4726
    .end local v4    # "i":I
    :cond_45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4727
    .local v4, "viewsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 4728
    .local v6, "child":Landroid/view/View;
    if-ne v6, p0, :cond_5d

    .line 4729
    goto :goto_4e

    .line 4731
    :cond_5d
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6c

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-nez v7, :cond_6c

    .line 4732
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4734
    .end local v6    # "child":Landroid/view/View;
    :cond_6c
    goto :goto_4e

    .line 4737
    :cond_6d
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_86

    .line 4738
    nop

    .line 4739
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v6, v7

    if-ne v6, v5, :cond_7d

    const/4 v5, 0x0

    .line 4738
    :cond_7d
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v5}, Landroid/widget/ListView;->getViewsToRemove(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    .line 4741
    :cond_86
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 4745
    .end local v0    # "firstVisibleView":Landroid/view/View;
    .end local v1    # "cententH":I
    .end local v2    # "childH":I
    .end local v3    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "viewsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_89
    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 524
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 525
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .line 481
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1a

    .line 482
    const/4 v0, 0x5

    const-string v1, "ListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 483
    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_1a
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 489
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 490
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 491
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 492
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 496
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_45

    .line 497
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_3c

    .line 498
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 503
    :cond_3c
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_45

    .line 504
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 507
    :cond_45
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 423
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 424
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1a

    .line 382
    const/4 v0, 0x5

    const-string v1, "ListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 383
    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1a
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 388
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 389
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 390
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 391
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 395
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_45

    .line 396
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_3c

    .line 397
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 402
    :cond_3c
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_45

    .line 403
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 406
    :cond_45
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .registers 2

    .line 4061
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .registers 2

    .line 4037
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .registers 5
    .param p1, "direction"    # I

    .line 2912
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2913
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2914
    .local v0, "handled":Z
    if-eqz v0, :cond_11

    .line 2915
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_15

    .line 2917
    :cond_11
    nop

    .line 2919
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2917
    return v0

    .line 2919
    .end local v0    # "handled":Z
    :catchall_15
    move-exception v0

    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2920
    throw v0
.end method

.method protected canAnimate()Z
    .registers 2

    .line 2357
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected dispatchDataSetObserverOnChangedInternal()V
    .registers 2

    .line 4514
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_9

    .line 4515
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 4517
    :cond_9
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3738
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-boolean v1, v0, Landroid/widget/ListView;->mCachingStarted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    .line 3739
    iput-boolean v2, v0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3743
    :cond_b
    iget v8, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3744
    .local v8, "dividerHeight":I
    iget-object v9, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3745
    .local v9, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v10, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3746
    .local v10, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_15

    move v3, v2

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    move v11, v3

    .line 3747
    .local v11, "drawOverscrollHeader":Z
    if-eqz v10, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    move v12, v3

    .line 3748
    .local v12, "drawOverscrollFooter":Z
    if-lez v8, :cond_25

    iget-object v3, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_25

    move v3, v2

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    move v13, v3

    .line 3750
    .local v13, "drawDividers":Z
    if-nez v13, :cond_38

    if-nez v11, :cond_38

    if-eqz v12, :cond_2e

    goto :goto_38

    :cond_2e
    move-object/from16 v27, v9

    move/from16 v26, v11

    move/from16 v29, v12

    move/from16 v33, v13

    goto/16 :goto_2ea

    .line 3752
    :cond_38
    :goto_38
    iget-object v4, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3753
    .local v4, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/widget/ListView;->mPaddingLeft:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3754
    iget v5, v0, Landroid/widget/ListView;->mRight:I

    iget v6, v0, Landroid/widget/ListView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/widget/ListView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3756
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 3757
    .local v5, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    .line 3758
    .local v6, "headerCount":I
    iget v14, v0, Landroid/widget/ListView;->mItemCount:I

    .line 3759
    .local v14, "itemCount":I
    iget-object v15, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int v15, v14, v15

    .line 3760
    .local v15, "footerLimit":I
    iget-boolean v2, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3761
    .local v2, "headerDividers":Z
    iget-boolean v3, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3762
    .local v3, "footerDividers":Z
    iget v1, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3763
    .local v1, "first":I
    move-object/from16 v17, v10

    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v17, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    iget-boolean v10, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3764
    .local v10, "areAllItemsSelectable":Z
    move/from16 v18, v10

    .end local v10    # "areAllItemsSelectable":Z
    .local v18, "areAllItemsSelectable":Z
    iget-object v10, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3769
    .local v10, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_77

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v19

    if-nez v19, :cond_77

    const/16 v19, 0x1

    goto :goto_79

    :cond_77
    const/16 v19, 0x0

    .line 3771
    .local v19, "fillForMissingDividers":Z
    :goto_79
    if-eqz v19, :cond_99

    move/from16 v20, v14

    .end local v14    # "itemCount":I
    .local v20, "itemCount":I
    iget-object v14, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v14, :cond_96

    iget-boolean v14, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v14, :cond_96

    .line 3772
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    iput-object v14, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3773
    move-object/from16 v21, v10

    .end local v10    # "adapter":Landroid/widget/ListAdapter;
    .local v21, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9d

    .line 3771
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v10    # "adapter":Landroid/widget/ListAdapter;
    :cond_96
    move-object/from16 v21, v10

    .end local v10    # "adapter":Landroid/widget/ListAdapter;
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_9d

    .end local v20    # "itemCount":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v10    # "adapter":Landroid/widget/ListAdapter;
    .restart local v14    # "itemCount":I
    :cond_99
    move-object/from16 v21, v10

    move/from16 v20, v14

    .line 3775
    .end local v10    # "adapter":Landroid/widget/ListAdapter;
    .end local v14    # "itemCount":I
    .restart local v20    # "itemCount":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    :goto_9d
    iget-object v10, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3777
    .local v10, "paint":Landroid/graphics/Paint;
    const/4 v14, 0x0

    .line 3778
    .local v14, "effectivePaddingTop":I
    const/16 v22, 0x0

    .line 3779
    .local v22, "effectivePaddingBottom":I
    move/from16 v23, v14

    .end local v14    # "effectivePaddingTop":I
    .local v23, "effectivePaddingTop":I
    iget v14, v0, Landroid/widget/ListView;->mGroupFlags:I

    move-object/from16 v24, v10

    .end local v10    # "paint":Landroid/graphics/Paint;
    .local v24, "paint":Landroid/graphics/Paint;
    const/16 v10, 0x22

    and-int/2addr v14, v10

    if-ne v14, v10, :cond_b8

    .line 3780
    iget-object v10, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v10, Landroid/graphics/Rect;->top:I

    .line 3781
    .end local v23    # "effectivePaddingTop":I
    .restart local v14    # "effectivePaddingTop":I
    iget-object v10, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v10

    .end local v22    # "effectivePaddingBottom":I
    .local v10, "effectivePaddingBottom":I
    goto :goto_ba

    .line 3779
    .end local v10    # "effectivePaddingBottom":I
    .end local v14    # "effectivePaddingTop":I
    .restart local v22    # "effectivePaddingBottom":I
    .restart local v23    # "effectivePaddingTop":I
    :cond_b8
    move/from16 v14, v23

    .line 3784
    .end local v23    # "effectivePaddingTop":I
    .restart local v14    # "effectivePaddingTop":I
    :goto_ba
    iget v10, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v23, v14

    .end local v14    # "effectivePaddingTop":I
    .restart local v23    # "effectivePaddingTop":I
    iget v14, v0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v10, v14

    sub-int v10, v10, v22

    iget v14, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v10, v14

    .line 3785
    .local v10, "listBottom":I
    iget-boolean v14, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v14, :cond_1d9

    .line 3786
    const/4 v14, 0x0

    .line 3789
    .local v14, "bottom":I
    move/from16 v25, v14

    .end local v14    # "bottom":I
    .local v25, "bottom":I
    iget v14, v0, Landroid/widget/ListView;->mScrollY:I

    .line 3790
    .local v14, "scrollY":I
    if-lez v5, :cond_ef

    if-gez v14, :cond_ef

    .line 3791
    if-eqz v11, :cond_e0

    .line 3792
    move/from16 v26, v11

    const/4 v11, 0x0

    .end local v11    # "drawOverscrollHeader":Z
    .local v26, "drawOverscrollHeader":Z
    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    .line 3793
    iput v14, v4, Landroid/graphics/Rect;->top:I

    .line 3794
    invoke-virtual {v0, v7, v9, v4}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_f1

    .line 3795
    .end local v26    # "drawOverscrollHeader":Z
    .restart local v11    # "drawOverscrollHeader":Z
    :cond_e0
    move/from16 v26, v11

    const/4 v11, 0x0

    .end local v11    # "drawOverscrollHeader":Z
    .restart local v26    # "drawOverscrollHeader":Z
    if-eqz v13, :cond_f1

    .line 3796
    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    .line 3797
    neg-int v11, v8

    iput v11, v4, Landroid/graphics/Rect;->top:I

    .line 3798
    const/4 v11, -0x1

    invoke-virtual {v0, v7, v4, v11}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_f1

    .line 3790
    .end local v26    # "drawOverscrollHeader":Z
    .restart local v11    # "drawOverscrollHeader":Z
    :cond_ef
    move/from16 v26, v11

    .line 3802
    .end local v11    # "drawOverscrollHeader":Z
    .restart local v26    # "drawOverscrollHeader":Z
    :cond_f1
    :goto_f1
    const/4 v11, 0x0

    move/from16 v35, v25

    move/from16 v25, v14

    move/from16 v14, v35

    .local v11, "i":I
    .local v14, "bottom":I
    .local v25, "scrollY":I
    :goto_f8
    if-ge v11, v5, :cond_1a9

    .line 3803
    move-object/from16 v27, v9

    .end local v9    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v27, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    add-int v9, v1, v11

    .line 3804
    .local v9, "itemIndex":I
    if-ge v9, v6, :cond_103

    const/16 v28, 0x1

    goto :goto_105

    :cond_103
    const/16 v28, 0x0

    .line 3805
    .local v28, "isHeader":Z
    :goto_105
    if-lt v9, v15, :cond_10a

    const/16 v29, 0x1

    goto :goto_10c

    :cond_10a
    const/16 v29, 0x0

    .line 3806
    .local v29, "isFooter":Z
    :goto_10c
    if-nez v2, :cond_110

    if-nez v28, :cond_115

    :cond_110
    if-nez v3, :cond_121

    if-nez v29, :cond_115

    goto :goto_121

    .line 3802
    .end local v9    # "itemIndex":I
    .end local v28    # "isHeader":Z
    .end local v29    # "isFooter":Z
    :cond_115
    move/from16 v31, v1

    move/from16 v32, v10

    move/from16 v33, v13

    move-object/from16 v13, v21

    move-object/from16 v1, v24

    goto/16 :goto_199

    .line 3807
    .restart local v9    # "itemIndex":I
    .restart local v28    # "isHeader":Z
    .restart local v29    # "isFooter":Z
    :cond_121
    :goto_121
    invoke-virtual {v0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 3808
    .local v30, "child":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 3809
    move/from16 v31, v1

    .end local v1    # "first":I
    .local v31, "first":I
    add-int/lit8 v1, v5, -0x1

    if-ne v11, v1, :cond_131

    const/4 v1, 0x1

    goto :goto_132

    :cond_131
    const/4 v1, 0x0

    .line 3811
    .local v1, "isLastItem":Z
    :goto_132
    if-eqz v13, :cond_18f

    if-ge v14, v10, :cond_18f

    if-eqz v12, :cond_144

    if-nez v1, :cond_13b

    goto :goto_144

    :cond_13b
    move/from16 v32, v10

    move/from16 v33, v13

    move-object/from16 v13, v21

    move-object/from16 v1, v24

    goto :goto_199

    .line 3813
    :cond_144
    :goto_144
    move/from16 v32, v10

    .end local v10    # "listBottom":I
    .local v32, "listBottom":I
    add-int/lit8 v10, v9, 0x1

    .line 3817
    .local v10, "nextIndex":I
    move/from16 v33, v13

    move-object/from16 v13, v21

    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .local v13, "adapter":Landroid/widget/ListAdapter;
    .local v33, "drawDividers":Z
    invoke-interface {v13, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_17c

    if-nez v2, :cond_15c

    if-nez v28, :cond_159

    if-lt v10, v6, :cond_159

    goto :goto_15c

    :cond_159
    move/from16 v21, v1

    goto :goto_17e

    :cond_15c
    :goto_15c
    if-nez v1, :cond_16e

    .line 3819
    invoke-interface {v13, v10}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_16b

    if-nez v3, :cond_16a

    if-nez v29, :cond_16b

    if-ge v10, v15, :cond_16b

    :cond_16a
    goto :goto_16e

    :cond_16b
    move/from16 v21, v1

    goto :goto_17e

    .line 3821
    :cond_16e
    :goto_16e
    iput v14, v4, Landroid/graphics/Rect;->top:I

    .line 3822
    move/from16 v21, v1

    .end local v1    # "isLastItem":Z
    .local v21, "isLastItem":Z
    add-int v1, v14, v8

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 3823
    invoke-virtual {v0, v7, v4, v11}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    move-object/from16 v1, v24

    goto :goto_199

    .line 3817
    .end local v21    # "isLastItem":Z
    .restart local v1    # "isLastItem":Z
    :cond_17c
    move/from16 v21, v1

    .line 3824
    .end local v1    # "isLastItem":Z
    .restart local v21    # "isLastItem":Z
    :goto_17e
    if-eqz v19, :cond_18c

    .line 3825
    iput v14, v4, Landroid/graphics/Rect;->top:I

    .line 3826
    add-int v1, v14, v8

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 3827
    move-object/from16 v1, v24

    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v7, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_199

    .line 3824
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_18c
    move-object/from16 v1, v24

    .end local v24    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    goto :goto_199

    .line 3811
    .end local v32    # "listBottom":I
    .end local v33    # "drawDividers":Z
    .local v1, "isLastItem":Z
    .local v10, "listBottom":I
    .local v13, "drawDividers":Z
    .local v21, "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_18f
    move/from16 v32, v10

    move/from16 v33, v13

    move-object/from16 v13, v21

    move/from16 v21, v1

    move-object/from16 v1, v24

    .line 3802
    .end local v9    # "itemIndex":I
    .end local v10    # "listBottom":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .end local v28    # "isHeader":Z
    .end local v29    # "isFooter":Z
    .end local v30    # "child":Landroid/view/View;
    .local v1, "paint":Landroid/graphics/Paint;
    .local v13, "adapter":Landroid/widget/ListAdapter;
    .restart local v32    # "listBottom":I
    .restart local v33    # "drawDividers":Z
    :goto_199
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v24, v1

    move-object/from16 v21, v13

    move-object/from16 v9, v27

    move/from16 v1, v31

    move/from16 v10, v32

    move/from16 v13, v33

    goto/16 :goto_f8

    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v31    # "first":I
    .end local v32    # "listBottom":I
    .end local v33    # "drawDividers":Z
    .local v1, "first":I
    .local v9, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "listBottom":I
    .local v13, "drawDividers":Z
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1a9
    move/from16 v31, v1

    move-object/from16 v27, v9

    move/from16 v32, v10

    move/from16 v33, v13

    move-object/from16 v13, v21

    move-object/from16 v1, v24

    .line 3833
    .end local v9    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v10    # "listBottom":I
    .end local v11    # "i":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v1, "paint":Landroid/graphics/Paint;
    .local v13, "adapter":Landroid/widget/ListAdapter;
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v31    # "first":I
    .restart local v32    # "listBottom":I
    .restart local v33    # "drawDividers":Z
    iget v9, v0, Landroid/widget/ListView;->mBottom:I

    iget v10, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v9, v10

    .line 3834
    .local v9, "overFooterBottom":I
    if-eqz v12, :cond_1d1

    add-int v10, v31, v5

    move/from16 v11, v20

    .end local v20    # "itemCount":I
    .local v11, "itemCount":I
    if-ne v10, v11, :cond_1ce

    if-le v9, v14, :cond_1ce

    .line 3836
    iput v14, v4, Landroid/graphics/Rect;->top:I

    .line 3837
    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 3838
    move-object/from16 v10, v17

    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v10, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v7, v10, v4}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_1d5

    .line 3834
    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_1ce
    move-object/from16 v10, v17

    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    goto :goto_1d5

    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v11    # "itemCount":I
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "itemCount":I
    :cond_1d1
    move-object/from16 v10, v17

    move/from16 v11, v20

    .line 3840
    .end local v9    # "overFooterBottom":I
    .end local v14    # "bottom":I
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v20    # "itemCount":I
    .end local v25    # "scrollY":I
    .restart local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "itemCount":I
    :goto_1d5
    move/from16 v29, v12

    goto/16 :goto_2ea

    .line 3843
    .end local v26    # "drawOverscrollHeader":Z
    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v31    # "first":I
    .end local v32    # "listBottom":I
    .end local v33    # "drawDividers":Z
    .local v1, "first":I
    .local v9, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v10, "listBottom":I
    .local v11, "drawOverscrollHeader":Z
    .local v13, "drawDividers":Z
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "itemCount":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1d9
    move/from16 v31, v1

    move-object/from16 v27, v9

    move/from16 v32, v10

    move/from16 v26, v11

    move/from16 v33, v13

    move-object/from16 v10, v17

    move/from16 v11, v20

    move-object/from16 v13, v21

    move-object/from16 v1, v24

    .end local v9    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v20    # "itemCount":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v1, "paint":Landroid/graphics/Paint;
    .local v10, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v11, "itemCount":I
    .local v13, "adapter":Landroid/widget/ListAdapter;
    .restart local v26    # "drawOverscrollHeader":Z
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v31    # "first":I
    .restart local v32    # "listBottom":I
    .restart local v33    # "drawDividers":Z
    iget v9, v0, Landroid/widget/ListView;->mScrollY:I

    .line 3845
    .local v9, "scrollY":I
    if-lez v5, :cond_204

    if-eqz v26, :cond_204

    .line 3846
    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 3847
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v14

    iput v14, v4, Landroid/graphics/Rect;->bottom:I

    .line 3848
    move-object/from16 v14, v27

    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v14, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v7, v14, v4}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_206

    .line 3845
    .end local v14    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_204
    move-object/from16 v14, v27

    .line 3851
    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :goto_206
    if-eqz v26, :cond_20b

    const/16 v16, 0x1

    goto :goto_20d

    :cond_20b
    const/16 v16, 0x0

    :goto_20d
    move/from16 v20, v16

    .line 3852
    .local v20, "start":I
    move/from16 v21, v11

    move/from16 v11, v16

    .local v11, "i":I
    .local v21, "itemCount":I
    :goto_213
    if-ge v11, v5, :cond_2b4

    .line 3853
    move-object/from16 v27, v14

    .end local v14    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    add-int v14, v31, v11

    .line 3854
    .local v14, "itemIndex":I
    if-ge v14, v6, :cond_21e

    const/16 v16, 0x1

    goto :goto_220

    :cond_21e
    const/16 v16, 0x0

    .line 3855
    .local v16, "isHeader":Z
    :goto_220
    if-lt v14, v15, :cond_225

    const/16 v24, 0x1

    goto :goto_227

    :cond_225
    const/16 v24, 0x0

    .line 3856
    .local v24, "isFooter":Z
    :goto_227
    if-nez v2, :cond_236

    if-nez v16, :cond_22c

    goto :goto_236

    :cond_22c
    move/from16 v34, v2

    move-object/from16 v28, v10

    move/from16 v29, v12

    move/from16 v30, v20

    goto/16 :goto_2a6

    :cond_236
    :goto_236
    if-nez v3, :cond_23a

    if-nez v24, :cond_22c

    .line 3857
    :cond_23a
    invoke-virtual {v0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 3858
    .local v25, "child":Landroid/view/View;
    move-object/from16 v28, v10

    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v28, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v10

    .line 3859
    .local v10, "top":I
    if-eqz v33, :cond_2a0

    move/from16 v29, v12

    move/from16 v12, v23

    .end local v23    # "effectivePaddingTop":I
    .local v12, "effectivePaddingTop":I
    .local v29, "drawOverscrollFooter":Z
    if-le v10, v12, :cond_299

    .line 3860
    move/from16 v23, v12

    move/from16 v12, v20

    .end local v20    # "start":I
    .local v12, "start":I
    .restart local v23    # "effectivePaddingTop":I
    if-ne v11, v12, :cond_255

    const/16 v20, 0x1

    goto :goto_257

    :cond_255
    const/16 v20, 0x0

    .line 3861
    .local v20, "isFirstItem":Z
    :goto_257
    move/from16 v30, v12

    .end local v12    # "start":I
    .local v30, "start":I
    add-int/lit8 v12, v14, -0x1

    .line 3865
    .local v12, "previousIndex":I
    invoke-interface {v13, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v34

    if-eqz v34, :cond_28b

    if-nez v2, :cond_26b

    if-nez v16, :cond_268

    if-lt v12, v6, :cond_268

    goto :goto_26b

    :cond_268
    move/from16 v34, v2

    goto :goto_28d

    :cond_26b
    :goto_26b
    if-nez v20, :cond_27d

    .line 3867
    invoke-interface {v13, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v34

    if-eqz v34, :cond_27a

    if-nez v3, :cond_279

    if-nez v24, :cond_27a

    if-ge v12, v15, :cond_27a

    :cond_279
    goto :goto_27d

    :cond_27a
    move/from16 v34, v2

    goto :goto_28d

    .line 3869
    :cond_27d
    :goto_27d
    move/from16 v34, v2

    .end local v2    # "headerDividers":Z
    .local v34, "headerDividers":Z
    sub-int v2, v10, v8

    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 3870
    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 3875
    add-int/lit8 v2, v11, -0x1

    invoke-virtual {v0, v7, v4, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_2a6

    .line 3865
    .end local v34    # "headerDividers":Z
    .restart local v2    # "headerDividers":Z
    :cond_28b
    move/from16 v34, v2

    .line 3876
    .end local v2    # "headerDividers":Z
    .restart local v34    # "headerDividers":Z
    :goto_28d
    if-eqz v19, :cond_2a6

    .line 3877
    sub-int v2, v10, v8

    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 3878
    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 3879
    invoke-virtual {v7, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2a6

    .line 3859
    .end local v23    # "effectivePaddingTop":I
    .end local v30    # "start":I
    .end local v34    # "headerDividers":Z
    .restart local v2    # "headerDividers":Z
    .local v12, "effectivePaddingTop":I
    .local v20, "start":I
    :cond_299
    move/from16 v34, v2

    move/from16 v23, v12

    move/from16 v30, v20

    .end local v2    # "headerDividers":Z
    .end local v12    # "effectivePaddingTop":I
    .end local v20    # "start":I
    .restart local v23    # "effectivePaddingTop":I
    .restart local v30    # "start":I
    .restart local v34    # "headerDividers":Z
    goto :goto_2a6

    .end local v29    # "drawOverscrollFooter":Z
    .end local v30    # "start":I
    .end local v34    # "headerDividers":Z
    .restart local v2    # "headerDividers":Z
    .local v12, "drawOverscrollFooter":Z
    .restart local v20    # "start":I
    :cond_2a0
    move/from16 v34, v2

    move/from16 v29, v12

    move/from16 v30, v20

    .line 3852
    .end local v2    # "headerDividers":Z
    .end local v10    # "top":I
    .end local v12    # "drawOverscrollFooter":Z
    .end local v14    # "itemIndex":I
    .end local v16    # "isHeader":Z
    .end local v20    # "start":I
    .end local v24    # "isFooter":Z
    .end local v25    # "child":Landroid/view/View;
    .restart local v29    # "drawOverscrollFooter":Z
    .restart local v30    # "start":I
    .restart local v34    # "headerDividers":Z
    :cond_2a6
    :goto_2a6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v14, v27

    move-object/from16 v10, v28

    move/from16 v12, v29

    move/from16 v20, v30

    move/from16 v2, v34

    goto/16 :goto_213

    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v29    # "drawOverscrollFooter":Z
    .end local v30    # "start":I
    .end local v34    # "headerDividers":Z
    .restart local v2    # "headerDividers":Z
    .local v10, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "drawOverscrollFooter":Z
    .local v14, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "start":I
    :cond_2b4
    move/from16 v34, v2

    move-object/from16 v28, v10

    move/from16 v29, v12

    move-object/from16 v27, v14

    move/from16 v30, v20

    .line 3885
    .end local v2    # "headerDividers":Z
    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v11    # "i":I
    .end local v12    # "drawOverscrollFooter":Z
    .end local v14    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v20    # "start":I
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v29    # "drawOverscrollFooter":Z
    .restart local v30    # "start":I
    .restart local v34    # "headerDividers":Z
    if-lez v5, :cond_2e6

    if-lez v9, :cond_2e6

    .line 3886
    if-eqz v29, :cond_2d2

    .line 3887
    iget v2, v0, Landroid/widget/ListView;->mBottom:I

    .line 3888
    .local v2, "absListBottom":I
    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 3889
    add-int v10, v2, v9

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 3890
    move-object/from16 v10, v28

    .end local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v7, v10, v4}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3891
    .end local v2    # "absListBottom":I
    goto :goto_2ea

    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_2d2
    move-object/from16 v10, v28

    .end local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_2e3

    .line 3892
    move/from16 v2, v32

    .end local v32    # "listBottom":I
    .local v2, "listBottom":I
    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 3893
    add-int v11, v2, v8

    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    .line 3894
    const/4 v11, -0x1

    invoke-virtual {v0, v7, v4, v11}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_2ea

    .line 3891
    .end local v2    # "listBottom":I
    .restart local v32    # "listBottom":I
    :cond_2e3
    move/from16 v2, v32

    .end local v32    # "listBottom":I
    .restart local v2    # "listBottom":I
    goto :goto_2ea

    .line 3885
    .end local v2    # "listBottom":I
    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v32    # "listBottom":I
    :cond_2e6
    move-object/from16 v10, v28

    move/from16 v2, v32

    .line 3900
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v3    # "footerDividers":Z
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "count":I
    .end local v6    # "headerCount":I
    .end local v9    # "scrollY":I
    .end local v13    # "adapter":Landroid/widget/ListAdapter;
    .end local v15    # "footerLimit":I
    .end local v18    # "areAllItemsSelectable":Z
    .end local v19    # "fillForMissingDividers":Z
    .end local v21    # "itemCount":I
    .end local v22    # "effectivePaddingBottom":I
    .end local v23    # "effectivePaddingTop":I
    .end local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v30    # "start":I
    .end local v31    # "first":I
    .end local v32    # "listBottom":I
    .end local v34    # "headerDividers":Z
    .restart local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :goto_2ea
    iget-object v1, v0, Landroid/widget/ListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    if-eqz v1, :cond_2f1

    .line 3901
    invoke-virtual {v1, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 3905
    :cond_2f1
    iget-boolean v1, v0, Landroid/widget/ListView;->mSemEnableFillOut:Z

    if-eqz v1, :cond_30b

    iget v1, v0, Landroid/widget/ListView;->mSemFillOutEmptyArea:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30b

    .line 3906
    const/4 v2, 0x0

    iget v1, v0, Landroid/widget/ListView;->mSemFillOutEmptyArea:I

    int-to-float v3, v1

    iget v1, v0, Landroid/widget/ListView;->mRight:I

    int-to-float v4, v1

    iget v1, v0, Landroid/widget/ListView;->mBottom:I

    int-to-float v5, v1

    iget-object v6, v0, Landroid/widget/ListView;->mSemFillOutPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3911
    :cond_30b
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3914
    iget-object v1, v0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v1, :cond_315

    .line 3915
    invoke-virtual {v1, v7}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3918
    :cond_315
    iget-object v1, v0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v1, :cond_31e

    .line 3919
    iget-object v1, v0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v1, v7}, Lcom/samsung/android/animation/SemSweepListAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 3922
    :cond_31e
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2516
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2517
    .local v0, "handled":Z
    if-nez v0, :cond_1a

    .line 2519
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 2520
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    .line 2523
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2526
    .end local v1    # "focused":Landroid/view/View;
    :cond_1a
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 3927
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 3928
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 3932
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3933
    .local v0, "more":Z
    iget-boolean v2, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v2, :cond_1a

    .line 3934
    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3938
    :cond_1a
    iget-object v1, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v1, :cond_21

    .line 3939
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 3943
    :cond_21
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 3957
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3959
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3960
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3961
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3720
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3722
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3723
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3725
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 3726
    .local v1, "span":I
    if-ge v1, v0, :cond_16

    .line 3727
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3730
    :cond_16
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3731
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3733
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3734
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3703
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3705
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3706
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3708
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 3709
    .local v1, "span":I
    if-ge v1, v0, :cond_16

    .line 3710
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3713
    :cond_16
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3714
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3716
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3717
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 4494
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 4496
    const-string/jumbo v0, "recycleOnMeasure"

    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 4497
    return-void
.end method

.method fillGap(Z)V
    .registers 6
    .param p1, "down"    # Z

    .line 786
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 787
    .local v0, "count":I
    const/16 v1, 0x22

    if-eqz p1, :cond_32

    .line 788
    const/4 v2, 0x0

    .line 789
    .local v2, "paddingTop":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_12

    .line 790
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 792
    :cond_12
    if-lez v0, :cond_22

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v3

    goto :goto_23

    .line 793
    :cond_22
    move v1, v2

    :goto_23
    nop

    .line 794
    .local v1, "startOffset":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 795
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 796
    .end local v1    # "startOffset":I
    .end local v2    # "paddingTop":I
    goto :goto_5f

    .line 797
    :cond_32
    const/4 v2, 0x0

    .line 798
    .local v2, "paddingBottom":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3c

    .line 799
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v2

    .line 801
    :cond_3c
    if-lez v0, :cond_4b

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v1, v3

    goto :goto_50

    .line 802
    :cond_4b
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_50
    nop

    .line 803
    .restart local v1    # "startOffset":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 804
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 806
    .end local v1    # "startOffset":I
    .end local v2    # "paddingBottom":I
    :goto_5f
    return-void
.end method

.method findMotionRow(I)I
    .registers 6
    .param p1, "y"    # I

    .line 1497
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1498
    .local v0, "childCount":I
    if-lez v0, :cond_34

    .line 1499
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1f

    .line 1500
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1e

    .line 1501
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1502
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1b

    .line 1503
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1500
    .end local v2    # "v":Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .end local v1    # "i":I
    :cond_1e
    goto :goto_34

    .line 1507
    :cond_1f
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_21
    if-ltz v1, :cond_34

    .line 1508
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1509
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_31

    .line 1510
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1507
    .end local v2    # "v":Landroid/view/View;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 1515
    .end local v1    # "i":I
    :cond_34
    :goto_34
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
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 4301
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_23

    .line 4302
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4305
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_23

    .line 4306
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4308
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_20

    .line 4309
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 4311
    if-eqz v2, :cond_20

    .line 4312
    return-object v2

    .line 4305
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4317
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

    .line 4280
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4281
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_18

    .line 4282
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4283
    if-eqz v0, :cond_f

    .line 4284
    return-object v0

    .line 4287
    :cond_f
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4288
    if-eqz v0, :cond_18

    .line 4289
    return-object v0

    .line 4292
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
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 4206
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 4207
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4210
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 4211
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4213
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4214
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4216
    if-eqz v2, :cond_1e

    .line 4217
    return-object v2

    .line 4210
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4222
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

    .line 4190
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 4191
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_18

    .line 4192
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4193
    if-eqz v0, :cond_f

    .line 4194
    return-object v0

    .line 4196
    :cond_f
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4197
    if-eqz v0, :cond_18

    .line 4198
    return-object v0

    .line 4201
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
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 4251
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 4252
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4255
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 4256
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4258
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4259
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 4261
    if-eqz v2, :cond_1e

    .line 4262
    return-object v2

    .line 4255
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4267
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

    .line 4233
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4234
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_18

    .line 4235
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4236
    if-eqz v0, :cond_f

    .line 4237
    return-object v0

    .line 4240
    :cond_f
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4241
    if-eqz v0, :cond_18

    .line 4242
    return-object v0

    .line 4245
    :cond_18
    return-object v0
.end method

.method fullScroll(I)Z
    .registers 6
    .param p1, "direction"    # I

    .line 2815
    const/4 v0, 0x0

    .line 2816
    .local v0, "moved":Z
    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1d

    .line 2817
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v1, :cond_3a

    .line 2818
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 2819
    .local v1, "position":I
    if-ltz v1, :cond_1b

    .line 2820
    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2821
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2822
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2824
    :cond_1b
    const/4 v0, 0x1

    .line 2825
    .end local v1    # "position":I
    goto :goto_3a

    .line 2826
    :cond_1d
    const/16 v1, 0x82

    if-ne p1, v1, :cond_3a

    .line 2827
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v1, v3

    .line 2828
    .local v1, "lastItem":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ge v3, v1, :cond_3a

    .line 2829
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2831
    .local v2, "position":I
    if-ltz v2, :cond_39

    .line 2832
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2833
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2834
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2836
    :cond_39
    const/4 v0, 0x1

    .line 2840
    .end local v1    # "lastItem":I
    .end local v2    # "position":I
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 2841
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2843
    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    .line 2845
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2848
    :cond_4b
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 4436
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 155
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 565
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4332
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4333
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0

    .line 4338
    :cond_11
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4b

    .line 4339
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4340
    .local v0, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 4341
    .local v2, "count":I
    new-array v3, v2, [J

    .line 4342
    .local v3, "ids":[J
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4344
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, 0x0

    .line 4345
    .local v5, "checkedCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2a
    if-ge v6, v2, :cond_42

    .line 4346
    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 4347
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "checkedCount":I
    .local v7, "checkedCount":I
    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v3, v5

    move v5, v7

    .line 4345
    .end local v7    # "checkedCount":I
    .restart local v5    # "checkedCount":I
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 4353
    .end local v6    # "i":I
    :cond_42
    if-ne v5, v2, :cond_45

    .line 4354
    return-object v3

    .line 4356
    :cond_45
    new-array v6, v5, [J

    .line 4357
    .local v6, "result":[J
    invoke-static {v3, v1, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4359
    return-object v6

    .line 4362
    .end local v0    # "states":Landroid/util/SparseBooleanArray;
    .end local v2    # "count":I
    .end local v3    # "ids":[J
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "checkedCount":I
    .end local v6    # "result":[J
    :cond_4b
    new-array v0, v1, [J

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 1731
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 1733
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3972
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .registers 2

    .line 4001
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .registers 2

    .line 529
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .registers 2

    .line 428
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getHeightForPosition(I)I
    .registers 4
    .param p1, "position"    # I

    .line 4368
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    move-result v0

    .line 4369
    .local v0, "height":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4370
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    .line 4372
    :cond_e
    return v0
.end method

.method public getItemsCanFocus()Z
    .registers 2

    .line 3665
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 3

    .line 314
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 4100
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 4081
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .registers 8

    .line 3670
    iget-boolean v0, p0, Landroid/widget/ListView;->mCachingActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_14

    .line 3671
    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_14
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    .line 3672
    .local v0, "retValue":Z
    :goto_1d
    if-eqz v0, :cond_5a

    .line 3674
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_28

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_2a

    :cond_28
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    .line 3675
    .local v3, "listTop":I
    :goto_2a
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3676
    .local v4, "first":Landroid/view/View;
    if-eqz v4, :cond_59

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_37

    goto :goto_59

    .line 3679
    :cond_37
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    .line 3680
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_44

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_46

    :cond_44
    iget v6, p0, Landroid/widget/ListView;->mPaddingBottom:I

    :goto_46
    sub-int/2addr v5, v6

    .line 3681
    .local v5, "listBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3682
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v6, v5, :cond_5a

    .line 3683
    :cond_58
    return v2

    .line 3677
    .end local v1    # "last":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_59
    :goto_59
    return v2

    .line 3686
    .end local v3    # "listTop":I
    .end local v4    # "first":Landroid/view/View;
    :cond_5a
    return v0
.end method

.method protected layoutChildren()V
    .registers 32

    .line 1739
    move-object/from16 v7, p0

    iget-boolean v8, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1740
    .local v8, "blockLayoutRequests":Z
    if-eqz v8, :cond_7

    .line 1741
    return-void

    .line 1744
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1747
    const/4 v9, 0x0

    :try_start_b
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1749
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1751
    iget-object v1, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_27

    .line 1752
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1753
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_491

    .line 2134
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_22

    .line 2135
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2137
    :cond_22
    if-nez v8, :cond_26

    .line 2138
    iput-boolean v9, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1754
    :cond_26
    return-void

    .line 1757
    :cond_27
    :try_start_27
    iget-object v1, v7, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move v10, v1

    .line 1758
    .local v10, "childrenTop":I
    iget v1, v7, Landroid/widget/ListView;->mBottom:I

    iget v2, v7, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget-object v2, v7, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v1, v2

    .line 1759
    .local v11, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    move v12, v1

    .line 1761
    .local v12, "childCount":I
    const/4 v1, 0x0

    .line 1762
    .local v1, "index":I
    const/4 v2, 0x0

    .line 1765
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 1766
    .local v3, "oldSel":Landroid/view/View;
    const/4 v4, 0x0

    .line 1767
    .local v4, "oldFirst":Landroid/view/View;
    const/4 v5, 0x0

    .line 1770
    .local v5, "newSel":Landroid/view/View;
    iget v6, v7, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v6, :pswitch_data_4a0

    .line 1785
    iget v6, v7, Landroid/widget/ListView;->mSelectedPosition:I

    goto :goto_70

    .line 1772
    :pswitch_49
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v1, v6, v13

    .line 1773
    if-ltz v1, :cond_60

    if-ge v1, v12, :cond_60

    .line 1774
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_9a

    .line 1802
    :cond_60
    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_9a

    .line 1781
    :pswitch_68
    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_9a

    .line 1785
    :goto_70
    iget v13, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v1, v6, v13

    .line 1786
    if-ltz v1, :cond_7d

    if-ge v1, v12, :cond_7d

    .line 1787
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 1791
    :cond_7d
    invoke-virtual {v7, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 1793
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v6, :cond_8c

    .line 1794
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/ListView;->mSelectedPosition:I

    sub-int v2, v6, v13

    .line 1798
    :cond_8c
    add-int v6, v1, v2

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 1802
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
    :goto_9a
    iget-boolean v1, v7, Landroid/widget/ListView;->mDataChanged:Z

    move/from16 v18, v1

    .line 1803
    .local v18, "dataChanged":Z
    if-eqz v18, :cond_a3

    .line 1804
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1809
    :cond_a3
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_b9

    .line 1810
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1811
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_ad
    .catchall {:try_start_27 .. :try_end_ad} :catchall_491

    .line 2134
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_b4

    .line 2135
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2137
    :cond_b4
    if-nez v8, :cond_b8

    .line 2138
    iput-boolean v9, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1812
    :cond_b8
    return-void

    .line 1813
    :cond_b9
    :try_start_b9
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    iget-object v2, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_44c

    .line 1822
    iget v1, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1824
    const/4 v1, 0x0

    .line 1825
    .local v1, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v2, 0x0

    .line 1826
    .local v2, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v3, -0x1

    .line 1828
    .local v3, "accessibilityFocusPosition":I
    const/4 v4, 0x0

    .line 1834
    .local v4, "mInsideViewAccFocused":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    move-object/from16 v19, v5

    .line 1835
    .local v19, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v19, :cond_10f

    .line 1836
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v5

    .line 1837
    .local v5, "focusHost":Landroid/view/View;
    if-eqz v5, :cond_10f

    .line 1838
    invoke-virtual {v7, v5}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 1840
    .local v6, "focusChild":Landroid/view/View;
    if-eq v5, v6, :cond_e1

    .line 1841
    const/4 v4, 0x1

    .line 1844
    :cond_e1
    if-eqz v6, :cond_108

    .line 1845
    if-eqz v18, :cond_f5

    invoke-direct {v7, v6}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_f5

    .line 1847
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v20

    if-nez v20, :cond_f5

    iget-boolean v0, v7, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_fc

    .line 1850
    :cond_f5
    move-object v2, v5

    .line 1851
    nop

    .line 1852
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    move-object v1, v0

    .line 1857
    :cond_fc
    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    move v3, v0

    move-object v0, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    goto :goto_115

    .line 1844
    :cond_108
    move-object v0, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    goto :goto_115

    .line 1862
    .end local v5    # "focusHost":Landroid/view/View;
    .end local v6    # "focusChild":Landroid/view/View;
    :cond_10f
    move-object v0, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    .end local v1    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v3    # "accessibilityFocusPosition":I
    .end local v4    # "mInsideViewAccFocused":Z
    .local v0, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v6, "accessibilityFocusPosition":I
    .local v21, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v22, "mInsideViewAccFocused":Z
    :goto_115
    const/4 v1, 0x0

    .line 1863
    .local v1, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/4 v2, 0x0

    .line 1866
    .local v2, "focusLayoutRestoreView":Landroid/view/View;
    const/4 v3, 0x0

    .line 1872
    .local v3, "focusFirstItemTemporarily":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    .line 1873
    .local v5, "focusedChild":Landroid/view/View;
    if-eqz v5, :cond_150

    .line 1879
    if-eqz v18, :cond_131

    invoke-direct {v7, v5}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_131

    .line 1880
    invoke-virtual {v5}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_131

    iget-boolean v4, v7, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_141

    .line 1881
    :cond_131
    move-object v1, v5

    .line 1883
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 1884
    if-eqz v2, :cond_141

    .line 1886
    invoke-virtual {v2}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1888
    iget v4, v7, Landroid/widget/ListView;->mSelectedPosition:I

    if-nez v4, :cond_141

    .line 1889
    const/4 v3, 0x1

    .line 1895
    :cond_141
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_14a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1900
    :cond_14a
    move-object v4, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    goto :goto_155

    .line 1873
    :cond_150
    move-object v4, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    .line 1900
    .end local v1    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v2    # "focusLayoutRestoreView":Landroid/view/View;
    .end local v3    # "focusFirstItemTemporarily":Z
    .local v4, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v23, "focusLayoutRestoreView":Landroid/view/View;
    .local v24, "focusFirstItemTemporarily":Z
    :goto_155
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    move v3, v1

    .line 1901
    .local v3, "firstPosition":I
    iget-object v1, v7, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object v2, v1

    .line 1902
    .local v2, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v18, :cond_174

    .line 1903
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15e
    if-ge v1, v12, :cond_171

    .line 1904
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v25, v4

    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    add-int v4, v3, v1

    invoke-virtual {v2, v9, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1903
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v25

    const/4 v9, 0x0

    goto :goto_15e

    .end local v25    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    :cond_171
    move-object/from16 v25, v4

    .end local v1    # "i":I
    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v25    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    goto :goto_179

    .line 1907
    .end local v25    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    :cond_174
    move-object/from16 v25, v4

    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v25    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-virtual {v2, v12, v3}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1911
    :goto_179
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1912
    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1914
    iget v1, v7, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v1, :pswitch_data_4ae

    .line 1961
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v25, "focusedChild":Landroid/view/View;
    .local v26, "firstPosition":I
    .local v27, "index":I
    .local v28, "delta":I
    if-nez v12, :cond_279

    .line 1962
    iget-boolean v1, v7, Landroid/widget/ListView;->mStackFromBottom:Z

    goto/16 :goto_251

    .line 1958
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_196
    move-object/from16 v1, p0

    move-object v9, v2

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    move-object v2, v15

    move/from16 v26, v3

    .end local v3    # "firstPosition":I
    .restart local v26    # "firstPosition":I
    move-object/from16 v3, v17

    move/from16 v27, v13

    move-object/from16 v13, v25

    .end local v25    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v27    # "index":I
    move v4, v14

    move-object/from16 v25, v5

    .end local v5    # "focusedChild":Landroid/view/View;
    .local v25, "focusedChild":Landroid/view/View;
    move v5, v10

    move/from16 v28, v14

    move v14, v6

    .end local v6    # "accessibilityFocusPosition":I
    .local v14, "accessibilityFocusPosition":I
    .restart local v28    # "delta":I
    move v6, v11

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    .line 1959
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_2ad

    .line 1924
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_1b0
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v25, "focusedChild":Landroid/view/View;
    .restart local v26    # "firstPosition":I
    .restart local v27    # "index":I
    .restart local v28    # "delta":I
    iget-boolean v1, v7, Landroid/widget/ListView;->mSemScrollingByScrollbar:Z

    if-eqz v1, :cond_1cf

    .line 1925
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/ListView;->mSpecificTop:I

    .line 1926
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_2ad

    .line 1928
    .end local v1    # "sel":Landroid/view/View;
    :cond_1cf
    iget v1, v7, Landroid/widget/ListView;->mSyncPosition:I

    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .line 1930
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_2ad

    .line 1941
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_1d9
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v25, "focusedChild":Landroid/view/View;
    .restart local v26    # "firstPosition":I
    .restart local v27    # "index":I
    .restart local v28    # "delta":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 1942
    .local v1, "selectedPosition":I
    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1949
    .local v2, "sel":Landroid/view/View;
    if-nez v2, :cond_200

    iget-object v3, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v3, :cond_200

    .line 1950
    nop

    .line 1951
    invoke-virtual {v3, v1}, Landroid/widget/ListView$FocusSelector;->setupFocusIfValid(I)Ljava/lang/Runnable;

    move-result-object v3

    .line 1952
    .local v3, "focusRunnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_1ff

    .line 1953
    invoke-virtual {v7, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1955
    .end local v3    # "focusRunnable":Ljava/lang/Runnable;
    :cond_1ff
    nop

    .line 1986
    .end local v1    # "selectedPosition":I
    :cond_200
    move-object v1, v2

    goto/16 :goto_2ad

    .line 1932
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .local v2, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v3, "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_203
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v25, "focusedChild":Landroid/view/View;
    .restart local v26    # "firstPosition":I
    .restart local v27    # "index":I
    .restart local v28    # "delta":I
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v11}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 1933
    .local v1, "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1934
    goto/16 :goto_2ad

    .line 1916
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_21c
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v25, "focusedChild":Landroid/view/View;
    .restart local v26    # "firstPosition":I
    .restart local v27    # "index":I
    .restart local v28    # "delta":I
    if-eqz v17, :cond_234

    .line 1917
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {v7, v1, v10, v11}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_2ad

    .line 1919
    .end local v1    # "sel":Landroid/view/View;
    :cond_234
    invoke-direct {v7, v10, v11}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    .line 1921
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_2ad

    .line 1936
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_23a
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v25, "focusedChild":Landroid/view/View;
    .restart local v26    # "firstPosition":I
    .restart local v27    # "index":I
    .restart local v28    # "delta":I
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    .line 1937
    invoke-direct {v7, v10}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v1

    .line 1938
    .restart local v1    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1939
    goto :goto_2ad

    .line 1962
    .end local v1    # "sel":Landroid/view/View;
    :goto_251
    if-nez v1, :cond_263

    .line 1963
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v3

    move v1, v3

    .line 1964
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1965
    invoke-direct {v7, v10}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1966
    .local v1, "sel":Landroid/view/View;
    goto :goto_2ad

    .line 1967
    .end local v1    # "sel":Landroid/view/View;
    :cond_263
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 1968
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1969
    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v7, v2, v11}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1970
    .local v1, "sel":Landroid/view/View;
    goto :goto_2ad

    .line 1972
    .end local v1    # "sel":Landroid/view/View;
    :cond_279
    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v1, :cond_292

    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v1, v2, :cond_292

    .line 1973
    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1974
    if-nez v15, :cond_289

    move v2, v10

    goto :goto_28d

    :cond_289
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1973
    :goto_28d
    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_2ad

    .line 1975
    .end local v1    # "sel":Landroid/view/View;
    :cond_292
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v1, v2, :cond_2a7

    .line 1976
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    .line 1977
    if-nez v16, :cond_29e

    move v2, v10

    goto :goto_2a2

    :cond_29e
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1976
    :goto_2a2
    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_2ad

    .line 1979
    .end local v1    # "sel":Landroid/view/View;
    :cond_2a7
    const/4 v1, 0x0

    invoke-direct {v7, v1, v10}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1986
    .restart local v1    # "sel":Landroid/view/View;
    :goto_2ad
    invoke-virtual {v9}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1989
    iget-object v2, v7, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1990
    iget-object v2, v7, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1992
    const/4 v2, -0x1

    if-eqz v1, :cond_305

    .line 1997
    iget-boolean v3, v7, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v3, :cond_2fb

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2fb

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2cf

    if-eqz v24, :cond_2fb

    .line 1999
    :cond_2cf
    if-ne v1, v13, :cond_2d9

    if-eqz v23, :cond_2d9

    .line 2001
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_2df

    :cond_2d9
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_2e1

    :cond_2df
    const/4 v3, 0x1

    goto :goto_2e2

    :cond_2e1
    const/4 v3, 0x0

    .line 2002
    .local v3, "focusWasTaken":Z
    :goto_2e2
    if-nez v3, :cond_2f1

    .line 2006
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    .line 2007
    .local v4, "focused":Landroid/view/View;
    if-eqz v4, :cond_2ed

    .line 2008
    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 2010
    :cond_2ed
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 2011
    .end local v4    # "focused":Landroid/view/View;
    goto :goto_2fa

    .line 2012
    :cond_2f1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 2013
    iget-object v4, v7, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 2015
    .end local v3    # "focusWasTaken":Z
    :goto_2fa
    goto :goto_2fe

    .line 2016
    :cond_2fb
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 2018
    :goto_2fe
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v7, Landroid/widget/ListView;->mSelectedTop:I

    goto :goto_35e

    .line 2020
    :cond_305
    iget v3, v7, Landroid/widget/ListView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_312

    iget v3, v7, Landroid/widget/ListView;->mTouchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_310

    goto :goto_312

    :cond_310
    const/4 v3, 0x0

    goto :goto_313

    :cond_312
    :goto_312
    const/4 v3, 0x1

    .line 2022
    .local v3, "inTouchMode":Z
    :goto_313
    if-eqz v3, :cond_326

    .line 2024
    iget v4, v7, Landroid/widget/ListView;->mMotionPosition:I

    iget v5, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2025
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_325

    .line 2026
    iget v5, v7, Landroid/widget/ListView;->mMotionPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 2028
    .end local v4    # "child":Landroid/view/View;
    :cond_325
    goto :goto_353

    :cond_326
    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    if-eq v4, v2, :cond_345

    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    iget v5, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v4, v5, :cond_345

    iget-boolean v4, v7, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    if-nez v4, :cond_345

    .line 2032
    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    iget v5, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2033
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_352

    .line 2034
    iget v5, v7, Landroid/widget/ListView;->mSelectorPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_352

    .line 2036
    .end local v4    # "child":Landroid/view/View;
    :cond_345
    iget-boolean v4, v7, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    if-nez v4, :cond_352

    .line 2038
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/ListView;->mSelectedTop:I

    .line 2039
    iget-object v4, v7, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_353

    .line 2036
    :cond_352
    :goto_352
    nop

    .line 2044
    :goto_353
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_35e

    if-eqz v23, :cond_35e

    .line 2045
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    .line 2050
    .end local v3    # "inTouchMode":Z
    :cond_35e
    :goto_35e
    const/4 v3, 0x0

    if-eqz v19, :cond_3de

    .line 2051
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v4

    .line 2052
    .local v4, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v4, :cond_3a9

    .line 2053
    if-eqz v21, :cond_38c

    .line 2054
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_38c

    .line 2055
    nop

    .line 2056
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    .line 2057
    .local v5, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v0, :cond_388

    if-eqz v5, :cond_388

    .line 2058
    nop

    .line 2059
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v29

    .line 2058
    invoke-static/range {v29 .. v30}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 2060
    .local v6, "virtualViewId":I
    const/16 v2, 0x40

    invoke-virtual {v5, v6, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 2062
    nop

    .end local v6    # "virtualViewId":I
    goto :goto_3a8

    .line 2063
    :cond_388
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_3a8

    .line 2065
    .end local v5    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_38c
    const/4 v2, -0x1

    if-eq v14, v2, :cond_3a8

    .line 2067
    iget v2, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v6, v14, v2

    .line 2069
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 2067
    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 2070
    .local v2, "position":I
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2071
    .local v5, "restoreView":Landroid/view/View;
    if-eqz v5, :cond_3a7

    .line 2072
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2074
    .end local v2    # "position":I
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_3a7
    goto :goto_3de

    .line 2065
    :cond_3a8
    :goto_3a8
    goto :goto_3de

    .line 2075
    :cond_3a9
    const/4 v2, -0x1

    if-eq v14, v2, :cond_3de

    .line 2076
    iget v2, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v6, v14, v2

    .line 2077
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 2076
    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 2079
    .restart local v2    # "position":I
    if-eqz v22, :cond_3ca

    .line 2080
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "restoreView":Landroid/view/View;
    goto :goto_3ce

    .line 2082
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_3ca
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2084
    .restart local v5    # "restoreView":Landroid/view/View;
    :goto_3ce
    invoke-virtual {v4}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v6

    if-eqz v6, :cond_3de

    if-eq v4, v5, :cond_3de

    .line 2085
    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2086
    if-eqz v5, :cond_3de

    .line 2087
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2095
    .end local v2    # "position":I
    .end local v4    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_3de
    :goto_3de
    iget-boolean v2, v7, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v2, :cond_3e6

    iget-boolean v2, v7, Landroid/widget/ListView;->mSemAdapterChanged:Z

    if-eqz v2, :cond_40d

    :cond_3e6
    iget-boolean v2, v7, Landroid/widget/ListView;->mSemEnableFillOut:Z

    if-eqz v2, :cond_40d

    .line 2096
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 2097
    .local v2, "lastVisiblePos":I
    iget v4, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_40a

    if-ltz v2, :cond_40a

    .line 2098
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2099
    .local v4, "lastView":Landroid/view/View;
    if-nez v4, :cond_403

    const/4 v5, -0x1

    goto :goto_407

    :cond_403
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    :goto_407
    iput v5, v7, Landroid/widget/ListView;->mSemFillOutEmptyArea:I

    .line 2100
    .end local v4    # "lastView":Landroid/view/View;
    goto :goto_40d

    .line 2101
    :cond_40a
    const/4 v4, -0x1

    iput v4, v7, Landroid/widget/ListView;->mSemFillOutEmptyArea:I

    .line 2108
    .end local v2    # "lastVisiblePos":I
    :cond_40d
    :goto_40d
    if-eqz v23, :cond_418

    .line 2109
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_418

    .line 2110
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2113
    :cond_418
    const/4 v2, 0x0

    iput v2, v7, Landroid/widget/ListView;->mLayoutMode:I

    .line 2114
    iput-boolean v2, v7, Landroid/widget/ListView;->mDataChanged:Z

    .line 2116
    iput-boolean v2, v7, Landroid/widget/ListView;->mSemAdapterChanged:Z

    .line 2119
    iget-object v2, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_42a

    .line 2120
    iget-object v2, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2121
    iput-object v3, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2123
    :cond_42a
    const/4 v2, 0x0

    iput-boolean v2, v7, Landroid/widget/ListView;->mNeedSync:Z

    .line 2124
    iget v2, v7, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2126
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 2128
    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-lez v2, :cond_43c

    .line 2129
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2132
    :cond_43c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_43f
    .catchall {:try_start_b9 .. :try_end_43f} :catchall_491

    .line 2134
    .end local v0    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v10    # "childrenTop":I
    .end local v11    # "childrenBottom":I
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
    .end local v24    # "focusFirstItemTemporarily":Z
    .end local v25    # "focusedChild":Landroid/view/View;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_446

    .line 2135
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2137
    :cond_446
    if-nez v8, :cond_44b

    .line 2138
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 2141
    :cond_44b
    return-void

    .line 1814
    .restart local v10    # "childrenTop":I
    .restart local v11    # "childrenBottom":I
    .restart local v12    # "childCount":I
    .local v13, "index":I
    .local v14, "delta":I
    .restart local v15    # "oldSel":Landroid/view/View;
    .restart local v16    # "oldFirst":Landroid/view/View;
    .restart local v17    # "newSel":Landroid/view/View;
    .restart local v18    # "dataChanged":Z
    :cond_44c
    move/from16 v27, v13

    move/from16 v28, v14

    .end local v13    # "index":I
    .end local v14    # "delta":I
    .restart local v27    # "index":I
    .restart local v28    # "delta":I
    :try_start_450
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1818
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

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

    iget-object v2, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1819
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
    .end local p0    # "this":Landroid/widget/ListView;
    throw v0
    :try_end_491
    .catchall {:try_start_450 .. :try_end_491} :catchall_491

    .line 2134
    .end local v10    # "childrenTop":I
    .end local v11    # "childrenBottom":I
    .end local v12    # "childCount":I
    .end local v15    # "oldSel":Landroid/view/View;
    .end local v16    # "oldFirst":Landroid/view/View;
    .end local v17    # "newSel":Landroid/view/View;
    .end local v18    # "dataChanged":Z
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .restart local v8    # "blockLayoutRequests":Z
    .restart local p0    # "this":Landroid/widget/ListView;
    :catchall_491
    move-exception v0

    iget-object v1, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v1, :cond_499

    .line 2135
    invoke-virtual {v1}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2137
    :cond_499
    if-nez v8, :cond_49e

    .line 2138
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 2140
    :cond_49e
    throw v0

    nop

    :pswitch_data_4a0
    .packed-switch 0x1
        :pswitch_68
        :pswitch_49
        :pswitch_68
        :pswitch_68
        :pswitch_68
    .end packed-switch

    :pswitch_data_4ae
    .packed-switch 0x1
        :pswitch_23a
        :pswitch_21c
        :pswitch_203
        :pswitch_1d9
        :pswitch_1b0
        :pswitch_196
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 7
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 2418
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2419
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3e

    .line 2423
    :cond_c
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2424
    .local v2, "count":I
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_37

    .line 2425
    if-eqz p2, :cond_26

    .line 2426
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2427
    :goto_1b
    if-ge p1, v2, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2428
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 2431
    :cond_26
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2432
    :goto_2c
    if-ltz p1, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2433
    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    .line 2438
    :cond_37
    if-ltz p1, :cond_3d

    if-lt p1, v2, :cond_3c

    goto :goto_3d

    .line 2442
    :cond_3c
    return p1

    .line 2439
    :cond_3d
    :goto_3d
    return v1

    .line 2420
    .end local v2    # "count":I
    :cond_3e
    :goto_3e
    return v1
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .registers 10
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .line 2458
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2459
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_4b

    .line 2464
    :cond_c
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2465
    .local v2, "after":I
    if-eq v2, v1, :cond_13

    .line 2466
    return v2

    .line 2470
    :cond_13
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 2471
    .local v3, "count":I
    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2472
    if-eqz p3, :cond_35

    .line 2473
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2474
    :goto_27
    if-le p2, p1, :cond_32

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_32

    .line 2475
    add-int/lit8 p2, p2, -0x1

    goto :goto_27

    .line 2477
    :cond_32
    if-gt p2, p1, :cond_4a

    .line 2478
    return v1

    .line 2481
    :cond_35
    add-int/lit8 v4, p2, 0x1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2482
    :goto_3c
    if-ge p2, p1, :cond_47

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_47

    .line 2483
    add-int/lit8 p2, p2, 0x1

    goto :goto_3c

    .line 2485
    :cond_47
    if-lt p2, p1, :cond_4a

    .line 2486
    return v1

    .line 2490
    :cond_4a
    return p2

    .line 2460
    .end local v2    # "after":I
    .end local v3    # "count":I
    :cond_4b
    :goto_4b
    return v1
.end method

.method final measureHeightOfChildren(IIIII)I
    .registers 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .line 1436
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget-object v3, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1437
    .local v3, "adapter":Landroid/widget/ListAdapter;
    if-nez v3, :cond_14

    .line 1438
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    return v4

    .line 1442
    :cond_14
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 1443
    .local v4, "returnedHeight":I
    iget v5, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1446
    .local v5, "dividerHeight":I
    const/4 v6, 0x0

    .line 1451
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v7, -0x1

    move/from16 v8, p3

    if-ne v8, v7, :cond_2c

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_2d

    :cond_2c
    move v9, v8

    :goto_2d
    move v8, v9

    .line 1452
    .end local p3    # "endPosition":I
    .local v8, "endPosition":I
    iget-object v9, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1453
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v10

    .line 1454
    .local v10, "recyle":Z
    iget-object v11, v0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1456
    .local v11, "isScrap":[Z
    move/from16 v12, p2

    .local v12, "i":I
    :goto_38
    if-gt v12, v8, :cond_74

    .line 1457
    invoke-virtual {v0, v12, v11}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    .line 1459
    .local v13, "child":Landroid/view/View;
    move/from16 v14, p1

    invoke-direct {v0, v13, v12, v14, v1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1461
    if-lez v12, :cond_46

    .line 1463
    add-int/2addr v4, v5

    .line 1467
    :cond_46
    if-eqz v10, :cond_59

    .line 1468
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    iget v15, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1467
    invoke-virtual {v9, v15}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v15

    if-eqz v15, :cond_59

    .line 1469
    invoke-virtual {v9, v13, v7}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1472
    :cond_59
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v4, v15

    .line 1474
    if-lt v4, v1, :cond_6c

    .line 1480
    if-ltz v2, :cond_6a

    if-le v12, v2, :cond_6a

    if-lez v6, :cond_6a

    if-eq v4, v1, :cond_6a

    .line 1481
    move v7, v6

    goto :goto_6b

    .line 1482
    :cond_6a
    move v7, v1

    .line 1477
    :goto_6b
    return v7

    .line 1485
    :cond_6c
    if-ltz v2, :cond_71

    if-lt v12, v2, :cond_71

    .line 1486
    move v6, v4

    .line 1456
    :cond_71
    add-int/lit8 v12, v12, 0x1

    goto :goto_38

    .line 1492
    .end local v13    # "child":Landroid/view/View;
    :cond_74
    move/from16 v14, p1

    return v4
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1289
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_a

    .line 1290
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1291
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1293
    :cond_a
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 1294
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 4171
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 4173
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 4174
    .local v0, "count":I
    if-lez v0, :cond_19

    .line 4175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 4176
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 4175
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4178
    .end local v1    # "i":I
    :cond_16
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 4180
    :cond_19
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 14
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 4105
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4107
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4108
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    .line 4109
    .local v1, "closetChildIndex":I
    const/4 v2, 0x0

    .line 4110
    .local v2, "closestChildTop":I
    if-eqz v0, :cond_57

    if-eqz p1, :cond_57

    if-eqz p3, :cond_57

    .line 4111
    iget v3, p0, Landroid/widget/ListView;->mScrollX:I

    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 4115
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_27

    .line 4116
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 4117
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 4122
    :cond_27
    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 4123
    .local v3, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 4124
    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 4125
    .local v5, "childCount":I
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 4127
    .local v6, "firstPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_33
    if-ge v7, v5, :cond_57

    .line 4129
    add-int v8, v6, v7

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_3e

    .line 4130
    goto :goto_54

    .line 4133
    :cond_3e
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4134
    .local v8, "other":Landroid/view/View;
    invoke-virtual {v8, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4135
    invoke-virtual {p0, v8, v3}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4136
    invoke-static {p3, v3, p2}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v9

    .line 4138
    .local v9, "distance":I
    if-ge v9, v4, :cond_54

    .line 4139
    move v4, v9

    .line 4140
    move v1, v7

    .line 4141
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 4127
    .end local v8    # "other":Landroid/view/View;
    .end local v9    # "distance":I
    :cond_54
    :goto_54
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 4146
    .end local v3    # "otherRect":Landroid/graphics/Rect;
    .end local v4    # "minDistance":I
    .end local v5    # "childCount":I
    .end local v6    # "firstPosition":I
    .end local v7    # "i":I
    :cond_57
    if-ltz v1, :cond_60

    .line 4147
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_63

    .line 4149
    :cond_60
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 4152
    :goto_63
    if-eqz p1, :cond_71

    iget-object v3, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v3, :cond_71

    .line 4153
    new-instance v3, Landroid/widget/ListView$2;

    invoke-direct {v3, p0}, Landroid/widget/ListView$2;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 4160
    :cond_71
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4481
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4483
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 4484
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v0, :cond_12

    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    move v6, v1

    .line 4485
    .local v6, "isHeading":Z
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    .line 4486
    .local v1, "isSelected":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v2, p2

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    .line 4488
    .local v2, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 4489
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4442
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4444
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 4445
    .local v0, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    move-result v1

    .line 4446
    .local v1, "selectionMode":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    .line 4448
    .local v2, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4450
    if-lez v0, :cond_1b

    .line 4451
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4453
    :cond_1b
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1692
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 1693
    :cond_c
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->isSweepAnimatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    .line 1694
    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemSweepListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_21

    return v1

    .line 1696
    :cond_21
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2531
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2536
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2541
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1317
    move-object v6, p0

    move/from16 v7, p1

    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1319
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1320
    .local v8, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1321
    .local v9, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1322
    .local v0, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1324
    .local v1, "heightSize":I
    const/4 v2, 0x0

    .line 1325
    .local v2, "childWidth":I
    const/4 v3, 0x0

    .line 1326
    .local v3, "childHeight":I
    const/4 v4, 0x0

    .line 1328
    .local v4, "childState":I
    iget-object v5, v6, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v5, :cond_20

    move v5, v10

    goto :goto_26

    :cond_20
    iget-object v5, v6, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    :goto_26
    iput v5, v6, Landroid/widget/ListView;->mItemCount:I

    .line 1329
    iget v5, v6, Landroid/widget/ListView;->mItemCount:I

    if-lez v5, :cond_67

    if-eqz v8, :cond_30

    if-nez v9, :cond_67

    .line 1331
    :cond_30
    iget-object v5, v6, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v10, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v5

    .line 1333
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_67

    .line 1336
    invoke-direct {p0, v5, v10, v7, v1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1338
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1339
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1340
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    invoke-static {v4, v10}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v4

    .line 1342
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v10

    if-eqz v10, :cond_67

    iget-object v10, v6, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1343
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/AbsListView$LayoutParams;

    iget v11, v11, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1342
    invoke-virtual {v10, v11}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 1344
    iget-object v10, v6, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v11, -0x1

    invoke-virtual {v10, v5, v11}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1349
    .end local v5    # "child":Landroid/view/View;
    :cond_67
    move v10, v2

    move v11, v3

    move v12, v4

    .end local v2    # "childWidth":I
    .end local v3    # "childHeight":I
    .end local v4    # "childState":I
    .local v10, "childWidth":I
    .local v11, "childHeight":I
    .local v12, "childState":I
    if-nez v8, :cond_7d

    .line 1350
    iget-object v2, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, v10

    .line 1351
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v2, v3

    move v13, v2

    .end local v0    # "widthSize":I
    .local v2, "widthSize":I
    goto :goto_82

    .line 1353
    .end local v2    # "widthSize":I
    .restart local v0    # "widthSize":I
    :cond_7d
    const/high16 v2, -0x1000000

    and-int/2addr v2, v12

    or-int/2addr v2, v0

    move v13, v2

    .line 1356
    .end local v0    # "widthSize":I
    .local v13, "widthSize":I
    :goto_82
    if-nez v9, :cond_98

    .line 1357
    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    add-int/2addr v0, v11

    .line 1358
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v1, v0, v2

    move v14, v1

    goto :goto_99

    .line 1356
    :cond_98
    move v14, v1

    .line 1361
    .end local v1    # "heightSize":I
    .local v14, "heightSize":I
    :goto_99
    const/high16 v0, -0x80000000

    if-ne v9, v0, :cond_a8

    .line 1363
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v1, p1

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v14

    .line 1366
    :cond_a8
    invoke-virtual {p0, v13, v14}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1368
    iput v7, v6, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1369
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1298
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3c

    .line 1299
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1300
    .local v0, "focusedChild":Landroid/view/View;
    if-eqz v0, :cond_3c

    .line 1301
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1302
    .local v1, "childPosition":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1303
    .local v2, "childBottom":I
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v3, p2, v3

    sub-int v3, v2, v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1304
    .local v3, "offset":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1305
    .local v4, "top":I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_33

    .line 1306
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$FocusSelector-IA;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1308
    :cond_33
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1311
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "childPosition":I
    .end local v2    # "childBottom":I
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_3c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1312
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1710
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 1711
    :cond_c
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->isSweepAnimatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    .line 1712
    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemSweepListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_21

    return v1

    .line 1714
    :cond_21
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method pageScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2766
    const/16 v0, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_14

    .line 2767
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2768
    .local v0, "nextPage":I
    const/4 v3, 0x0

    .local v3, "down":Z
    goto :goto_28

    .line 2769
    .end local v0    # "nextPage":I
    .end local v3    # "down":Z
    :cond_14
    const/16 v0, 0x82

    if-ne p1, v0, :cond_6a

    .line 2770
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v0, v2

    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2771
    .restart local v0    # "nextPage":I
    const/4 v3, 0x1

    .line 2776
    .restart local v3    # "down":Z
    :goto_28
    if-ltz v0, :cond_69

    .line 2777
    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v4, v0, v3}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v4

    .line 2778
    .local v4, "position":I
    if-ltz v4, :cond_69

    .line 2779
    const/4 v1, 0x4

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2780
    iget v1, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2782
    if-eqz v3, :cond_4c

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    sub-int/2addr v1, v5

    if-le v4, v1, :cond_4c

    .line 2783
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2786
    :cond_4c
    if-nez v3, :cond_56

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_56

    .line 2787
    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2790
    :cond_56
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2792
    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    .line 2794
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2795
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_68

    .line 2796
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2799
    :cond_68
    return v2

    .line 2803
    .end local v4    # "position":I
    :cond_69
    return v1

    .line 2773
    .end local v0    # "nextPage":I
    .end local v3    # "down":Z
    :cond_6a
    return v1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 4458
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 4459
    return v1

    .line 4462
    :cond_8
    packed-switch p1, :pswitch_data_24

    goto :goto_22

    .line 4464
    :pswitch_c
    const-string v0, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4465
    .local v0, "row":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4466
    .local v2, "position":I
    if-ltz v0, :cond_22

    .line 4469
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 4470
    return v1

    .line 4475
    .end local v0    # "row":I
    .end local v2    # "position":I
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0

    :pswitch_data_24
    .packed-switch 0x1020037
        :pswitch_c
    .end packed-switch
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .line 4524
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->isSwiping()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4525
    const/4 v0, 0x0

    return v0

    .line 4529
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method protected recycleOnMeasure()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .line 1404
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 540
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 543
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 544
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 546
    :cond_20
    const/4 v0, 0x1

    .line 548
    :cond_21
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 549
    return v0

    .line 551
    .end local v0    # "result":Z
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 439
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 442
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 443
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 445
    :cond_20
    const/4 v0, 0x1

    .line 447
    :cond_21
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 448
    return v0

    .line 450
    .end local v0    # "result":Z
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public removePendingCallbacks()V
    .registers 1

    .line 4535
    invoke-super {p0}, Landroid/widget/AbsListView;->removePendingCallbacks()V

    .line 4536
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 705
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 708
    .local v0, "rectTopWithinChild":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 709
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 711
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    .line 712
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v2

    .line 713
    .local v2, "listUnfadedTop":I
    add-int v3, v2, v1

    .line 714
    .local v3, "listUnfadedBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 716
    .local v4, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 718
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v5, :cond_34

    if-le v0, v4, :cond_35

    .line 719
    :cond_34
    add-int/2addr v2, v4

    .line 723
    :cond_35
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 724
    .local v5, "childCount":I
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 726
    .local v6, "bottomOfBottomChild":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_58

    .line 728
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_57

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v6, v4

    if-ge v7, v9, :cond_58

    .line 730
    :cond_57
    sub-int/2addr v3, v4

    .line 734
    :cond_58
    const/4 v7, 0x0

    .line 736
    .local v7, "scrollYDelta":I
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v10, 0x0

    if-le v9, v3, :cond_78

    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-le v9, v2, :cond_78

    .line 741
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v1, :cond_6d

    .line 743
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v2

    add-int/2addr v7, v9

    goto :goto_71

    .line 746
    :cond_6d
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    add-int/2addr v7, v9

    .line 750
    :goto_71
    sub-int v9, v6, v3

    .line 751
    .local v9, "distanceToBottom":I
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 752
    .end local v9    # "distanceToBottom":I
    :cond_77
    goto :goto_9f

    :cond_78
    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-ge v9, v2, :cond_77

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v3, :cond_77

    .line 757
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v1, :cond_8c

    .line 759
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v3, v9

    sub-int/2addr v7, v9

    goto :goto_91

    .line 762
    :cond_8c
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v9

    sub-int/2addr v7, v9

    .line 766
    :goto_91
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    .line 767
    .local v9, "top":I
    sub-int v11, v9, v2

    .line 768
    .local v11, "deltaToTop":I
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 771
    .end local v9    # "top":I
    .end local v11    # "deltaToTop":I
    :goto_9f
    if-eqz v7, :cond_a2

    goto :goto_a3

    :cond_a2
    move v8, v10

    .line 772
    .local v8, "scroll":Z
    :goto_a3
    if-eqz v8, :cond_b6

    .line 773
    neg-int v9, v7

    invoke-direct {p0, v9}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 774
    const/4 v9, -0x1

    invoke-virtual {p0, v9, p1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 775
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 776
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 778
    :cond_b6
    return v8
.end method

.method resetList()V
    .registers 2

    .line 657
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 658
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 660
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 662
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 663
    return-void
.end method

.method public semEnableSelectZeroOnLastFocusTab(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4698
    iput-boolean p1, p0, Landroid/widget/ListView;->mSelectZeroPositionOnKeyTab:Z

    .line 4699
    return-void
.end method

.method public semHandleGenericMotionEvent(I)Z
    .registers 3
    .param p1, "direction"    # I

    .line 4781
    invoke-direct {p0, p1}, Landroid/widget/ListView;->pointerScroll(I)Z

    move-result v0

    return v0
.end method

.method public semRequestFocus()Z
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4706
    invoke-super {p0}, Landroid/widget/AbsListView;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public semSetAppWidgetEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4561
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetEnabled(Z)V

    .line 4562
    return-void
.end method

.method public semSetAppWidgetGetCurrentPosition(Ljava/lang/String;)V
    .registers 2
    .param p1, "component"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4577
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetGetCurrentPosition(Ljava/lang/String;)V

    .line 4578
    return-void
.end method

.method public semSetAppWidgetGetFirstPosition(Ljava/lang/String;)V
    .registers 2
    .param p1, "component"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4594
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetGetFirstPosition(Ljava/lang/String;)V

    .line 4595
    return-void
.end method

.method public semSetAppWidgetIndicator(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4605
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetIndicator(Z)V

    .line 4606
    return-void
.end method

.method public semSetAppWidgetIndicatorBottomPadding(I)V
    .registers 2
    .param p1, "bottomPadding"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4615
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetIndicatorBottomPadding(I)V

    .line 4616
    return-void
.end method

.method public semSetAppWidgetIndicatorMarginHorizontal(I)V
    .registers 2
    .param p1, "marginHorizontal"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4625
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetIndicatorMarginHorizontal(I)V

    .line 4626
    return-void
.end method

.method public semSetAppWidgetIndicatorWhere(I)V
    .registers 2
    .param p1, "where"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4635
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetIndicatorWhere(I)V

    .line 4636
    return-void
.end method

.method public semSetAppWidgetSnapScroll(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4549
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetSnapScroll(Z)V

    .line 4550
    return-void
.end method

.method public semSetFastScrollEnabledForAppWidget(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4669
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledForAppWidget(Z)V

    .line 4670
    return-void
.end method

.method public semSetGoToTopEnabledForAppWidget(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4646
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetGoToTopEnabledForAppWidget(Z)V

    .line 4647
    return-void
.end method

.method public semSetGoToTopOffsetForAppWidget(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4658
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetGoToTopOffsetForAppWidget(I)V

    .line 4659
    return-void
.end method

.method public semSetScrollBarBottomPadding(I)V
    .registers 2
    .param p1, "scrollBarBottomPadding"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4679
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetScrollBarBottomPadding(I)V

    .line 4680
    return-void
.end method

.method public semSetScrollBarTopPadding(I)V
    .registers 2
    .param p1, "scrollBarTopPadding"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4689
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetScrollBarTopPadding(I)V

    .line 4690
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 155
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 593
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_f

    .line 594
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 597
    :cond_f
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 598
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 600
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    goto :goto_2b

    .line 603
    :cond_28
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_35

    .line 601
    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 606
    :goto_35
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 607
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 610
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 612
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_93

    .line 613
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 614
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    iput v0, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 615
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 616
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 618
    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 619
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 621
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 624
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_81

    .line 625
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    goto :goto_85

    .line 627
    .end local v0    # "position":I
    :cond_81
    invoke-virtual {p0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 629
    .restart local v0    # "position":I
    :goto_85
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 630
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 632
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_92

    .line 634
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 636
    .end local v0    # "position":I
    :cond_92
    goto :goto_9b

    .line 637
    :cond_93
    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 638
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 640
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 643
    :goto_9b
    invoke-virtual {p0}, Landroid/widget/ListView;->semGetRoundedCorners()I

    move-result v0

    if-eqz v0, :cond_a5

    .line 644
    sget-boolean v0, Landroid/widget/ListView;->sIsSamsungBasicInteraction:Z

    iput-boolean v0, p0, Landroid/widget/ListView;->mSemEnableFillOut:Z

    .line 647
    :cond_a5
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 648
    return-void
.end method

.method public setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)V
    .registers 2
    .param p1, "animator"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 236
    iput-object p1, p0, Landroid/widget/ListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 237
    return-void
.end method

.method public setCacheColorHint(I)V
    .registers 4
    .param p1, "color"    # I

    .line 3691
    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 3692
    .local v0, "opaque":Z
    :goto_9
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3693
    if-eqz v0, :cond_1d

    .line 3694
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_18

    .line 3695
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3697
    :cond_18
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3699
    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3700
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 3985
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 3986
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_c

    .line 3988
    :cond_a
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3990
    :goto_c
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3991
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    :cond_17
    const/4 v0, 0x1

    :cond_18
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3992
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3993
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3994
    return-void
.end method

.method public setDividerHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 4011
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 4012
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 4013
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 4014
    return-void
.end method

.method public setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V
    .registers 4
    .param p1, "animator"    # Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 241
    iput-object p1, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setChildrenDrawingOrderEnabled(Z)V

    .line 243
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    new-instance v1, Landroid/widget/ListView$1;

    invoke-direct {v1, p0}, Landroid/widget/ListView$1;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V

    .line 249
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .registers 2
    .param p1, "footerDividersEnabled"    # Z

    .line 4050
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 4051
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 4052
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .registers 2
    .param p1, "headerDividersEnabled"    # Z

    .line 4026
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 4027
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 4028
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .registers 3
    .param p1, "itemsCanFocus"    # Z

    .line 3654
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3655
    if-nez p1, :cond_9

    .line 3656
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3658
    :cond_9
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .line 4092
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4093
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 4094
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .line 4071
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4072
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_9

    .line 4073
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 4075
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 575
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 576
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2372
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2373
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .registers 3

    .line 2498
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 2499
    .local v0, "count":I
    if-lez v0, :cond_a

    .line 2500
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2501
    return-void

    .line 2504
    :cond_a
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_12

    .line 2505
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_17

    .line 2507
    :cond_12
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2508
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2511
    :goto_17
    return-void
.end method

.method setSelectionInt(I)V
    .registers 5
    .param p1, "position"    # I

    .line 2383
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2384
    const/4 v0, 0x0

    .line 2386
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2388
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_13

    .line 2389
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_e

    .line 2390
    const/4 v0, 0x1

    goto :goto_13

    .line 2391
    :cond_e
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_13

    .line 2392
    const/4 v0, 0x1

    .line 2396
    :cond_13
    :goto_13
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1c

    .line 2397
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2400
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2402
    if-eqz v0, :cond_24

    .line 2403
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2405
    :cond_24
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1067
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 1068
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1057
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 1058
    return-void
.end method

.method trackMotionScroll(II)Z
    .registers 5
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .line 2146
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 2147
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 2148
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 2149
    return v0
.end method

.method protected wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .registers 5
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")",
            "Landroid/widget/HeaderViewListAdapter;"
        }
    .end annotation

    .line 4504
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    new-instance v0, Landroid/widget/HeaderViewListAdapter;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method protected wrapHeaderListAdapterInternal()V
    .registers 4

    .line 4509
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4510
    return-void
.end method
