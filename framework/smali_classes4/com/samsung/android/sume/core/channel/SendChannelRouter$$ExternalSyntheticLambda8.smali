.class public final synthetic Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/channel/SendChannelRouter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/channel/SendChannelRouter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->$r8$lambda$gYXrNQyNrQOV6a-mMnsE_KIZGVY(Lcom/samsung/android/sume/core/channel/SendChannelRouter;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    return-void
.end method
