.class public final synthetic Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    return-void
.end method


# virtual methods
.method public final find(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;->lambda$prepare$2(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object p1

    return-object p1
.end method
