.class public final synthetic Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/plugin/PluginStore;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/plugin/PluginStore;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/plugin/PluginStore;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/plugin/PluginStore;

    check-cast p1, Lcom/samsung/android/sume/core/plugin/Plugin;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->lambda$add$3$com-samsung-android-sume-core-plugin-PluginStore(Lcom/samsung/android/sume/core/plugin/Plugin;)V

    return-void
.end method
