.class public final synthetic Lcom/samsung/android/sume/core/filter/PluginDecorateFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    check-cast p1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;->lambda$new$0(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method
