.class public final synthetic Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Enum;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Enum;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Enum;

    check-cast p1, Lcom/samsung/android/sume/core/functional/Operator;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/functional/OperatorWrapper;->lambda$of$2(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/functional/OperatorWrapper;

    move-result-object p1

    return-object p1
.end method
