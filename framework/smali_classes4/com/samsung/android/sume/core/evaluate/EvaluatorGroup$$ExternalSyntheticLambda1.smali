.class public final synthetic Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-static {p1}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->lambda$toString$0(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
