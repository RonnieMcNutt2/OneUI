.class public final synthetic Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/evaluate/EvaluableMap;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/evaluate/EvaluableMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/evaluate/EvaluableMap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/evaluate/EvaluableMap;

    check-cast p1, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/evaluate/EvaluableMap;->lambda$get$1$com-samsung-android-sume-core-evaluate-EvaluableMap(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
