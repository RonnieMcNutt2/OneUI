.class public final synthetic Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/functional/ModelSelector$Item;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    invoke-static {v0}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->lambda$loadModel$2(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;)Ljava/lang/IllegalStateException;

    move-result-object v0

    return-object v0
.end method
