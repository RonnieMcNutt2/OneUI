.class public final synthetic Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;

    check-cast p1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->lambda$toMediaFilterGraph$2(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
