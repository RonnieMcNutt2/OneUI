.class public final synthetic Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    invoke-static {p1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->lambda$clear$4(Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;)V

    return-void
.end method
