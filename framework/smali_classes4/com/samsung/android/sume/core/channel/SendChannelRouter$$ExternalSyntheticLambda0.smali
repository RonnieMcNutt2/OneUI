.class public final synthetic Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->lambda$evaluate$4(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
