.class public final synthetic Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;->$r8$lambda$s5iKRSPNKdbn3FvjGtjurhkRC20(Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method
