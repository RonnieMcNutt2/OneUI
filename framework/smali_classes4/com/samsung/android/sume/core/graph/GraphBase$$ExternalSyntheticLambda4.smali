.class public final synthetic Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-void
.end method


# virtual methods
.method public final accept(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/graph/GraphBase;->lambda$publishEvent$4(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Landroid/os/Bundle;)V

    return-void
.end method
