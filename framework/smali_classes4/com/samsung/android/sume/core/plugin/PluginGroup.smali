.class public abstract Lcom/samsung/android/sume/core/plugin/PluginGroup;
.super Ljava/lang/Object;
.source "PluginGroup.java"

# interfaces
.implements Lcom/samsung/android/sume/core/plugin/Plugin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/plugin/Plugin<",
        "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
        "*>;>;"
    }
.end annotation


# instance fields
.field protected plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginGroup;->plugins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addImgpPlugin(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/plugin/ImgpPlugin;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p1, "function":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/core/plugin/ImgpPlugin;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginGroup;->plugins:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/PluginAdapter;

    const-class v2, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/sume/core/plugin/PluginAdapter;-><init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public addNNPlugin(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/plugin/NNPlugin;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "function":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/core/plugin/NNPlugin;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginGroup;->plugins:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/PluginAdapter;

    const-class v2, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/sume/core/plugin/PluginAdapter;-><init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public bindToFixture(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;)V"
        }
    .end annotation

    .line 15
    .local p1, "fixture":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "use stream for PluginGroup"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "+",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;>;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginGroup;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
