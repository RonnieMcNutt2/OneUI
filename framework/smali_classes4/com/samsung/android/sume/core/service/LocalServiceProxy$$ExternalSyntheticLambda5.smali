.class public final synthetic Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

.field public final synthetic f$1:Lcom/samsung/android/sume/core/message/Request;

.field public final synthetic f$2:Lcom/samsung/android/sume/core/message/ResponseHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/service/LocalServiceProxy;Lcom/samsung/android/sume/core/message/Request;Lcom/samsung/android/sume/core/message/ResponseHolder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    iput-object p2, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/sume/core/message/Request;

    iput-object p3, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda5;->f$2:Lcom/samsung/android/sume/core/message/ResponseHolder;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/sume/core/message/Request;

    iget-object v2, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda5;->f$2:Lcom/samsung/android/sume/core/message/ResponseHolder;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->lambda$request$2$com-samsung-android-sume-core-service-LocalServiceProxy(Lcom/samsung/android/sume/core/message/Request;Lcom/samsung/android/sume/core/message/ResponseHolder;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v0

    return-object v0
.end method
