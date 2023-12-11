.class public interface abstract Lcom/samsung/android/sume/core/message/MessageSubscriber;
.super Ljava/lang/Object;
.source "MessageSubscriber.java"


# virtual methods
.method public addMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .registers 2
    .param p1, "messageConsumer"    # Lcom/samsung/android/sume/core/message/MessageConsumer;

    .line 14
    return-void
.end method

.method public abstract bindToMessageChannelRouter(Lcom/samsung/android/sume/core/message/MessageChannelRouter;)V
.end method

.method public abstract getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;
.end method

.method public abstract getSubscribeMessages()[Ljava/lang/Integer;
.end method

.method public abstract onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)V
.end method

.method public removeMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .registers 2
    .param p1, "messageConsumer"    # Lcom/samsung/android/sume/core/message/MessageConsumer;

    .line 15
    return-void
.end method
