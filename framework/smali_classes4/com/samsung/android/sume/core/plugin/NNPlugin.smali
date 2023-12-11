.class public Lcom/samsung/android/sume/core/plugin/NNPlugin;
.super Lcom/samsung/android/sume/core/plugin/PluginFixture;
.source "NNPlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
        "Lcom/samsung/android/sume/core/plugin/NNPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

.field private modelLoader:Lcom/samsung/android/sume/core/functional/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sume/core/functional/ModelLoader<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private modelPathLoader:Lcom/samsung/android/sume/core/functional/ModelPathLoader;

.field private modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

.field private postExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

.field private preExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "Lcom/samsung/android/sume/core/plugin/NNPlugin;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "plugin":Lcom/samsung/android/sume/core/plugin/Plugin;, "Lcom/samsung/android/sume/core/plugin/Plugin<Lcom/samsung/android/sume/core/plugin/NNPlugin;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/PluginFixture;-><init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getExecuteDelegator()Lcom/samsung/android/sume/core/functional/ExecuteDelegator;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    return-object v0
.end method

.method public getModelLoader()Lcom/samsung/android/sume/core/functional/ModelLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sume/core/functional/ModelLoader<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelLoader:Lcom/samsung/android/sume/core/functional/ModelLoader;

    return-object v0
.end method

.method public getModelPathLoader()Lcom/samsung/android/sume/core/functional/ModelPathLoader;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelPathLoader:Lcom/samsung/android/sume/core/functional/ModelPathLoader;

    return-object v0
.end method

.method public getModelSelector()Lcom/samsung/android/sume/core/functional/ModelSelector;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    return-object v0
.end method

.method public getPostExecutor()Lcom/samsung/android/sume/core/functional/BufferProcessor;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->postExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

    return-object v0
.end method

.method public getPreExecutor()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/sume/core/functional/BufferProcessor;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->preExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V
    .registers 2
    .param p1, "executeDelegator"    # Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    .line 69
    return-void
.end method

.method public setModelLoader(Lcom/samsung/android/sume/core/functional/ModelLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/functional/ModelLoader<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "modelLoader":Lcom/samsung/android/sume/core/functional/ModelLoader;, "Lcom/samsung/android/sume/core/functional/ModelLoader<Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelLoader:Lcom/samsung/android/sume/core/functional/ModelLoader;

    .line 36
    return-void
.end method

.method public setModelPathLoader(Lcom/samsung/android/sume/core/functional/ModelPathLoader;)V
    .registers 2
    .param p1, "modelPathLoader"    # Lcom/samsung/android/sume/core/functional/ModelPathLoader;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelPathLoader:Lcom/samsung/android/sume/core/functional/ModelPathLoader;

    .line 44
    return-void
.end method

.method public setModelSelector(Lcom/samsung/android/sume/core/functional/ModelSelector;)V
    .registers 2
    .param p1, "modelSelector"    # Lcom/samsung/android/sume/core/functional/ModelSelector;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    .line 48
    return-void
.end method

.method public setPostExecutor(Lcom/samsung/android/sume/core/functional/BufferProcessor;)V
    .registers 2
    .param p1, "postExecutor"    # Lcom/samsung/android/sume/core/functional/BufferProcessor;

    .line 76
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->postExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

    .line 77
    return-void
.end method

.method public setPreExecutor(Lcom/samsung/android/sume/core/functional/BufferProcessor;)V
    .registers 2
    .param p1, "preExecutor"    # Lcom/samsung/android/sume/core/functional/BufferProcessor;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->preExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

    .line 60
    return-void
.end method

.method public validate()Z
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelLoader:Lcom/samsung/android/sume/core/functional/ModelLoader;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelPathLoader:Lcom/samsung/android/sume/core/functional/ModelPathLoader;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
