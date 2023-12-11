.class public final Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews$RemoteCollectionItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mIds:Landroid/util/LongArray;

.field private mViewTypeCount:I

.field private final mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7544
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mIds:Landroid/util/LongArray;

    .line 7545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .registers 6
    .param p1, "id"    # J
    .param p3, "view"    # Landroid/widget/RemoteViews;

    .line 7560
    if-eqz p3, :cond_1b

    .line 7561
    invoke-static {p3}, Landroid/widget/RemoteViews;->-$$Nest$mhasMultipleLayouts(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 7566
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongArray;->add(J)V

    .line 7567
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7568
    return-object p0

    .line 7562
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RemoteViews used in a RemoteCollectionItems cannot specify separate layouts for orientations or sizes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7560
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public build()Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 7

    .line 7602
    iget v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1f

    .line 7605
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda0;-><init>()V

    .line 7606
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 7607
    invoke-interface {v0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v0

    .line 7608
    invoke-interface {v0}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    .line 7610
    :cond_1f
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems;

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mIds:Landroid/util/LongArray;

    .line 7611
    invoke-virtual {v2}, Landroid/util/LongArray;->toArray()[J

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/widget/RemoteViews;

    .line 7612
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/widget/RemoteViews;

    iget-boolean v4, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mHasStableIds:Z

    iget v5, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    .line 7614
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>([J[Landroid/widget/RemoteViews;ZI)V

    .line 7610
    return-object v0
.end method

.method public setHasStableIds(Z)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .registers 2
    .param p1, "hasStableIds"    # Z

    .line 7578
    iput-boolean p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mHasStableIds:Z

    .line 7579
    return-object p0
.end method

.method public setViewTypeCount(I)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .registers 2
    .param p1, "viewTypeCount"    # I

    .line 7595
    iput p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    .line 7596
    return-object p0
.end method
