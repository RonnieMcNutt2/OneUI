.class public final synthetic Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/controller/MediaFilterController;

.field public final synthetic f$1:Lcom/samsung/android/sume/core/message/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;Lcom/samsung/android/sume/core/message/Message;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/controller/MediaFilterController;

    iput-object p2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/sume/core/message/Message;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/controller/MediaFilterController;

    iget-object v1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/sume/core/message/Message;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->lambda$onMessageReceived$4$com-samsung-android-sume-core-controller-MediaFilterController(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v0

    return-object v0
.end method
