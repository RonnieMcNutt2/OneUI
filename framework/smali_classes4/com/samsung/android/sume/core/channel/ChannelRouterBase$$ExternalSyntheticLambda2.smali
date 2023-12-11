.class public final synthetic Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/samsung/android/sume/core/channel/BufferChannel;

    check-cast p2, Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {p1, p2}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase;->lambda$new$2(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;)Lcom/samsung/android/sume/core/channel/BufferChannel;

    move-result-object p1

    return-object p1
.end method
