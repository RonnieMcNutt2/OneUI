.class public final synthetic Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/channel/BufferChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/sume/core/channel/BufferChannel;

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/channel/Channel;->send(Ljava/lang/Object;)V

    return-void
.end method
