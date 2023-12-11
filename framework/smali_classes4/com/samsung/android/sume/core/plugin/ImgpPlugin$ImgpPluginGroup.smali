.class Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup;
.super Ljava/lang/Object;
.source "ImgpPlugin.java"

# interfaces
.implements Lcom/samsung/android/sume/core/plugin/Plugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImgpPluginGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/plugin/Plugin<",
        "Lcom/samsung/android/sume/core/plugin/ImgpPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final processorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/Operator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>([Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V
    .registers 7
    .param p1, "plugins"    # [Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup$$ExternalSyntheticLambda0;-><init>()V

    .line 67
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup$$ExternalSyntheticLambda1;-><init>()V

    new-instance v4, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda5;-><init>()V

    .line 68
    invoke-static {v1, v2, v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup;->processorMap:Ljava/util/Map;

    .line 74
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)Ljava/util/stream/Stream;
    .registers 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    .line 67
    # getter for: Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;
    invoke-static {p0}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->access$000(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1(Lcom/samsung/android/sume/core/functional/Operator;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/functional/Operator;
    .registers 4
    .param p0, "xva$0"    # Lcom/samsung/android/sume/core/functional/Operator;
    .param p1, "xva$1"    # Lcom/samsung/android/sume/core/functional/Operator;

    .line 71
    new-instance v0, Lcom/samsung/android/sume/core/functional/OperatorChain;

    filled-new-array {p0, p1}, [Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorChain;-><init>([Lcom/samsung/android/sume/core/functional/Operator;)V

    return-object v0
.end method


# virtual methods
.method public bindToFixture(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V
    .registers 3
    .param p1, "fixture"    # Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup;->processorMap:Ljava/util/Map;

    # setter for: Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;
    invoke-static {p1, v0}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->access$002(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;Ljava/util/Map;)Ljava/util/Map;

    .line 79
    return-void
.end method

.method public bridge synthetic bindToFixture(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V
    .registers 2

    .line 62
    check-cast p1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup;->bindToFixture(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V

    return-void
.end method
