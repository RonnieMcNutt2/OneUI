.class public final synthetic Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

.field public final synthetic f$1:Landroid/media/MediaExtractor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;Landroid/media/MediaExtractor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;->f$1:Landroid/media/MediaExtractor;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;->f$1:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->lambda$feedExistFramesToBufferChannel$0$com-samsung-android-sume-core-filter-MediaMuxerFilter(Landroid/media/MediaExtractor;I)V

    return-void
.end method
