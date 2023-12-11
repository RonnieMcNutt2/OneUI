.class public abstract Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;
.super Ljava/lang/Object;
.source "MediaFilterGroupBase.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilterGroup;


# instance fields
.field protected channelSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)",
            "Lcom/samsung/android/sume/core/filter/MediaFilterGroup;"
        }
    .end annotation

    .line 23
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    return-object p0
.end method

.method public prepare()V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 45
    return-void
.end method

.method public release()V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    return-void
.end method

.method public varargs removeFilter([Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .registers 4
    .param p1, "filters"    # [Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public replaceFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .registers 5
    .param p1, "orgFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p2, "newFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 35
    .local v0, "idx":I
    if-gez v0, :cond_a

    .line 36
    const/4 v1, 0x0

    return v1

    .line 38
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/4 v1, 0x1

    return v1
.end method

.method public stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
