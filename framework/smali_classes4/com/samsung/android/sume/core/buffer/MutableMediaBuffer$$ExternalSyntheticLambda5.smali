.class public final synthetic Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {p1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->lambda$setIccBuffer$8(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result p1

    return p1
.end method
