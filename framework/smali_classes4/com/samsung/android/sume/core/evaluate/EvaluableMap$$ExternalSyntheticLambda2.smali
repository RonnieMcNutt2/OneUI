.class public final synthetic Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/evaluate/EvaluableMap;->lambda$getOr$2(Ljava/lang/Object;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Z

    move-result p1

    return p1
.end method
