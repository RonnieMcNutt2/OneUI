.class public final synthetic Lcom/samsung/android/sume/core/message/Response$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/message/Response;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/message/Response;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Response$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/message/Response;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Response$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/message/Response;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/Response;->lambda$getBuffer$1$com-samsung-android-sume-core-message-Response(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method
