.class public final synthetic Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;->lambda$new$0$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl$3(Landroid/util/Pair;)V

    return-void
.end method
