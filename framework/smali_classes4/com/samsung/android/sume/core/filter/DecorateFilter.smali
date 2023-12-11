.class public abstract Lcom/samsung/android/sume/core/filter/DecorateFilter;
.super Ljava/lang/Object;
.source "DecorateFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected successor:Lcom/samsung/android/sume/core/filter/MediaFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .registers 2
    .param p1, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 22
    return-void
.end method


# virtual methods
.method public getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosedFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    instance-of v1, v0, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    if-eqz v1, :cond_d

    .line 64
    check-cast v0, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->getEnclosedFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0

    .line 67
    :cond_d
    return-object v0
.end method

.method public getSuccessorFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-object v0
.end method

.method public prepare()V
    .registers 4

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    instance-of v1, v0, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    if-eqz v1, :cond_16

    .line 28
    check-cast v0, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    .line 29
    .local v0, "placeHolder":Lcom/samsung/android/sume/core/functional/PlaceHolder;, "Lcom/samsung/android/sume/core/functional/PlaceHolder<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    invoke-interface {v0}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->reset()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 32
    .local v1, "replacedFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    instance-of v2, v2, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    if-eqz v2, :cond_16

    .line 33
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 35
    .end local v0    # "placeHolder":Lcom/samsung/android/sume/core/functional/PlaceHolder;, "Lcom/samsung/android/sume/core/functional/PlaceHolder<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    .end local v1    # "replacedFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->prepare()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 38
    goto :goto_20

    .line 36
    :catch_1c
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method public release()V
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->release()V

    .line 50
    return-void
.end method

.method public run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .registers 4
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public setSuccessorFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .registers 2
    .param p1, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 73
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 74
    return-void
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

    .line 59
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
