.class public final synthetic Lcom/samsung/android/sume/core/service/ServiceStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/message/Request;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/message/Request;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/ServiceStub$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/message/Request;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceStub$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/message/Request;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/service/ServiceStub;->lambda$request$0(Lcom/samsung/android/sume/core/message/Request;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
