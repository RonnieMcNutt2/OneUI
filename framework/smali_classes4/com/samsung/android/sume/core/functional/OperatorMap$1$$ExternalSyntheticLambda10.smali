.class public final synthetic Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda10;
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

    check-cast p1, Lcom/samsung/android/sume/core/types/SplitType;

    invoke-static {p1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->lambda$new$1(Lcom/samsung/android/sume/core/types/SplitType;)Z

    move-result p1

    return p1
.end method
