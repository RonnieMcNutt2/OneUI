.class public Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
.super Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;
.source "NNDescriptor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private transient modelIdSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

.field private transient nnFileDescriptor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final nnfwProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Enum;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 35
    .local p1, "modelId":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setPluginId(Ljava/lang/Enum;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V
    .registers 7
    .param p2, "fw"    # Lcom/samsung/android/sume/core/types/nn/NNFW;
    .param p3, "hw"    # Lcom/samsung/android/sume/core/types/HwUnit;
    .param p4, "units"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/types/nn/NNFW;",
            "Lcom/samsung/android/sume/core/types/HwUnit;",
            "I)V"
        }
    .end annotation

    .line 38
    .local p1, "modelId":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    .line 39
    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;

    invoke-direct {v1, p2, p3, p4}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setPluginId(Ljava/lang/Enum;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getFilterType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 69
    const-class v0, Lcom/samsung/android/sume/core/filter/NNFilter;

    return-object v0
.end method

.method public getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_INPUT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object v0
.end method

.method public getLoadingType()Lcom/samsung/android/sume/core/types/LoadType;
    .registers 3

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_LOADING_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/LoadType;

    return-object v0
.end method

.method public getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
    .registers 3

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_MEDIA_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/MediaType;

    return-object v0
.end method

.method public getModelId()Ljava/lang/String;
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->modelIdSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda0;-><init>()V

    .line 115
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    return-object v0
.end method

.method public getModelSelector()Lcom/samsung/android/sume/core/functional/ModelSelector;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    return-object v0
.end method

.method public getNNFWProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getNnFileDescriptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnFileDescriptor:Ljava/util/List;

    return-object v0
.end method

.method public getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_OUTPUT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object v0
.end method

.method public getTargetFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_TARGET_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object v0
.end method

.method synthetic lambda$getModelId$0$com-samsung-android-sume-core-descriptor-nn-NNDescriptor()Ljava/lang/String;
    .registers 2

    .line 116
    invoke-super {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setInputFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .registers 4
    .param p1, "inputFormat"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_INPUT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object p0
.end method

.method public setLoadingType(Lcom/samsung/android/sume/core/types/LoadType;)V
    .registers 4
    .param p1, "loadType"    # Lcom/samsung/android/sume/core/types/LoadType;

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_LOADING_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)V
    .registers 4
    .param p1, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_MEDIA_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public setModelIdSupplier(Ljava/util/function/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "modelIdSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->modelIdSupplier:Ljava/util/function/Supplier;

    .line 111
    return-void
.end method

.method public setModelSelector(Lcom/samsung/android/sume/core/functional/ModelSelector;)V
    .registers 2
    .param p1, "modelSelector"    # Lcom/samsung/android/sume/core/functional/ModelSelector;

    .line 128
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    .line 129
    return-void
.end method

.method public setNNFWProfile(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V
    .registers 6
    .param p1, "fw"    # Lcom/samsung/android/sume/core/types/nn/NNFW;
    .param p2, "hw"    # Lcom/samsung/android/sume/core/types/HwUnit;
    .param p3, "units"    # I

    .line 64
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public setNNFileDescriptors(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "nnFileDescriptor":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnFileDescriptor:Ljava/util/List;

    .line 57
    return-void
.end method

.method public setOutputFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .registers 5
    .param p1, "outputFormat"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_OUTPUT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-class v0, Ljava/lang/Float;

    const-string/jumbo v1, "scale"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 95
    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 96
    .local v0, "scale":Ljava/lang/Float;
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MutableShape;->scale(Ljava/lang/Float;)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .end local v0    # "scale":Ljava/lang/Float;
    goto :goto_5a

    .line 97
    :cond_32
    const-class v0, Landroid/util/Pair;

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 98
    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 99
    .local v0, "scale":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableShape;->scale(Landroid/util/Pair;)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_5b

    .line 97
    .end local v0    # "scale":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_5a
    :goto_5a
    nop

    .line 101
    :goto_5b
    return-object p0
.end method

.method public setTargetFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .registers 4
    .param p1, "targetFormat"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_TARGET_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object p0
.end method
