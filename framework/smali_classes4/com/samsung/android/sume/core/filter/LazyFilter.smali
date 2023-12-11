.class public Lcom/samsung/android/sume/core/filter/LazyFilter;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "LazyFilter.java"


# instance fields
.field private prepared:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .registers 3
    .param p1, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/filter/LazyFilter;->prepared:Z

    .line 15
    return-void
.end method


# virtual methods
.method public prepare()V
    .registers 1

    .line 18
    return-void
.end method

.method public run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .registers 4
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    .line 23
    iget-boolean v0, p0, Lcom/samsung/android/sume/core/filter/LazyFilter;->prepared:Z

    if-nez v0, :cond_a

    .line 24
    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->prepare()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/filter/LazyFilter;->prepared:Z

    .line 27
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0
.end method
