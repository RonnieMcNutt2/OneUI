.class public final synthetic Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$Predictor;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/types/nn/NNFW;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/types/nn/NNFW;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/sume/core/types/nn/NNFW;

    return-void
.end method


# virtual methods
.method public final predicate(Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/sume/core/types/nn/NNFW;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->lambda$applyGraphOption$6(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/filter/MediaFilter;)Z

    move-result p1

    return p1
.end method
