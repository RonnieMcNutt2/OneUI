.class public final synthetic Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;->lambda$prepare$0(Ljava/util/Map;Ljava/lang/Enum;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    move-result-object p1

    return-object p1
.end method
