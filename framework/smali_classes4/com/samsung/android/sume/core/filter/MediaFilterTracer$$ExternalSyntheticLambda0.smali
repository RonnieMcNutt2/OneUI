.class public final synthetic Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/filter/MediaFilterTracer;

.field public final synthetic f$1:Lcom/samsung/android/sume/core/message/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/filter/MediaFilterTracer;Lcom/samsung/android/sume/core/message/Message;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/MediaFilterTracer;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sume/core/message/Message;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/MediaFilterTracer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sume/core/message/Message;

    check-cast p1, Lcom/samsung/android/sume/core/message/Message;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->lambda$makeReport$0$com-samsung-android-sume-core-filter-MediaFilterTracer(Lcom/samsung/android/sume/core/message/Message;Lcom/samsung/android/sume/core/message/Message;)V

    return-void
.end method
