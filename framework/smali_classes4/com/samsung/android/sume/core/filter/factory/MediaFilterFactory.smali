.class public final Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;
.super Ljava/lang/Object;
.source "MediaFilterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bufferChannelSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final creators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;


# direct methods
.method public static synthetic $r8$lambda$Jd7xUwgqndEpq8JqW0bGFfTnN08(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->addAdditionalFilters(Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Lcom/samsung/android/sume/core/plugin/PluginStore;)V
    .registers 3
    .param p2, "pluginStore"    # Lcom/samsung/android/sume/core/plugin/PluginStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;",
            ">;>;",
            "Lcom/samsung/android/sume/core/plugin/PluginStore;",
            ")V"
        }
    .end annotation

    .line 109
    .local p1, "creatorRegistry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    .line 111
    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->init()V

    .line 114
    return-void
.end method

.method private addAdditionalFilters(Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .registers 3
    .param p1, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 147
    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    .line 149
    .local v0, "descriptor":Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    return-object p1
.end method

.method private init()V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    const-class v1, Lcom/samsung/android/sume/core/filter/PluginFilter;

    .line 118
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    const-class v2, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;

    .line 119
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda0;-><init>()V

    .line 120
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;)V

    .line 121
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda2;-><init>()V

    .line 124
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda3;-><init>()V

    .line 125
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;)V

    .line 126
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 127
    return-void
.end method

.method static synthetic lambda$init$0(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Z
    .registers 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    .line 120
    instance-of v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;

    return v0
.end method

.method static synthetic lambda$init$2(Ljava/util/List;)Z
    .registers 3
    .param p0, "e"    # Ljava/util/List;

    .line 124
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method static synthetic lambda$newFilter$4(Ljava/util/List;)Ljava/util/Optional;
    .registers 2
    .param p0, "it"    # Ljava/util/List;

    .line 154
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$newFilter$6(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Ljava/lang/RuntimeException;
    .registers 5
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to create filter: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", descriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore;->clear()V

    .line 144
    return-void
.end method

.method public getBufferChannelSupplier()Ljava/util/function/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->bufferChannelSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method getCreatorRegistry()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;",
            ">;>;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    return-object v0
.end method

.method synthetic lambda$init$1$com-samsung-android-sume-core-filter-factory-MediaFilterFactory(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)V
    .registers 4
    .param p1, "e"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    .line 121
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->setPluginStore(Lcom/samsung/android/sume/core/plugin/PluginStore;)V

    return-void
.end method

.method synthetic lambda$init$3$com-samsung-android-sume-core-filter-factory-MediaFilterFactory(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)V
    .registers 4
    .param p1, "e"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    .line 126
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;->prepare(Ljava/util/Map;)V

    return-void
.end method

.method synthetic lambda$newFilter$5$com-samsung-android-sume-core-filter-factory-MediaFilterFactory(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .registers 5
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p2, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p3, "it"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    .line 155
    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;->newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0
.end method

.method public newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .registers 3
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0
.end method

.method public newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .registers 4
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p2, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 163
    invoke-interface {p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0
.end method

.method newFilter(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .registers 6
    .param p2, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p3, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ")",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;"
        }
    .end annotation

    .line 153
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda5;-><init>()V

    .line 154
    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;)V

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 153
    return-object v0
.end method

.method setBufferChannelSupplier(Ljava/util/function/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p1, "bufferChannelSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->bufferChannelSupplier:Ljava/util/function/Supplier;

    .line 139
    return-void
.end method
