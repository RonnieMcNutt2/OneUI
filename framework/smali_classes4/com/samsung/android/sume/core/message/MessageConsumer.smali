.class public interface abstract Lcom/samsung/android/sume/core/message/MessageConsumer;
.super Ljava/lang/Object;
.source "MessageConsumer.java"


# virtual methods
.method public getConsumeMessage()[I
    .registers 2

    .line 7
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z
    .registers 3
    .param p1, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 9
    const/4 v0, 0x0

    return v0
.end method
