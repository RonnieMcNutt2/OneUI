.class public final synthetic Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/samsung/android/sume/core/controller/SumeClient;->lambda$run$3()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
