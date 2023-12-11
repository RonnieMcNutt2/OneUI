.class public interface abstract Lcom/samsung/android/sume/core/message/MessageProducer;
.super Ljava/lang/Object;
.source "MessageProducer.java"


# virtual methods
.method public abstract newMessage(I)Lcom/samsung/android/sume/core/message/Message;
.end method

.method public abstract newMessage(ILjava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;
.end method

.method public abstract newMessage(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;
.end method

.method public abstract newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Message;"
        }
    .end annotation
.end method

.method public varargs abstract newMessage(I[Landroid/util/Pair;)Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Message;"
        }
    .end annotation
.end method
