.class public final synthetic Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/BiBufferProcessor;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/filter/NNFWFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/filter/NNFWFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/filter/NNFWFilter;

    return-void
.end method


# virtual methods
.method public final process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/filter/NNFWFilter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/filter/NNFWFilter;->runAdapter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/types/Status;

    return-void
.end method
