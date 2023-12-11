.class public final synthetic Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/format/MutableMediaFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    check-cast p1, Lcom/samsung/android/sume/core/functional/ModelSelector;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/filter/NNFilter;->lambda$onMessageReceived$3(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/functional/ModelSelector;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    move-result-object p1

    return-object p1
.end method
