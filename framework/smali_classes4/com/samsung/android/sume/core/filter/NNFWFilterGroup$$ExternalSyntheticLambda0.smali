.class public final synthetic Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/ModelSelector;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;

    return-void
.end method


# virtual methods
.method public final select(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->lambda$new$0$com-samsung-android-sume-core-filter-NNFWFilterGroup(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    move-result-object p1

    return-object p1
.end method
