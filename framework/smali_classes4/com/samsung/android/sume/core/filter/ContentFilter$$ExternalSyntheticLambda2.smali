.class public final synthetic Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/types/DataType;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/types/DataType;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/types/DataType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/types/DataType;

    check-cast p1, Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/filter/ContentFilter;->lambda$evaluateDataType$2(Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/types/DataType;)Z

    move-result p1

    return p1
.end method
