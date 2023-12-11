.class public Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;
.super Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;
.source "SemAddDeleteHorizontalListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDeletePending:Z

.field private mHorizontalListView:Landroid/widget/SemHorizontalListView;

.field private mInsertPending:Z

.field mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOldViewCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetChildMaxWidth(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getChildMaxWidth()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 75
    const-string v0, "SemAddDeleteHListAnimator"

    sput-object v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/SemHorizontalListView;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/SemHorizontalListView;

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;-><init>()V

    .line 79
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertPending:Z

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeletePending:Z

    .line 92
    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    .line 93
    invoke-virtual {p2, p0}, Landroid/widget/SemHorizontalListView;->setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V

    .line 94
    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHostView:Landroid/view/View;

    .line 95
    return-void
.end method

.method private capturePreAnimationViewCoordinates()V
    .registers 29

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    .line 387
    .local v1, "listview":Landroid/widget/SemHorizontalListView;
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 388
    .local v2, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    .line 389
    .local v3, "childCountBefore":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v4

    .line 390
    .local v4, "firstVisiblePosBefore":I
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 391
    .local v5, "adapterCount":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v6

    .line 392
    .local v6, "headerViewsCount":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v7

    .line 393
    .local v7, "footerViewsCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1d
    if-ge v8, v3, :cond_e1

    .line 394
    invoke-virtual {v1, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 395
    .local v9, "child":Landroid/view/View;
    add-int v15, v8, v4

    .line 396
    .local v15, "position":I
    invoke-interface {v2, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 397
    .local v10, "itemId":J
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v12

    if-eqz v12, :cond_b9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v12

    if-nez v12, :cond_3d

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 v27, v15

    goto/16 :goto_bf

    .line 401
    :cond_3d
    invoke-static {v9}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v23

    .line 403
    .local v23, "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_92

    .line 404
    if-ge v15, v6, :cond_4f

    .line 405
    add-int/lit8 v12, v15, 0x1

    int-to-long v10, v12

    move-wide/from16 v17, v10

    goto :goto_5f

    .line 406
    :cond_4f
    sub-int v12, v5, v7

    if-lt v15, v12, :cond_5d

    .line 407
    add-int v12, v15, v7

    sub-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    .line 408
    .local v12, "footerId":I
    neg-int v13, v12

    int-to-long v10, v13

    move-wide/from16 v17, v10

    goto :goto_5f

    .line 406
    .end local v12    # "footerId":I
    :cond_5d
    move-wide/from16 v17, v10

    .line 410
    .end local v10    # "itemId":J
    .local v17, "itemId":J
    :goto_5f
    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v12, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v16

    const/16 v19, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v20

    const/16 v21, 0x0

    move-object v10, v12

    move-object/from16 v11, v23

    move-object/from16 v24, v12

    move v12, v15

    move-object/from16 v25, v1

    move-object v1, v13

    .end local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .local v25, "listview":Landroid/widget/SemHorizontalListView;
    move/from16 v13, v16

    move-object/from16 v26, v2

    move-object v2, v14

    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .local v26, "adapter":Landroid/widget/ListAdapter;
    move/from16 v14, v19

    move/from16 v27, v15

    .end local v15    # "position":I
    .local v27, "position":I
    move/from16 v15, v20

    move/from16 v16, v21

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v10, v24

    invoke-virtual {v2, v1, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d9

    .line 412
    .end local v17    # "itemId":J
    .end local v25    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v26    # "adapter":Landroid/widget/ListAdapter;
    .end local v27    # "position":I
    .restart local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v10    # "itemId":J
    .restart local v15    # "position":I
    :cond_92
    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 v27, v15

    .end local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v15    # "position":I
    .restart local v25    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v26    # "adapter":Landroid/widget/ListAdapter;
    .restart local v27    # "position":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v12, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    add-int v18, v8, v4

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v16, v12

    move-object/from16 v17, v23

    invoke-direct/range {v16 .. v22}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v1, v2, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d9

    .line 397
    .end local v23    # "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    .end local v25    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v26    # "adapter":Landroid/widget/ListAdapter;
    .end local v27    # "position":I
    .restart local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v15    # "position":I
    :cond_b9
    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 v27, v15

    .line 398
    .end local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v15    # "position":I
    .restart local v25    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v26    # "adapter":Landroid/widget/ListAdapter;
    .restart local v27    # "position":I
    :goto_bf
    sget-object v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setDelete() child\'s one of dimensions is 0, i = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    nop

    .line 393
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "itemId":J
    .end local v27    # "position":I
    :goto_d9
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    goto/16 :goto_1d

    .line 415
    .end local v8    # "i":I
    .end local v25    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v26    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_e1
    return-void
.end method

.method private ensureAdapterAndListener()V
    .registers 4

    .line 778
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 779
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_23

    .line 783
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 787
    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    if-eqz v1, :cond_13

    .line 790
    return-void

    .line 788
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OnAddDeleteListener need to be supplied before performing add/delete operations"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 784
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "TwAddDeleteListAnimator requires an adapter that has stable ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 780
    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter need to be set before performing add/delete operations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getChildMaxWidth()I
    .registers 8

    .line 420
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 421
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 422
    .local v1, "adapterCount":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    .line 423
    .local v2, "firstVisiblePos":I
    const/4 v3, 0x0

    .line 424
    .local v3, "childWidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v0, :cond_3f

    .line 425
    add-int v5, v4, v2

    .line 426
    .local v5, "pos":I
    iget-object v6, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v6

    if-lt v5, v6, :cond_3c

    iget-object v6, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    .line 427
    invoke-virtual {v6}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v6

    sub-int v6, v1, v6

    if-lt v5, v6, :cond_2f

    .line 428
    goto :goto_3c

    .line 430
    :cond_2f
    iget-object v6, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v6, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 431
    .local v6, "width":I
    if-le v6, v3, :cond_3c

    .line 432
    move v3, v6

    .line 424
    .end local v5    # "pos":I
    .end local v6    # "width":I
    :cond_3c
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 435
    .end local v4    # "i":I
    :cond_3f
    return v3
.end method

.method private prepareDelete(Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v9, p0

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeletePending:Z

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v10, p1

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    .line 177
    .local v11, "deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->ensureAdapterAndListener()V

    .line 178
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 179
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 181
    .local v8, "deletedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v12

    .line 182
    .local v12, "childCountBefore":I
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v13

    .line 183
    .local v13, "firstVisiblePosBefore":I
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v14

    .line 185
    .local v14, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 186
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 187
    .local v0, "defaultHeight":I
    iget-object v1, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    move v15, v0

    move/from16 v16, v1

    .local v1, "defaultTop":I
    goto :goto_60

    .line 189
    .end local v0    # "defaultHeight":I
    .end local v1    # "defaultTop":I
    :cond_56
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeight()I

    move-result v0

    .line 190
    .restart local v0    # "defaultHeight":I
    const/4 v1, 0x0

    move v15, v0

    move/from16 v16, v1

    .line 193
    .end local v0    # "defaultHeight":I
    .local v15, "defaultHeight":I
    .local v16, "defaultTop":I
    :goto_60
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->capturePreAnimationViewCoordinates()V

    .line 195
    new-instance v7, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, v16

    move v4, v15

    move v5, v13

    move v6, v12

    move-object v10, v7

    move-object v7, v11

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;IIIILjava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v10, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    .line 383
    return-void
.end method

.method private prepareInsert(Ljava/util/ArrayList;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 507
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v6, p0

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertPending:Z

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->ensureAdapterAndListener()V

    .line 510
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v7, p1

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v1

    .line 511
    .local v8, "insertedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 512
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 513
    .local v5, "insertedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v9, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    .line 515
    .local v9, "listview":Landroid/widget/SemHorizontalListView;
    invoke-virtual {v9}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    .line 516
    .local v10, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v9}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v11

    .line 517
    .local v11, "childCount":I
    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    .line 518
    .local v12, "adapterCount":I
    invoke-virtual {v9}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v13

    .line 519
    .local v13, "firstVisiblePos":I
    invoke-virtual {v9}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v14

    .line 520
    .local v14, "footerViewsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    if-ge v1, v11, :cond_d7

    .line 521
    add-int v2, v1, v13

    .line 522
    .local v2, "position":I
    invoke-virtual {v9, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 523
    .local v3, "child":Landroid/view/View;
    invoke-interface {v10, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    .line 524
    .local v22, "itemId":J
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_b0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-nez v4, :cond_4d

    move/from16 v24, v11

    move/from16 v25, v12

    goto/16 :goto_b4

    .line 528
    :cond_4d
    invoke-static {v3}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 530
    .local v4, "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    const-wide/16 v15, -0x1

    cmp-long v15, v22, v15

    if-nez v15, :cond_8c

    .line 535
    sub-int v15, v12, v14

    if-lt v2, v15, :cond_87

    .line 536
    add-int v15, v2, v14

    sub-int/2addr v15, v12

    add-int/2addr v15, v0

    .line 537
    .local v15, "footerId":I
    iget-object v0, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move/from16 v24, v11

    move/from16 v25, v12

    .end local v11    # "childCount":I
    .end local v12    # "adapterCount":I
    .local v24, "childCount":I
    .local v25, "adapterCount":I
    int-to-long v11, v15

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v18

    const/16 v19, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v26, v15

    .end local v15    # "footerId":I
    .local v26, "footerId":I
    move-object v15, v12

    move-object/from16 v16, v4

    move/from16 v17, v2

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v0, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .end local v26    # "footerId":I
    goto :goto_ce

    .line 535
    .end local v24    # "childCount":I
    .end local v25    # "adapterCount":I
    .restart local v11    # "childCount":I
    .restart local v12    # "adapterCount":I
    :cond_87
    move/from16 v24, v11

    move/from16 v25, v12

    .end local v11    # "childCount":I
    .end local v12    # "adapterCount":I
    .restart local v24    # "childCount":I
    .restart local v25    # "adapterCount":I
    goto :goto_ce

    .line 540
    .end local v24    # "childCount":I
    .end local v25    # "adapterCount":I
    .restart local v11    # "childCount":I
    .restart local v12    # "adapterCount":I
    :cond_8c
    move/from16 v24, v11

    move/from16 v25, v12

    .end local v11    # "childCount":I
    .end local v12    # "adapterCount":I
    .restart local v24    # "childCount":I
    .restart local v25    # "adapterCount":I
    iget-object v0, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v18

    const/16 v19, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v20

    const/16 v21, 0x0

    move-object v15, v12

    move-object/from16 v16, v4

    move/from16 v17, v2

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v0, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ce

    .line 524
    .end local v4    # "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    .end local v24    # "childCount":I
    .end local v25    # "adapterCount":I
    .restart local v11    # "childCount":I
    .restart local v12    # "adapterCount":I
    :cond_b0
    move/from16 v24, v11

    move/from16 v25, v12

    .line 525
    .end local v11    # "childCount":I
    .end local v12    # "adapterCount":I
    .restart local v24    # "childCount":I
    .restart local v25    # "adapterCount":I
    :goto_b4
    sget-object v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setInsert() child\'s one of dimensions is 0, i = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    nop

    .line 520
    .end local v2    # "position":I
    .end local v3    # "child":Landroid/view/View;
    .end local v22    # "itemId":J
    :goto_ce
    add-int/lit8 v1, v1, 0x1

    move/from16 v11, v24

    move/from16 v12, v25

    const/4 v0, 0x1

    goto/16 :goto_2f

    .end local v24    # "childCount":I
    .end local v25    # "adapterCount":I
    .restart local v11    # "childCount":I
    .restart local v12    # "adapterCount":I
    :cond_d7
    move/from16 v24, v11

    move/from16 v25, v12

    .line 544
    .end local v1    # "i":I
    .end local v11    # "childCount":I
    .end local v12    # "adapterCount":I
    .restart local v24    # "childCount":I
    .restart local v25    # "adapterCount":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 545
    .local v11, "upcomingViewsStartCoords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_e2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10e

    .line 546
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 547
    .local v1, "insertedItemPos":I
    sub-int v2, v1, v0

    .line 548
    .local v2, "itemAtStartPos":I
    sub-int v3, v2, v13

    invoke-virtual {v9, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 550
    .local v3, "refView":Landroid/view/View;
    if-eqz v3, :cond_10b

    .line 551
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .end local v1    # "insertedItemPos":I
    .end local v2    # "itemAtStartPos":I
    .end local v3    # "refView":Landroid/view/View;
    :cond_10b
    add-int/lit8 v0, v0, 0x1

    goto :goto_e2

    .line 555
    .end local v0    # "j":I
    :cond_10e
    new-instance v12, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v12, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    .line 775
    return-void
.end method


# virtual methods
.method public deleteFromAdapterCompleted()V
    .registers 3

    .line 157
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeletePending:Z

    if-eqz v0, :cond_16

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeletePending:Z

    .line 161
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 172
    return-void

    .line 158
    :cond_16
    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public insertIntoAdapterCompleted()V
    .registers 3

    .line 488
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertPending:Z

    if-eqz v0, :cond_16

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertPending:Z

    .line 492
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$3;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 504
    return-void

    .line 489
    :cond_16
    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0
.end method

.method public setDelete(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 118
    return-void

    .line 121
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onDelete()V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->deleteFromAdapterCompleted()V

    .line 126
    return-void
.end method

.method public setDeletePending(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 142
    return-void

    .line 145
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onDelete()V

    .line 148
    return-void
.end method

.method public setInsert(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 448
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 449
    return-void

    .line 452
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    .line 454
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onAdd()V

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->insertIntoAdapterCompleted()V

    .line 457
    return-void
.end method

.method public setInsertPending(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 472
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 473
    return-void

    .line 476
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    .line 478
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onAdd()V

    .line 479
    return-void
.end method

.method public setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;)V
    .registers 2
    .param p1, "onAddDeleteListener"    # Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    .line 104
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    .line 105
    return-void
.end method

.method public bridge synthetic setTransitionDuration(I)V
    .registers 2

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->setTransitionDuration(I)V

    return-void
.end method
