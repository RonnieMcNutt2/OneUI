.class public abstract Lcom/samsung/android/sume/core/plugin/PluginFixture;
.super Ljava/lang/Object;
.source "PluginFixture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected contentFilterRegister:Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

.field private deInitializer:Ljava/lang/Runnable;

.field private descriptorLoader:Lcom/samsung/android/sume/core/functional/DescriptorLoader;

.field private descriptorStreamLoader:Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;

.field private initializer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<TT;>;"
    .local p1, "plugin":Lcom/samsung/android/sume/core/plugin/Plugin;, "Lcom/samsung/android/sume/core/plugin/Plugin<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/plugin/Plugin;->bindToFixture(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/plugin/PluginFixture;->validate()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "fail to check validation of plugin"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getContentFilterRegister()Lcom/samsung/android/sume/core/filter/ContentFilterRegister;
    .registers 2

    .line 63
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->contentFilterRegister:Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

    return-object v0
.end method

.method public getDescriptorLoader()Lcom/samsung/android/sume/core/functional/DescriptorLoader;
    .registers 2

    .line 39
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->descriptorLoader:Lcom/samsung/android/sume/core/functional/DescriptorLoader;

    return-object v0
.end method

.method public getDescriptorStreamLoader()Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;
    .registers 2

    .line 47
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->descriptorStreamLoader:Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->initializer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_7

    .line 30
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 31
    :cond_7
    return-void
.end method

.method public release()V
    .registers 2

    .line 34
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->deInitializer:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 35
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 36
    :cond_7
    return-void
.end method

.method public setContentFilterRegister(Lcom/samsung/android/sume/core/filter/ContentFilterRegister;)V
    .registers 2
    .param p1, "contentFilterRegister"    # Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

    .line 67
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->contentFilterRegister:Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

    .line 68
    return-void
.end method

.method public setDeInitializer(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "deInitializer"    # Ljava/lang/Runnable;

    .line 59
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->deInitializer:Ljava/lang/Runnable;

    .line 60
    return-void
.end method

.method public setDescriptorLoader(Lcom/samsung/android/sume/core/functional/DescriptorLoader;)V
    .registers 2
    .param p1, "descriptorLoader"    # Lcom/samsung/android/sume/core/functional/DescriptorLoader;

    .line 43
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->descriptorLoader:Lcom/samsung/android/sume/core/functional/DescriptorLoader;

    .line 44
    return-void
.end method

.method public setDescriptorStreamLoader(Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;)V
    .registers 2
    .param p1, "descriptorStreamLoader"    # Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;

    .line 51
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->descriptorStreamLoader:Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;

    .line 52
    return-void
.end method

.method public setInitializer(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<TT;>;"
    .local p1, "initializer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Context;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->initializer:Ljava/util/function/Consumer;

    .line 56
    return-void
.end method

.method public abstract validate()Z
.end method
