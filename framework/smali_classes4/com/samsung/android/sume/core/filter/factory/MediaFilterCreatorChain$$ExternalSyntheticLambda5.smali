.class public final synthetic Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    check-cast p1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;->lambda$newFilter$6(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object p1

    return-object p1
.end method
