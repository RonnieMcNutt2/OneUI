.class public final synthetic Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;

    check-cast p1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->lambda$prepare$3$com-samsung-android-sume-core-filter-NNFWFilterGroup(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method
