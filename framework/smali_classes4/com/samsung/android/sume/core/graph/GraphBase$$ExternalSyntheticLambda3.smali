.class public final synthetic Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/message/Event;

.field public final synthetic f$1:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/message/Event;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/message/Event;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/message/Event;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sume/core/graph/GraphBase;->lambda$publishEvent$3(Lcom/samsung/android/sume/core/message/Event;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)V

    return-void
.end method
