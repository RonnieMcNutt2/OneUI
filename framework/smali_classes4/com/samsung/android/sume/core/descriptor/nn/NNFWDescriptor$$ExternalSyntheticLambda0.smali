.class public final synthetic Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/types/LoadType;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/types/LoadType;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/types/LoadType;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/types/LoadType;

    invoke-static {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->lambda$new$0(Lcom/samsung/android/sume/core/types/LoadType;)Lcom/samsung/android/sume/core/types/LoadType;

    move-result-object v0

    return-object v0
.end method
