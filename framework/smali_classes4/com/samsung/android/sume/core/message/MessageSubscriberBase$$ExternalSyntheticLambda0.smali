.class public final synthetic Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/message/MessageConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/MessageConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/MessageConsumer;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->lambda$removeMessageConsumer$3(Lcom/samsung/android/sume/core/message/MessageConsumer;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method
