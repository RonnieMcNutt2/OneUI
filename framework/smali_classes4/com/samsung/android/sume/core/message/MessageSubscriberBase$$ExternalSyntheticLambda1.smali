.class public final synthetic Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/message/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/message/Message;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/message/Message;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/message/Message;

    check-cast p1, Lcom/samsung/android/sume/core/message/MessageConsumer;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->lambda$onMessageReceived$0(Lcom/samsung/android/sume/core/message/Message;Lcom/samsung/android/sume/core/message/MessageConsumer;)V

    return-void
.end method
