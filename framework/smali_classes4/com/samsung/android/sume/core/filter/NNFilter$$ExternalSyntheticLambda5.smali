.class public final synthetic Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/filter/NNFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/filter/NNFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/filter/NNFilter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/filter/NNFilter;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/NNFilter;->lambda$getDescriptor$0$com-samsung-android-sume-core-filter-NNFilter()Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    move-result-object v0

    return-object v0
.end method
