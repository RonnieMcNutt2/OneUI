.class public final synthetic Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/message/MessageSubscriber;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/message/MessageSubscriber;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/message/MessageSubscriber;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->lambda$removeMessageSubscriber$3(Lcom/samsung/android/sume/core/message/MessageSubscriber;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method
