.class public final synthetic Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/plugin/StaplePluginStore;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/plugin/StaplePluginStore;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/plugin/StaplePluginStore;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/plugin/StaplePluginStore;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/plugin/StaplePluginStore;->lambda$remove$3$com-samsung-android-sume-core-plugin-StaplePluginStore(Ljava/util/Map$Entry;)Lcom/samsung/android/sume/core/plugin/PluginFixture;

    move-result-object p1

    return-object p1
.end method
