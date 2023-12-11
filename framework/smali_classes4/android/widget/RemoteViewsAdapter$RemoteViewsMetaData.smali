.class Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsMetaData"
.end annotation


# instance fields
.field count:I

.field hasStableIds:Z

.field loadingTemplate:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

.field private final mTypeIdIndexMap:Landroid/util/SparseIntArray;

.field viewTypeCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    .line 575
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 576
    return-void
.end method


# virtual methods
.method public declared-synchronized getLoadingTemplate(Landroid/content/Context;)Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 613
    :try_start_1
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->loadingTemplate:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    if-nez v0, :cond_d

    .line 614
    new-instance v0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->loadingTemplate:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    .line 616
    .end local p0    # "this":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :cond_d
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->loadingTemplate:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 612
    .end local p1    # "context":Landroid/content/Context;
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMappedViewType(I)I
    .registers 4
    .param p1, "typeId"    # I

    .line 598
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 599
    .local v0, "mappedTypeId":I
    if-ne v0, v1, :cond_16

    .line 601
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 602
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 604
    :cond_16
    return v0
.end method

.method public isViewTypeInRange(I)Z
    .registers 4
    .param p1, "typeId"    # I

    .line 608
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    move-result v0

    .line 609
    .local v0, "mappedType":I
    iget v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    if-ge v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public reset()V
    .registers 2

    .line 588
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 591
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 592
    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->loadingTemplate:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    .line 594
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 595
    return-void
.end method

.method public set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V
    .registers 3
    .param p1, "d"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .line 579
    monitor-enter p1

    .line 580
    :try_start_1
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 581
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 582
    iget-boolean v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 583
    iget-object v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->loadingTemplate:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->loadingTemplate:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    .line 584
    monitor-exit p1

    .line 585
    return-void

    .line 584
    :catchall_13
    move-exception v0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method
