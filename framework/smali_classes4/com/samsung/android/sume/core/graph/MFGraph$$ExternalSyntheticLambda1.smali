.class public final synthetic Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/graph/MFGraph;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/graph/MFGraph;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/graph/MFGraph;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/graph/MFGraph;

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/MFGraph;->lambda$run$1$com-samsung-android-sume-core-graph-MFGraph(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method
